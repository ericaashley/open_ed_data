var url = "http://localhost:3000/api/v1/states.jsonp?callback=?";

$.getJSON(url, function (json) {
  var statesData = new Array;
  for (i = 0; i < 58; i++) {
      statesData.push({
        state_id: json.states[i].id,
        state_abbrev: json.states[i].state_abbrev,
        state_name: json.states[i].state_name,
        district_count: json.states[i].district_count,
        school_count: json.states[i].school_count
      });
  };

  function tooltipHtml(n, d){	/* function to create html content string in tooltip div. */
		return "<h4>"+n+"</h4><table>"+
			"<tr><td>Districts:</td><td>"+(d.district_count)+"</td></tr>"+
			"<tr><td>Schools:</td><td>"+(d.school_count)+"</td></tr>"+
			"</table>";
	}

	var finalData ={};	/* Sample random data. */

	["HI", "AK", "FL", "SC", "GA", "AL", "NC", "TN", "RI", "CT", "MA",
	"ME", "NH", "VT", "NY", "NJ", "PA", "DE", "MD", "WV", "KY", "OH",
	"MI", "WY", "MT", "ID", "WA", "DC", "TX", "CA", "AZ", "NV", "UT",
	"CO", "NM", "OR", "ND", "SD", "NE", "IA", "MS", "IN", "IL", "MN",
	"WI", "MO", "AR", "OK", "KS", "LA", "VA"]
		.forEach(function(d) {
      var state_obj = statesData.filter(function(obj) {
        return obj.state_abbrev == d;
      });

			var state_id = state_obj[0]["state_id"]
        district_count = state_obj[0]["district_count"],
        school_count = state_obj[0]["school_count"];
			finalData[d] = {
          state_id: state_id,
          district_count: district_count,
          school_count: school_count,
          color:d3.interpolate("#ffffcc", "#027B7F")(school_count/5000)
      };
		});

	/* draw states on id #statesvg */
	uStates.draw("#statesvg", finalData, tooltipHtml);
});
