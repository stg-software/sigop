<%@ Page Title="" Language="C#" MasterPageFile="~/kardex/MasterPageKardex.master" AutoEventWireup="true" CodeFile="insertar.aspx.cs" Inherits="kardex_insertar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3>Agregar</h3>
    <div class="form-div">
        <div class="kardex-insert">
            <h4 class="secTitle">Generales</h4>
            <div class="inser-img-cont">
                <img src="https://picsum.photos/200/300" alt="Alternate Text" />
            </div>
            <div class="insName">
                <asp:Label ID="lblInsNom" runat="server" Text="Label">Nombre:</asp:Label> <br />
                <asp:TextBox ID="txtInsNom" CssClass="txtBox" runat="server" placeholder="Nombre"></asp:TextBox>
            </div>
            <div class="insApP">
                <asp:Label ID="lblInsApPat" runat="server" Text="Label">Apellido Paterno:</asp:Label> <br />
                <asp:TextBox ID="txtInsApPat" CssClass="txtBox" runat="server" placeholder="Apellido Paterno"></asp:TextBox>
            </div>
            <div class="insApM">
                <asp:Label ID="lblInsApMat" runat="server" Text="Label">Apellido Materno:</asp:Label> <br />
                <asp:TextBox ID="txtInsApMat" CssClass="txtBox" runat="server" placeholder="Apellido Materno"></asp:TextBox>
            </div>
            <div class="d-flex gap-2 curpRfc">
                <div class="txtBox">
                    <asp:Label ID="lblInsCurp" runat="server" Text="Label">CURP:</asp:Label>
                    <asp:TextBox ID="txtInsCurp" CssClass="txtBox" runat="server" placeholder="CURP"></asp:TextBox>
                </div>
                <div class="txtBox">
                    <asp:Label ID="lblRfc" runat="server" Text="Label">RFC:</asp:Label>
                    <asp:TextBox ID="txtRfc" CssClass="txtBox" runat="server" placeholder="RFC"></asp:TextBox>
                </div>
            </div>
            
            <div class="d-flex gap-2 edoCiv">
                <div class="txtBox ">
                    <asp:Label ID="lblSexo" runat="server" Text="Label">Sexo:</asp:Label>
                    <select id="selSexo" class="txtBox">
                        <option value="masculino">Masculino</option>
                        <option value="femenino">Femenino</option>
                    </select>
                    <%--<asp:TextBox ID="txtSexo" CssClass="txtBox" runat="server" placeholder="Sexo"></asp:TextBox>--%>
                </div>
                <div class="txtBox">
                    <asp:Label ID="lblEdoCiv" runat="server" Text="Label">Estado Civil:</asp:Label>
                    <select id="selEdoCiv" class="txtBox">
                        <option value="soltero">Soltero/a</option>
                        <option value="casado">Casado/a</option>
                        <option value="ubiLib">Union libre</option>
                        <option value="separado">Separado/a</option>
                        <option value="divorciado">Divorciado/a</option>
                        <option value="viudo">Viudo/a</option>
                        
                    </select>
                </div>
            </div>
            <div class="spanCuatro">
                <asp:Label ID="lblDom" runat="server" CssClass="lblJustyfyEnd" Text="Label">Domicilio:</asp:Label>
                <asp:TextBox ID="txtDom" CssClass="txtBox" runat="server" placeholder="Domicilio"></asp:TextBox>        
            </div> 
            <div class="spanDos">
                <asp:Label ID="lblFecNac" runat="server" CssClass="lblJustyfyEnd" Text="Label">Fecha de nacimiento:</asp:Label>
                <asp:TextBox ID="txtFecNac" CssClass="txtBox" runat="server" TextMode="Date"></asp:TextBox>
            </div>
            <div class="spanDos">
                <asp:Label ID="lblTipoSangre" runat="server" CssClass="lblJustyfyEnd" Text="Label">Tipo de Sangre:</asp:Label>
                <div class="d-flex">
                    <select id="selTipoSang" class="txtBox mx-1">
                        <option value="null">---</option>
                        <option value="a">A</option>
                        <option value="b">B</option>
                        <option value="ab">AB</option>
                        <option value="o">O</option>
                    </select>
                    <select id="selRh" class="txtBox">
                        <option value="null">---</option>
                        <option value="pos">Positivo +</option>
                        <option value="neg">Negatico -</option>
                    </select>
                </div>
                
            </div>
            <div class="spanCuatro">
                <asp:Label ID="lblLugNac" runat="server" CssClass="lblJustyfyEnd" Text="Label">Lugar de Nacimiento:</asp:Label>
                <asp:TextBox ID="txtLugNac" CssClass="txtBox" runat="server" placeholder="Lugar de Nacimiento"></asp:TextBox>
            </div>
            
            <div class="spanDos">
                <asp:Label ID="lblCorreoInst" runat="server" CssClass="lblJustyfyEnd" Text="Label">Correo institucional:</asp:Label>
                <asp:TextBox ID="txtCorreoInst" CssClass="txtBox" runat="server" TextMode="Email" placeholder="correo@institucional.com"></asp:TextBox>
            </div>
            <div class="spanDos">
                <asp:Label ID="lblCorreoPer" runat="server" CssClass="lblJustyfyEnd" Text="Label">Correo personal:</asp:Label>
                <asp:TextBox ID="txtCorreoPer" CssClass="txtBox" runat="server" TextMode="Email" placeholder="correo@micorreo.com"></asp:TextBox>
            </div>
            
            <div class="spanDos">
                <asp:Label ID="lblTelInst" runat="server" CssClass="lblJustyfyEnd" Text="Label">Telefono institucional:</asp:Label>
                <asp:TextBox ID="txtTelInst" CssClass="txtBox" runat="server" TextMode="Phone" placeholder=""></asp:TextBox>
            </div>
            <div class="spanDos">
                <asp:Label ID="lblTelPer" runat="server" CssClass="lblJustyfyEnd" Text="Label">Telefono personal:</asp:Label>
                <asp:TextBox ID="txtTelPer" CssClass="txtBox" runat="server" TextMode="Phone" placeholder=""></asp:TextBox>
            </div>
            
            <div class="spanCuatro">
                <div class="divTres">
                    <div>
                        <asp:Label ID="lblLicTipo" runat="server" CssClass="lblJustyfyEnd" Text="Label">Tipo de licencia:</asp:Label>
                        <asp:TextBox ID="txtLicTipo" CssClass="txtBox" runat="server" placeholder="Tipo de licencia"></asp:TextBox>
                    </div>
                    <div>
                        <asp:Label ID="lblLicNum" runat="server" CssClass="lblJustyfyEnd" Text="Label">Numero de licencia:</asp:Label>
                        <asp:TextBox ID="txtLicNum" CssClass="txtBox" runat="server" placeholder="Numero de licencia"></asp:TextBox>
                    </div>
                    <div>
                        <asp:Label ID="lblLicVenc" runat="server" CssClass="lblJustyfyEnd" Text="Label">Fecha de vencimineto:</asp:Label>
                        <asp:TextBox ID="txtLicVenc" CssClass="txtBox" runat="server" TextMode="Date" ></asp:TextBox>
                    </div>
                </div> 
            </div>
            
            <div class="spanDos">
                <asp:Label ID="lblNss" runat="server" CssClass="lblJustyfyEnd" Text="Label">NSS:</asp:Label>
                <asp:TextBox ID="txtNss" CssClass="txtBox" runat="server" placeholder="Nuemo de seguro social"></asp:TextBox>
            </div>
            <div class="spanDos">
                <asp:Label ID="lblDepEco" runat="server" CssClass="lblJustyfyEnd" Text="Label">Dependientes:</asp:Label>
                <asp:TextBox ID="txtDepEco" CssClass="txtBox" runat="server" placeholder="Nuemo de dependientes economicos"></asp:TextBox>
            </div>

            <div class="spanDos">
                <asp:Label ID="lblFecIng" runat="server" CssClass="lblJustyfyEnd" Text="Label">Fecha de ingreso:</asp:Label>
                <asp:TextBox ID="txtFecIng" CssClass="txtBox" runat="server" TextMode="Date"></asp:TextBox>
            </div>
            <div class="spanDos">
                <asp:Label ID="lblnumExp" runat="server" CssClass="lblJustyfyEnd" Text="Label">Expediente:</asp:Label>
                <asp:TextBox ID="txtNumExp" CssClass="txtBox" runat="server" placeholder="Nuemo de expediente"></asp:TextBox>
            </div>

            <div class="spanCuatro">
                <asp:Label ID="lblBenSeg" runat="server" CssClass="lblJustyfyEnd" Text="Label">Beneficiarios:</asp:Label>
                <asp:TextBox ID="txtBenSeg" CssClass="txtBox" runat="server" placeholder="Beneficiarios del seguro"></asp:TextBox>
            </div>
            <div class="spanCuatro">
                <div class="divTres">
                    <div>
                        <asp:Label ID="lblCveElect" runat="server" CssClass="lblJustyfyEnd" Text="Label">Clave de elector:</asp:Label>
                        <asp:TextBox ID="txtCveElect" CssClass="txtBox" runat="server" placeholder="Clave de elector"></asp:TextBox>
                    </div>
                    <div>
                        <asp:Label ID="lblNoDoc" runat="server" CssClass="lblJustyfyEnd" Text="Label">No documento:</asp:Label>
                        <asp:TextBox ID="txtNoDoc" CssClass="txtBox" runat="server" placeholder="Numero de documento"></asp:TextBox>
                    </div>
                    <div>
                        <asp:Label ID="lblEstat" runat="server" CssClass="lblJustyfyEnd" Text="Label">Estatus:</asp:Label>
                        <asp:TextBox ID="txtEstat" CssClass="txtBox" runat="server" placeholder="Estatus"></asp:TextBox>
                    </div>
                </div>
            </div>
            
            <div class="spanCuatro">
                <div class="divTres">
                    <div>
                        <asp:Label ID="lblEstudios" runat="server" CssClass="lblJustyfyEnd" Text="Label">Ultimo grado de estudio:</asp:Label>
                        <select id="selEstudios" class="txtBox">
                            <option value="null">---</option>  
                            <option value="sec">Secundaria</option>
                            <option value="prepa-bach">Preparatoria/Bachillerato</option>
                            <option value="tsu">Tecnico Superior Universitario</option>
                            <option value="lic">Licensiatura</option>
                            <option value="maest">Maestria</option>
                            <option value="doc">Doctorado</option>
                            <option value="postDoc">Postdoctorado</option>
                        </select>
                    </div>
                    <div>
                        <asp:Label ID="lblEsp" runat="server" CssClass="lblJustyfyEnd" Text="Label">Especialidad:</asp:Label>
                        <asp:TextBox ID="txtEsp" CssClass="txtBox" runat="server" placeholder="Especialidad"></asp:TextBox>
                    </div>
                    <div>
                        <asp:Label ID="lblImc" runat="server" CssClass="lblJustyfyEnd" Text="Label">IMC:</asp:Label>
                        <asp:TextBox ID="txtImc" CssClass="txtBox" runat="server" placeholder="IMC"></asp:TextBox>
                    </div>
                </div>
                
            </div>
        </div>
        <hr />
        <div class="kardex-insert">
            <h4 class="secTitle">Datos policiales</h4>
            <div class="spanDos">
                <asp:Label ID="lblCargo" runat="server" CssClass="lblJustyfyEnd" Text="Label">Cargo:</asp:Label>
                <asp:TextBox ID="txtCargo" CssClass="txtBox" runat="server" placeholder="Cargo"></asp:TextBox>
            </div>
            <div class="spanDos">
                <asp:Label ID="lblGradoPol" runat="server" CssClass="lblJustyfyEnd" Text="Label">Grado:</asp:Label>
                <asp:TextBox ID="txtGradoPol" CssClass="txtBox" runat="server" placeholder="Grado policial"></asp:TextBox>
            </div>
            <div class="spanDos">
                <asp:Label ID="lblCuip" runat="server" CssClass="lblJustyfyEnd" Text="Label">CUIP:</asp:Label>
                <asp:TextBox ID="txtCuip" CssClass="txtBox" runat="server" placeholder="Clave Unica de Identificacion Permanente"></asp:TextBox>
            </div>
            <div class="spanDos">
                <asp:Label ID="lblCup" runat="server" CssClass="lblJustyfyEnd" Text="Label">CUP:</asp:Label>
                <asp:TextBox ID="txtCup" CssClass="txtBox" runat="server" placeholder="Certificado Unico Policial"></asp:TextBox>
            </div>
            <div class="spanDos">
                <asp:Label ID="lblLoc" runat="server" CssClass="lblJustyfyEnd" Text="Label">LOC:</asp:Label>
                <asp:TextBox ID="txtLoc" CssClass="txtBox" runat="server" placeholder="Licencia Oficial Colectiva"></asp:TextBox>
            </div>
            <div class="spanDos">
                <asp:Label ID="lblVigCred" runat="server" CssClass="lblJustyfyEnd" Text="Label">Vigencia:</asp:Label>
                <asp:TextBox ID="txtVigCred" CssClass="txtBox" runat="server" placeholder="Vigencia de credencial"></asp:TextBox>
            </div>
            <div class="spanCuatroDoble">
                <asp:Label ID="lblTrabajosPrv" runat="server" CssClass="lblJustyfyEnd" Text="Label">Instituciones en las que ha laborado:</asp:Label>
                <asp:TextBox ID="txtTrabajosPrev" CssClass="txtBox" runat="server" placeholder="Instituciones de seguridad en las que ha laborado preivio a la SCC"></asp:TextBox>
            </div>
        </div>
        <hr />

        <div class="kardex-insert">
            <h4 class="secTitle">Adscripciones</h4>
            <div class="spanDos">
                <asp:Label ID="lblAdscrip" runat="server" CssClass="lblJustyfyEnd" Text="Label">Adscripcion:</asp:Label>
                <select id="selAdscrip" class="txtBox">
                    <option value="null">---</option>  
                    <option value=""></option>
                    <option value=""></option>
                    <option value=""></option>
                    <option value=""></option>
                    <option value=""></option>
                    <option value=""></option>
                    <option value=""></option>
                </select>
            </div>
            <div class="spanDos">
                <asp:Label ID="lblFunciones" runat="server" CssClass="lblJustyfyEnd" Text="Label">Funciones:</asp:Label>
                <select id="selFunciones" class="txtBox">
                    <option value="null">---</option>  
                    <option value=""></option>
                    <option value=""></option>
                    <option value=""></option>
                    <option value=""></option>
                    <option value=""></option>
                    <option value=""></option>
                    <option value=""></option>
                </select>
            </div>
            <div class="spanDos">
                <asp:Label ID="lblInstal" runat="server" CssClass="lblJustyfyEnd" Text="Label">Instalaciones:</asp:Label>
                <asp:TextBox ID="txtInstal" CssClass="txtBox" runat="server" placeholder="Instalaciones de adscripcion"></asp:TextBox>
            </div>
            <div class="spanDos">
                <asp:Label ID="lblFecAsig" runat="server" CssClass="lblJustyfyEnd" Text="Label">Fecha de asignacion:</asp:Label>
                <asp:TextBox ID="txtFecAsig" CssClass="txtBox" runat="server" TextMode="Date"></asp:TextBox>
            </div>
            <div class="spanDos">
                <asp:Label ID="lblFecInic" runat="server" CssClass="lblJustyfyEnd" Text="Label">Fecha de inicio de cargo actual:</asp:Label>
                <asp:TextBox ID="txtFecInic" CssClass="txtBox" runat="server" TextMode="Date"></asp:TextBox>
            </div>
            <div class="spanDos">
                <asp:Label ID="lblOficAsig" runat="server" CssClass="lblJustyfyEnd" Text="Label">Oficio de asignacion:</asp:Label>
                <asp:TextBox ID="txtOficAsig" CssClass="txtBox" runat="server" placeholder="No de oficio de asignacion"></asp:TextBox>
            </div>
            <div class="spanDos">
                <asp:Label ID="lblEstatCargo" runat="server" CssClass="lblJustyfyEnd" Text="Label">Estatus en el cargo:</asp:Label>
                <select id="selEstatCargo" class="txtBox">
                    <option value="null">---</option>  
                    <option value=""></option>
                    <option value=""></option>
                    <option value=""></option>
                    <option value=""></option>
                    <option value=""></option>
                    <option value=""></option>
                    <option value=""></option>
                </select>
            </div>
            <div class="spanDos">
                <asp:Label ID="lblArea" runat="server" CssClass="lblJustyfyEnd" Text="Label">Area:</asp:Label>
                <asp:TextBox ID="txtArea" CssClass="txtBox" runat="server" placeholder="Area"></asp:TextBox>
            </div>
        </div>
        <hr />
        <div class="kardex-insert">
            <h4 class="secTitle">Control de confianza</h4>
            <div class="spanDos">
                <asp:Label ID="lblEval" runat="server" CssClass="lblJustyfyEnd" Text="Label">Evaluacion:</asp:Label>
                <asp:TextBox ID="txtEval" CssClass="txtBox" runat="server" placeholder="Evaluacion"></asp:TextBox>
            </div>
            <div class="spanDos">
                <asp:Label ID="Label1" runat="server" CssClass="lblJustyfyEnd" Text="Label">Estatus en el cargo:</asp:Label>
                <select id="selEstatEval" class="txtBox">
                    <option value="null">---</option>  
                    <option value=""></option>
                    <option value=""></option>
                    <option value=""></option>
                    <option value=""></option>
                    <option value=""></option>
                    <option value=""></option>
                    <option value=""></option>
                </select>
            </div>
            <div class="spanCuatro">
                <asp:Label ID="lblInstEval" runat="server" CssClass="lblJustyfyEnd" Text="Label">Instancia evaluadora:</asp:Label>
                <asp:TextBox ID="txtInstEval" CssClass="txtBox" runat="server" placeholder="Instancia evaluadora"></asp:TextBox>
            </div>
            <div class="spanDos">
                <asp:Label ID="lblFecEval" runat="server" CssClass="lblJustyfyEnd" Text="Label">Fecha de evaluacion:</asp:Label>
                <asp:TextBox ID="txtFecEval" CssClass="txtBox" runat="server" TextMode="Date"></asp:TextBox>
            </div>
            <div class="spanDos">
                <asp:Label ID="lblNoCert" runat="server" CssClass="lblJustyfyEnd" Text="Label">Certificado:</asp:Label>
                <asp:TextBox ID="txtNoCert" CssClass="txtBox" runat="server" placeholder="Numero de certificado"></asp:TextBox>
            </div>
        </div>
        <hr />
        <div class="kardex-insert">
            <h4 class="secTitle">Enfermedad</h4>
            <div class="spanCuatro">
                <asp:Label ID="Label2" runat="server" CssClass="lblJustyfyEnd" Text="Label">Enfermedad:</asp:Label>
                <select id="selEnfermedad" class="txtBox">
                    <option value="null">---</option>  
                    <option value=""></option>
                    <option value=""></option>
                    <option value=""></option>
                    <option value=""></option>
                    <option value=""></option>
                    <option value=""></option>
                    <option value=""></option>
                </select>
            </div>
        </div>
        <hr />
        <div class="kardex-insert">
            <h4 class="secTitle">Documentacion digital</h4>
            <div class="spanCuatro">
                <asp:Label ID="lblActaNac" runat="server" CssClass="lblJustyfyEnd" Text="Label">Acta:</asp:Label>
                <input type="file" id="actaNac" value="" />
            </div>
            <div class="spanCuatro">
                <asp:Label ID="lblCompEst" runat="server" CssClass="lblJustyfyEnd" Text="Label">Ultimno comprobante de estudio:</asp:Label>
                <input type="file" id="compEst" value="" />
            </div>


             <div class="spanCuatro">
                <asp:Label ID="lblLicCond" runat="server" CssClass="lblJustyfyEnd" Text="Label">Licencia de conducir:</asp:Label>
                <input type="file" id="licCond" value="" />
            </div>
            <div class="spanCuatro">
                <asp:Label ID="lblCartaAntPen" runat="server" CssClass="lblJustyfyEnd" Text="Label">Carta de antecedentes no penales:</asp:Label>
                <input type="file" id="cartaAntPen" value="" />
            </div>
             <div class="spanCuatro">
                <asp:Label ID="lblCartMil" runat="server" CssClass="lblJustyfyEnd" Text="Label">Cartilla militar:</asp:Label>
                <input type="file" id="cartMil" value="" />
            </div>
            <div class="spanCuatro">
                <asp:Label ID="lblIne" runat="server" CssClass="lblJustyfyEnd" Text="Label">Credencial para votar:</asp:Label>
                <input type="file" id="Ine" value="" />
            </div>
             <div class="spanCuatro">
                <asp:Label ID="lblCurp" runat="server" CssClass="lblJustyfyEnd" Text="Label">CURP:</asp:Label>
                <input type="file" id="Curp" value="" />
            </div>
            <div class="spanCuatro">
                <asp:Label ID="lblCompDom" runat="server" CssClass="lblJustyfyEnd" Text="Label">Comprobante de domicilio:</asp:Label>
                <input type="file" id="compDom" value="" />
            </div>
             <div class="spanCuatro">
                <asp:Label ID="lblAsigServ" runat="server" CssClass="lblJustyfyEnd" Text="Label">Asignacion de servicio:</asp:Label>
                <input type="file" id="asigServ" value="" />
            </div>
            <div class="spanCuatro">
                <asp:Label ID="lblConstCarg" runat="server" CssClass="lblJustyfyEnd" Text="Label">Ultimno comprobante de estudio:</asp:Label>
                <input type="file" id="constCarg" value="" />
            </div>
        </div>
        <div class="d-flex justify-content-center my-3">
            <asp:Button ID="Button1" CssClass="btn btnInsert m-auto" runat="server" Text="Agregar" />
        </div>
    </div>
</asp:Content>

