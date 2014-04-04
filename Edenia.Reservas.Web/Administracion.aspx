<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Administracion.aspx.cs" Inherits="Edenia.Reservas.Web.Administracion" %>

<%@ Register Assembly="Obout.Ajax.UI" Namespace="Obout.Ajax.UI.ColorPicker" TagPrefix="obout" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Administracion</title>

    <script type="text/javascript" src="js/jquery-1.9.1.js"></script>
    <script type="text/javascript" src="js/jquery-ui.js"></script>
    <script type="text/javascript" src="SpryAssets/SpryTabbedPanels.js" ></script>
    <script type="text/javascript" src="js/Script.js"></script>

    <%--<script type="text/javascript" src="js/colorpicker.js"></script>
	<script type="text/javascript" src="js/eye.js"></script>--%>
   
    <link rel="stylesheet" type="text/css"  href="css/jquery-ui.css" />
    <link href="SpryAssets/SpryTabbedPanels.css" rel="stylesheet" type="text/css" />    
    <link href="css/finderEdenia.css" rel="stylesheet" type="text/css" />
    <link href="css/reset.css" rel="stylesheet" type="text/css" />    
   <%-- <link rel="stylesheet" type="text/css" href="css/colorpicker.css">--%>   

</head>
<body>
    <form id="form1" runat="server">
    <asp:UpdatePanel runat="server">
        <ContentTemplate>

        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        </asp:ToolkitScriptManager>
            <div id="wrapper">
                <div id="AdmonEdenia">
                    <div id="headerAdmon">
                        <div class="wrapDivAdmon">
                        </div>
                    </div>
                    <div id="barraHerramientaSesion" class="clearfix" style="float:left;">
                        <ul class="TabbedPanelsTabGroup">
                            <li><asp:LinkButton ID="bttDiseño" Text="Diseño" runat="server" CssClass="icoOpc"/></li>
                            <li class="sepHtas"> | </li>
                            <li><asp:LinkButton ID="btnSalir" Text="Salir" runat="server" class="logout" 
                                    onclick="btnSalir_Click" /></li>
                        </ul>
                    </div>

                    <div class="col9" style="padding-bottom:20px;">
                        <p class="userBarError">
                            <asp:Label ID="lblmensaje" Text="" runat="server"/>
                        </p>
                        <p class="userBarOk">
                            <asp:Label ID="lblmensajeOk" Text="" runat="server"/>
                        </p>
                        <p>
                            <asp:ImageButton ID="AC_btnAdd" runat="server" CausesValidation="true" CssClass="pane-pos" style="border-color:White; height:auto; width:auto;"
                                ImageUrl="~/images/ico-add.png" OnClick="AC_btnAdd_Click" TabIndex="84" ToolTip="Agregar Estilo"/>
                        </p>                        
                    </div> 
                    <div id="AddDiseno">
                        <div class="col3">
                            <label>Control</label>                        
                            <asp:DropDownList ID="ddrControles" runat="server" Width="100%" Height="26px" 
                                CssClass="clsTextContenedor" AutoPostBack="True" onclick="Borrar()"
                                onselectedindexchanged="ddrControles_SelectedIndexChanged">
                            </asp:DropDownList>
                        </div>
                        <div class="col3">
                            <label>Estilo</label>
                            <asp:DropDownList ID="ddrEstilos" runat="server" Width="100%" Height="26px" 
                                CssClass="clsTextContenedor" onclick="Borrar()" 
                                onselectedindexchanged="ddrEstilos_SelectedIndexChanged" AutoPostBack="True">
                            </asp:DropDownList>
                        </div>
                        <div class="col3">
                            <label>Valor</label>
                            <asp:TextBox ID="txtValor" runat="server" Width="100%" Height="23px" CssClass="clsTextContenedor" onclick="Borrar()"/>
                            <asp:TextBox ID="txtColor" runat="server" Visible="false" Width="100%" Height="23px" CssClass="clsTextContenedor"  onclick="Borrar()"/>                           
                            <obout:ColorPickerExtender ID="ColorPickerExtender1" runat="server"
                                AutoPostBack="false" PopupButtonID="txtColor" TargetControlID="txtColor" 
                                Title="Seleccion Color">
                            </obout:ColorPickerExtender>
                        </div>
                        <div class="clearing"></div>
                        <div class="col9">
                            <label id="lblTextoMarquesina" runat="server">Texto Marquesina</label>
                            <asp:TextBox ID="txtTextMarquesina" runat="server" Width="99%" Height="23px" CssClass="clsTextContenedor"/>
                        </div>
                    </div>

                    <div class="clearing"></div>

                    <div class="grid">
                        <asp:GridView ID="gdEstilos" runat="server" CssClass="Table" BackColor="White" 
                            AutoGenerateColumns="False" BorderStyle="None" 
                            onrowdeleting="gdEstilos_RowDeleting">
                            <Columns>
                                <asp:CommandField HeaderText="Eliminar" ButtonType="Image" DeleteImageUrl="~/images/ico-cancel.png" 
                                    ShowDeleteButton="True" ControlStyle-BorderColor="Transparent" FooterStyle-BorderStyle="None" >
                                <ControlStyle BorderColor="Transparent" />
                                <FooterStyle BorderStyle="None" />
                                </asp:CommandField>
                                <asp:BoundField DataField="TipoControl" HeaderText="Control" />
                                <asp:BoundField DataField="NombreEstilo" HeaderText="Estilo" />
                                <asp:BoundField DataField="ValorStyle" HeaderText="Valor" />
                                <asp:BoundField DataField="idTipoControl" HeaderText="idTipoControl" 
                                    Visible="False" />
                                <asp:BoundField DataField="idTipoEstilo" HeaderText="idTipoEstilo" 
                                    Visible="False" />
                            </Columns>
                            <FooterStyle CssClass="TableHead" ForeColor="Black" />
                            <HeaderStyle CssClass="TableHead" />
                            <RowStyle BackColor="White" HorizontalAlign="Center" />
                            <AlternatingRowStyle BackColor="#EFEFEF" HorizontalAlign="Center" />
                            <EmptyDataTemplate>
                                No se encontraron registros
                            </EmptyDataTemplate>
                        </asp:GridView>
                    </div>
                </div>                
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>        
    </form>
</body>
</html>
