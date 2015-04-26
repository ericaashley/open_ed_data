var url = "http://localhost:3000/api/v1/states.jsonp?callback=?";

$.getJSON(url, function (json) {
  var statesData = new Array();
  for (i = 0; i < 58; i++) {
      statesData.push({
        stateId: json.states[i].id,
        stateAbbrev: json.states[i].state_abbrev,
        stateName: json.states[i].state_name,
        districtCount: json.states[i].district_count,
        schoolCount: json.states[i].school_count
      });
  }

  function tooltipHtml(n, d) {
		return "<h4>"+n+"</h4><table>"+
			"<tr><td>Districts:</td><td>"+(d.districtCount)+"</td></tr>"+
			"<tr><td>Schools:</td><td>"+(d.schoolCount)+"</td></tr>"+
			"</table>";
	}

	var finalData ={};	/* Sample random data. */

	["HI", "AK", "FL", "SC", "GA", "AL", "NC", "TN", "RI", "CT", "MA",
	"ME", "NH", "VT", "NY", "NJ", "PA", "DE", "MD", "WV", "KY", "OH",
	"MI", "WY", "MT", "ID", "WA", "DC", "TX", "CA", "AZ", "NV", "UT",
	"CO", "NM", "OR", "ND", "SD", "NE", "IA", "MS", "IN", "IL", "MN",
	"WI", "MO", "AR", "OK", "KS", "LA", "VA"]
		.forEach(function(d) {
      var stateObj = statesData.filter(function(obj) {
        return obj.stateAbbrev == d;
      });

			var stateId = stateObj[0]["stateId"],
          districtCount = stateObj[0]["districtCount"],
          schoolCount = stateObj[0]["schoolCount"];
			finalData[d] = {
          stateId: stateId,
          districtCount: districtCount,
          schoolCount: schoolCount,
          color:d3.interpolate("#ffffcc", "#027B7F")(schoolCount/5000)
      };
		});

	/* draw states on id #statesvg */
	uStates.draw("#statesvg", finalData, tooltipHtml);
});
