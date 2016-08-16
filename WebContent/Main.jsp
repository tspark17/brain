<%!final int WEST_WIDTH = 580;%>
<%!final int EAST_WIDTH = 600;%>
<%!final int FONT_SIZE = 10;%>
<%!final int WEST_R_WIDTH = 297; %>
<%!final int WEST_R_HEIGHT = 200; %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<head>

<title>MRI</title>

<link rel="stylesheet"
   href="//code.jquery.com/ui/1.11.0/themes/smoothness/jquery-ui.css">
<link rel="stylesheet" href="jquery-filestyle.min.css">
<link rel="stylesheet"
   href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<style type="text/css">
.ui-layout-pane-north { <%--border: 1px solid #BBB; --%>
width: 100px;
   height: 100px;
   float: left;
}

.ui-layout-pane-west { <%--border: 1px solid #BBB; --%>
   width: <%=WEST_WIDTH%>px;
   background-color: #ffffff !important;
   overflow: auto;
   padding: 10px;
}

#center {
   width: 100%;
   height: 600px;
   border: 0;
}

table {
   border-spacing: 2px;
}

table td {
   width: 20px;
   background: #ffffff !important;
}
#study {
   border: 1px solid #848484;
   width: <%=WEST_WIDTH%>px;
   height: 135px;
   float: left;
   padding: 10px;
   font-size: <%=FONT_SIZE%>pt;
}

#system {
   border: 1px solid #848484;
   width: <%=WEST_WIDTH%>px;
   height: 310px;
   float: left;
   padding: 10px;
   font-size: <%=FONT_SIZE%>pt;
}

#geometry_editor {
   border: 1px solid #848484;
   width: <%=EAST_WIDTH%>px;
   height: 400px;
   font-size: <%=FONT_SIZE%>pt;
}

#simulator {
   border: 1px solid #FFFFFF;
   width: <%=EAST_WIDTH%>px;
   height: 120px;
   font-size: <%=FONT_SIZE%>pt;
}

#parameter {
   border: 1px solid #848484;
   width: <%=WEST_WIDTH%>px;
   height: 175px;
   float: left;
   padding: 10px;
   font-size: <%=FONT_SIZE%>pt;
}

.file_input_textbox {
   float: right;
   margin-right: 165px;
}

.file_input_div {
   position: relative;
   width: 110px;
   height: 26px;
   overflow: hidden;
}

.file_input_hidden {
   font-size: 23px;
   position: absolute;
   right: 0px;
   top: 0px;
   opacity: 0;
}

#right1 {
   width: <%=WEST_R_WIDTH%>px;
   height: <%=WEST_R_HEIGHT%>px;
   float: left;
}
#right2 {
   width: <%=WEST_R_WIDTH%>px;
   height: <%=WEST_R_HEIGHT%>px;
   float: left;
}
#right3 {
   width: <%=WEST_R_WIDTH%>px;
   height: <%=WEST_R_HEIGHT%>px;
   float: left;
}
#right4 {
   width: <%=WEST_R_WIDTH%>px;
   height: <%=WEST_R_HEIGHT%>px;
   float: left;
}
</style>

<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script
   src="//ajax.googleapis.com/ajax/libs/jqueryui/1/jquery-ui.min.js"></script>
<script src="//layout.jquery-dev.com/lib/js/jquery.layout-latest.js"></script>
<script src="jquery-filestyle.min.js"></script>
<script
   src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script>
   var myLayout;

   $(function() {

      myLayout = $('body').layout({

         west__size : 610,

         west__spacing_closed : 20,

         north__size : 160,

         center__maskContents : true

      });
   });
</script>

<!-- Path: System.out.println(getServletContext().getRealPath("/")+""); -->


<!-- Top Logo -->
<div class="ui-layout-north">
   <p style="text-align: center;">
      <img src="logo.PNG">
   </p>
</div>

<!-- RIGHT OR EAST   -->
<div class="ui-layout-center">
   <div id="geometry_editor">
      <div id="right1">
      <b><font size="3">&nbsp;&nbsp;Geometry Editor</font></b>
            <br><br>&nbsp;&nbsp;Orientation
         <select name="job">
               <option value="v_Axial">Axial</option>
               <option value="v_Sagittal">Sagittal</option>
               <option value="v_Coronal">Coronal</option>
         </select>
	  </div>
      <div id="right2">right2</p></div>
      <div id="right3">right3</div>
      <div id="right4">right4</div>
   </div>
   <div id="simulator">
      <tr height="55">
         <table border="0" width="400" height="50" cellpadding="0"
            cellspacing="0" align="middle" valign="middle">
            <tr>
               <td width="90"></td>
               <td>
               <button type="submit" id="btn_generateSequence" class="btn btn-default"  
               style="width: 100%; font-weight: bold;">Run Simulator</button>
			   </td>
               <td width="90"></td>
               <td>
               <button type="submit" id="btn_exit" class="btn btn-default" style="width: 100%;">Exit</button>
               </td>
            </tr>
         </table>
         </td>
      </tr>
   </div>
</div>

<!-- LEFT OR WEST_WIDTH   -->
<div class="ui-layout-west">

   <div id="study">

      <b><font size="3">Study</font></b>

      <tr height="55">

         <table border="0" width="330" height="50" cellpadding="0"
            cellspacing="0" align="left" valign="middle">
            <tr>
               <br>
               <br>
               <td>Study List</td>

               <td><select name="job">

                     <option value="">SC_0920</option>

                     <option value="SC_0920">SC_0930</option>

                     <option value="SC_0930">SC_0940</option>

                     <option value="SC_0940">SC_0950</option>

               </select></td>

               <td>|</td>

               <td><select name="1">

                     <option value="1">1</option>

                     <option value="2">2</option>

                     <option value="3">3</option>

                     <option value="4">4</option>

               </select></td>

            </tr>

            <tr>
         
               <td><br>
                  <button type="submit" id="btn_newStudy" class="btn btn-default" style="width: 90%;">New Study</button></td>
               <td><br>
               <button type="submit" id="btn_newId" class="btn btn-default" style="width: 90%;">New ID</button></td>
            </tr>
         </table>
         </td>

      </tr>

   </div>

   <div id="system">
	<form name="convertForm" action="convert" method="post" enctype="multipart/form-data">
      <b><font size="3">Experimental System Setup </font></b><br> <br>
      <input type="file" class="jfilestyle" id="geo_load" onchange="this.form.submit()" 
      data-theme="blue" accept=".bin" data-buttonText="Geometry file" value="geo_load" name="geo_load">
      <input type="file" class="jfilestyle" id="tissue_load" onchange="this.form.submit()"
      data-theme="blue" accept=".bin" data-buttonText="Tissue file" value="tissue_load" name="tissue_load"><br>
      <input type="file" class="jfilestyle" id="b0_load" onchange="this.form.submit()" 
      data-theme="blue" accept=".bin" data-disabled="true" data-buttonText="B0 file &nbsp;&nbsp; " value="b0_load"><br>
      <input type="file" class="jfilestyle" id="b1p_load" onchange="this.form.submit()"  
      data-theme="blue" accept=".bin" data-disabled="true" data-buttonText="B1+ file &nbsp;&nbsp;" value="b1p_load">
    <!--    <input type="file" class="jfilestyle" id="b1m_load" data-theme="blue"
         accept=".bin" data-disabled="true" data-buttonText="B1- file &nbsp;&nbsp;" value="b1m_load"><br>
         -->
	</form>
<script>
var upload = document.getElementById('geo_load')[0];
	holder = document.getElementById('right1');
	a = document.getElementById('geo_load')[0].value;
	b = document.getElementById('geo_load').value;
	alert(upload);
	alert(a);alert(b);
if (typeof window.FileReader === 'undefined'){
	state.className = 'fail';
}
else {
	state.className = 'success';
	state.innerHTML = 'File API & File Reader available';
}

upload.onchange = function (e){
	e.preventDefault();
	
	var file = upload.files[0],
	reader = new FileReader();
	reader.onload = function (event){
		var img = new Image();
		img.src = event.target.result;
		
		if (img.width > 560){
			img.width = 560;
		}
		holder.innerHTML='';
		holder.appendChild(img);
	};
	reader.readAsDataURL(file);
	return false;
};
</script>
      <br>

      <tr>

         <td>Field Strength (Tesla)</td>

         <td><input type="text" style="width: 100px;"readonly"></td>

         <td>RF</td>

         <td><select name="job">

               <option value="">HP Birdcage</option>

               <option value="SC_0920">SC_0930</option>

               <option value="SC_0930">SC_0940</option>

               <option value="SC_0940">SC_0950</option>

         </select></td>

      </tr>



      <tr>

         <br>

         <td>Gradiant ON</td>

         <td><input type="checkbox"></td>

         <td>Slice Selection</td>

         <td><input type="checkbox"></td>

         <td>Frequency Encoding</td>

         <td><input type="checkbox"></td>

         <td><nobr>Phase Encoding</nobr></td>

      </tr>



      <tr>

         <br> Grid size of geometry file(mm * mm * mm)

         <td><input type="text" value="5" size="10"
            style="text-align: center;"></td>

      </tr>

   </div>

   <div id="parameter">

      <b><font size="3">Imaging Parameter Setup</font></b> 

      <tr height="55">

         <table border="0" width="400" height="50" cellpadding="0"
            cellspacing="0" align="middle" valign="middle">

            <tr>

               <td><nobr>Pulse Sequence</nobr></td>

               <td><select name="job">

                     <option value="">Gradient echo</option>

                     <option value="SC_0920">SC_0930</option>

                     <option value="SC_0930">SC_0940</option>

                     <option value="SC_0940">SC_0950</option>

               </select></td>

               <td><nobr>RF Pulse Shape</nobr></td>

               <td><select name="job">

                     <option value="">Sinc</option>

                     <option value="SC_0920">SC_0930</option>

                     <option value="SC_0930">SC_0940</option>

                     <option value="SC_0940">SC_0950</option>

               </select></td>

            </tr>

            <tr>

               <td><br>TR (ms)</td>

               <td><br><input type="text" value="500"
                  style="width: 70px; text-align: center;"></td>

               <td><br>TE (ms)</td>

               <td><br><input type="text" value="10"
                  style="width: 70px; text-align: center;"></td>

            </tr>

            <tr>

               <td width="90"></td>

               <td><br>
                     <button type="submit" id="btn_generateSequence" class="btn btn-default" style="width: 100%;">Generate Sequence</button>
                  </td>

               <td width="90"></td>

               <td><br>
               <button type="submit" id="btn_seqPlot" class="btn btn-default" style="width: 90%;">Seq.plot</button>
               </td>

            </tr>

         </table>

         </td>

      </tr>

   </div>

</div>
<iframe id="center" class="ui-layout-center"></iframe>