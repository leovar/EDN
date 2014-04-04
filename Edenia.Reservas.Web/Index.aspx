<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Edenia.Reservas.Web.Index" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" lang="es">
<head runat="server">
    <meta charset="utf-8" />
    <title>Buscador Edenia Network</title>    
   

    <!-- INICIO: scripts para validadción de fechas en el datepicker -->
    <script type="text/javascript" src="js/jquery.fechas.min.js"></script>
    <script type="text/javascript" src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
    <!-- INICIO: scripts para validadción de fechas en el datepicker -->

    <script src="js/jquery-1.9.1.js" type="text/javascript"></script>
    <script src="js/jquery-ui.js" type="text/javascript"></script>
    <script src="SpryAssets/SpryTabbedPanels.js" type="text/javascript"></script>
    

   
    <link rel="stylesheet" type="text/css"  href="css/jquery-ui.css" />
     <link href="SpryAssets/SpryTabbedPanels.css" rel="stylesheet" type="text/css" />    
    <link href="css/finderEdenia.css" rel="stylesheet" type="text/css" />    
     <link href="css/jquery.ui.autocomplete.css" rel="stylesheet" type="text/css" />


   
    

     <!-- Función para mostrar el div = "Tramo 2" y esconder el vínculo "+ Agregar otro tramo"-->
     <script type="text/javascript">
         function mostrart2() {
             var contenedor = document.getElementById("segmento-2")
             var contenedor2 = document.getElementById("tram")
             var contenedor3 = document.getElementById("vinculo");
             contenedor.style.display = "block";
             contenedor2.style.display = "block";
             contenedor3.style.display = "none";
             }
     </script>
     
         
     <!-- Función para ocultar el div = "Tramo 2" y mostrar el vínculo "+ Agregar otro tramo" -->
     <script type="text/javascript">
         function ocultart2() {
             var contenedor = document.getElementById("segmento-2")
             var contenedor2 = document.getElementById("tram")
             var contenedor3 = document.getElementById("vinculo");
             
             contenedor.style.display = "none";
             contenedor2.style.display = "none";
             contenedor3.style.display = "block";
             
         }
     </script>


       <!-- Función para mostrar el div = "Tramo 3" y esconder el vínculo "+ Agregar otro tramo"-->
     <script type="text/javascript">
         function mostrart3() {
             var contenedor = document.getElementById("segmento-3")
             var contenedor2 = document.getElementById("tram")
             var contenedor3 = document.getElementById("vinculo2");
             var contenedor4 = document.getElementById("quitartramo2");
             contenedor.style.display = "block";
             contenedor2.style.display = "block";
             contenedor3.style.display = "none";
             contenedor4.style.display = "none";
         }
     </script>
     
         
     <!-- Función para ocultar el div = "Tramo 3" y mostrar el vínculo "+ Agregar otro tramo" -->
     <script type="text/javascript">
         function ocultart3() {
             var contenedor = document.getElementById("segmento-3")
             var contenedor2 = document.getElementById("quitartramo2");
             var contenedor3 = document.getElementById("vinculo2");

             contenedor.style.display = "none";
             contenedor2.style.display = "block";
             contenedor3.style.display = "block";
             

         }
     </script>

       <!-- Función para mostrar el div = "Tramo 4" y esconder el vínculo "+ Agregar otro tramo"-->
     <script type="text/javascript">
         function mostrart4() {
             var contenedor = document.getElementById("segmento-4")
             var contenedor2 = document.getElementById("tram")
             var contenedor3 = document.getElementById("vinculo3");
             var contenedor4 = document.getElementById("quitartramo3");
             contenedor.style.display = "block";
             contenedor2.style.display = "block";
             contenedor3.style.display = "none";
             contenedor4.style.display = "none";
         }
     </script>
     
         
     <!-- Función para ocultar el div = "Tramo 3" y mostrar el vínculo "+ Agregar otro tramo" -->
     <script type="text/javascript">
         function ocultart4() {
             var contenedor = document.getElementById("segmento-4")
             var contenedor2 = document.getElementById("quitartramo3");
             var contenedor3 = document.getElementById("vinculo3");

             contenedor.style.display = "none";
             contenedor2.style.display = "block";
             contenedor3.style.display = "block";

         }
     </script>


       <!-- Función para mostrar el div = "Tramo 5" y esconder el vínculo "+ Agregar otro tramo"-->
     <script type="text/javascript">
         function mostrart5() {
             var contenedor = document.getElementById("segmento-5")
             var contenedor2 = document.getElementById("tram")
             var contenedor3 = document.getElementById("vinculo4");
             var contenedor4 = document.getElementById("quitartramo4");
             contenedor.style.display = "block";
             contenedor2.style.display = "block";
             contenedor3.style.display = "none";
             contenedor4.style.display = "none";
         }
     </script>
     
         
     <!-- Función para ocultar el div = "Tramo 5" y mostrar el vínculo "+ Agregar otro tramo" -->
     <script type="text/javascript">
         function ocultart5() {
             var contenedor = document.getElementById("segmento-5")
             var contenedor2 = document.getElementById("quitartramo4");
             var contenedor3 = document.getElementById("vinculo4");

             contenedor.style.display = "none";
             contenedor2.style.display = "block";
             contenedor3.style.display = "block";

         }
     </script>


       <!-- Función para mostrar el div = "Tramo 6" y esconder el vínculo "+ Agregar otro tramo"-->
     <script type="text/javascript">
         function mostrart6() {
             var contenedor = document.getElementById("segmento-6")
             var contenedor2 = document.getElementById("tram")
             var contenedor3 = document.getElementById("vinculo5");
             var contenedor4 = document.getElementById("quitartramo5");
             contenedor.style.display = "block";
             contenedor2.style.display = "block";
             contenedor3.style.display = "none";
             contenedor4.style.display = "none";
         }
     </script>
     
         
     <!-- Función para ocultar el div = "Tramo 6" y mostrar el vínculo "+ Agregar otro tramo" -->
     <script type="text/javascript">
         function ocultart6() {
             var contenedor = document.getElementById("segmento-6")
             var contenedor2 = document.getElementById("quitartramo5");
             var contenedor3 = document.getElementById("vinculo5");

             contenedor.style.display = "none";
             contenedor2.style.display = "block";
             contenedor3.style.display = "block";

         }
     </script>

       <!-- Función para mostrar el div = "Tramo 7" y esconder el vínculo "+ Agregar otro tramo"-->
     <script type="text/javascript">
         function mostrart7() {
             var contenedor = document.getElementById("segmento-7")
             var contenedor2 = document.getElementById("tram")
             var contenedor3 = document.getElementById("vinculo6");
             var contenedor4 = document.getElementById("quitartramo6");
             contenedor.style.display = "block";
             contenedor2.style.display = "block";
             contenedor3.style.display = "none";
             contenedor4.style.display = "none";
         }
     </script>
     
         
     <!-- Función para ocultar el div = "Tramo 7" y mostrar el vínculo "+ Agregar otro tramo" -->
     <script type="text/javascript">
         function ocultart7() {
             var contenedor = document.getElementById("segmento-7")
             var contenedor2 = document.getElementById("quitartramo6");
             var contenedor3 = document.getElementById("vinculo6");

             contenedor.style.display = "none";
             contenedor2.style.display = "block";
             contenedor3.style.display = "block";

         }
     </script>


       <!-- Función para mostrar el div = "Tramo 8" y esconder el vínculo "+ Agregar otro tramo"-->
     <script type="text/javascript">
         function mostrart8() {
             var contenedor = document.getElementById("segmento-8")
             var contenedor2 = document.getElementById("tram")
             var contenedor3 = document.getElementById("vinculo7");
             var contenedor4 = document.getElementById("quitartramo7");
             contenedor.style.display = "block";
             contenedor2.style.display = "block";
             contenedor3.style.display = "none";
             contenedor4.style.display = "none";
         }
     </script>
     
         
     <!-- Función para ocultar el div = "Tramo 8" y mostrar el vínculo "+ Agregar otro tramo" -->
     <script type="text/javascript">
         function ocultart8() {
             var contenedor = document.getElementById("segmento-8")
             var contenedor2 = document.getElementById("quitartramo7");
             var contenedor3 = document.getElementById("vinculo7");

             contenedor.style.display = "none";
             contenedor2.style.display = "block";
             contenedor3.style.display = "block";

         }
     </script>


    <!-- Funcion para mostrar y ocultar con clic el div = "Búsqueda Avanzada"-->
     <script type="text/javascript">
         function mostrarocultar() {
             var contenedor = document.getElementById("oculto")
            
             if (contenedor.style.display == "block") {
                 contenedor.style.display = "none";
                
             } 
             else{
                 contenedor.style.display = "block";
                 
                 }
         
         }
     </script>


    <!-- Función para cargar el combo de ciudades de cada "Tramo 1...8"-->
    <script type="text/javascript">
    	$(function ciudades()  {
		var ciudadesDispo = [ <%= strListaCiudades %> ];
      	$( "#<%= txtCiudadOrigen.ClientID %>" ).autocomplete({
			source: ciudadesDispo
           
		});
        
        $( "#<%= txtCiudadDestino.ClientID %>" ).autocomplete({
			source: ciudadesDispo
           
		});
	});
        
    	$(function ciudades() {
		var ciudadesDispo = [ <%= strListaCiudades %> ];
      	$( "#<%= txtCiudadOrigent2.ClientID %>" ).autocomplete({
			source: ciudadesDispo
           
		});
        
        $( "#<%= txtCiudadDestinot2.ClientID %>" ).autocomplete({
			source: ciudadesDispo
           
		});
	});
        
        	$(function ciudades() {
		var ciudadesDispo = [ <%= strListaCiudades %> ];
      	$( "#<%= txtCiudadOrigent3.ClientID %>" ).autocomplete({
			source: ciudadesDispo
           
		});
        
        $( "#<%= txtCiudadDestinot3.ClientID %>" ).autocomplete({
			source: ciudadesDispo
           
		});
	});
        
        	$(function ciudades() {
		var ciudadesDispo = [ <%= strListaCiudades %> ];
      	$( "#<%= txtCiudadOrigent4.ClientID %>" ).autocomplete({
			source: ciudadesDispo
           
		});
        
        $( "#<%= txtCiudadDestinot4.ClientID %>" ).autocomplete({
			source: ciudadesDispo
           
		});
	});
        
        	$(function ciudades() {
		var ciudadesDispo = [ <%= strListaCiudades %> ];
      	$( "#<%= txtCiudadOrigent5.ClientID %>" ).autocomplete({
			source: ciudadesDispo
           
		});
        
        $( "#<%= txtCiudadDestinot5.ClientID %>" ).autocomplete({
			source: ciudadesDispo
           
		});
	});

        	$(function ciudades() {
		var ciudadesDispo = [ <%= strListaCiudades %> ];
      	$( "#<%= txtCiudadOrigent6.ClientID %>" ).autocomplete({
			source: ciudadesDispo
           
		});
        
        $( "#<%= txtCiudadDestinot6.ClientID %>" ).autocomplete({
			source: ciudadesDispo
           
		});
	});

        	$(function ciudades() {
		var ciudadesDispo = [ <%= strListaCiudades %> ];
      	$( "#<%= txtCiudadOrigent7.ClientID %>" ).autocomplete({
			source: ciudadesDispo
           
		});
        
        $( "#<%= txtCiudadDestinot7.ClientID %>" ).autocomplete({
			source: ciudadesDispo
           
		});
	});

        	$(function ciudades() {
		var ciudadesDispo = [ <%= strListaCiudades %> ];
      	$( "#<%= txtCiudadOrigent8.ClientID %>" ).autocomplete({
			source: ciudadesDispo
           
		});
        
        $( "#<%= txtCiudadDestinot8.ClientID %>" ).autocomplete({
			source: ciudadesDispo
           
		});
	});

        	
	</script>

    <script type="text/javascript">
        function MM_jumpMenuGo(objId, targ, restore) { //v9.0
            var selObj = null; with (document) {
                if (getElementById) selObj = getElementById(objId);
                if (selObj) eval(targ + ".location='" + selObj.options[selObj.selectedIndex].value + "'");
                if (restore) selObj.selectedIndex = 0;
            }
        }

     </script>


      <!-- Función para validar las fechas de los dos calendarios del "Tramo 1"-->
      <script type="text/javascript">
          $(document).ready(function validarfecha() {
              $("#txtSalidaDate").datepicker({
                  numberOfMonths: 2,
                  showButtonPanel: false,

                  changeMonth: true,
                  changeYear: true,
                  minDate: new Date(),
                  dateFormat: "d/m/y",
                  onSelect: function validarfecha(dateText, inst) {
                      var lockDate = new Date($('#txtSalidaDate').datepicker('getDate'));
                      lockDate.setDate(lockDate.getDate() + 0);
                      $('input#txtRegresoDate').datepicker('option', 'minDate', lockDate);
                  }


              });


              $("#txtRegresoDate").datepicker({
                  numberOfMonths: 2,
                  showButtonPanel: false,

                  changeMonth: true,
                  changeYear: true,
                  minDate: new Date(),
                  dateFormat: "d/m/y"

              });


          });
    </script>
    
   

</head>
<body>

 
 
<form id="form1" runat="server">
    
 <asp:UpdatePanel ID="udpCampos" runat="server">
  <ContentTemplate>
    
  <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
  </asp:ToolkitScriptManager>
    
    <div id="wrapper">
         <div id="finderEdenia" runat="server">
              <div id="headerBuscador">
                  <asp:Panel ID="pnlInfousuario" runat="server" Visible="false">
                
                   <div id="sesionUsuario" class="clearfix">
                        <p>
                            <span class="icoSesionUsuario">
                                <asp:Label ID="lblTipoUsuario" CssClass="agenciaNombreUsuario" runat="server" ></asp:Label></span>
                            <asp:Label ID="lblUsuario" CssClass="agenciaNombreUsuario" runat="server" ></asp:Label>
                        </p>
                   </div>
                     </asp:Panel>
                   <div id="barraHerramientaSesion" runat="server" class="clearfix">
                        <ul>
                             <li><a href="#" title="Facebook" target="_top" class="icofbk">Facebook</a></li>
                             <li class="sepHtas"> | </li>
                             <li><a href="#" title="Twitter" target="_top" class="icoTwtr">Twitter</a></li>
                             <li class="sepHtas"> | </li>
                             <li><asp:LinkButton ID="bttAdministrar" Text="Admon" runat="server"
                                     CssClass="icoOpc" onclick="bttAdministrar_Click"/></li>
                             <li class="sepHtas"> | </li>
                             <li><asp:LinkButton ID="lnkBuscar" Text="Buscar" runat="server" CssClass="icoBuscar" /></li>
                             <li class="sepHtas"> | </li>
                             <li><asp:LinkButton ID="lnkAPrivado" Text="Acceso Privado" runat="server" CssClass="icoAccPriv"/></li>
                             <li class="sepHtas"> | </li>
                             <li><asp:LinkButton ID="lnkSalir" Text="Salir" runat="server" CssClass="logout"/></li>
                        </ul>
                   </div>
              </div>
              <div id="marquesinaAds" class="clearfix">
                   <div id="adsMarque" runat="server" class="clearfix">
                       <asp:Literal ID="litTextoEmpresa" runat="server"></asp:Literal></div>
              </div>
              <div id="TabsEdNet" class="clearfix">
          
          	    <div id="TabbedPanels1" class="TabbedPanels">
                        <ul class="TabbedPanelsTabGroup">
                             <li id="lnkVuelos" class="TabbedPanelsTab" runat="server">Vuelos</li>
                             
                            
              		    </ul>
                        <div class="TabbedPanelsContentGroup">
                             <div class="TabbedPanelsContent"></div>
                             <div class="TabbedPanelsContent"></div>
                             <div class="TabbedPanelsContent"></div>
                             <div class="TabbedPanelsContent"></div>
                             <div class="TabbedPanelsContent"></div>
                             <div class="TabbedPanelsContent"></div>
                             <div class="TabbedPanelsContent"></div>
               	    </div>
                   </div>
         
              </div>
              <div id="wrapBuscador" class="clearfix">
                <div id="BarraSelect1" runat="server" class="clearfix wrapDiv">
                    <asp:RadioButtonList ID="rblTipoVuelos" runat="server" 
                        RepeatDirection="Horizontal" 
                        onselectedindexchanged="rblTipoVuelos_SelectedIndexChanged" 
                        AutoPostBack="true">
                        
                        <asp:ListItem Text="Sólo ida" Value="soloida"/>
                        <asp:ListItem Text="Ida y vuelta" Value="idavuelta" Selected ="True" />
                        <asp:ListItem Text="Multidestino" Value="multidestino"/>
                    </asp:RadioButtonList>                      
                </div>

                <!-- Inicio div Multidestino !-->
                <div class="multidestino" style="display:block;">
                <div class="clearing"></div>
                 <div id="tram" style="display:none;">
                <label class="lbltramo" runat="server">Tramo 1</label>
                <div class="TabbedPanelsContentGroup"></div>
                </div>
                <div class="clearing"></div>

                <!-- Inicio div segmento-1 !-->
                <div id="segmento-1">
                  <div id="opcBuscarVuelo">
                    <div id="origen" class="col3">
                        <label id="lblOrigen" runat="server">Origen</label>
                        <asp:TextBox id="txtCiudadOrigen" runat="server" 
                            style="Width:98%; margin-top:1px;" OnTextChanged="txtCiudadOrigen_TextChanged"></asp:TextBox>  
                                           
                        <asp:TextBoxWatermarkExtender ID="txtCiudadOrigen_TextBoxWatermarkExtender" 
                            runat="server" TargetControlID="txtCiudadOrigen" WatermarkText="Ciudad Origen">
                        </asp:TextBoxWatermarkExtender>
                                           
                    </div>
                    <div class="col3">
                        <label id="lblSalida" runat="server">Salida</label>
                        <div class="inlineItems" style="padding-bottom:5px;">
                            <asp:TextBox ID="txtSalidaDate" runat="server" Width="97%" 
                                ontextchanged="txtSalidaDate_TextChanged"></asp:TextBox> 
                                                                                    
                           
                            <asp:FilteredTextBoxExtender ID="txtSalidaDate_FilteredTextBoxExtender" runat="server" 
                                Enabled="True" TargetControlID="txtSalidaDate" FilterMode="ValidChars" ValidChars="0123456789/">
                            </asp:FilteredTextBoxExtender>
                        </div>                    
                    </div>
                    <div class="col3">
                        <label id="lblHoraSalida" runat="server">Hora</label>
                        <asp:DropDownList ID="ddlHoraSalida" runat="server" Width="100%" style="margin-top:1px;">
                            <asp:ListItem Value="0">Seleccione...</asp:ListItem>
                            <asp:ListItem Value="1">Mañana</asp:ListItem>
                            <asp:ListItem Value="1">Tarde</asp:ListItem>
                            <asp:ListItem Value="1">Noche</asp:ListItem>
                            <asp:ListItem Value="1">6:00</asp:ListItem>
                            <asp:ListItem Value="2">7:00</asp:ListItem>
                            <asp:ListItem Value="3">8:00</asp:ListItem>
                            <asp:ListItem Value="4">9:00</asp:ListItem>
                            <asp:ListItem Value="5">10:00</asp:ListItem>
                            <asp:ListItem Value="6">11:00</asp:ListItem>
                            <asp:ListItem Value="7">12:00</asp:ListItem>
                            <asp:ListItem Value="8">13:00</asp:ListItem>
                            <asp:ListItem Value="9">14:00</asp:ListItem>
                            <asp:ListItem Value="10">15:00</asp:ListItem>
                            <asp:ListItem Value="11">16:00</asp:ListItem>
                            <asp:ListItem Value="12">17:00</asp:ListItem>
                            <asp:ListItem Value="13">18:00</asp:ListItem>
                            <asp:ListItem Value="14">19:00</asp:ListItem>
                            <asp:ListItem Value="15">20:00</asp:ListItem>
                            <asp:ListItem Value="16">21:00</asp:ListItem>
                            <asp:ListItem Value="17">22:00</asp:ListItem>
                            <asp:ListItem Value="18">23:00</asp:ListItem>
                        </asp:DropDownList>
                    </div>

                    <div class="clearing"></div>

                    <div id="destino" class="col3">
                        <label id="lblDestino" runat="server">Destino</label>
                    <asp:TextBox ID="txtCiudadDestino" runat="server" style="Width:98%; margin-top:1px;"></asp:TextBox>  
                                           
                        <asp:TextBoxWatermarkExtender ID="txtCiudadDestinoWatermarkExtender1" 
                            runat="server" TargetControlID="txtCiudadDestino" WatermarkText="Ciudad Destino">
                        </asp:TextBoxWatermarkExtender>
                 
                    </div>
                    <div class="col3">
                        <label id="lblRegreso" runat="server">Regreso</label>
                        <div class="inlineItems">
                            <asp:TextBox ID="txtRegresoDate" runat="server" Width="97%" 
                                ontextchanged="txtRegresoDate_TextChanged"></asp:TextBox> 
                            
                            <asp:FilteredTextBoxExtender ID="txtRegresoDate_FilteredTextBoxExtender" runat="server" 
                                Enabled="True" TargetControlID="txtRegresoDate" FilterMode="ValidChars" ValidChars="0123456789/">
                            </asp:FilteredTextBoxExtender>
                        </div>
                    </div>
                    <div class="col3">
                        <label id="lblHoraRegreso" runat="server">Hora</label>
                        <asp:DropDownList ID="ddlHoraLlegada" runat="server" Width="100%" style="margin-top:3px;">
                            <asp:ListItem Value="0">Seleccione...</asp:ListItem>
                            <asp:ListItem Value="1">Mañana</asp:ListItem>
                            <asp:ListItem Value="1">Tarde</asp:ListItem>
                            <asp:ListItem Value="1">Noche</asp:ListItem>
                            <asp:ListItem Value="1">6:00</asp:ListItem>
                            <asp:ListItem Value="2">7:00</asp:ListItem>
                            <asp:ListItem Value="3">8:00</asp:ListItem>
                            <asp:ListItem Value="4">9:00</asp:ListItem>
                            <asp:ListItem Value="5">10:00</asp:ListItem>
                            <asp:ListItem Value="6">11:00</asp:ListItem>
                            <asp:ListItem Value="7">12:00</asp:ListItem>
                            <asp:ListItem Value="8">13:00</asp:ListItem>
                            <asp:ListItem Value="9">14:00</asp:ListItem>
                            <asp:ListItem Value="10">15:00</asp:ListItem>
                            <asp:ListItem Value="11">16:00</asp:ListItem>
                            <asp:ListItem Value="12">17:00</asp:ListItem>
                            <asp:ListItem Value="13">18:00</asp:ListItem>
                            <asp:ListItem Value="14">19:00</asp:ListItem>
                            <asp:ListItem Value="15">20:00</asp:ListItem>
                            <asp:ListItem Value="16">21:00</asp:ListItem>
                            <asp:ListItem Value="17">22:00</asp:ListItem>
                            <asp:ListItem Value="18">23:00</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="clearing"></div>
                
                <div onclick="mostrart2()" id="vinculo" class='agregardestino' runat="server" 
                        style="display: none;">+ Agregar otro tramo</div>
                
                <div class="clearing"></div>
                </div> <!-- Cierre div segmento-1 !-->

                <!-- Inicio div segmento-2 !-->
                <div id="segmento-2" style="display:none;">
                <label id="Label5" class="lbltramo" runat="server">Tramo 2</label>
                <div class="TabbedPanelsContentGroup"></div>
                <div class="clearing"></div>
                  <div id="Div1">
                    <div id="Div2" class="col3">
                        <label id="Label1" runat="server">Origen</label>
                        <asp:TextBox ID="txtCiudadOrigent2" runat="server" style="Width:98%; margin-top:1px;"></asp:TextBox>  
                                           
                        <asp:TextBoxWatermarkExtender ID="txtCiudadOrigent2WatermarkExtender1" 
                            runat="server" TargetControlID="txtCiudadOrigent2" WatermarkText="Ciudad Origen">
                        </asp:TextBoxWatermarkExtender>
                                           
                    </div>
                    <div class="col3">
                        <label id="Label2" runat="server">Salida</label>
                        <div class="inlineItems" style="padding-bottom:5px;">
                            <asp:TextBox ID="txtSalidaDatet2" runat="server" Width="97%" 
                                ></asp:TextBox> 
                                                                                    
                           
                            <asp:FilteredTextBoxExtender ID="txtSalidaDatet2_FilteredTextBoxExtender1" runat="server" 
                                Enabled="True" TargetControlID="txtSalidaDatet2" FilterMode="ValidChars" ValidChars="0123456789/">
                            </asp:FilteredTextBoxExtender>
                        </div>                    
                    </div>
                    <div class="col3">
                        <label id="Label3" runat="server">Hora</label>
                        <asp:DropDownList ID="DropDownList1" runat="server" Width="100%" style="margin-top:1px;">
                            <asp:ListItem Value="0">Seleccione...</asp:ListItem>
                            <asp:ListItem Value="1">Mañana</asp:ListItem>
                            <asp:ListItem Value="1">Tarde</asp:ListItem>
                            <asp:ListItem Value="1">Noche</asp:ListItem>
                            <asp:ListItem Value="1">6:00</asp:ListItem>
                            <asp:ListItem Value="2">7:00</asp:ListItem>
                            <asp:ListItem Value="3">8:00</asp:ListItem>
                            <asp:ListItem Value="4">9:00</asp:ListItem>
                            <asp:ListItem Value="5">10:00</asp:ListItem>
                            <asp:ListItem Value="6">11:00</asp:ListItem>
                            <asp:ListItem Value="7">12:00</asp:ListItem>
                            <asp:ListItem Value="8">13:00</asp:ListItem>
                            <asp:ListItem Value="9">14:00</asp:ListItem>
                            <asp:ListItem Value="10">15:00</asp:ListItem>
                            <asp:ListItem Value="11">16:00</asp:ListItem>
                            <asp:ListItem Value="12">17:00</asp:ListItem>
                            <asp:ListItem Value="13">18:00</asp:ListItem>
                            <asp:ListItem Value="14">19:00</asp:ListItem>
                            <asp:ListItem Value="15">20:00</asp:ListItem>
                            <asp:ListItem Value="16">21:00</asp:ListItem>
                            <asp:ListItem Value="17">22:00</asp:ListItem>
                            <asp:ListItem Value="18">23:00</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    
                    <div class="clearing"></div>

                    <div id="Div3" class="col3">
                        <label id="Label4" runat="server">Destino</label>
                    <asp:TextBox ID="txtCiudadDestinot2" runat="server" style="Width:98%; margin-top:1px;"></asp:TextBox>  
                                           
                        <asp:TextBoxWatermarkExtender ID="txtCiudadDestinot2WatermarkExtender2" 
                            runat="server" TargetControlID="txtCiudadDestinot2" WatermarkText="Ciudad Destino">
                        </asp:TextBoxWatermarkExtender>
                 
                    </div>
                                    
                </div>
                <div class="clearing"></div>
                <div id="vinculo2" class="agregartramo" onclick="mostrart3()">+ Agregar nuevo tramo</div><div onclick="ocultart2()" id="quitartramo2" class="quitartramo">- Quitar tramo</div>
                <div class="clearing"></div>
                </div> <!-- Cierre div segmento-2 !-->

                 <!-- Inicio div segmento-3 !-->
                 <div id="segmento-3" style="display:none;">
                <label id="Label6" class="lbltramo" runat="server">Tramo 3</label>
                <div class="TabbedPanelsContentGroup"></div>
                <div class="clearing"></div>
                  <div id="Div5">
                    <div id="Div6" class="col3">
                        <label id="Label7" runat="server">Origen</label>
                        <asp:TextBox ID="txtCiudadOrigent3" runat="server" style="Width:98%; margin-top:1px;"></asp:TextBox>  
                                           
                        <asp:TextBoxWatermarkExtender ID="txtCiudadOrigent3WatermarkExtender1" 
                            runat="server" TargetControlID="txtCiudadOrigent3" WatermarkText="Ciudad Origen">
                        </asp:TextBoxWatermarkExtender>
                                           
                    </div>
                    <div class="col3">
                        <label id="Label8" runat="server">Salida</label>
                        <div class="inlineItems" style="padding-bottom:5px;">
                            <asp:TextBox ID="txtSalidaDatet3" runat="server" Width="97%" 
                                ></asp:TextBox> 
                                                                                    
                           
                            <asp:FilteredTextBoxExtender ID="txtSalidaDatet3_FilteredTextBoxExtender1" runat="server" 
                                Enabled="True" TargetControlID="txtSalidaDatet3" FilterMode="ValidChars" ValidChars="0123456789/">
                            </asp:FilteredTextBoxExtender>
                        </div>                    
                    </div>
                    <div class="col3">
                        <label id="Label9" runat="server">Hora</label>
                        <asp:DropDownList ID="DropDownList2" runat="server" Width="100%" style="margin-top:1px;">
                            <asp:ListItem Value="0">Seleccione...</asp:ListItem>
                            <asp:ListItem Value="1">Mañana</asp:ListItem>
                            <asp:ListItem Value="1">Tarde</asp:ListItem>
                            <asp:ListItem Value="1">Noche</asp:ListItem>
                            <asp:ListItem Value="1">6:00</asp:ListItem>
                            <asp:ListItem Value="2">7:00</asp:ListItem>
                            <asp:ListItem Value="3">8:00</asp:ListItem>
                            <asp:ListItem Value="4">9:00</asp:ListItem>
                            <asp:ListItem Value="5">10:00</asp:ListItem>
                            <asp:ListItem Value="6">11:00</asp:ListItem>
                            <asp:ListItem Value="7">12:00</asp:ListItem>
                            <asp:ListItem Value="8">13:00</asp:ListItem>
                            <asp:ListItem Value="9">14:00</asp:ListItem>
                            <asp:ListItem Value="10">15:00</asp:ListItem>
                            <asp:ListItem Value="11">16:00</asp:ListItem>
                            <asp:ListItem Value="12">17:00</asp:ListItem>
                            <asp:ListItem Value="13">18:00</asp:ListItem>
                            <asp:ListItem Value="14">19:00</asp:ListItem>
                            <asp:ListItem Value="15">20:00</asp:ListItem>
                            <asp:ListItem Value="16">21:00</asp:ListItem>
                            <asp:ListItem Value="17">22:00</asp:ListItem>
                            <asp:ListItem Value="18">23:00</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    
                    <div class="clearing"></div>

                    <div id="Div7" class="col3">
                        <label id="Label10" runat="server">Destino</label>
                    <asp:TextBox ID="txtCiudadDestinot3" runat="server" style="Width:98%; margin-top:1px;"></asp:TextBox>  
                                           
                        <asp:TextBoxWatermarkExtender ID="txtCiudadDestinot3WatermarkExtender2" 
                            runat="server" TargetControlID="txtCiudadDestinot3" WatermarkText="Ciudad Destino">
                        </asp:TextBoxWatermarkExtender>
                 
                    </div>
                                    
                </div>
                <div class="clearing"></div>
                <div id="vinculo3" class="agregartramo" onclick="mostrart4()">+ Agregar nuevo tramo</div><div onclick="ocultart3()" id="quitartramo3" class="quitartramo">- Quitar tramo</div>
                <div class="clearing"></div>
                </div> <!-- Cierre div segmento-3 !-->

                <!-- Inicio div segmento-4 !-->
                <div id="segmento-4" style="display:none;">
                <label id="Label11" class="lbltramo" runat="server">Tramo 4</label>
                <div class="TabbedPanelsContentGroup"></div>
                <div class="clearing"></div>
                  <div id="Div8">
                    <div id="Div9" class="col3">
                        <label id="Label12" runat="server">Origen</label>
                        <asp:TextBox ID="txtCiudadOrigent4" runat="server" style="Width:98%; margin-top:1px;"></asp:TextBox>  
                                           
                        <asp:TextBoxWatermarkExtender ID="txtCiudadOrigent4WatermarkExtender1" 
                            runat="server" TargetControlID="txtCiudadOrigent4" WatermarkText="Ciudad Origen">
                        </asp:TextBoxWatermarkExtender>
                                           
                    </div>
                    <div class="col3">
                        <label id="Label13" runat="server">Salida</label>
                        <div class="inlineItems" style="padding-bottom:5px;">
                            <asp:TextBox ID="txtSalidaDatet4" runat="server" Width="97%" 
                                ></asp:TextBox> 
                                                                                    
                           
                            <asp:FilteredTextBoxExtender ID="txtSalidaDatet4_FilteredTextBoxExtender1" runat="server" 
                                Enabled="True" TargetControlID="txtSalidaDatet4" FilterMode="ValidChars" ValidChars="0123456789/">
                            </asp:FilteredTextBoxExtender>
                        </div>                    
                    </div>
                    <div class="col3">
                        <label id="Label14" runat="server">Hora</label>
                        <asp:DropDownList ID="DropDownList3" runat="server" Width="100%" style="margin-top:1px;">
                            <asp:ListItem Value="0">Seleccione...</asp:ListItem>
                            <asp:ListItem Value="1">Mañana</asp:ListItem>
                            <asp:ListItem Value="1">Tarde</asp:ListItem>
                            <asp:ListItem Value="1">Noche</asp:ListItem>
                            <asp:ListItem Value="1">6:00</asp:ListItem>
                            <asp:ListItem Value="2">7:00</asp:ListItem>
                            <asp:ListItem Value="3">8:00</asp:ListItem>
                            <asp:ListItem Value="4">9:00</asp:ListItem>
                            <asp:ListItem Value="5">10:00</asp:ListItem>
                            <asp:ListItem Value="6">11:00</asp:ListItem>
                            <asp:ListItem Value="7">12:00</asp:ListItem>
                            <asp:ListItem Value="8">13:00</asp:ListItem>
                            <asp:ListItem Value="9">14:00</asp:ListItem>
                            <asp:ListItem Value="10">15:00</asp:ListItem>
                            <asp:ListItem Value="11">16:00</asp:ListItem>
                            <asp:ListItem Value="12">17:00</asp:ListItem>
                            <asp:ListItem Value="13">18:00</asp:ListItem>
                            <asp:ListItem Value="14">19:00</asp:ListItem>
                            <asp:ListItem Value="15">20:00</asp:ListItem>
                            <asp:ListItem Value="16">21:00</asp:ListItem>
                            <asp:ListItem Value="17">22:00</asp:ListItem>
                            <asp:ListItem Value="18">23:00</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    
                    <div class="clearing"></div>

                    <div id="Div10" class="col3">
                        <label id="Label15" runat="server">Destino</label>
                    <asp:TextBox ID="txtCiudadDestinot4" runat="server" style="Width:98%; margin-top:1px;"></asp:TextBox>  
                                           
                        <asp:TextBoxWatermarkExtender ID="txtCiudadDestinot4WatermarkExtender3" 
                            runat="server" TargetControlID="txtCiudadDestinot4" WatermarkText="Ciudad Destino">
                        </asp:TextBoxWatermarkExtender>
                 
                    </div>
                                    
                </div>
                <div class="clearing"></div>
                <div id="vinculo4" class="agregartramo" onclick="mostrart5()">+ Agregar nuevo tramo</div><div onclick="ocultart4()" id="quitartramo4" class="quitartramo">- Quitar tramo</div>
                <div class="clearing"></div>
                </div> <!-- Cierre div segmento-4 !-->

                <!-- Inicio div segmento-5 !-->
                <div id="segmento-5" style="display:none;">
                <label id="Label16" class="lbltramo" runat="server">Tramo 5</label>
                <div class="TabbedPanelsContentGroup"></div>
                <div class="clearing"></div>
                  <div id="Div11">
                    <div id="Div12" class="col3">
                        <label id="Label17" runat="server">Origen</label>
                        <asp:TextBox ID="txtCiudadOrigent5" runat="server" style="Width:98%; margin-top:1px;"></asp:TextBox>  
                                           
                        <asp:TextBoxWatermarkExtender ID="txtCiudadOrigent5WatermarkExtender1" 
                            runat="server" TargetControlID="txtCiudadOrigent5" WatermarkText="Ciudad Origen">
                        </asp:TextBoxWatermarkExtender>
                                           
                    </div>
                    <div class="col3">
                        <label id="Label18" runat="server">Salida</label>
                        <div class="inlineItems" style="padding-bottom:5px;">
                            <asp:TextBox ID="txtSalidaDatet5" runat="server" Width="97%" 
                                ></asp:TextBox> 
                                                                                    
                           
                            <asp:FilteredTextBoxExtender ID="txtSalidaDatet5_FilteredTextBoxExtender1" runat="server" 
                                Enabled="True" TargetControlID="txtSalidaDatet5" FilterMode="ValidChars" ValidChars="0123456789/">
                            </asp:FilteredTextBoxExtender>
                        </div>                    
                    </div>
                    <div class="col3">
                        <label id="Label19" runat="server">Hora</label>
                        <asp:DropDownList ID="DropDownList4" runat="server" Width="100%" style="margin-top:1px;">
                            <asp:ListItem Value="0">Seleccione...</asp:ListItem>
                            <asp:ListItem Value="1">Mañana</asp:ListItem>
                            <asp:ListItem Value="1">Tarde</asp:ListItem>
                            <asp:ListItem Value="1">Noche</asp:ListItem>
                            <asp:ListItem Value="1">6:00</asp:ListItem>
                            <asp:ListItem Value="2">7:00</asp:ListItem>
                            <asp:ListItem Value="3">8:00</asp:ListItem>
                            <asp:ListItem Value="4">9:00</asp:ListItem>
                            <asp:ListItem Value="5">10:00</asp:ListItem>
                            <asp:ListItem Value="6">11:00</asp:ListItem>
                            <asp:ListItem Value="7">12:00</asp:ListItem>
                            <asp:ListItem Value="8">13:00</asp:ListItem>
                            <asp:ListItem Value="9">14:00</asp:ListItem>
                            <asp:ListItem Value="10">15:00</asp:ListItem>
                            <asp:ListItem Value="11">16:00</asp:ListItem>
                            <asp:ListItem Value="12">17:00</asp:ListItem>
                            <asp:ListItem Value="13">18:00</asp:ListItem>
                            <asp:ListItem Value="14">19:00</asp:ListItem>
                            <asp:ListItem Value="15">20:00</asp:ListItem>
                            <asp:ListItem Value="16">21:00</asp:ListItem>
                            <asp:ListItem Value="17">22:00</asp:ListItem>
                            <asp:ListItem Value="18">23:00</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    
                    <div class="clearing"></div>

                    <div id="Div13" class="col3">
                        <label id="Label20" runat="server">Destino</label>
                    <asp:TextBox ID="txtCiudadDestinot5" runat="server" style="Width:98%; margin-top:1px;"></asp:TextBox>  
                                           
                        <asp:TextBoxWatermarkExtender ID="txtCiudadDestinot5WatermarkExtender2" 
                            runat="server" TargetControlID="txtCiudadDestinot5" WatermarkText="Ciudad Destino">
                        </asp:TextBoxWatermarkExtender>
                 
                    </div>
                                    
                </div>
                <div class="clearing"></div>
                <div id="vinculo5" class="agregartramo" onclick="mostrart6()">+ Agregar nuevo tramo</div><div onclick="ocultart5()" id="quitartramo5" class="quitartramo">- Quitar tramo</div>
                <div class="clearing"></div>
                </div> <!-- Cierre div segmento-5 !-->

                <!-- Inicio div segmento-6 !-->
                <div id="segmento-6" style="display:none;">
                <label id="Label21" class="lbltramo" runat="server">Tramo 6</label>
                <div class="TabbedPanelsContentGroup"></div>
                <div class="clearing"></div>
                  <div id="Div14">
                    <div id="Div15" class="col3">
                        <label id="Label22" runat="server">Origen</label>
                        <asp:TextBox ID="txtCiudadOrigent6" runat="server" style="Width:98%; margin-top:1px;"></asp:TextBox>  
                                           
                        <asp:TextBoxWatermarkExtender ID="txtCiudadOrigent6WatermarkExtender1" 
                            runat="server" TargetControlID="txtCiudadOrigent6" WatermarkText="Ciudad Origen">
                        </asp:TextBoxWatermarkExtender>
                                           
                    </div>
                    <div class="col3">
                        <label id="Label23" runat="server">Salida</label>
                        <div class="inlineItems" style="padding-bottom:5px;">
                            <asp:TextBox ID="txtSalidaDatet6" runat="server" Width="97%" 
                                ></asp:TextBox> 
                                                                                    
                           
                            <asp:FilteredTextBoxExtender ID="txtSalidaDatet6_FilteredTextBoxExtender1" runat="server" 
                                Enabled="True" TargetControlID="txtSalidaDatet6" FilterMode="ValidChars" ValidChars="0123456789/">
                            </asp:FilteredTextBoxExtender>
                        </div>                    
                    </div>
                    <div class="col3">
                        <label id="Label24" runat="server">Hora</label>
                        <asp:DropDownList ID="DropDownList5" runat="server" Width="100%" style="margin-top:1px;">
                            <asp:ListItem Value="0">Seleccione...</asp:ListItem>
                            <asp:ListItem Value="1">Mañana</asp:ListItem>
                            <asp:ListItem Value="1">Tarde</asp:ListItem>
                            <asp:ListItem Value="1">Noche</asp:ListItem>
                            <asp:ListItem Value="1">6:00</asp:ListItem>
                            <asp:ListItem Value="2">7:00</asp:ListItem>
                            <asp:ListItem Value="3">8:00</asp:ListItem>
                            <asp:ListItem Value="4">9:00</asp:ListItem>
                            <asp:ListItem Value="5">10:00</asp:ListItem>
                            <asp:ListItem Value="6">11:00</asp:ListItem>
                            <asp:ListItem Value="7">12:00</asp:ListItem>
                            <asp:ListItem Value="8">13:00</asp:ListItem>
                            <asp:ListItem Value="9">14:00</asp:ListItem>
                            <asp:ListItem Value="10">15:00</asp:ListItem>
                            <asp:ListItem Value="11">16:00</asp:ListItem>
                            <asp:ListItem Value="12">17:00</asp:ListItem>
                            <asp:ListItem Value="13">18:00</asp:ListItem>
                            <asp:ListItem Value="14">19:00</asp:ListItem>
                            <asp:ListItem Value="15">20:00</asp:ListItem>
                            <asp:ListItem Value="16">21:00</asp:ListItem>
                            <asp:ListItem Value="17">22:00</asp:ListItem>
                            <asp:ListItem Value="18">23:00</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    
                    <div class="clearing"></div>

                    <div id="Div16" class="col3">
                        <label id="Label25" runat="server">Destino</label>
                    <asp:TextBox ID="txtCiudadDestinot6" runat="server" style="Width:98%; margin-top:1px;"></asp:TextBox>  
                                           
                        <asp:TextBoxWatermarkExtender ID="txtCiudadDestinot6WatermarkExtender2" 
                            runat="server" TargetControlID="txtCiudadDestinot6" WatermarkText="Ciudad Destino">
                        </asp:TextBoxWatermarkExtender>
                 
                    </div>
                                    
                </div>
                <div class="clearing"></div>
                <div id="vinculo6" class="agregartramo" onclick="mostrart7()">+ Agregar nuevo tramo</div><div onclick="ocultart6()" id="quitartramo6" class="quitartramo">- Quitar tramo</div>
                <div class="clearing"></div>
                </div> <!-- Cierre div segmento-6 !-->

                <!-- Inicio div segmento-7 !-->
                <div id="segmento-7" style="display:none;">
                <label id="Label26" class="lbltramo" runat="server">Tramo 7</label>
                <div class="TabbedPanelsContentGroup"></div>
                <div class="clearing"></div>
                  <div id="Div17">
                    <div id="Div18" class="col3">
                        <label id="Label27" runat="server">Origen</label>
                        <asp:TextBox ID="txtCiudadOrigent7" runat="server" style="Width:98%; margin-top:1px;"></asp:TextBox>  
                                           
                        <asp:TextBoxWatermarkExtender ID="txtCiudadOrigent7WatermarkExtender1" 
                            runat="server" TargetControlID="txtCiudadOrigent7" WatermarkText="Ciudad Origen">
                        </asp:TextBoxWatermarkExtender>
                                           
                    </div>
                    <div class="col3">
                        <label id="Label28" runat="server">Salida</label>
                        <div class="inlineItems" style="padding-bottom:5px;">
                            <asp:TextBox ID="txtSalidaDatet7" runat="server" Width="97%" 
                                ></asp:TextBox> 
                                                                                    
                           
                            <asp:FilteredTextBoxExtender ID="txtSalidaDatet7_FilteredTextBoxExtender1" runat="server" 
                                Enabled="True" TargetControlID="txtSalidaDatet7" FilterMode="ValidChars" ValidChars="0123456789/">
                            </asp:FilteredTextBoxExtender>
                        </div>                    
                    </div>
                    <div class="col3">
                        <label id="Label29" runat="server">Hora</label>
                        <asp:DropDownList ID="DropDownList6" runat="server" Width="100%" style="margin-top:1px;">
                            <asp:ListItem Value="0">Seleccione...</asp:ListItem>
                            <asp:ListItem Value="1">Mañana</asp:ListItem>
                            <asp:ListItem Value="1">Tarde</asp:ListItem>
                            <asp:ListItem Value="1">Noche</asp:ListItem>
                            <asp:ListItem Value="1">6:00</asp:ListItem>
                            <asp:ListItem Value="2">7:00</asp:ListItem>
                            <asp:ListItem Value="3">8:00</asp:ListItem>
                            <asp:ListItem Value="4">9:00</asp:ListItem>
                            <asp:ListItem Value="5">10:00</asp:ListItem>
                            <asp:ListItem Value="6">11:00</asp:ListItem>
                            <asp:ListItem Value="7">12:00</asp:ListItem>
                            <asp:ListItem Value="8">13:00</asp:ListItem>
                            <asp:ListItem Value="9">14:00</asp:ListItem>
                            <asp:ListItem Value="10">15:00</asp:ListItem>
                            <asp:ListItem Value="11">16:00</asp:ListItem>
                            <asp:ListItem Value="12">17:00</asp:ListItem>
                            <asp:ListItem Value="13">18:00</asp:ListItem>
                            <asp:ListItem Value="14">19:00</asp:ListItem>
                            <asp:ListItem Value="15">20:00</asp:ListItem>
                            <asp:ListItem Value="16">21:00</asp:ListItem>
                            <asp:ListItem Value="17">22:00</asp:ListItem>
                            <asp:ListItem Value="18">23:00</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    
                    <div class="clearing"></div>

                    <div id="Div19" class="col3">
                        <label id="Label30" runat="server">Destino</label>
                    <asp:TextBox ID="txtCiudadDestinot7" runat="server" style="Width:98%; margin-top:1px;"></asp:TextBox>  
                                           
                        <asp:TextBoxWatermarkExtender ID="txtCiudadDestinot7WatermarkExtender2" 
                            runat="server" TargetControlID="txtCiudadDestinot7" WatermarkText="Ciudad Destino">
                        </asp:TextBoxWatermarkExtender>
                 
                    </div>
                                    
                </div>
                <div class="clearing"></div>
                <div id="vinculo7" class="agregartramo" onclick="mostrart8()">+ Agregar nuevo tramo</div><div onclick="ocultart7()" id="quitartramo7" class="quitartramo">- Quitar tramo</div>
                <div class="clearing"></div>
                </div> <!-- Cierre div segmento-7 !-->

                 <!-- Inicio div segmento-8 !-->
                 <div id="segmento-8" style="display:none;">
                <label id="Label31" class="lbltramo" runat="server">Tramo 8</label>
                <div class="TabbedPanelsContentGroup"></div>
                <div class="clearing"></div>
                  <div id="Div20">
                    <div id="Div21" class="col3">
                        <label id="Label32" runat="server">Origen</label>
                        <asp:TextBox ID="txtCiudadOrigent8" runat="server" style="Width:98%; margin-top:1px;"></asp:TextBox>  
                                           
                        <asp:TextBoxWatermarkExtender ID="txtCiudadOrigent8WatermarkExtender1" 
                            runat="server" TargetControlID="txtCiudadOrigent8" WatermarkText="Ciudad Origen">
                        </asp:TextBoxWatermarkExtender>
                                           
                    </div>
                    <div class="col3">
                        <label id="Label33" runat="server">Salida</label>
                        <div class="inlineItems" style="padding-bottom:5px;">
                            <asp:TextBox ID="txtSalidaDatet8" runat="server" Width="97%" 
                                ></asp:TextBox> 
                                                                                    
                           
                            <asp:FilteredTextBoxExtender ID="txtSalidaDatet8_FilteredTextBoxExtender1" runat="server" 
                                Enabled="True" TargetControlID="txtSalidaDatet8" FilterMode="ValidChars" ValidChars="0123456789/">
                            </asp:FilteredTextBoxExtender>
                        </div>                    
                    </div>
                    <div class="col3">
                        <label id="Label34" runat="server">Hora</label>
                        <asp:DropDownList ID="DropDownList7" runat="server" Width="100%" style="margin-top:1px;">
                            <asp:ListItem Value="0">Seleccione...</asp:ListItem>
                            <asp:ListItem Value="1">Mañana</asp:ListItem>
                            <asp:ListItem Value="1">Tarde</asp:ListItem>
                            <asp:ListItem Value="1">Noche</asp:ListItem>
                            <asp:ListItem Value="1">6:00</asp:ListItem>
                            <asp:ListItem Value="2">7:00</asp:ListItem>
                            <asp:ListItem Value="3">8:00</asp:ListItem>
                            <asp:ListItem Value="4">9:00</asp:ListItem>
                            <asp:ListItem Value="5">10:00</asp:ListItem>
                            <asp:ListItem Value="6">11:00</asp:ListItem>
                            <asp:ListItem Value="7">12:00</asp:ListItem>
                            <asp:ListItem Value="8">13:00</asp:ListItem>
                            <asp:ListItem Value="9">14:00</asp:ListItem>
                            <asp:ListItem Value="10">15:00</asp:ListItem>
                            <asp:ListItem Value="11">16:00</asp:ListItem>
                            <asp:ListItem Value="12">17:00</asp:ListItem>
                            <asp:ListItem Value="13">18:00</asp:ListItem>
                            <asp:ListItem Value="14">19:00</asp:ListItem>
                            <asp:ListItem Value="15">20:00</asp:ListItem>
                            <asp:ListItem Value="16">21:00</asp:ListItem>
                            <asp:ListItem Value="17">22:00</asp:ListItem>
                            <asp:ListItem Value="18">23:00</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    
                    <div class="clearing"></div>

                    <div id="Div22" class="col3">
                        <label id="Label35" runat="server">Destino</label>
                    <asp:TextBox ID="txtCiudadDestinot8" runat="server" style="Width:98%; margin-top:1px;"></asp:TextBox>  
                                           
                        <asp:TextBoxWatermarkExtender ID="txtCiudadDestinot8WatermarkExtender2" 
                            runat="server" TargetControlID="txtCiudadDestinot8" WatermarkText="Ciudad Destino">
                        </asp:TextBoxWatermarkExtender>
                 
                    </div>
                                    
                </div>
                <div class="clearing"></div>
                <div onclick="ocultart8()" class="quitartramo">- Quitar tramo</div>
                <div class="clearing"></div>
                </div> <!-- Cierre div segmento-8 !-->
                </div> <!-- Cierre div multidestino !-->

                <div id="opcBuscarVuelo2">
                    <div class="col6">
                        <label id="lblAdultos" runat="server">Adultos</label>
                        <asp:DropDownList ID="ddlAdultos" runat="server" Width="53%">
                            <asp:ListItem Selected="True">1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col4">
                        <label id="lblNiños" runat="server">Niños (2-11 años)</label>
                        <asp:DropDownList ID="ddlNiños" runat="server" Width="35%">
                            <asp:ListItem Selected="True">0</asp:ListItem>
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col3">
                        <label id="lblBebes" runat="server">Bebes (0-23 meses)</label>
                        <asp:DropDownList ID="ddlBebes" runat="server" Width="26%" Height="16px">
                            <asp:ListItem Selected="True">0</asp:ListItem>
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col4" style="z-index: 1">
                        <button id="bttBuscar" type="button" runat="Server" name="" value="" onserverclick="bttBuscar_Click"
                            class="css3button TipeButton TipeButtonBuscar">
                                <span id="spmBuscar" runat="server" class="labelbuscar">Buscar</span></button>
                    </div>                    
                </div>

                <div class="col9">
                    <asp:Label ID="lblMensaje" runat="server" style="color:Red; float:left; display:inline-block;" />
                </div>

                <div class="clearing"></div>               
                
               </div>
                  <div id="wrapBuscarAdv" class="clearfix">
                  <a>
                  <h1 onclick="mostrarocultar()">Búsqueda Avanzada</h1>
                  </a>
                    <div id="oculto" style="display:none;">
                        <div class="col3">
                            <span id="lblVuDirecto" runat="server" class="vuelosdirectos">Vuelos Directos <input id="chkVueloDirecto" name="vuelosID" type="checkbox" value="" checked="checked" /></span>                            
                        </div>
                        <div class="col3">
                            <label id="lblClase" runat="server">Clase:</label>
                            <asp:DropDownList ID="ddlClase" runat="server" Width="100%">
                                <asp:ListItem Selected="True" Value="0">Seleccione...</asp:ListItem>
                                <asp:ListItem Value="1">Economica</asp:ListItem>
                                <asp:ListItem Value="2">Ejecutiva</asp:ListItem>
                                <asp:ListItem Value="3">Turista</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col3">
                            <label id="lblAerolineas" runat="server">Aerolínea:</label>
                            <asp:DropDownList ID="ddlAerolineas" runat="server" Width="100%">
                                <asp:ListItem Selected="True" Value="0">Seleccione...</asp:ListItem>
                                <asp:ListItem Value="1">Avianca</asp:ListItem>
                                <asp:ListItem Value="2">LAN</asp:ListItem>
                                <asp:ListItem Value="3">Copa</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="clearing"></div>          	    
              </div>
              <div class="clearing"></div>
              <div id="footerEdNet">
          	    <ul class="clearfix">
               	    <li class="protectlogo"><a href="#" target="_blank"><img src="images/logoSecurity.fw.png" width="145" height="31" alt="Website protection" /></a></li>
                        <li class="logos"><a href="#" target="_blank"><img src="images/logo-placetopay.fw.png" width="44" height="21" alt="Place to pay" /></a></li>
                        <li class="logos"><a href="#" target="_blank"><img src="images/logo-pse.fw.png" width="16" height="18" alt="PSE" /></a></li>
                        <li class="logos"><a href="#" target="_blank"><img src="images/logo-amex.fw.png" width="25" height="16" alt="Amex" /></a></li>
                        <li class="logos"><a href="#" target="_blank"><img src="images/logo-dinners.fw.png" width="28" height="16" alt="Dinners" /></a></li>
                        <li class="logos"><a href="#" target="_blank"><img src="images/logo-masterCard.fw.png" width="25" height="16" alt="Master Card" /></a></li>
                        <li class="logos"><a href="#" target="_blank"><img src="images/logo-visa.fw.png" width="40" height="12" alt="Visa" /></a></li>
                   </ul>
              </div>
              <div id="creditsEdNet"> 
                   <ul class="clearfix">
                        <li><a href="#" title="Administrador" target="_top">Administración</a></li>
                        <li class="sepadorFooter"> | </li>
                        <li><a href="#" title="FAQ’s" target="_top">FAQ’s</a></li>
                        <li class="sepadorFooter"> | </li>
                        <li><a href="#" title="Aviso legal" target="_top">Aviso legal</a></li>
                        <li class="sepadorFooter"> | </li>
                        <li><a href="#" title="Edenia Network S.A.S." target="_top">Edenia Network S.A.S.</a></li>
                        <li class="sepadornav">&nbsp;</li>
                        <li class="logosFurer"><img src="images/ico-chrome.png" width="15" height="15" alt="Chrome" /></li>
                        <li class="logosFurer"><img src="images/ico-ff.png" width="15" height="15" alt="Firefox" /></li>
                        <li class="logosFurer"><img src="images/ico-ie.png" width="15" height="15" alt="Internet Explorer" /></li>
                        <li class="logosFurer"><img src="images/ico-opera.png" width="15" height="15" alt="Opera" /></li>
                        <li class="logosFurer"><img src="images/ico-safari.png" width="15" height="15" alt="Safari" /></li>
                   </ul>
              </div>
         </div>
    </div>
   </ContentTemplate>
  </asp:UpdatePanel>
</form>  
</body>
</html>
