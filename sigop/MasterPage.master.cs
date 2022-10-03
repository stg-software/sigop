using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    public string Titulo { get; set; }
    protected void Page_Load(object sender, EventArgs e)
    {
        Titulo = System.Configuration.ConfigurationManager.AppSettings["Titulo"];
    }
}
