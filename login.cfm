<cfset clientID = "726795246693-tql64b3e6ajmgko86pn9a95valv7j8hj.apps.googleusercontent.com">
<cfset clientSecret = "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">
<cfset redirectURI = "http://127.0.0.1:8500/cfoauth/login.cfm">

<cfset oauthURL = "https://accounts.google.com/o/oauth2/auth">
<cfset tokenURL = "https://oauth2.googleapis.com/token">
<cfset userInfoURL = "https://www.googleapis.com/oauth2/v1/userinfo?alt=json">

<cfif structKeyExists(url, "code")>
    <cfhttp url="#tokenURL#" method="post">
        <cfhttpparam type="formfield" name="code" value="#url.code#">
        <cfhttpparam type="formfield" name="client_id" value="#clientID#">
        <cfhttpparam type="formfield" name="client_secret" value="#clientSecret#">
        <cfhttpparam type="formfield" name="redirect_uri" value="#redirectURI#">
        <cfhttpparam type="formfield" name="grant_type" value="authorization_code">
    </cfhttp>

    <cfset tokenResponse = deserializeJSON(cfhttp.filecontent)>
    
    <cfif structKeyExists(tokenResponse, "access_token")>
        <cfhttp url="#userInfoURL#" method="get">
            <cfhttpparam type="header" name="Authorization" value="Bearer #tokenResponse.access_token#">
        </cfhttp>
        
        <cfset userInfo = deserializeJSON(cfhttp.filecontent)>
        
        <cfset session.user = userInfo>
        
        <cfheader statusCode="302" statusText="Found">
        <cfheader name="Location" value="welcome.cfm">
    <cfelse>
        <cfheader statusCode="302" statusText="Found">
        <cfheader name="Location" value="index.cfm">
    </cfif>
<cfelse>
    <cfset queryString = "client_id=" & clientID & "&redirect_uri=" & redirectURI & "&response_type=code&scope=email profile&access_type=offline">
    <cfset location(url="#oauthURL#?#queryString#", addtoken=false)>
</cfif>
