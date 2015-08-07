using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DefectWriter
{
    public partial class About : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            ClientScriptManager cs = Page.ClientScript;
            System.Text.StringBuilder sb = new System.Text.StringBuilder();
            sb.AppendLine(@"var secret = ""383840403739373965666566""; //up up down down left right left right a b a b");
            //sb.AppendLine(@"var secret = ""717968""; //up up down down left right left right a b a b");
            sb.AppendLine(@"var input = """";");
            sb.AppendLine("var timer;");
            sb.AppendLine("var mode = false;");
            sb.AppendLine("$(document).keyup(function(e) {");
            sb.AppendLine("input += e.which;  ");
            sb.AppendLine("    clearTimeout(timer);");
            sb.AppendLine("    timer = setTimeout(function() { ");
            sb.AppendLine("        check_input();  ");
            sb.AppendLine(@"        input = """"; }, 300); ");
            sb.AppendLine("});");
            sb.AppendLine("function check_input() {");
            sb.AppendLine("    if(input == secret) {");
            sb.AppendLine("        //the secret code");
            sb.AppendLine("        alert('Congrats, you just found the meaning of life: 42');");
            sb.AppendLine("    }");
            sb.AppendLine("}");
            sb.AppendLine("$(document).ready(function() {");
            sb.AppendLine("    setInterval(function() { $('#info').html('Keystroke: ' + input); }, 100);");
            sb.AppendLine("});");

            cs.RegisterClientScriptBlock(this.GetType(), "myEasterEgg", sb.ToString(), true);
            
            
        }
    }
}
