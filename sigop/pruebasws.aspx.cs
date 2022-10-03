using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ws;

public partial class pruebasws : System.Web.UI.Page
{
    ws.wsSigob WS = new ws.wsSigob();
    ws.kardex p;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        p.Id = Guid.NewGuid().ToString();
        p.Nombre = "ANDRES";
        p.Paterno = "LOPEZ";
        p.Materno = "LOPEZ";
        p.FechaNacimiento = Convert.ToDateTime("30/08/1983");
        p.RFC = "LOLR8308307I9";
        p.CURP = "LOLR830830HDFLLP08";
        p.SEXO = "1";
        p.correoins = "rlopez@scsisoluciones.com";
        p.correoper = "rlopez.lopez83gmail.com";
        p.estadocivil = 2;
        p.celuarp = "9511282963";
        p.celularof = "9511282963";
        p.tiposangre = 1;
        p.licenciatipo = "A";
        p.licencianumero = "123456";
        p.licenciafin = Convert.ToDateTime("30/08/1983");
        p.dependientes = 3;
        p.nss = "12345678";
        p.fechaingreso = Convert.ToDateTime("30/08/1983");
        p.noempleado = "AA550";
        p.claveelector = "LOLR830830AASDASD";
        p.estatus = 1;
        p.beneficiario = "VIOLETA NAYELY HERNANDEZ CASAS";

        string errores = WS.KardexAlta(p);
        
    }
}