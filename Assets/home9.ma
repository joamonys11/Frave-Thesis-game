//Maya ASCII 2014 scene
//Name: home9.ma
//Last modified: Wed, Mar 16, 2016 01:03:34 AM
//Codeset: 1252
requires maya "2014";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2014";
fileInfo "version" "2014 x64";
fileInfo "cutIdentifier" "201303010241-864206";
fileInfo "osv" "Microsoft Windows 7 Ultimate Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
fileInfo "license" "student";
createNode transform -n "group8";
	setAttr ".rp" -type "double3" -1004.4086568237448 279.10254850320257 1711.6635266220455 ;
	setAttr ".sp" -type "double3" -1004.4086568237448 279.10254850320257 1711.6635266220455 ;
createNode transform -n "pCube11" -p "group8";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr ".t" -type "double3" -941.05861395251895 205.47286404767689 1711.6635266220455 ;
	setAttr ".s" -type "double3" 0.35835136519782829 0.35835136519782829 0.35835136519782829 ;
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "pCube11Shape" -p "pCube11";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 26 ".uvst[0].uvsp[0:25]" -type "float2" 0.62927949 0.0019920468
		 0.0012560785 0.99793392 0.3013432 0.83850616 0.62929827 0.78061098 0.30136132 0.78779233
		 0.57861197 0.78058052 0.32031417 0.16149342 0.16081035 0.621126 0.0012560785 0.32108188
		 0.0012879819 0.62111688 0.57857645 0.32099789 0.0012661368 0.62828422 0.32034913
		 0.94003332 0.32031128 0.3210226 0.32035226 0.62110734 0.32031089 0.0019993186 0.5785799
		 0.16149372 0.0012770742 0.78779852 0.62927949 0.16150385 0.0012761801 0.83849049
		 0.30129856 0.99800801 0.62925512 0.94011199 0.16076842 0.32103518 0.32036036 0.78055203
		 0.30138281 0.62826955 0.57860529 0.62105834;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 14 ".vt[0:13]"  -563.30908203 -205.47286987 397.95776367
		 209.74523926 -205.47286987 397.95776367 -563.30908203 205.47286987 397.95776367 209.74523926 205.47286987 397.95776367
		 -563.30908203 205.47286987 267.38916016 209.74523926 205.47286987 267.38916016 -563.30908203 205.47286987 -397.95776367
		 209.74523926 205.47286987 -397.95776367 -563.30908203 -205.47286987 -397.95776367
		 209.74523926 -205.47286987 -397.95776367 -563.30908203 616.40856934 267.38916016
		 209.74523926 616.40856934 267.38916016 209.74523926 616.40856934 -397.95776367 -563.30908203 616.40856934 -397.95776367;
	setAttr -s 23 ".ed[0:22]"  0 1 0 1 3 0 3 2 0 2 0 0 3 5 0 5 4 0 4 2 0
		 10 11 0 11 12 0 12 13 0 13 10 0 6 7 0 7 9 0 9 8 0 8 6 0 1 9 0 7 5 0 4 6 0 8 0 0 5 11 0
		 10 4 0 7 12 0 6 13 0;
	setAttr -s 42 ".n[0:41]" -type "float3"  0 0 0.99999994 0 0 0.99999994
		 0 0 0.99999994 0 0 0.99999994 0 0.99999994 0 0 0.99999994 0 0 0.99999994 0 0 0.99999994
		 0 0 0.99999994 0 0 0.99999994 0 0 0.99999994 0 0 0.99999994 0 0 0 -0.99999994 0 0
		 -0.99999994 0 0 -0.99999994 0 0 -0.99999994 0.99999994 3.3690135e-008 0 0.99999994
		 4.7771461e-008 0 0.99999994 4.7771461e-008 0 0.99999994 4.7771461e-008 0 0.99999994
		 2.6020288e-008 0 -0.99999994 -1.6845068e-008 0 -0.99999994 -1.3010144e-008 0 -0.99999994
		 -2.3885731e-008 0 -0.99999994 -2.3885731e-008 0 -0.99999994 -2.3885731e-008 0 0 0
		 0.99999994 0 0 0.99999994 0 0 0.99999994 0 0 0.99999994 0.99999994 3.3690135e-008
		 0 0.99999994 2.6020288e-008 0 0.99999994 0 0 0.99999994 0 0 0 0 -0.99999994 0 0 -0.99999994
		 0 0 -0.99999994 0 0 -0.99999994 -0.99999994 -1.3010144e-008 0 -0.99999994 -1.6845068e-008
		 0 -0.99999994 0 0 -0.99999994 0 0;
	setAttr -s 10 -ch 42 ".fc[0:9]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 20 1 19 2
		f 4 -3 4 5 6
		mu 0 4 2 19 17 4
		f 4 7 8 9 10
		mu 0 4 10 25 14 13
		f 4 11 12 13 14
		mu 0 4 22 7 9 8
		f 5 -5 -2 15 -13 16
		mu 0 5 5 3 21 12 23
		f 5 17 -15 18 -4 -7
		mu 0 5 16 6 15 0 18
		f 4 -6 19 -8 20
		mu 0 4 4 17 11 24
		f 4 -17 21 -9 -20
		mu 0 4 5 23 14 25
		f 4 -12 22 -10 -22
		mu 0 4 7 22 13 14
		f 4 -18 -21 -11 -23
		mu 0 4 6 16 10 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode materialInfo -n "materialInfo25";
createNode shadingEngine -n "pCube11SG3";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode lambert -n "lambert14";
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 21 ".lnk";
	setAttr -s 21 ".slnk";
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 21 ".st";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -s 12 ".s";
select -ne :defaultTextureList1;
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
select -ne :defaultRenderingList1;
select -ne :renderGlobalsList1;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
connectAttr "pCube11SG3.msg" "materialInfo25.sg";
connectAttr "lambert14.msg" "materialInfo25.m";
connectAttr "lambert14.oc" "pCube11SG3.ss";
connectAttr "pCube11Shape.iog" "pCube11SG3.dsm" -na;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pCube11SG3.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pCube11SG3.message" ":defaultLightSet.message";
connectAttr "pCube11SG3.pa" ":renderPartition.st" -na;
connectAttr "lambert14.msg" ":defaultShaderList1.s" -na;
// End of home9.ma
