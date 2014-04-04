<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VuelosInternacionales.aspx.cs" Inherits="Edenia.Reservas.Web.VuelosInternacionales" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Formulario de Acceso de usuarios</title>
<link href="css/Estilos-Form-Edenia.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
    function MM_jumpMenu(targ, selObj, restore) { //v3.0
        eval(targ + ".location='" + selObj.options[selObj.selectedIndex].value + "'");
        if (restore) selObj.selectedIndex = 0;
    }
</script>
</head>

<body>
<div id="wrapper">
     <div id="wrapper-1000px-form-login-user">
          <div id="wrapper-header-loading">Aquí Cargaría el logo de la empresa (w:1000px / h:200px)
               <div id="sesionUsuario" class="clearfix">
                    <p><span class="icoSesionUsuario">User</span> <span class="agenciaNombreUsuario">Agencia - ALEJANDRO ARANGO LINCE</span></p>
               </div>
               
               <div id="barraHerramientaSesion" class="clearfix">
                    <ul>
                         <li><a href="#" title="Facebook" target="_top" class="icofbk">Facebook</a></li>
                         <li class="sepHtas"> | </li>
                         <li><a href="#" title="Twitter" target="_top" class="icoTwtr">Twitter</a></li>
                         <li class="sepHtas"> | </li>
                         <li><a href="#" title="Opciones" target="_top" class="icoOpc">Admon</a></li>
                         <li class="sepHtas"> | </li>
                         <li><a href="#" title="Buscar" target="_top" class="icoBuscar">Buscar</a></li>
                         <li class="sepHtas"> | </li>
                         <li><a href="#" title="Acceso Privado" target="_top" class="icoAccPriv">Acceso Privado</a></li>
                         <li class="sepHtas"> | </li>
                         <li><a href="#" title="Salir" target="_top" class="logout">Salir</a></li>
                    </ul>
               </div>

          </div>
          
          <div id="marquesinaAdsFull" class="clearfix">
               <div id="adsMarqueFull" class="clearfix">Espacio para pauta comercial - MARQUESINA - Espacio para pauta comercial - MARQUESINA - Espacio para pauta comercial - MARQUESINA - Espacio para pauta comercial - MARQUESINA - Espacio</div>
          </div>
          <div id="columnas-contenido-acceso-usuario" class="clearfix">
               <div id="columna-filtros-azul" class="clearfix">
                    <form class="bg-form-columna-filtros-azul">
                         <h1>Filtros de búsqueda</h1>
                         <h2>» Precio</h2>
                         <div id="sec-Precio" class="sec-Precio">
                              <table width="100%%" border="0" cellspacing="2" cellpadding="0">
                                   <tr>
                                        <td width="50%" align="left" class="txt-td-azulclaro">COP $301,120</td>
                                        <td width="50%" align="right"  class="txt-td-azulclaro" >COP $ 2,375,200</td>
                                   </tr>
                                   <tr>
                                        <td colspan="2" align="center" valign="middle"><img src="images/slider-de-precios.jpg" width="174" height="12" alt="Slider de Precios" /></td>
                                   </tr>
                              </table>
                         </div>
                         <h2>» Paradas</h2>
                         <div id="sec-Paradas" class="sec-Paradas">
                              <table width="100%%" border="0" cellspacing="2" cellpadding="0">
                                   <tr>
                                        <td align="left" valign="top">1 Parada
                                             <input name="checkbox" type="checkbox" id="checkbox" checked="checked" />
                                             <label for="checkbox"></label></td>
                                        <td height="20" align="right" valign="top">2  + paradas
                                             <input type="checkbox" name="checkbox2" id="checkbox2" />
                                             <label for="checkbox2"></label></td>
                                   </tr>
                                   <tr>
                                        <td align="left" class="txt-td-azulclaro">$ 301,120<br />
                                             Pesos Col</td>
                                        <td align="right" class="txt-td-azulclaro">$ 590,200<br />
                                             Pesos Col</td>
                                   </tr>
                              </table>
                         </div>
                         <h2>» Ordenar por:</h2>
                         <div id="sec-Ordenar" class="sec-Ordenar">
                              <ul>
                                   <li>
                                        <input type="radio" name="radio" id="radio" value="radio" />
                                        <label for="radio">Precio</label>
                                   </li>
                                   <li>
                                        <input type="radio" name="radio" id="radio" value="radio" />
                                        <label for="radio">Horario</label>
                                   </li>
                                   <li>
                                        <input type="radio" name="radio" id="radio" value="radio" />
                                        <label for="radio">Horario con precio</label>
                                   </li>
                              </ul>
                         </div>
                         <h2>» Aerolíneas</h2>
                         <div id="sec-Aerolineas" class="sec-Aerolineas">
                              <ul>
                                   <li>
                                        <input name="input" type="checkbox" value="" checked="checked" />
                                        American Airlines<span class="txt-listado-azulclaro">$ 1.227,940</span></li>
                                   <li>
                                        <input name="input" type="checkbox" value="" checked="checked" />
                                        Avianca<span class="txt-listado-azulclaro">$ 827,940</span></li>
                                   <li>
                                        <input name="input" type="checkbox" value="" checked="checked" />
                                        LAN Airlines<span class="txt-listado-azulclaro">$ 727,940</span></li>
                                   <li>
                                        <input name="input" type="checkbox" value="" checked="checked" />
                                        Copa Airlines<span class="txt-listado-azulclaro">$ 627,940</span></li>
                                   <li>
                                        <input name="input" type="checkbox" value="" checked="checked" />
                                        Taca<span class="txt-listado-azulclaro">$ 527,940</span></li>
                                   <li>
                                        <input name="input" type="checkbox" value="" checked="checked" />
                                        Air France<span class="txt-listado-azulclaro">$ 427,940</span></li>
                                   <li>
                                        <input name="input" type="checkbox" value="" checked="checked" />
                                        Jet Blue<span class="txt-listado-azulclaro">$ 427,940</span></li>
                                   <li>
                                        <input name="input" type="checkbox" value="" checked="checked" />
                                        Spirit<span class="txt-listado-azulclaro">$ 437,940</span></li>
                              </ul>
                         </div>
                         <h2>» Clase</h2>
                         <div id="sec-Clase" class="sec-Clase">
                              <select name="select" class="field-filtrosAzules">
                                   <option>Seleccione</option>
                                   <option>opción 1</option>
                                   <option>opción 2</option>
                                   <option>opción 3</option>
                                   <option>opción 4</option>
                                   <option>opción 5</option>
                              </select>
                         </div>
                         <h2>» Aeropuertos</h2>
                         <div id="sec-Aeropuertos" class="sec-Aeropuertos">
                              <h3>Medellín</h3>
                              <select name="select" class="field-filtrosAzules">
                                   <option>Seleccione</option>
                                   <option>opción 1</option>
                                   <option>opción 2</option>
                                   <option>opción 3</option>
                                   <option>opción 4</option>
                                   <option>opción 5</option>
                              </select>
                              <h3>Bogotá</h3>
                              <select name="select" class="field-filtrosAzules">
                                   <option>Seleccione</option>
                                   <option>opción 1</option>
                                   <option>opción 2</option>
                                   <option>opción 3</option>
                                   <option>opción 4</option>
                                   <option>opción 5</option>
                              </select>
                              <h3>Cartagena</h3>
                              <select name="select" class="field-filtrosAzules">
                                   <option>Seleccione</option>
                                   <option>opción 1</option>
                                   <option>opción 2</option>
                                   <option>opción 3</option>
                                   <option>opción 4</option>
                                   <option>opción 5</option>
                              </select>
                         </div>
                         <h2>» Horario de vuelo</h2>
                         <div id="sec-Horario" class="sec-Horario">
                              <h3>MDE /  Ctg  26/10/2013</h3>
                              <table width="100%%" border="0" cellspacing="2" cellpadding="0">
                                   <tr>
                                        <td width="50%" height="20" valign="middle">Salida (Ida)</td>
                                        <td width="50%" height="20" valign="middle">Medellín</td>
                                   </tr>
                                   <tr>
                                        <td width="50%" height="20" align="right" valign="middle">Hora</td>
                                        <td width="50%" height="20" valign="middle"><select name="select5">
                                                  <option selected="selected">Hora</option>
                                             </select></td>
                                   </tr>
                                   <tr>
                                        <td width="50%" height="20" valign="middle">Aterrizaje (Ida)</td>
                                        <td width="50%" height="20" valign="middle">Cartagena</td>
                                   </tr>
                                   <tr>
                                        <td width="50%" height="20" align="right" valign="middle">Hora</td>
                                        <td width="50%" height="20" valign="middle"><select name="select">
                                                  <option selected="selected">Hora</option>
                                             </select></td>
                                   </tr>
                              </table>
                              <br />
                              <h3>Ctg / Mde  21/12/2013</h3>
                              <table width="100%%" border="0" cellspacing="2" cellpadding="0">
                                   <tr>
                                        <td width="50%" height="20" valign="middle">Salida (Ida)</td>
                                        <td width="50%" height="20" valign="middle">Medellín</td>
                                   </tr>
                                   <tr>
                                        <td width="50%" height="20" align="right" valign="middle">Hora</td>
                                        <td width="50%" height="20" valign="middle"><select name="select5">
                                                  <option selected="selected">Hora</option>
                                             </select></td>
                                   </tr>
                                   <tr>
                                        <td width="50%" height="20" valign="middle">Aterrizaje (Ida)</td>
                                        <td width="50%" height="20" valign="middle">Cartagena</td>
                                   </tr>
                                   <tr>
                                        <td width="50%" height="20" align="right" valign="middle">Hora</td>
                                        <td width="50%" height="20" valign="middle"><select name="select">
                                                  <option selected="selected">Hora</option>
                                             </select></td>
                                   </tr>
                              </table>
                         </div>
                         <div id="btn-nuevaBusqueda" class="clearfix"><a href="#" title="Nueva Búsqueda" target="_top" class="icoLupa-barraAzul">Nueva búsqueda</a></div>
                    </form>
               </div>
               <div id="columna-Vuelos-Nacionales">
                    <form>
                         <div id="menu-opciones-vuelos1col">
                              <ul>
                                   <li><a href="#" title="Seleccionar Vuelos" target="_top">Seleccionar Vuelos</a></li>
                                   <li class="separadorMenuVuelos">|</li>
                                   <li><a href="#" title="Reservar" target="_top">Reservar</a></li>
                                   <li class="separadorMenuVuelos">|</li>
                                   <li><a href="#" title="Comprar">Comprar</a></li>
                              </ul>
                         </div>
                         <div id="tbl-resultados-precios" class="clearfix">
                              <table width="100%%" border="0" cellspacing="0" cellpadding="0">
                                   <tr>
                                        <td>Aerolínea</td>
                                        <td><img src="images/ico-2aviones.png" width="34" height="19" alt="&lt;empty&gt;" /></td>
                                        <td><img src="images/aero-CopaAirlines.png" width="57" height="23" alt="Copa" /></td>
                                        <td><img src="images/aero-Avianca.png" width="76" height="20" alt="Avianca" /></td>
                                        <td><img src="images/aero-LAN.png" width="65" height="25" alt="LAN" /></td>
                                        <td><img src="images/aero-taca.png" width="82" height="16" alt="Taca" /></td>
                                   </tr>
                                   <tr>
                                        <td>Sin paradas</td>
                                        <td>....</td>
                                        <td><a href="#">$ 590,200 pesos col</a></td>
                                        <td><a href="#">$ 590,200 pesos col</a></td>
                                        <td><a href="#">$ 590,200 pesos col</a></td>
                                        <td><a href="#">$ 590,200 pesos col</a></td>
                                   </tr>
                                   <tr>
                                        <td>1 parada</td>
                                        <td>....</td>
                                        <td>....</td>
                                        <td>....</td>
                                        <td>....</td>
                                        <td>....</td>
                                   </tr>
                                   <tr>
                                        <td>2 + paradas</td>
                                        <td>....</td>
                                        <td>....</td>
                                        <td>....</td>
                                        <td>....</td>
                                        <td>....</td>
                                   </tr>
                              </table>
                         </div>
                         <div id="vuelos-Paginador-Resultados" class="clearfix">
                              <ul class="resultadosPaginador">
                                   <li> <a href="#" title="Anterior" target="_top" class="btn-AnteriorPag">&laquo; Anterior</a></li>
                                   <li><a href="#" target="_top">1</a></li>
                                   <li><a href="#" target="_top" class="selectPag">2</a></li>
                                   <li><a href="#" target="_top">3</a></li>
                                   <li><a href="#" target="_top">4</a></li>
                                   <li><a href="#" target="_top">5</a></li>
                                   <li><a href="#" target="_top">...</a></li>
                                   <li><a href="#" title="Siguiente" target="_top" class="btn-SiguientePag">Siguiente &raquo;</a></li>
                              </ul>
                              <div id="btns-busquedaYreserva">
                                   <ul>
                                        <li>
                                             <button type="button" name="" value="" class="css3button"><span class="label-nuevabusqueda">Nueva Busqueda</span></button>
                                        </li>
                                        <li>
                                             <button type="button" name="" value="" class="css3button"><span class="labellogin-form">Reservar</span></button>
                                        </li>
                                   </ul>
                              </div>
                         </div>
                         <div id="zonagris-costestotal-ednet">
                              <h2>Precio total con impuestos y tasas</h2>
                              <table width="100%%" border="0" cellspacing="0" cellpadding="0">
                                   <tr class="Encabezado">
                                        <th scope="col"><span>Pasajero</span></th>
                                        <th scope="col"><span>Nº</span></th>
                                        <th scope="col"><span>Precio p/Pasajero</span></th>
                                        <th scope="col"><span>Tasa</span></th>
                                        <th scope="col"><span>T.A.</span></th>
                                        <th scope="col"><span>Fee</span></th>
                                        <th scope="col"><span class="Total">Total</span></th>
                                   </tr>
                                   <tr class= "Precios">
                                        <td>Adultos</td>
                                        <td>2</td>
                                        <td>$287.100 Pesos Col</td>
                                        <td>$86.040 Pesos Col</td>
                                        <td>$46.443 Pesos Col</td>
                                        <td>$17.400 Pesos Col</td>
                                        <td class= "ValorTotal">$839.166 Pesos Col</td>
                                   </tr>
                              </table>
                              <div id="barra-Azul-vuelo-ida" class="clearfix">
                                   <ul class="datosVueloIdaDetalles">
                                        <li><img src="images/ico-avion-vuelo-ida.png" width="18" height="16" alt="Vuelo ida" /></li>
                                        <li class="txt-td-azulclaro"> <strong class="txt-td-azulclaro">Ida</strong>: Medellín </li>
                                        <li> &raquo; </li>
                                        <li class="txt-td-azulclaro"> Cartagena </li>
                                        <li>26 / 10 / 2013</li>
                                        <li>(</li>
                                        <li>Pasajeros</li>
                                        <li>2 adultos</li>
                                        <li>1 Niño</li>
                                        <li>1 Bebe</li>
                                        <li>)</li>
                                   </ul>
                              </div>
                              <table width="100%%" border="0" cellspacing="0" cellpadding="0">
                                   <tr>
                                        <td align="center" valign="middle" class="col-seleccion-vuelo"><input name="radio2" type="radio" id="radio2" value="radio2" checked="checked" />
                                             <label for="radio2"></label></td>
                                        <td class="col-Hora-Vuelo">05:50</td>
                                        <td class="col-Ciudad-AeroPuerto">Medellín (<a href="#" target="_top">José María Cordova</a>)</td>
                                        <td class="col-Hora-Vuelo">06:40</td>
                                        <td class="col-Ciudad-AeroPuerto">Bogotá (<a href="#" target="_top">El Dorado</a>)</td>
                                        <td class="col-agregado">&nbsp;</td>
                                        <td align="center" valign="top" class="col-Silla-Avion">23K</td>
                                        <td align="center" valign="top" class="col-Catergoria-Clase">S</td>
                                        <td align="center" valign="top" class="col-Escala-VueloDirecto"><a href="#" target="_top">Escala (s)</a></td>
                                        <td align="center" valign="top" class="col-informacion"><a href="#" target="_top"><img src="images/ico-info-azul.gif" width="17" height="17" alt="Información" /></a></td>
                                        <td align="center" valign="top"><img src="images/aero-CopaAirlines-Gris.jpg" width="60" height="20" alt="LAN" /></td>
                                   </tr>
                                   <tr>
                                        <td width="1%" align="center" valign="middle" class="col-seleccion-vuelo">&nbsp;</td>
                                        <td class="col-Hora-Vuelo">09:05</td>
                                        <td class="col-Ciudad-AeroPuerto"> Bogotá (<a href="#" target="_top">El Dorado</a>)</td>
                                        <td class="col-Hora-Vuelo">11:15</td>
                                        <td class="col-Ciudad-AeroPuerto"> San Andrés (Isla) (<a href="#" target="_top">San Andres Isla</a>)</td>
                                        <td class="col-agregado">&nbsp;</td>
                                        <td align="center" valign="top" class="col-Silla-Avion">23K</td>
                                        <td align="center" valign="top" class="col-Catergoria-Clase">S</td>
                                        <td align="center" valign="top" class="col-Escala-VueloDirecto">&nbsp;</td>
                                        <td align="center" valign="top" class="col-informacion">&nbsp;</td>
                                        <td align="center" valign="top"><img src="images/aero-Avianca-gris.jpg" width="78" height="21" alt="Copa" /></td>
                                   </tr>
                              </table>
                              <div id="barra-Azul-vuelo-ida" class="clearfix">
                                   <ul class="datosVueloIdaDetalles">
                                        <li><img src="images/ico-avion-vuelo-regreso.png" width="18" height="16" alt="Vuelo ida" /></li>
                                        <li class="txt-td-azulclaro"> <strong class="txt-td-azulclaro">Regreso</strong>: Medellín </li>
                                        <li> &raquo; </li>
                                        <li class="txt-td-azulclaro"> Cartagena </li>
                                        <li>26 / 10 / 2013</li>
                                        <li>(</li>
                                        <li>Pasajeros</li>
                                        <li>2 adultos</li>
                                        <li>1 Niño</li>
                                        <li>1 Bebe</li>
                                        <li>)</li>
                                   </ul>
                              </div>
                              <table width="100%%" border="0" cellspacing="0" cellpadding="0">
                                   <tr>
                                        <td align="center" valign="middle" class="col-seleccion-vuelo"><input name="radio2" type="radio" id="radio3" value="radio2" checked="checked" />
                                             <label for="radio3"></label></td>
                                        <td class="col-Hora-Vuelo">05:50</td>
                                        <td class="col-Ciudad-AeroPuerto">Medellín (<a href="#" target="_top">José María Cordova</a>)</td>
                                        <td class="col-Hora-Vuelo">06:40</td>
                                        <td class="col-Ciudad-AeroPuerto">Bogotá (<a href="#" target="_top">El Dorado</a>)</td>
                                        <td class="col-agregado">&nbsp;</td>
                                        <td align="center" valign="top" class="col-Silla-Avion">23K</td>
                                        <td align="center" valign="top" class="col-Catergoria-Clase">S</td>
                                        <td align="center" valign="top" class="col-Escala-VueloDirecto"><a href="#" target="_top">Escala (s)</a></td>
                                        <td align="center" valign="top" class="col-informacion"><a href="#" target="_top"><img src="images/ico-info-azul.gif" width="17" height="17" alt="Información" /></a></td>
                                        <td align="center" valign="top"><img src="images/aero-LAN-gris.jpg" width="66" height="23" alt="LAN" /></td>
                                   </tr>
                                   <tr>
                                        <td width="1%" align="center" valign="middle" class="col-seleccion-vuelo">&nbsp;</td>
                                        <td class="col-Hora-Vuelo">09:05</td>
                                        <td class="col-Ciudad-AeroPuerto"> Bogotá (<a href="#" target="_top">El Dorado</a>)</td>
                                        <td class="col-Hora-Vuelo">11:15</td>
                                        <td class="col-Ciudad-AeroPuerto"> San Andrés (Isla) (<a href="#" target="_top">San Andres Isla</a>)</td>
                                        <td class="col-agregado">&nbsp;</td>
                                        <td align="center" valign="top" class="col-Silla-Avion">23K</td>
                                        <td align="center" valign="top" class="col-Catergoria-Clase">S</td>
                                        <td align="center" valign="top" class="col-Escala-VueloDirecto">&nbsp;</td>
                                        <td align="center" valign="top" class="col-informacion">&nbsp;</td>
                                        <td align="center" valign="top"><img src="images/aero-Avianca-gris.jpg" width="78" height="21" alt="LAN" /></td>
                                   </tr>
                              </table>
                         </div>
                         <div id="zonagris-costestotal-ednet">
                              <h2>Precio total con impuestos y tasas</h2>
                              <table width="100%%" border="0" cellspacing="0" cellpadding="0">
                                   <tr class="Encabezado">
                                        <th scope="col"><span>Pasajero</span></th>
                                        <th scope="col"><span>Nº</span></th>
                                        <th scope="col"><span>Precio p/Pasajero</span></th>
                                        <th scope="col"><span>Tasa</span></th>
                                        <th scope="col"><span>T.A.</span></th>
                                        <th scope="col"><span>Fee</span></th>
                                        <th scope="col"><span class="Total">Total</span></th>
                                   </tr>
                                   <tr class="Precios">
                                        <td>Adultos</td>
                                        <td>2</td>
                                        <td>$287.100 Pesos Col</td>
                                        <td>$86.040 Pesos Col</td>
                                        <td>$46.443 Pesos Col</td>
                                        <td>$17.400 Pesos Col</td>
                                        <td class="ValorTotal">$839.166 Pesos Col</td>
                                   </tr>
                              </table>
                              <div id="barra-Azul-vuelo-ida" class="clearfix">
                                   <ul class="datosVueloIdaDetalles">
                                        <li><img src="images/ico-avion-vuelo-ida.png" width="18" height="16" alt="Vuelo ida" /></li>
                                        <li class="txt-td-azulclaro"> <strong class="txt-td-azulclaro">Ida</strong>: Medellín </li>
                                        <li> &raquo; </li>
                                        <li class="txt-td-azulclaro"> Cartagena </li>
                                        <li>26 / 10 / 2013</li>
                                        <li>(</li>
                                        <li>Pasajeros</li>
                                        <li>2 adultos</li>
                                        <li>1 Niño</li>
                                        <li>1 Bebe</li>
                                        <li>)</li>
                                   </ul>
                              </div>
                              <table width="100%%" border="0" cellspacing="0" cellpadding="0">
                                   <tr>
                                        <td align="center" valign="middle" class="col-seleccion-vuelo"><input name="radio2" type="radio" id="radio2" value="radio2" checked="checked" />
                                             <label for="radio2"></label></td>
                                        <td class="col-Hora-Vuelo">05:50</td>
                                        <td class="col-Ciudad-AeroPuerto">Medellín (<a href="#" target="_top">José María Cordova</a>)</td>
                                        <td class="col-Hora-Vuelo">06:40</td>
                                        <td class="col-Ciudad-AeroPuerto">Bogotá (<a href="#" target="_top">El Dorado</a>)</td>
                                        <td class="col-agregado">&nbsp;</td>
                                        <td align="center" valign="top" class="col-Silla-Avion">23K</td>
                                        <td align="center" valign="top" class="col-Catergoria-Clase">S</td>
                                        <td align="center" valign="top" class="col-Escala-VueloDirecto"><a href="#" target="_top">Escala (s)</a></td>
                                        <td align="center" valign="top" class="col-informacion"><a href="#" target="_top"><img src="images/ico-info-azul.gif" width="17" height="17" alt="Información" /></a></td>
                                        <td align="center" valign="top"><img src="images/aero-lufthansa-Gris.jpg" width="80" height="17" alt="LAN" /></td>
                                   </tr>
                                   <tr>
                                        <td width="1%" align="center" valign="middle" class="col-seleccion-vuelo">&nbsp;</td>
                                        <td class="col-Hora-Vuelo">09:05</td>
                                        <td class="col-Ciudad-AeroPuerto"> Bogotá (<a href="#" target="_top">El Dorado</a>)</td>
                                        <td class="col-Hora-Vuelo">11:15</td>
                                        <td class="col-Ciudad-AeroPuerto"> San Andrés (Isla) (<a href="#" target="_top">San Andres Isla</a>)</td>
                                        <td class="col-agregado">&nbsp;</td>
                                        <td align="center" valign="top" class="col-Silla-Avion">23K</td>
                                        <td align="center" valign="top" class="col-Catergoria-Clase">S</td>
                                        <td align="center" valign="top" class="col-Escala-VueloDirecto">&nbsp;</td>
                                        <td align="center" valign="top" class="col-informacion">&nbsp;</td>
                                        <td align="center" valign="top"><img src="images/aero-JetBlue-Gris.jpg" width="49" height="22" alt="Copa" /></td>
                                   </tr>
                              </table>
                              <div id="barra-Azul-vuelo-ida" class="clearfix">
                                   <ul class="datosVueloIdaDetalles">
                                        <li><img src="images/ico-avion-vuelo-regreso.png" width="18" height="16" alt="Vuelo ida" /></li>
                                        <li class="txt-td-azulclaro"> <strong class="txt-td-azulclaro">Regreso</strong>: Medellín </li>
                                        <li> &raquo; </li>
                                        <li class="txt-td-azulclaro"> Cartagena </li>
                                        <li>26 / 10 / 2013</li>
                                        <li>(</li>
                                        <li>Pasajeros</li>
                                        <li>2 adultos</li>
                                        <li>1 Niño</li>
                                        <li>1 Bebe</li>
                                        <li>)</li>
                                   </ul>
                              </div>
                              <table width="100%%" border="0" cellspacing="0" cellpadding="0">
                                   <tr>
                                        <td align="center" valign="middle" class="col-seleccion-vuelo"><input name="radio2" type="radio" id="radio3" value="radio2" checked="checked" />
                                             <label for="radio3"></label></td>
                                        <td class="col-Hora-Vuelo">05:50</td>
                                        <td class="col-Ciudad-AeroPuerto">Medellín (<a href="#" target="_top">José María Cordova</a>)</td>
                                        <td class="col-Hora-Vuelo">06:40</td>
                                        <td class="col-Ciudad-AeroPuerto">Bogotá (<a href="#" target="_top">El Dorado</a>)</td>
                                        <td class="col-agregado">&nbsp;</td>
                                        <td align="center" valign="top" class="col-Silla-Avion">23K</td>
                                        <td align="center" valign="top" class="col-Catergoria-Clase">S</td>
                                        <td align="center" valign="top" class="col-Escala-VueloDirecto"><a href="#" target="_top">Escala (s)</a></td>
                                        <td align="center" valign="top" class="col-informacion"><a href="#" target="_top"><img src="images/ico-info-azul.gif" width="17" height="17" alt="Información" /></a></td>
                                        <td align="center" valign="top"><img src="images/aero-Avianca-gris.jpg" width="78" height="21" alt="LAN" /></td>
                                   </tr>
                                   <tr>
                                        <td width="1%" align="center" valign="middle" class="col-seleccion-vuelo">&nbsp;</td>
                                        <td class="col-Hora-Vuelo">09:05</td>
                                        <td class="col-Ciudad-AeroPuerto"> Bogotá (<a href="#" target="_top">El Dorado</a>)</td>
                                        <td class="col-Hora-Vuelo">11:15</td>
                                        <td class="col-Ciudad-AeroPuerto"> San Andrés (Isla) (<a href="#" target="_top">San Andres Isla</a>)</td>
                                        <td class="col-agregado">&nbsp;</td>
                                        <td align="center" valign="top" class="col-Silla-Avion">23K</td>
                                        <td align="center" valign="top" class="col-Catergoria-Clase">S</td>
                                        <td align="center" valign="top" class="col-Escala-VueloDirecto">&nbsp;</td>
                                        <td align="center" valign="top" class="col-informacion">&nbsp;</td>
                                        <td align="center" valign="top"><img src="images/aero-AirFrance-Gris.jpg" width="86" height="22" alt="LAN" /></td>
                                   </tr>
                              </table>
                         </div>
                         <div id="zonagris-costestotal-ednet">
                              <h2>Precio total con impuestos y tasas</h2>
                              <table width="100%%" border="0" cellspacing="0" cellpadding="0">
                                   <tr class="Encabezado">
                                        <th scope="col"><span>Pasajero</span></th>
                                        <th scope="col"><span>Nº</span></th>
                                        <th scope="col"><span>Precio p/Pasajero</span></th>
                                        <th scope="col"><span>Tasa</span></th>
                                        <th scope="col"><span>T.A.</span></th>
                                        <th scope="col"><span>Fee</span></th>
                                        <th scope="col"><span class="Total">Total</span></th>
                                   </tr>
                                   <tr class="Precios">
                                        <td>Adultos</td>
                                        <td>2</td>
                                        <td>$287.100 Pesos Col</td>
                                        <td>$86.040 Pesos Col</td>
                                        <td>$46.443 Pesos Col</td>
                                        <td>$17.400 Pesos Col</td>
                                        <td class="ValorTotal">$839.166 Pesos Col</td>
                                   </tr>
                              </table>
                              <div id="barra-Azul-vuelo-ida" class="clearfix">
                                   <ul class="datosVueloIdaDetalles">
                                        <li><img src="images/ico-avion-vuelo-ida.png" width="18" height="16" alt="Vuelo ida" /></li>
                                        <li class="txt-td-azulclaro"> <strong class="txt-td-azulclaro">Ida</strong>: Medellín </li>
                                        <li> &raquo; </li>
                                        <li class="txt-td-azulclaro"> Cartagena </li>
                                        <li>26 / 10 / 2013</li>
                                        <li>(</li>
                                        <li>Pasajeros</li>
                                        <li>2 adultos</li>
                                        <li>1 Niño</li>
                                        <li>1 Bebe</li>
                                        <li>)</li>
                                   </ul>
                              </div>
                              <table width="100%%" border="0" cellspacing="0" cellpadding="0">
                                   <tr>
                                        <td align="center" valign="middle" class="col-seleccion-vuelo"><input name="radio2" type="radio" id="radio2" value="radio2" checked="checked" />
                                             <label for="radio2"></label></td>
                                        <td class="col-Hora-Vuelo">05:50</td>
                                        <td class="col-Ciudad-AeroPuerto">Medellín (<a href="#" target="_top">José María Cordova</a>)</td>
                                        <td class="col-Hora-Vuelo">06:40</td>
                                        <td class="col-Ciudad-AeroPuerto">Bogotá (<a href="#" target="_top">El Dorado</a>)</td>
                                        <td class="col-agregado">&nbsp;</td>
                                        <td align="center" valign="top" class="col-Silla-Avion">23K</td>
                                        <td align="center" valign="top" class="col-Catergoria-Clase">S</td>
                                        <td align="center" valign="top" class="col-Escala-VueloDirecto"><a href="#" target="_top">Escala (s)</a></td>
                                        <td align="center" valign="top" class="col-informacion"><a href="#" target="_top"><img src="images/ico-info-azul.gif" width="17" height="17" alt="Información" /></a></td>
                                        <td align="center" valign="top"><img src="images/aero-lufthansa-Gris.jpg" width="80" height="17" alt="LAN" /></td>
                                   </tr>
                                   <tr>
                                        <td width="1%" align="center" valign="middle" class="col-seleccion-vuelo">&nbsp;</td>
                                        <td class="col-Hora-Vuelo">09:05</td>
                                        <td class="col-Ciudad-AeroPuerto"> Bogotá (<a href="#" target="_top">El Dorado</a>)</td>
                                        <td class="col-Hora-Vuelo">11:15</td>
                                        <td class="col-Ciudad-AeroPuerto"> San Andrés (Isla) (<a href="#" target="_top">San Andres Isla</a>)</td>
                                        <td class="col-agregado">&nbsp;</td>
                                        <td align="center" valign="top" class="col-Silla-Avion">23K</td>
                                        <td align="center" valign="top" class="col-Catergoria-Clase">S</td>
                                        <td align="center" valign="top" class="col-Escala-VueloDirecto">&nbsp;</td>
                                        <td align="center" valign="top" class="col-informacion">&nbsp;</td>
                                        <td align="center" valign="top"><img src="images/aero-AirFrance-Gris.jpg" width="86" height="22" alt="Copa" /></td>
                                   </tr>
                              </table>
                              <div id="barra-Azul-vuelo-ida" class="clearfix">
                                   <ul class="datosVueloIdaDetalles">
                                        <li><img src="images/ico-avion-vuelo-regreso.png" width="18" height="16" alt="Vuelo ida" /></li>
                                        <li class="txt-td-azulclaro"> <strong class="txt-td-azulclaro">Regreso</strong>: Medellín </li>
                                        <li> &raquo; </li>
                                        <li class="txt-td-azulclaro"> Cartagena </li>
                                        <li>26 / 10 / 2013</li>
                                        <li>(</li>
                                        <li>Pasajeros</li>
                                        <li>2 adultos</li>
                                        <li>1 Niño</li>
                                        <li>1 Bebe</li>
                                        <li>)</li>
                                   </ul>
                              </div>
                              <table width="100%%" border="0" cellspacing="0" cellpadding="0">
                                   <tr>
                                        <td align="center" valign="middle" class="col-seleccion-vuelo"><input name="radio2" type="radio" id="radio3" value="radio2" checked="checked" />
                                             <label for="radio3"></label></td>
                                        <td class="col-Hora-Vuelo">05:50</td>
                                        <td class="col-Ciudad-AeroPuerto">Medellín (<a href="#" target="_top">José María Cordova</a>)</td>
                                        <td class="col-Hora-Vuelo">06:40</td>
                                        <td class="col-Ciudad-AeroPuerto">Bogotá (<a href="#" target="_top">El Dorado</a>)</td>
                                        <td class="col-agregado">&nbsp;</td>
                                        <td align="center" valign="top" class="col-Silla-Avion">23K</td>
                                        <td align="center" valign="top" class="col-Catergoria-Clase">S</td>
                                        <td align="center" valign="top" class="col-Escala-VueloDirecto"><a href="#" target="_top">Escala (s)</a></td>
                                        <td align="center" valign="top" class="col-informacion"><a href="#" target="_top"><img src="images/ico-info-azul.gif" width="17" height="17" alt="Información" /></a></td>
                                        <td align="center" valign="top"><img src="images/aero-lufthansa-Gris.jpg" width="80" height="17" alt="LAN" /></td>
                                   </tr>
                                   <tr>
                                        <td width="1%" align="center" valign="middle" class="col-seleccion-vuelo">&nbsp;</td>
                                        <td class="col-Hora-Vuelo">09:05</td>
                                        <td class="col-Ciudad-AeroPuerto"> Bogotá (<a href="#" target="_top">El Dorado</a>)</td>
                                        <td class="col-Hora-Vuelo">11:15</td>
                                        <td class="col-Ciudad-AeroPuerto"> San Andrés (Isla) (<a href="#" target="_top">San Andres Isla</a>)</td>
                                        <td class="col-agregado">&nbsp;</td>
                                        <td align="center" valign="top" class="col-Silla-Avion">23K</td>
                                        <td align="center" valign="top" class="col-Catergoria-Clase">S</td>
                                        <td align="center" valign="top" class="col-Escala-VueloDirecto">&nbsp;</td>
                                        <td align="center" valign="top" class="col-informacion">&nbsp;</td>
                                        <td align="center" valign="top"><img src="images/aero-AirFrance-Gris.jpg" width="86" height="22" alt="LAN" /></td>
                                   </tr>
                              </table>
                         </div>
                         <div id="zonagris-costestotal-ednet">
                              <h2>Precio total con impuestos y tasas</h2>
                              <table width="100%%" border="0" cellspacing="0" cellpadding="0">
                                   <tr class="Encabezado">
                                        <th scope="col"><span>Pasajero</span></th>
                                        <th scope="col"><span>Nº</span></th>
                                        <th scope="col"><span>Precio p/Pasajero</span></th>
                                        <th scope="col"><span>Tasa</span></th>
                                        <th scope="col"><span>T.A.</span></th>
                                        <th scope="col"><span>Fee</span></th>
                                        <th scope="col"><span class="Total">Total</span></th>
                                   </tr>
                                   <tr class="Precios">
                                        <td>Adultos</td>
                                        <td>2</td>
                                        <td>$287.100 Pesos Col</td>
                                        <td>$86.040 Pesos Col</td>
                                        <td>$46.443 Pesos Col</td>
                                        <td>$17.400 Pesos Col</td>
                                        <td class="ValorTotal">$839.166 Pesos Col</td>
                                   </tr>
                              </table>
                              <div id="barra-Azul-vuelo-ida" class="clearfix">
                                   <ul class="datosVueloIdaDetalles">
                                        <li><img src="images/ico-avion-vuelo-ida.png" width="18" height="16" alt="Vuelo ida" /></li>
                                        <li class="txt-td-azulclaro"> <strong class="txt-td-azulclaro">Ida</strong>: Medellín </li>
                                        <li> &raquo; </li>
                                        <li class="txt-td-azulclaro"> Cartagena </li>
                                        <li>26 / 10 / 2013</li>
                                        <li>(</li>
                                        <li>Pasajeros</li>
                                        <li>2 adultos</li>
                                        <li>1 Niño</li>
                                        <li>1 Bebe</li>
                                        <li>)</li>
                                   </ul>
                              </div>
                              <table width="100%%" border="0" cellspacing="0" cellpadding="0">
                                   <tr>
                                        <td align="center" valign="middle" class="col-seleccion-vuelo"><input name="radio2" type="radio" id="radio2" value="radio2" checked="checked" />
                                             <label for="radio2"></label></td>
                                        <td class="col-Hora-Vuelo">05:50</td>
                                        <td class="col-Ciudad-AeroPuerto">Medellín (<a href="#" target="_top">José María Cordova</a>)</td>
                                        <td class="col-Hora-Vuelo">06:40</td>
                                        <td class="col-Ciudad-AeroPuerto">Bogotá (<a href="#" target="_top">El Dorado</a>)</td>
                                        <td class="col-agregado">&nbsp;</td>
                                        <td align="center" valign="top" class="col-Silla-Avion">23K</td>
                                        <td align="center" valign="top" class="col-Catergoria-Clase">S</td>
                                        <td align="center" valign="top" class="col-Escala-VueloDirecto"><a href="#" target="_top">Escala (s)</a></td>
                                        <td align="center" valign="top" class="col-informacion"><a href="#" target="_top"><img src="images/ico-info-azul.gif" width="17" height="17" alt="Información" /></a></td>
                                        <td align="center" valign="top"><img src="images/aero-AirFrance-Gris.jpg" width="86" height="22" alt="LAN" /></td>
                                   </tr>
                                   <tr>
                                        <td width="1%" align="center" valign="middle" class="col-seleccion-vuelo">&nbsp;</td>
                                        <td class="col-Hora-Vuelo">09:05</td>
                                        <td class="col-Ciudad-AeroPuerto"> Bogotá (<a href="#" target="_top">El Dorado</a>)</td>
                                        <td class="col-Hora-Vuelo">11:15</td>
                                        <td class="col-Ciudad-AeroPuerto"> San Andrés (Isla) (<a href="#" target="_top">San Andres Isla</a>)</td>
                                        <td class="col-agregado">&nbsp;</td>
                                        <td align="center" valign="top" class="col-Silla-Avion">23K</td>
                                        <td align="center" valign="top" class="col-Catergoria-Clase">S</td>
                                        <td align="center" valign="top" class="col-Escala-VueloDirecto">&nbsp;</td>
                                        <td align="center" valign="top" class="col-informacion">&nbsp;</td>
                                        <td align="center" valign="top"><img src="images/aero-JetBlue-Gris.jpg" width="49" height="22" alt="Copa" /></td>
                                   </tr>
                              </table>
                              <div id="barra-Azul-vuelo-ida" class="clearfix">
                                   <ul class="datosVueloIdaDetalles">
                                        <li><img src="images/ico-avion-vuelo-regreso.png" width="18" height="16" alt="Vuelo ida" /></li>
                                        <li class="txt-td-azulclaro"> <strong class="txt-td-azulclaro">Regreso</strong>: Medellín </li>
                                        <li> &raquo; </li>
                                        <li class="txt-td-azulclaro"> Cartagena </li>
                                        <li>26 / 10 / 2013</li>
                                        <li>(</li>
                                        <li>Pasajeros</li>
                                        <li>2 adultos</li>
                                        <li>1 Niño</li>
                                        <li>1 Bebe</li>
                                        <li>)</li>
                                   </ul>
                              </div>
                              <table width="100%%" border="0" cellspacing="0" cellpadding="0">
                                   <tr>
                                        <td align="center" valign="middle" class="col-seleccion-vuelo"><input name="radio2" type="radio" id="radio3" value="radio2" checked="checked" />
                                             <label for="radio3"></label></td>
                                        <td class="col-Hora-Vuelo">05:50</td>
                                        <td class="col-Ciudad-AeroPuerto">Medellín (<a href="#" target="_top">José María Cordova</a>)</td>
                                        <td class="col-Hora-Vuelo">06:40</td>
                                        <td class="col-Ciudad-AeroPuerto">Bogotá (<a href="#" target="_top">El Dorado</a>)</td>
                                        <td class="col-agregado">&nbsp;</td>
                                        <td align="center" valign="top" class="col-Silla-Avion">23K</td>
                                        <td align="center" valign="top" class="col-Catergoria-Clase">S</td>
                                        <td align="center" valign="top" class="col-Escala-VueloDirecto"><a href="#" target="_top">Escala (s)</a></td>
                                        <td align="center" valign="top" class="col-informacion"><a href="#" target="_top"><img src="images/ico-info-azul.gif" width="17" height="17" alt="Información" /></a></td>
                                        <td align="center" valign="top"><img src="images/aero-Avianca-gris.jpg" width="78" height="21" alt="LAN" /></td>
                                   </tr>
                                   <tr>
                                        <td width="1%" align="center" valign="middle" class="col-seleccion-vuelo">&nbsp;</td>
                                        <td class="col-Hora-Vuelo">09:05</td>
                                        <td class="col-Ciudad-AeroPuerto"> Bogotá (<a href="#" target="_top">El Dorado</a>)</td>
                                        <td class="col-Hora-Vuelo">11:15</td>
                                        <td class="col-Ciudad-AeroPuerto"> San Andrés (Isla) (<a href="#" target="_top">San Andres Isla</a>)</td>
                                        <td class="col-agregado">&nbsp;</td>
                                        <td align="center" valign="top" class="col-Silla-Avion">23K</td>
                                        <td align="center" valign="top" class="col-Catergoria-Clase">S</td>
                                        <td align="center" valign="top" class="col-Escala-VueloDirecto">&nbsp;</td>
                                        <td align="center" valign="top" class="col-informacion">&nbsp;</td>
                                        <td align="center" valign="top"><img src="images/aero-LAN-gris.jpg" width="66" height="23" alt="LAN" /></td>
                                   </tr>
                              </table>
                         </div>
                         
                         
                         
                         <div id="vuelos-Paginador-Resultados" class="clearfix">
                              <ul class="resultadosPaginador">
                                   <li> <a href="#" title="Anterior" target="_top" class="btn-AnteriorPag">&laquo; Anterior</a></li>
                                   <li><a href="#" target="_top">1</a></li>
                                   <li><a href="#" target="_top" class="selectPag">2</a></li>
                                   <li><a href="#" target="_top">3</a></li>
                                   <li><a href="#" target="_top">4</a></li>
                                   <li><a href="#" target="_top">5</a></li>
                                   <li><a href="#" target="_top">...</a></li>
                                   <li><a href="#" title="Siguiente" target="_top" class="btn-SiguientePag">Siguiente &raquo;</a></li>
                              </ul>
                              <div id="btns-busquedaYreserva">
                                   <ul>
                                        <li>
                                             <button type="button" name="" value="" class="css3button"><span class="label-nuevabusqueda">Nueva Busqueda</span></button>
                                        </li>
                                        <li>
                                             <button type="button" name="" value="" class="css3button"><span class="labellogin-form">Reservar</span></button>
                                        </li>
                                   </ul>
                              </div>
                         </div>                         
                    </form>
               </div>
               
          </div>
          <div id="footerEdNet" class="clearfix">
               <ul class="label-websiteprotect">
                    <li class="protectlogo"><a href="#" target="_blank"><img src="images/logoSecurity.fw.png" width="145" height="31" alt="Website protection" /></a></li>
               </ul>
               <ul class="creditscards clearfix">
                    <li class="logos"><a href="#" target="_blank"><img src="images/logo-placetopay.fw.png" width="44" height="21" alt="Place to pay" /></a></li>
                    <li class="logos"><a href="#" target="_blank"><img src="images/logo-pse.fw.png" width="16" height="18" alt="PSE" /></a></li>
                    <li class="logos"><a href="#" target="_blank"><img src="images/logo-amex.fw.png" width="25" height="16" alt="Amex" /></a></li>
                    <li class="logos"><a href="#" target="_blank"><img src="images/logo-dinners.fw.png" width="28" height="16" alt="Dinners" /></a></li>
                    <li class="logos"><a href="#" target="_blank"><img src="images/logo-masterCard.fw.png" width="25" height="16" alt="Master Card" /></a></li>
                    <li class="logos"><a href="#" target="_blank"><img src="images/logo-visa.fw.png" width="40" height="12" alt="Visa" /></a></li>
               </ul>
          </div>
          <div id="creditsEdNet" class="clearfix">
               <ul class="sectadminftr clearfix">
                    <li><a href="#" title="Administrador" target="_top">Administración</a></li>
                    <li class="sepadorFooter"> | </li>
                    <li><a href="#" title="FAQ’s" target="_top">FAQ’s</a></li>
                    <li class="sepadorFooter"> | </li>
                    <li><a href="#" title="Aviso legal" target="_top">Aviso legal</a></li>
                    <li class="sepadorFooter"> | </li>
                    <li><a href="#" title="Edenia Network S.A.S." target="_top">Edenia Network S.A.S.</a></li>
                    <li class="sepadornav">&nbsp;</li>
               </ul>
               <ul class="clearfix logosBrowsers">
                    <li class="logosFurer"><img src="images/ico-chrome.png" width="15" height="15" alt="Chrome" /></li>
                    <li class="logosFurer"><img src="images/ico-ff.png" width="15" height="15" alt="Firefox" /></li>
                    <li class="logosFurer"><img src="images/ico-ie.png" width="15" height="15" alt="Internet Explorer" /></li>
                    <li class="logosFurer"><img src="images/ico-opera.png" width="15" height="15" alt="Opera" /></li>
                    <li class="logosFurer"><img src="images/ico-safari.png" width="15" height="15" alt="Safari" /></li>
               </ul>
          </div>
     </div>
</div>
</body>
</html>
