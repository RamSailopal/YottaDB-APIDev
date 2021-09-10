helloworld(req) ;
 new res
 set res("hello")="world"
 QUIT $$response^%zmgweb(.res)
capitals(req);
 new res
 S country=""
 F  S country=$O(^CAPITALS(country)) Q:country=""  D
 . set res(country)=^CAPITALS(country)
 QUIT $$response^%zmgweb(.res)
getcapitals(req)
 new country,capital
 set country=$get(req("params","country"))
 ;
 if country="" do  QUIT $$errorResponse^%zmgweb(.errors)
 . set errors("error")="Unable to identify a capital with the specified country"
 ;
 set capital=$get(^CAPITALS(country))
 ;
 if capital="" do  QUIT $$errorResponse^%zmgweb(.errors)
 . set errors("error")="Unable to identify a capital with the specified country"
 ;
 set res("capital")=capital
 QUIT $$response^%zmgweb(.res)
addcapitals(req) ;
      new errors,country,capital,res
      ; check for errors
      set country=$get(req("body","country"))
      if country="" do  QUIT $$errorResponse^%zmgweb(.errors)
      . set errors("error")="Country is missing or empty"
      ;
      set capital=$get(req("body","capital"))
      if capital="" do  QUIT $$errorResponse^%zmgweb(.errors)
      . set errors("error")="capital is missing or empty"
      set ^CAPITALS(country)=capital
      set res("ok")="true"
      set res("country")=country
      QUIT $$response^%zmgweb(.res)
delcapitals(req)
 new country,capital
 set country=$get(req("params","country"))
 ;
 if country="" do  QUIT $$errorResponse^%zmgweb(.errors)
 . set errors("error")="No country has been specified"
 ;
 kill ^CAPITALS(country)
 set res("response")=country_" has been removed"
 QUIT $$response^%zmgweb(.res)
