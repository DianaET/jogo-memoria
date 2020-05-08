// JavaScript Document
var xmlHttp

function showcoordination(str)
{

 if (str.length==0)
 {
   document.getElementById("txtvalor").innerHTML=""
   return
 }
 xmlHttp=GetXmlHttpObject()
 if (xmlHttp==null)
 {
   alert ("Browser does not support HTTP Request")
   return
 }
  var url="getcoordination.php"
  url=url+"?procurar="+str
  url=url+"&sid="+Math.random()
  xmlHttp.onreadystatechange=stateChanged
  xmlHttp.open("GET",url,true)
  xmlHttp.send(null)
}

function showpartipants(str)
{
    if (str.length==0)
    {
        document.getElementById("txtvalor").innerHTML=""
    return
    }
    xmlHttp=GetXmlHttpObject()
    if (xmlHttp==null)
    {
        alert ("Browser does not support HTTP Request")
        return
    }
    var url="getparticipants.php"
    url=url+"?procurar="+str
    url=url+"&sid="+Math.random()
    xmlHttp.onreadystatechange=stateChanged
    xmlHttp.open("GET",url,true)
    xmlHttp.send(null)

}

function showAnything( type ){

  if ( type == "coordenadores" ){
    showcoordination("coordenadores");
  } else if ( type == "participantes"){
    showpartipants("participantes");
  }

}


function stateChanged()
{
if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
{
document.getElementById("txtvalor").innerHTML=xmlHttp.responseText
}
}

function GetXmlHttpObject()
{
var objXMLHttp=null
if (window.XMLHttpRequest)
{
objXMLHttp=new XMLHttpRequest()
}
else if (window.ActiveXObject)
{
objXMLHttp=new ActiveXObject("Microsoft.XMLHTTP")
}
return objXMLHttp
}
