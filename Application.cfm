<cfapplication 
    name="MyApp" 
    sessionmanagement="true" 
    sessiontimeout="#CreateTimeSpan(0,0,30,0)#" 
    applicationtimeout="#CreateTimeSpan(1,0,0,0)#">