# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

# Dataset code translations, based on PDF documentation.

require 'csv'

school_levels = {
  "1" => "Primary",
  "2" => "Middle",
  "3" => "High",
  "4" => "Other",
  "M" => "Missing data",
  "N" => "Not applicable"
}

school_levels.each do |nces_id, name|
  SchoolLevel.find_or_create_by!(nces_id: nces_id, school_level_name: name)
end

puts "School levels populated."

school_types = {
  "1" => "Regular school",
  "2" => "Special education school",
  "3" => "Vocational school",
  "4" => "Other/alternative school",
  "5" => "Reportable program",
  "M" => "Missing data",
  "N" => "Not applicable"
}

school_types.each do |nces_id, name|
  SchoolType.find_or_create_by!(nces_id: nces_id, school_type_name: name)
end

puts "School types populated."

school_charters = {
  "1" => "Yes",
  "2" => "No",
  "M" => "Missing data",
  "N" => "Not applicable"
}

school_charters.each do |nces_id, name|
  SchoolCharter.find_or_create_by!(nces_id: nces_id, school_charter_name: name)
end

puts "School charters populated."

school_magnets = {
  "1" => "Yes",
  "2" => "No",
  "M" => "Missing data",
  "N" => "Not applicable"
}

school_magnets.each do |nces_id, name|
  SchoolMagnet.find_or_create_by!(nces_id: nces_id, school_magnet_name: name)
end

puts "School magnets populated."

school_title_ones = {
  "1" => {
    eligible: "Eligible for Title I Targeted Assistance (TAS)",
    program: "Provides no program"
  },
  "2" => {
    eligible: "Eligible for Title I Targeted Assistance (TAS)",
    program: "Provides TAS program"
  },
  "3" => {
    eligible: "Eligible for Title I Schoolwide program (SWP)",
    program: "Provides TAS program"
  },
  "4" => {
    eligible: "Eligible for Title I Schoolwide program (SWP)",
    program: "Provides no program"
  },
  "5" => {
    eligible: "Eligible for Title I Schoolwide program (SWP)",
    program: "Provides Title I Schoolwide program"
  },
  "6" => {
    eligible: "Not eligible for Title I Targeted Assistance (TAS) or " +
      "Schoolwide program",
    program: "Not applicable"
  }
}

school_title_ones.each do |nces_id, title_one|
  SchoolTitleOne.find_or_create_by!(
    nces_id: nces_id,
    school_title_one_eligible: title_one[:eligible],
    school_title_one_program: title_one[:program]
  )
end

puts "School Title I's populated."

states = {
  "01" => {
    name: "Alabama",
    abbrev: "AL"
  },
  "02" => {
    name: "Alaska",
    abbrev: "AK"
  },
  "04" => {
    name: "Arizona",
    abbrev: "AZ"
  },
  "05" => {
    name: "Arkansas",
    abbrev: "AR"
  },
  "06" => {
    name: "California",
    abbrev: "CA"
  },
  "08" => {
    name: "Colorado",
    abbrev: "CO"
  },
  "09" => {
    name: "Connecticut",
    abbrev: "CT"
  },
  "10" => {
    name: "Delaware",
    abbrev: "DE"
  },
  "11" => {
    name: "District of Columbia",
    abbrev: "DC"
  },
  "12" => {
    name: "Florida",
    abbrev: "FL"
  },
  "13" => {
    name: "Georgia",
    abbrev: "GA"
  },
  "15" => {
    name: "Hawaii",
    abbrev: "HI"
  },
  "16" => {
    name: "Idaho",
    abbrev: "ID"
  },
  "17" => {
    name: "Illinois",
    abbrev: "IL"
  },
  "18" => {
    name: "Indiana",
    abbrev: "IN"
  },
  "19" => {
    name: "Iowa",
    abbrev: "IA"
  },
  "20" => {
    name: "Kansas",
    abbrev: "KS"
  },
  "21" => {
    name: "Kentucky",
    abbrev: "KY"
  },
  "22" => {
    name: "Louisiana",
    abbrev: "LA"
  },
  "23" => {
    name: "Maine",
    abbrev: "ME"
  },
  "24" => {
    name: "Maryland",
    abbrev: "MD"
  },
  "25" => {
    name: "Massachusetts",
    abbrev: "MA"
  },
  "26" => {
    name: "Michigan",
    abbrev: "MI"
  },
  "27" => {
    name: "Minnesota",
    abbrev: "MN"
  },
  "28" => {
    name: "Mississippi",
    abbrev: "MS"
  },
  "29" => {
    name: "Missouri",
    abbrev: "MO"
  },
  "30" => {
    name: "Montana",
    abbrev: "MT"
  },
  "31" => {
    name: "Nebraska",
    abbrev: "NE"
  },
  "32" => {
    name: "Nevada",
    abbrev: "NV"
  },
  "33" => {
    name: "New Hampshire",
    abbrev: "NH"
  },
  "34" => {
    name: "New Jersey",
    abbrev: "NJ"
  },
  "35" => {
    name: "New Mexico",
    abbrev: "NM"
  },
  "36" => {
    name: "New York",
    abbrev: "NY"
  },
  "37" => {
    name: "North Caraolina",
    abbrev: "NC"
  },
  "38" => {
    name: "North Dakota",
    abbrev: "ND"
  },
  "39" => {
    name: "Ohio",
    abbrev: "OH"
  },
  "40" => {
    name: "Oklahoma",
    abbrev: "OK"
  },
  "41" => {
    name: "Oregon",
    abbrev: "OR"
  },
  "42" => {
    name: "Pennsylvania",
    abbrev: "PA"
  },
  "44" => {
    name: "Rhode Island",
    abbrev: "RI"
  },
  "45" => {
    name: "South Carolina",
    abbrev: "SC"
  },
  "46" => {
    name: "South Dakota",
    abbrev: "SD"
  },
  "47" => {
    name: "Tennessee",
    abbrev: "TN"
  },
  "48" => {
    name: "Texas",
    abbrev: "TX"
  },
  "49" => {
    name: "Utah",
    abbrev: "UT"
  },
  "50" => {
    name: "Vermont",
    abbrev: "VT"
  },
  "51" => {
    name: "Virginia",
    abbrev: "VA"
  },
  "53" => {
    name: "Washington",
    abbrev: "WA"
  },
  "54" => {
    name: "West Virginia",
    abbrev: "WV"
  },
  "55" => {
    name: "Wisconsin",
    abbrev: "WI"
  },
  "56" => {
    name: "Wyoming",
    abbrev: "WY"
  },
  "63" => {
    name: "Department of Defense Education Activity",
    abbrev: "DD"
  },
  "59" => {
    name: "Bureau of Indian Education",
    abbrev: "BI"
  },
  "60" => {
    name: "American Samoa",
    abbrev: "AS"
  },
  "66" => {
    name: "Guam",
    abbrev: "GU"
  },
  "69" => {
    name: "Commonwealth of the Northern Mariana Islands",
    abbrev: "MP"
  },
  "72" => {
    name: "Puerto Rico",
    abbrev: "PR"
  },
  "78" => {
    name: "U.S. Virgin Islands",
    abbrev: "VI"
  }
}

states.each do |ansi_id, state|
  State.find_or_create_by!(ansi_id: ansi_id, state_name: state[:name],
                           state_abbrev: state[:abbrev])
end

puts "States populated."

# Parse NCES CCD 2012-2013 Public Elementary/Secondary School text file.

school_level_ids = Hash.new
SchoolLevel.find_each do |level|
  school_level_ids[level.nces_id] = level.id
end

school_type_ids = Hash.new
SchoolType.find_each do |school_type|
  school_type_ids[school_type.nces_id] = school_type.id
end

school_charter_ids = Hash.new
SchoolCharter.find_each do |charter|
  school_charter_ids[charter.nces_id] = charter.id
end

school_magnet_ids = Hash.new
SchoolMagnet.find_each do |magnet|
  school_magnet_ids[magnet.nces_id] = magnet.id
end

school_title_one_ids = Hash.new
SchoolTitleOne.find_each do |title_one|
  school_title_one_ids[title_one.nces_id] = title_one.id
end

state_ids = Hash.new
State.find_each do |state|
  state_ids[state.ansi_id] = state.id
end

seed_count = 0
puts Time.now.strftime("%d/%m/%Y %H:%M")

CSV.foreach('db/seeds/sc121a_supp.full.fixed.txt', col_sep: "\t",
                                                   headers: true) do |row|
  ActiveRecord::Base.transaction do
    school = School.find_or_initialize_by(ncessch: row["NCESSCH"])
    school.survyear = row["SURVYEAR"]
    school.fipst = state_ids[row["FIPST"]]
    school.leaid = row["LEAID"]
    school.schno = row["SCHNO"]
    school.stid = row["STID"]
    school.seasch = row["SEASCH"]
    school.leanm = row["LEANM"]
    school.schnam = row["SCHNAM"]
    school.phone = row["PHONE"]
    school.mstree = row["MSTREE"]
    school.mcity = row["MCITY"]
    school.mstate = row["MSTATE"]
    school.mzip = row["MZIP"]
    school.mzip4 = row["MZIP4"]
    school.lstree = row["LSTREE"]
    school.lcity = row["LCITY"]
    school.lstate = row["LSTATE"]
    school.lzip = row["LZIP"]
    school.lzip4 = row["LZIP4"]
    school.sch_type = school_type_ids[row["TYPE"]]
    school.status = row["STATUS"]
    school.union = row["UNION"]
    school.ulocal = row["ULOCAL"]
    school.latcod = row["LATCOD"]
    school.loncod = row["LONCOD"]
    school.conum = row["CONUM"]
    school.coname = row["CONAME"]
    school.cdcode = row["CDCODE"]
    school.bies = row["BIES"]
    school.reconsty = row["RECONSTY"]
    school.reconstf = row["RECONSTF"]
    school.smempup = row["SMEMPUP"]
    school.ismempup = row["ISMEMPUP"]
    school.sftepup = row["SFTEPUP"]
    school.isftepup = row["ISFTEPUP"]
    school.sfle = row["SFLE"]
    school.isfle = row["ISFLE"]
    school.spfemale = row["SPFEMALE"]
    school.ispfemale = row["ISPFEMALE"]
    school.spwhite = row["SPWHITE"]
    school.ispwhite = row["ISPWHITE"]
    school.spelm = row["SPELM"]
    school.ispelm = row["ISPELM"]
    school.fte = row["FTE"]
    school.gslo = row["GSLO"]
    school.gshi = row["GSHI"]
    school.pkoffrd = row["PKOFFRD"]
    school.kgoffrd = row["KGOFFRD"]
    school.g01offrd = row["G01OFFRD"]
    school.g02offrd = row["G02OFFRD"]
    school.g03offrd = row["G03OFFRD"]
    school.g04offrd = row["G04OFFRD"]
    school.g05offrd = row["G05OFFRD"]
    school.g06offrd = row["G06OFFRD"]
    school.g07offrd = row["G07OFFRD"]
    school.g08offrd = row["G08OFFRD"]
    school.g09offrd = row["G09OFFRD"]
    school.g10offrd = row["G10OFFRD"]
    school.g11offrd = row["G11OFFRD"]
    school.g12offrd = row["G12OFFRD"]
    school.ugoffrd = row["UGOFFRD"]
    school.level = school_level_ids[row["LEVEL"]]
    school.titleistat = school_title_one_ids[row["TITLEISTAT"]]
    school.titlei = row["TITLEI"]
    school.stitli = row["STITLI"]
    school.magnet = school_magnet_ids[row["MAGNET"]]
    school.chartr = school_charter_ids[row["CHARTR"]]
    school.shared = row["SHARED"]
    school.frelch = row["FRELCH"]
    school.redlch = row["REDLCH"]
    school.totfrl = row["TOTFRL"]
    school.racecat = row["RACECAT"]
    school.pk = row["PK"]
    school.ampkm = row["AMPKM"]
    school.ampkf = row["AMPKF"]
    school.aspkm = row["ASPKM"]
    school.aspkf = row["ASPKF"]
    school.hipkm = row["HIPKM"]
    school.hipkf = row["HIPKF"]
    school.blpkm = row["BLPKM"]
    school.blpkf = row["BLPKF"]
    school.whpkm = row["WHPKM"]
    school.whpkf = row["WHPKF"]
    school.hppkm = row["HPPKM"]
    school.hppkf = row["HPPKF"]
    school.trpkm = row["TRPKM"]
    school.trpkf = row["TRPKF"]
    school.kg = row["KG"]
    school.amkgm = row["AMKGM"]
    school.amkgf = row["AMKGF"]
    school.askgm = row["ASKGM"]
    school.askgf = row["ASKGF"]
    school.hikgm = row["HIKGM"]
    school.hikgf = row["HIKGF"]
    school.blkgm = row["BLKGM"]
    school.blkgf = row["BLKGF"]
    school.whkgm = row["WHKGM"]
    school.whkgf = row["WHKGF"]
    school.hpkgm = row["HPKGM"]
    school.hpkgf = row["HPKGF"]
    school.trkgm = row["TRKGM"]
    school.trkgf = row["TRKGF"]
    school.g01 = row["G01"]
    school.am01m = row["AM01M"]
    school.am01f = row["AM01F"]
    school.as01m = row["AS01M"]
    school.as01f = row["AS01F"]
    school.hi01m = row["HI01M"]
    school.hi01f = row["HI01F"]
    school.bl01m = row["BL01M"]
    school.bl01f = row["BL01F"]
    school.wh01m = row["WH01M"]
    school.wh01f = row["WH01F"]
    school.hp01m = row["HP01M"]
    school.hp01f = row["HP01F"]
    school.tr01m = row["TR01M"]
    school.tr01f = row["TR01F"]
    school.g02 = row["G02"]
    school.am02m = row["AM02M"]
    school.am02f = row["AM02F"]
    school.as02m = row["AS02M"]
    school.as02f = row["AS02F"]
    school.hi02m = row["HI02M"]
    school.hi02f = row["HI02F"]
    school.bl02m = row["BL02M"]
    school.bl02f = row["BL02F"]
    school.wh02m = row["WH02M"]
    school.wh02f = row["WH02F"]
    school.hp02m = row["HP02M"]
    school.hp02f = row["HP02F"]
    school.tr02m = row["TR02M"]
    school.tr02f = row["TR02F"]
    school.g03 = row["G03"]
    school.am03m = row["AM03M"]
    school.am03f = row["AM03F"]
    school.as03m = row["AS03M"]
    school.as03f = row["AS03F"]
    school.hi03m = row["HI03M"]
    school.hi03f = row["HI03F"]
    school.bl03m = row["BL03M"]
    school.bl03f = row["BL03F"]
    school.wh03m = row["WH03M"]
    school.wh03f = row["WH03F"]
    school.hp03m = row["HP03M"]
    school.hp03f = row["HP03F"]
    school.tr03m = row["TR03M"]
    school.tr03f = row["TR03F"]
    school.g04 = row["G04"]
    school.am04m = row["AM04M"]
    school.am04f = row["AM04F"]
    school.as04m = row["AS04M"]
    school.as04f = row["AS04F"]
    school.hi04m = row["HI04M"]
    school.hi04f = row["HI04F"]
    school.bl04m = row["BL04M"]
    school.bl04f = row["BL04F"]
    school.wh04m = row["WH04M"]
    school.wh04f = row["WH04F"]
    school.hp04m = row["HP04M"]
    school.hp04f = row["HP04F"]
    school.tr04m = row["TR04M"]
    school.tr04f = row["TR04F"]
    school.g05 = row["G05"]
    school.am05m = row["AM05M"]
    school.am05f = row["AM05F"]
    school.as05m = row["AS05M"]
    school.as05f = row["AS05F"]
    school.hi05m = row["HI05M"]
    school.hi05f = row["HI05F"]
    school.bl05m = row["BL05M"]
    school.bl05f = row["BL05F"]
    school.wh05m = row["WH05M"]
    school.wh05f = row["WH05F"]
    school.hp05m = row["HP05M"]
    school.hp05f = row["HP05F"]
    school.tr05m = row["TR05M"]
    school.tr05f = row["TR05F"]
    school.g06 = row["G06"]
    school.am06m = row["AM06M"]
    school.am06f = row["AM06F"]
    school.as06m = row["AS06M"]
    school.as06f = row["AS06F"]
    school.hi06m = row["HI06M"]
    school.hi06f = row["HI06F"]
    school.bl06m = row["BL06M"]
    school.bl06f = row["BL06F"]
    school.wh06m = row["WH06M"]
    school.wh06f = row["WH06F"]
    school.hp06m = row["HP06M"]
    school.hp06f = row["HP06F"]
    school.tr06m = row["TR06M"]
    school.tr06f = row["TR06F"]
    school.g07 = row["G07"]
    school.am07m = row["AM07M"]
    school.am07f = row["AM07F"]
    school.as07m = row["AS07M"]
    school.as07f = row["AS07F"]
    school.hi07m = row["HI07M"]
    school.hi07f = row["HI07F"]
    school.bl07m = row["BL07M"]
    school.bl07f = row["BL07F"]
    school.wh07m = row["WH07M"]
    school.wh07f = row["WH07F"]
    school.hp07m = row["HP07M"]
    school.hp07f = row["HP07F"]
    school.tr07m = row["TR07M"]
    school.tr07f = row["TR07F"]
    school.g08 = row["G08"]
    school.am08m = row["AM08M"]
    school.am08f = row["AM08F"]
    school.as08m = row["AS08M"]
    school.as08f = row["AS08F"]
    school.hi08m = row["HI08M"]
    school.hi08f = row["HI08F"]
    school.bl08m = row["BL08M"]
    school.bl08f = row["BL08F"]
    school.wh08m = row["WH08M"]
    school.wh08f = row["WH08F"]
    school.hp08m = row["HP08M"]
    school.hp08f = row["HP08F"]
    school.tr08m = row["TR08M"]
    school.tr08f = row["TR08F"]
    school.g09 = row["G09"]
    school.am09m = row["AM09M"]
    school.am09f = row["AM09F"]
    school.as09m = row["AS09M"]
    school.as09f = row["AS09F"]
    school.hi09m = row["HI09M"]
    school.hi09f = row["HI09F"]
    school.bl09m = row["BL09M"]
    school.bl09f = row["BL09F"]
    school.wh09m = row["WH09M"]
    school.wh09f = row["WH09F"]
    school.hp09m = row["HP09M"]
    school.hp09f = row["HP09F"]
    school.tr09m = row["TR09M"]
    school.tr09f = row["TR09F"]
    school.g10 = row["G10"]
    school.am10m = row["AM10M"]
    school.am10f = row["AM10F"]
    school.as10m = row["AS10M"]
    school.as10f = row["AS10F"]
    school.hi10m = row["HI10M"]
    school.hi10f = row["HI10F"]
    school.bl10m = row["BL10M"]
    school.bl10f = row["BL10F"]
    school.wh10m = row["WH10M"]
    school.wh10f = row["WH10F"]
    school.hp10m = row["HP10M"]
    school.hp10f = row["HP10F"]
    school.tr10m = row["TR10M"]
    school.tr10f = row["TR10F"]
    school.g11 = row["G11"]
    school.am11m = row["AM11M"]
    school.am11f = row["AM11F"]
    school.as11m = row["AS11M"]
    school.as11f = row["AS11F"]
    school.hi11m = row["HI11M"]
    school.hi11f = row["HI11F"]
    school.bl11m = row["BL11M"]
    school.bl11f = row["BL11F"]
    school.wh11m = row["WH11M"]
    school.wh11f = row["WH11F"]
    school.hp11m = row["HP11M"]
    school.hp11f = row["HP11F"]
    school.tr11m = row["TR11M"]
    school.tr11f = row["TR11F"]
    school.g12 = row["G12"]
    school.am12m = row["AM12M"]
    school.am12f = row["AM12F"]
    school.as12m = row["AS12M"]
    school.as12f = row["AS12F"]
    school.hi12m = row["HI12M"]
    school.hi12f = row["HI12F"]
    school.bl12m = row["BL12M"]
    school.bl12f = row["BL12F"]
    school.wh12m = row["WH12M"]
    school.wh12f = row["WH12F"]
    school.hp12m = row["HP12M"]
    school.hp12f = row["HP12F"]
    school.tr12m = row["TR12M"]
    school.tr12f = row["TR12F"]
    school.ug = row["UG"]
    school.amugm = row["AMUGM"]
    school.amugf = row["AMUGF"]
    school.asugm = row["ASUGM"]
    school.asugf = row["ASUGF"]
    school.hiugm = row["HIUGM"]
    school.hiugf = row["HIUGF"]
    school.blugm = row["BLUGM"]
    school.blugf = row["BLUGF"]
    school.whugm = row["WHUGM"]
    school.whugf = row["WHUGF"]
    school.hpugm = row["HPUGM"]
    school.hpugf = row["HPUGF"]
    school.trugm = row["TRUGM"]
    school.trugf = row["TRUGF"]
    school.member = row["MEMBER"]
    school.am = row["AM"]
    school.amalm = row["AMALM"]
    school.amalf = row["AMALF"]
    school.asian = row["ASIAN"]
    school.asalm = row["ASALM"]
    school.asalf = row["ASALF"]
    school.hisp = row["HISP"]
    school.hialm = row["HIALM"]
    school.hialf = row["HIALF"]
    school.black = row["BLACK"]
    school.blalm = row["BLALM"]
    school.blalf = row["BLALF"]
    school.white = row["WHITE"]
    school.whalm = row["WHALM"]
    school.whalf = row["WHALF"]
    school.pacific = row["PACIFIC"]
    school.hpalm = row["HPALM"]
    school.hpalf = row["HPALF"]
    school.tr = row["TR"]
    school.tralm = row["TRALM"]
    school.tralf = row["TRALF"]
    school.toteth = row["TOTETH"]
    school.save!

    district = District.find_or_initialize_by(nces_id: row["LEAID"],
                                              district_name: row["LEANM"],
                                              state_id: row["FIPST"])
    district.save!

    city = City.find_or_initialize_by(city_name: row["LCITY"],
                                      state_id: row["FIPST"])
    city.save!

    seed_count += 1
    print "."
    print seed_count if seed_count % 100 == 0
  end
end

puts Time.now.strftime("%d/%m/%Y %H:%M")
