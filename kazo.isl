<!--
Requires a saved xidv file with data path already saved
The script below replaces the data path and writes images
to a defined image directory.
_______________________________________________
-->

<isl debug="true" offscreen="true">
<property name="baseDirectory" value="C:/datavents/19800513"/>
<property name="scriptDirectory" value="${baseDirectory}/idv"/>
<property name="inputFileDirectory" value="${baseDirectory}/downloads/d33"/>
<property name="imageDirectory" value="${baseDirectory}/images"/>

<!--
_______________________________________________
Here is where the xidv bundle files are listed
Multipe xidv bundles can be separated by commas
_______________________________________________
-->

<fileset dir="${inputFileDirectory}" pattern="d03">
<foreach bund="3km-ir">
    <bundle file="${scriptDirectory}/${bund}.xidv">
	<setfiles datasource=".*" file="${file}"/>
	</bundle>
	<pause/>
    <image file="${imageDirectory}/${bund}_${filetail}.png"/>
</foreach>
</fileset>	


<!--
________________________________________________________________

IGNORE BELOW

<procedure name="makeImage">
	<fileset dir="${sourceDir}/" pattern="grb2">
	<echo message="fileset: ${fileset}"/>
	<bundle file="${bundle}">
		<setfiles datasource=".*" file="${file}"/> 
	</bundle>
	<image file="./images/${filetailnosuffix}.png">
		<clip space_left="-1" space_right="-1" space_bottom="45" space_top="-1"/>
		<displaylist valign="bottom" mattebg="white" fontsize="18" color="black"/>
	</image>
	</fileset>
</procedure>

<foreach bundle="tom-h4.xidv">
		<call name="makeImage"/>
		<pause/>
</foreach>
________________________________________________________________

-->


</isl>