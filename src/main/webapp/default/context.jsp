<%--
Copyright (c) 2013, salesforce.com, inc.
All rights reserved.

Redistribution and use in source and binary forms, with or without modification, are permitted provided
that the following conditions are met:

Redistributions of source code must retain the above copyright notice, this list of conditions and the
following disclaimer.

Redistributions in binary form must reproduce the above copyright notice, this list of conditions and
the following disclaimer in the documentation and/or other materials provided with the distribution.

Neither the name of salesforce.com, inc. nor the names of its contributors may be used to endorse or
promote products derived from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED
WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A
PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR
ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED
TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
POSSIBILITY OF SUCH DAMAGE.
--%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<p>
Force.com Canvas delivers user context information directly to your application, complete
with a scoped authentication token to allow your application to communicate with Salesforce.com.
</p>
<p>
Below is a sample of that information:
</p>
<table border="0" width="100%">
    <tr>
      <td width="30%"><b>First Name: </b></td>
      <td><span id='firstname'>${canvasRequest.context.userContext.firstName}</span></td>
    </tr>
    <tr>
      <td><b>Last Name: </b></td>
      <td><span id='lastname'>${canvasRequest.context.userContext.lastName}</span></td>
    </tr>
    <tr>
      <td><b>Username: </b></td>
      <td><span id='username'>${canvasRequest.context.userContext.userName}</span></td>
    </tr>
    <tr>
      <td><b>Email Address: </b></td>
      <td><span id='email'>${canvasRequest.context.userContext.email}</span></td>
    </tr>
    <tr>
      <td><b>Company: </b></td>
      <td><span id='company'>${canvasRequest.context.organizationContext.name} </span></td>
    </tr>
    <c:if test="${!empty canvasRequest.context.environmentContext.record.Id}" >
      <tr>
        <td colspan="2">You are currently viewing <b>${canvasRequest.context.environmentContext.record.attributes.type} ${canvasRequest.context.environmentContext.record.Id}</b></td>
      </tr>
    </c:if>
    <tr>
      <td><b>Canvas Request JSON: </b></td>
      <td><span id='company'>${canvasRequestJson}</span></td>
    </tr>
    
</table>



Canvas Context:
	User Context:
		0054W00000CiHy3QAF,rmoreira@adusa.com.teamdevp2,Renan,Moreira,rmoreira@us.ibm.com,Renan Moreira,en_US,en_US,America/New_York,00e4W000002U0Ag,null,STANDARD,USD,false,https://adusa--teamdevp2--c.documentforce.com/profilephoto/005/F,https://adusa--teamdevp2--c.documentforce.com/profilephoto/005/T,true,null,null,null,
	Org Context:
		00D8J0000008j8cUAA,RBS,false,USD,null
	Environment Context:
		https://adusa--teamdevp2.lightning.force.com/lightning/n/PDL_Webbase, Aura, Theme3,(w:800px,h:900px,mw:1000px,mh:2000px,cw:1896px,ch:821px),{Azure_AD_UPN__c=nvrxm31@us.royalahold.net},55.0 - SUMMER
	Link Context:
		https://adusa--teamdevp2.my.salesforce.com, /services/Soap/c/55.0/00D8J0000008j8c, /services/Soap/m/55.0/00D8J0000008j8c, /services/Soap/u/55.0/00D8J0000008j8c, /services/data/v55.0/, /services/data/v55.0/sobjects/, /services/data/v55.0/search/, /services/data/v55.0/query/, /services/data/v55.0/recent/, /0054W00000CiHy3QAF, /services/data/v31.0/chatter/feeds, /services/data/v55.0/chatter/groups, /services/data/v55.0/chatter/users, /services/data/v31.0/chatter/feed-items
App Context:
		,PDL_Webbase_Canvas_App,06P8J0000004CM2,1.0,SIGNED_REQUEST,09H8J00000000Hh,https://sfcanvasherokuhelloworld.herokuapp.com/canvas,None
