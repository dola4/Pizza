using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjWebCsIntroductionApsNet
{
    public partial class webControlesValidation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnInscrire_Click(object sender, EventArgs e)
        {
            Server.Transfer("webPizza.aspx");
        }
    }
}