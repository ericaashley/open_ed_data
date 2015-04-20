class SchoolSerializer < ActiveModel::Serializer
  attributes :id, :ncessch, :schnam, :level, :sch_type, :chartr, :magnet,
            #  :school_title_one_eligible, :school_title_one_program
             :member, :totfrl_perc

  def level
    SchoolLevel.find(object.level).school_level_name
  end

  def sch_type
    SchoolType.find(object.sch_type).school_type_name
  end

  def chartr
    SchoolCharter.find(object.chartr).school_charter_name
  end

  def magnet
    SchoolMagnet.find(object.magnet).school_magnet_name
  end

  # def school_title_one_eligible
  #   SchoolTitleOne.find(object.titleistat).school_title_one_eligible
  # end
  #
  # def school_title_one_program
  #   SchoolTitleOne.find(object.titleistat).school_title_one_program
  # end

  def member
    enrollment = object.member
    if enrollment == -1
      "Missing data"
    elsif enrollment == -2
      "Not applicable"
    elsif enrollment == -9
      "Data does not meet NCES quality standards"
    else
      enrollment
    end
  end

  def totfrl_perc
    enrollment = object.member
    total_eligible = object.totfrl
    if enrollment == -1 || total_eligible == -1
      "Missing data"
    elsif enrollment == -2 || total_eligible == -2
      "Not applicable"
    elsif enrollment == -9 || total_eligible == -9
      "Data does not meet NCES quality standards"
    else
      total_percent_eligible = ((total_eligible.to_f / enrollment) * 100)
      total_percent_eligible == 0 ? "0%" : "#{total_percent_eligible.round(1)}%"
    end
  end
end
