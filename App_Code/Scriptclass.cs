using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;

/// <summary>
/// Summary description for Scriptclass
/// </summary>
public class Scriptclass
{
	public Scriptclass()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public void ShowMsg(string myMsg)
    {
        Page page = HttpContext.Current.Handler as Page;
        string message = myMsg;
        System.Text.StringBuilder sb = new System.Text.StringBuilder();
        sb.Append("<script type = 'text/javascript'>");
        sb.Append("window.onload=function(){");
        sb.Append("alert('");
        sb.Append(message);
        sb.Append("')};");
        sb.Append("</script>");
        page.ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
      

    }
    public void scriptscoller()
    {
       System.Text.StringBuilder sb = new System.Text.StringBuilder();
       Page page = HttpContext.Current.Handler as Page;

        sb.Append("<script type = 'text/javascript'>");
        sb.Append("var memorywidth='300px'");
        sb.Append("var memoryheight='20px'");
        sb.Append("var memorybgcolor='#DEFDD9'");
        sb.Append("var memorypadding='2px' ");
        sb.Append("var borderCSS='border: 1px solid black;'");
        sb.Append("var memoryspeed=2");
        sb.Append("var pauseit=1");
        sb.Append("var persistlastviewedmsg=1");
        sb.Append("var persistmsgbehavior='onload'");
        sb.Append("var memorycontent='sfsfsfsfsfsf'");
        sb.Append("var combinedcssTable='width:'+(parseInt(memorywidth)+6)+'px;background-color:'+memorybgcolor+';padding:'+memorypadding+';'+borderCSS+';'");
        sb.Append("var combinedcss='width:'+memorywidth+';height:'+memoryheight+';'");
        sb.Append("var divonclick=(persistlastviewedmsg && persistmsgbehavior=='onclick')? 'onClick='savelastmsg()' ' : ''");
        sb.Append("memoryspeed=(document.all)? memoryspeed : Math.max(1, memoryspeed-1)");
        sb.Append("var copyspeed=memoryspeed");
        sb.Append("var pausespeed=(pauseit==0)? copyspeed: 0");
        sb.Append("var iedom=document.all||document.getElementById");
        sb.Append("if (iedom)");
        sb.Append("document.write('<span id='temp' style='visibility:hidden;position:absolute;top:-100px;left:-10000px'>'+memorycontent+'</span>')");
        sb.Append("var actualwidth=''");
        sb.Append("var memoryscroller");
        sb.Append("if (window.addEventListener)");
        sb.Append("window.addEventListener('load', populatescroller, false)");
        sb.Append("else if (window.attachEvent)");
        sb.Append("window.attachEvent('onload', populatescroller)");
        sb.Append("else if (document.all || document.getElementById)");
        sb.Append("window.onload=populatescroller");
        sb.Append("function populatescroller(){");
        sb.Append("memoryscroller=document.getElementById? document.getElementById(memoryscroller) : document.all.memoryscroller");
        sb.Append("memoryscroller.style.left=parseInt(memorywidth)+8+'px'");
        sb.Append("if (persistlastviewedmsg && get_cookie('lastscrollerpos')!='')");
        sb.Append("revivelastmsg()");
        sb.Append("memoryscroller.innerHTML=memorycontent");
        sb.Append("actualwidth=document.all? temp.offsetWidth : document.getElementById('temp').offsetWidth");
        sb.Append("lefttime=setInterval('scrollmarquee()',20)");
        sb.Append("}");
        sb.Append("function get_cookie(Name) {");
        sb.Append("var search = Name + '='");
        sb.Append("var returnvalue =''");
        sb.Append("if (document.cookie.length > 0) {");
        sb.Append("offset = document.cookie.indexOf(search)");
        sb.Append("if (offset != -1) {");
        sb.Append("offset += search.length");
        sb.Append("end = document.cookie.indexOf(';', offset)");
        sb.Append("if (end == -1)");
        sb.Append("end = document.cookie.length;");
        sb.Append("returnvalue=unescape(document.cookie.substring(offset, end))");
        sb.Append("}");
        sb.Append("}");
        sb.Append("return returnvalue;");
        sb.Append("}");
        sb.Append("function savelastmsg(){");
        sb.Append("document.cookie='lastscrollerpos='+memoryscroller.style.left");
        sb.Append("}");

          sb.Append("function revivelastmsg(){");
          sb.Append("lastscrollerpos=parseInt(get_cookie('lastscrollerpos'))");
          sb.Append("memoryscroller.style.left=parseInt(lastscrollerpos)+'px'");
          sb.Append("}");
          sb.Append("if (persistlastviewedmsg && persistmsgbehavior=='onload')");
          sb.Append("window.onunload=savelastmsg");
          sb.Append("function scrollmarquee(){");
          sb.Append("if (parseInt(memoryscroller.style.left)>(actualwidth*(-1)+8))");
          sb.Append("memoryscroller.style.left=parseInt(memoryscroller.style.left)-copyspeed+'px'");
          sb.Append("else");
           sb.Append("memoryscroller.style.left=parseInt(memorywidth)+8+'px'");
           sb.Append("}");
           sb.Append("if (iedom){");
           sb.Append("with (document){");

           sb.Append("document.write('<table border='0' cellspacing='0' cellpadding='0' style=''+combinedcssTable+''><td>')");   
            sb.Append("write('<div style='position:relative;overflow:hidden;'+combinedcss+'' onMouseover='copyspeed=pausespeed' onMouseout='copyspeed=memoryspeed'>')");
           sb.Append("write('<div id='memoryscroller' style='position:absolute;left:0px;top:0px;' '+divonclick+'></div>')");
           sb.Append("write('</div>')");
           sb.Append("document.write('</td></table>')");
           sb.Append("}");
           sb.Append("}");
           sb.Append("</script>");

           page.ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());




































































    }

}
