//Maya ASCII 2014 scene
//Name: tree1.ma
//Last modified: Wed, Feb 10, 2016 07:14:05 AM
//Codeset: 1252
requires maya "2014";
requires -nodeType "ilrOptionsNode" -nodeType "ilrUIOptionsNode" -nodeType "ilrBakeLayerManager"
		 -nodeType "ilrBakeLayer" -nodeType "ilrBssrdfShader" -nodeType "ilrOccSampler" -nodeType "ilrOccData"
		 -nodeType "ilrNormalMap" -nodeType "ilrSurfaceThickness" -nodeType "ilrRaySampler"
		 -nodeType "ilrBasicPhotonShader" -nodeType "ilrPhysicPhotonShader" -nodeType "ilrDielectricPhotonShader"
		 -nodeType "ilrOrenNayarShader" -nodeType "ilrAshikhminShader" -nodeType "ilrDielectricShader"
		 -nodeType "ilrLuaNode" -nodeType "ilrHwBakeVisualizer" -nodeType "ilrShadowMask"
		 -nodeType "ilrPolyColorPerVertex" -nodeType "ilrUVMappingVisualizer" -nodeType "ilrOutputShaderBackendNode"
		 -nodeType "ilrPointCloudShape" "Turtle" "2014.0.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2014";
fileInfo "version" "2014 x64";
fileInfo "cutIdentifier" "201303010241-864206";
fileInfo "osv" "Microsoft Windows 7 Ultimate Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 591.61071013254025 532.09585003716813 -1697.4760341392234 ;
	setAttr ".r" -type "double3" -2.1383527296084219 -204.60000000000264 0 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 1978.3752553467521;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "group";
	setAttr ".rp" -type "double3" -121.03707957267761 278.03895789240295 423.82384154902445 ;
	setAttr ".sp" -type "double3" -121.03707957267761 278.03895789240295 423.82384154902445 ;
createNode transform -n "Sphere" -p "group";
	setAttr ".t" -type "double3" 17.748820461846933 294.93301464331779 419.99383544921875 ;
	setAttr ".r" -type "double3" -90.00000933466734 0 0 ;
	setAttr ".s" -type "double3" 100 100 100 ;
createNode mesh -n "SphereShape" -p "Sphere";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 13 ".vt[0:12]"  -1.063210607 0.16018346 -0.14315164 -0.53828526 -0.012169408 0.9238236
		 -0.45891309 0.8459065 -0.62267828 -0.42256004 0.69299269 0.66838169 0.53360033 0.85132611 0.43244743
		 0.49668193 0.82788754 -0.47770119 1.12079132 -0.12097004 0.099854529 0.37931368 -1.080699086 0.065505534
		 0.24552393 0.099755213 1.024770737 0.43230462 -0.14701295 -1.0096731186 0.15647149 -0.6110611 0.83836365
		 -0.8107686 -0.74148154 0.18834007 -0.47831774 -0.42620349 -0.84170675;
	setAttr -s 33 ".ed[0:32]"  12 2 0 2 9 0 9 12 0 1 8 0 8 3 0 3 1 0 2 3 0
		 3 4 0 4 2 0 8 4 0 1 10 0 10 8 0 12 7 0 7 11 0 11 12 0 11 10 0 1 11 0 12 0 0 0 2 0
		 0 1 0 3 0 0 5 2 0 4 5 0 5 9 0 6 5 0 4 6 0 6 9 0 8 6 0 10 6 0 7 6 0 10 7 0 7 9 0 11 0 0;
	setAttr -s 66 ".n[0:65]" -type "float3"  -0.22854182 0.16857457 -0.95882803
		 -0.22854182 0.16857457 -0.95882803 -0.22854182 0.16857457 -0.95882803 -0.16957313
		 0.36013782 0.91735798 -0.16957313 0.36013782 0.91735798 -0.16957313 0.36013782 0.91735798
		 -0.13322744 0.98376113 0.12026849 -0.13322744 0.98376113 0.12026849 -0.13322744 0.98376113
		 0.12026849 0.099258043 0.59218305 0.79966694 0.099258043 0.59218305 0.79966694 0.099258043
		 0.59218305 0.79966694 -0.089852706 -0.24209245 0.96608371 -0.089852706 -0.24209245
		 0.96608371 -0.089852706 -0.24209245 0.96608371 -0.28986362 -0.88496995 -0.36442724
		 -0.28986362 -0.88496995 -0.36442724 -0.28986362 -0.88496995 -0.36442724 -0.40375417
		 -0.57044643 0.71524352 -0.40375417 -0.57044643 0.71524352 -0.40375417 -0.57044643
		 0.71524352 -0.703215 0.13104367 -0.69879627 -0.703215 0.13104367 -0.69879627 -0.703215
		 0.13104367 -0.69879627 -0.83464175 0.30347875 0.45964524 -0.83464175 0.30347875 0.45964524
		 -0.83464175 0.30347875 0.45964524 -0.70962918 0.6970734 0.1025431 -0.70962918 0.6970734
		 0.1025431 -0.70962918 0.6970734 0.1025431 0.022890087 0.99938232 -0.026665108 0.022890087
		 0.99938232 -0.026665108 0.022890087 0.99938232 -0.026665108 0.14123829 0.46699196
		 -0.87290913 0.14123829 0.46699196 -0.87290913 0.14123829 0.46699196 -0.87290913 0.84767282
		 0.52834427 -0.047990378 0.84767282 0.52834427 -0.047990378 0.84767282 0.52834427
		 -0.047990378 0.82496458 0.2277732 -0.51725525 0.82496458 0.2277732 -0.51725525 0.82496458
		 0.2277732 -0.51725525 0.73400331 0.22396083 0.64115578 0.73400331 0.22396083 0.64115578
		 0.73400331 0.22396083 0.64115578 0.66767585 -0.26598886 0.69531202 0.66767585 -0.26598886
		 0.69531202 0.66767585 -0.26598886 0.69531202 0.66806352 -0.53466183 0.5175209 0.66806352
		 -0.53466183 0.5175209 0.66806352 -0.53466183 0.5175209 0.72028208 -0.54094106 -0.43425405
		 0.72028208 -0.54094106 -0.43425405 0.72028208 -0.54094106 -0.43425405 0.11127053
		 -0.7530604 -0.64847434 0.11127053 -0.7530604 -0.64847434 0.11127053 -0.7530604 -0.64847434
		 -0.19751431 -0.86199546 0.46685329 -0.19751431 -0.86199546 0.46685329 -0.19751431
		 -0.86199546 0.46685329 -0.84108526 -0.37779596 -0.38709924 -0.84108526 -0.37779596
		 -0.38709924 -0.84108526 -0.37779596 -0.38709924 -0.89922971 -0.094741441 0.42709479
		 -0.89922971 -0.094741441 0.42709479 -0.89922971 -0.094741441 0.42709479;
	setAttr -s 22 -ch 66 ".fc[0:21]" -type "polyFaces" 
		f 3 0 1 2
		f 3 3 4 5
		f 3 6 7 8
		f 3 -5 9 -8
		f 3 -4 10 11
		f 3 12 13 14
		f 3 15 -11 16
		f 3 -1 17 18
		f 3 19 -6 20
		f 3 -19 -21 -7
		f 3 21 -9 22
		f 3 -2 -22 23
		f 3 24 -23 25
		f 3 -25 26 -24
		f 3 -26 -10 27
		f 3 28 -28 -12
		f 3 29 -29 30
		f 3 -27 -30 31
		f 3 -32 -13 -3
		f 3 -31 -16 -14
		f 3 -18 -15 32
		f 3 -33 -17 -20;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "CubeFBXASC046001" -p "group";
	setAttr ".t" -type "double3" -141.97799682617187 68.814804077148438 389.94146728515625 ;
	setAttr ".r" -type "double3" -90.00000933466734 0 0 ;
	setAttr ".s" -type "double3" 40.250091552734375 40.250091552734375 40.250091552734375 ;
createNode mesh -n "CubeFBXASC046001Shape" -p "CubeFBXASC046001";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 10 ".pt";
	setAttr ".pt[0]" -type "float3" 0 1.1954319e-006 -7.3375082 ;
	setAttr ".pt[2]" -type "float3" 0 1.1954319e-006 -7.3375082 ;
	setAttr ".pt[4]" -type "float3" 0 1.1954319e-006 -7.3375082 ;
	setAttr ".pt[6]" -type "float3" 0 1.1954319e-006 -7.3375082 ;
	setAttr ".pt[12]" -type "float3" -2.3283064e-010 -0.53362405 -7.3375082 ;
	setAttr ".pt[13]" -type "float3" -1.1641532e-010 -0.2805852 0 ;
	setAttr ".pt[14]" -type "float3" 4.6566129e-010 -0.17690015 -1.1920929e-007 ;
	setAttr ".pt[15]" -type "float3" 0 0.17690051 -1.1920929e-007 ;
	setAttr ".pt[16]" -type "float3" 1.1641532e-010 0.28058577 0 ;
	setAttr ".pt[17]" -type "float3" 4.6566129e-010 0.53362548 -7.3375082 ;
createNode mesh -n "polySurfaceShape1" -p "CubeFBXASC046001";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 4 ".pt";
	setAttr ".pt[1]" -type "float3" 0.16362774 0.16362703 4.288826 ;
	setAttr ".pt[3]" -type "float3" 0.16362774 -0.16362843 4.288826 ;
	setAttr ".pt[5]" -type "float3" -0.16362774 0.16362703 4.288826 ;
	setAttr ".pt[7]" -type "float3" -0.16362774 -0.16362843 4.288826 ;
	setAttr -s 8 ".vt[0:7]"  -1 -1 -1 -0.49513471 -0.49513471 7.47204208
		 -1 1 -1 -0.49513471 0.49513471 7.47204208 1 -1 -1 0.49513471 -0.49513471 7.47204208
		 1 1 -1 0.49513471 0.49513471 7.47204208;
	setAttr -s 12 ".ed[0:11]"  1 3 0 3 2 0 2 0 0 0 1 0 3 7 0 7 6 0 6 2 0
		 7 5 0 5 4 0 4 6 0 5 1 0 0 4 0;
	setAttr -s 24 ".n[0:23]" -type "float3"  -0.99822915 0 0.059486397 -0.99822915
		 0 0.059486397 -0.99822915 0 0.059486397 -0.99822915 0 0.059486397 0 0.99822915 0.059486393
		 0 0.99822915 0.059486393 0 0.99822915 0.059486393 0 0.99822915 0.059486393 0.99822915
		 0 0.059486397 0.99822915 0 0.059486397 0.99822915 0 0.059486397 0.99822915 0 0.059486397
		 0 -0.99822915 0.059486393 0 -0.99822915 0.059486393 0 -0.99822915 0.059486393 0 -0.99822915
		 0.059486393 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 1 0 0 1 0 0 1 0 0 1;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 1 2 3
		f 4 4 5 6 -2
		f 4 7 8 9 -6
		f 4 10 -4 11 -9
		f 4 -3 -7 -10 -12
		f 4 -8 -5 -1 -11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "CubeFBXASC046000" -p "group";
	setAttr ".t" -type "double3" -151.63783264160156 148.26820373535156 390.4443359375 ;
	setAttr ".r" -type "double3" -90.000002504478161 0 54.378431548746043 ;
	setAttr ".s" -type "double3" 21.284772872924805 21.284772872924805 21.284772872924805 ;
createNode mesh -n "CubeFBXASC046000Shape" -p "CubeFBXASC046000";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  -1 -1 -1 -0.49513471 -0.49513471 5.13756609
		 -1 1 -1 -0.49513471 0.49513471 5.13756609 1 -1 -1 0.49513471 -0.49513471 5.13756609
		 1 1 -1 0.49513471 0.49513471 5.13756609;
	setAttr -s 12 ".ed[0:11]"  1 3 0 3 2 0 2 0 0 0 1 0 3 7 0 7 6 0 6 2 0
		 7 5 0 5 4 0 4 6 0 5 1 0 0 4 0;
	setAttr -s 24 ".n[0:23]" -type "float3"  -0.99663389 0 0.081981339 -0.99663389
		 0 0.081981339 -0.99663389 0 0.081981339 -0.99663389 0 0.081981339 0 0.99663389 0.081981331
		 0 0.99663389 0.081981331 0 0.99663389 0.081981331 0 0.99663389 0.081981331 0.99663389
		 0 0.081981339 0.99663389 0 0.081981339 0.99663389 0 0.081981339 0.99663389 0 0.081981339
		 0 -0.99663389 0.081981331 0 -0.99663389 0.081981331 0 -0.99663389 0.081981331 0 -0.99663389
		 0.081981331 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 1 0 0 1 0 0 1 0 0 1;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 1 2 3
		f 4 4 5 6 -2
		f 4 7 8 9 -6
		f 4 10 -4 11 -9
		f 4 -3 -7 -10 -12
		f 4 -8 -5 -1 -11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "CubeFBXASC046002" -p "group";
	setAttr ".t" -type "double3" -109.58048052069714 238.35878665234713 390.44433593750011 ;
	setAttr ".r" -type "double3" -90.000002504316654 -2.7014295631384895e-009 -59.999999999999993 ;
	setAttr ".s" -type "double3" 21.284772872924805 21.284772872924805 21.284772872924805 ;
createNode mesh -n "CubeFBXASC046002Shape" -p "CubeFBXASC046002";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 4 ".pt";
	setAttr ".pt[1]" -type "float3" 0.50129634 -1.1040741e-007 2.5259891 ;
	setAttr ".pt[3]" -type "float3" 0.50129634 -1.1040741e-007 2.5259891 ;
	setAttr ".pt[5]" -type "float3" 0.50129634 -1.1040741e-007 2.5259891 ;
	setAttr ".pt[7]" -type "float3" 0.50129634 -1.1040741e-007 2.5259891 ;
	setAttr -s 8 ".vt[0:7]"  -1 -1 -1 -0.49513471 -0.49513471 5.13756609
		 -1 1 -1 -0.49513471 0.49513471 5.13756609 1 -1 -1 0.49513471 -0.49513471 5.13756609
		 1 1 -1 0.49513471 0.49513471 5.13756609;
	setAttr -s 12 ".ed[0:11]"  1 3 0 3 2 0 2 0 0 0 1 0 3 7 0 7 6 0 6 2 0
		 7 5 0 5 4 0 4 6 0 5 1 0 0 4 0;
	setAttr -s 24 ".n[0:23]" -type "float3"  -0.99663389 0 0.081981339 -0.99663389
		 0 0.081981339 -0.99663389 0 0.081981339 -0.99663389 0 0.081981339 0 0.99663389 0.081981331
		 0 0.99663389 0.081981331 0 0.99663389 0.081981331 0 0.99663389 0.081981331 0.99663389
		 0 0.081981339 0.99663389 0 0.081981339 0.99663389 0 0.081981339 0.99663389 0 0.081981339
		 0 -0.99663389 0.081981331 0 -0.99663389 0.081981331 0 -0.99663389 0.081981331 0 -0.99663389
		 0.081981331 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 1 0 0 1 0 0 1 0 0 1;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 1 2 3
		f 4 4 5 6 -2
		f 4 7 8 9 -6
		f 4 10 -4 11 -9
		f 4 -3 -7 -10 -12
		f 4 -8 -5 -1 -11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "SphereFBXASC046001" -p "group";
	setAttr ".t" -type "double3" -166.42648093381331 603.02292955794996 383.92647128758983 ;
	setAttr ".r" -type "double3" -90.00000933466734 0 0 ;
	setAttr ".s" -type "double3" 269.73462657335733 269.73462657335733 269.73462657335733 ;
createNode mesh -n "SphereFBXASC046001Shape" -p "SphereFBXASC046001";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 28 ".vt[0:27]"  -0.96525526 0.30703104 0.19646311 -0.52314448 0.12521958 0.91609919
		 -0.96997857 0.13241911 -0.37451506 -0.35949874 0.50073147 -0.86035538 -0.44988179 0.93458897 -0.26131153
		 -0.42256004 0.69299269 0.66838169 0.18335307 0.97331488 0.30521679 0.25437212 0.85802317 -0.53618765
		 0.33972359 0.16048962 -0.951437 0.69300199 0.70324117 -0.34719419 0.7080071 0.58104634 0.49729109
		 0.76963472 0.12558526 -0.67643309 0.22154617 0.3735795 0.93476415 0.98369843 0.28088877 -0.10266447
		 0.91785431 -0.08590728 0.48697853 0.91362429 -0.35676312 -0.32187748 0.56728184 -0.8796649 -0.064995527
		 0.45743406 -0.86524391 0.42510605 0.26932144 -0.11487389 0.99741328 0.0097167492 -0.99192286 -0.33017111
		 0.38221645 -0.5464735 -0.79358101 0.031647086 -0.087666035 -1.024616718 0.15647149 -0.6110611 0.83836365
		 -0.39937377 -0.90463853 0.30617762 -0.47176743 -0.27305126 0.87466288 -0.88724613 -0.55178434 -0.12955022
		 -0.47831774 -0.42620349 -0.84170675 -0.76620293 -0.54625964 0.44292068;
	setAttr -s 76 ".ed[0:75]"  26 3 0 3 21 0 21 26 0 3 2 0 2 4 0 4 3 0 1 12 0
		 12 5 0 5 1 0 16 15 0 15 14 0 14 17 0 17 16 0 4 7 0 7 3 0 4 5 0 5 6 0 6 4 0 12 6 0
		 3 8 0 8 21 0 6 10 0 10 9 0 9 6 0 12 10 0 8 7 0 7 11 0 11 8 0 12 18 0 18 10 0 13 10 0
		 10 14 0 14 13 0 11 20 0 20 8 0 27 23 0 23 22 0 22 24 0 24 27 0 20 16 0 16 19 0 19 20 0
		 17 19 0 21 20 0 20 26 0 17 23 0 23 19 0 18 24 0 22 18 0 26 19 0 19 25 0 25 26 0 18 1 0
		 1 24 0 1 27 0 25 27 0 27 0 0 0 25 0 26 2 0 0 1 0 5 0 0 2 0 0 0 4 0 6 7 0 9 7 0 13 9 0
		 9 11 0 13 11 0 18 14 0 15 13 0 15 11 0 15 20 0 22 14 0 22 17 0 23 25 0 25 2 0;
	setAttr -s 152 ".n[0:151]" -type "float3"  -0.35299554 0.026432717 -0.93525159
		 -0.35299554 0.026432717 -0.93525159 -0.35299554 0.026432717 -0.93525159 -0.70117939
		 0.52300268 -0.4845778 -0.70117939 0.52300268 -0.4845778 -0.70117939 0.52300268 -0.4845778
		 -0.16199726 0.41857997 0.89361489 -0.16199726 0.41857997 0.89361489 -0.16199726 0.41857997
		 0.89361489 0.84817708 -0.49873298 0.17849658 0.84817708 -0.49873298 0.17849658 0.84817708
		 -0.49873298 0.17849658 0.84817708 -0.49873298 0.17849658 -0.14613992 0.79059857 -0.59464031
		 -0.14613992 0.79059857 -0.59464031 -0.14613992 0.79059857 -0.59464031 -0.27962565
		 0.92721307 0.24916938 -0.27962565 0.92721307 0.24916938 -0.27962565 0.92721307 0.24916938
		 0.075713262 0.72425401 0.68536389 0.075713262 0.72425401 0.68536389 0.075713262 0.72425401
		 0.68536389 0.0079349335 0.27376768 -0.96176308 0.0079349335 0.27376768 -0.96176308
		 0.0079349335 0.27376768 -0.96176308 0.56971008 0.81474906 0.1077693 0.56971008 0.81474906
		 0.1077693 0.56971008 0.81474906 0.1077693 0.28652126 0.70230722 0.65166718 0.28652126
		 0.70230722 0.65166718 0.28652126 0.70230722 0.65166718 0.4981783 0.48773223 -0.71689302
		 0.4981783 0.48773223 -0.71689302 0.4981783 0.48773223 -0.71689302 0.62175661 0.15917192
		 0.76686567 0.62175661 0.15917192 0.76686567 0.62175661 0.15917192 0.76686567 0.91717923
		 0.28425932 0.27924702 0.91717923 0.28425932 0.27924702 0.91717923 0.28425932 0.27924702
		 0.52329803 -0.15562108 -0.8378194 0.52329803 -0.15562108 -0.8378194 0.52329803 -0.15562108
		 -0.8378194 -0.33722523 -0.65087438 0.68017763 -0.33722523 -0.65087438 0.68017763
		 -0.33722523 -0.65087438 0.68017763 -0.33722523 -0.65087438 0.68017763 0.38124028
		 -0.80028462 -0.46281779 0.38124028 -0.80028462 -0.46281779 0.38124028 -0.80028462
		 -0.46281779 0.16655339 -0.98380238 0.066278085 0.16655339 -0.98380238 0.066278085
		 0.16655339 -0.98380238 0.066278085 -0.014378293 -0.45844913 -0.88860434 -0.014378293
		 -0.45844913 -0.88860434 -0.014378293 -0.45844913 -0.88860434 0.024440406 -0.98819238
		 0.15125674 0.024440406 -0.98819238 0.15125674 0.024440406 -0.98819238 0.15125674
		 -0.097475462 -0.28361964 0.95396978 -0.097475462 -0.28361964 0.95396978 -0.097475462
		 -0.28361964 0.95396978 -0.47406954 -0.77938652 -0.40965208 -0.47406954 -0.77938652
		 -0.40965208 -0.47406954 -0.77938652 -0.40965208 -0.13724621 -0.12000174 0.98324108
		 -0.13724621 -0.12000174 0.98324108 -0.13724621 -0.12000174 0.98324108 -0.065076455
		 0.1206838 0.99055558 -0.065076455 0.1206838 0.99055558 -0.065076455 0.1206838 0.99055558
		 -0.76382846 -0.16349386 0.62436825 -0.76382846 -0.16349386 0.62436825 -0.76382846
		 -0.16349386 0.62436825 -0.96453029 -0.16563568 0.20553869 -0.96453029 -0.16563568
		 0.20553869 -0.96453029 -0.16563568 0.20553869 -0.6458993 0.067495622 -0.76043302
		 -0.6458993 0.067495622 -0.76043302 -0.6458993 0.067495622 -0.76043302 -0.74554676
		 0.37303343 0.55227357 -0.74554676 0.37303343 0.55227357 -0.74554676 0.37303343 0.55227357
		 -0.81733364 0.55283266 -0.16230175 -0.81733364 0.55283266 -0.16230175 -0.81733364
		 0.55283266 -0.16230175 -0.67870587 0.7057007 0.20333396 -0.67870587 0.7057007 0.20333396
		 -0.67870587 0.7057007 0.20333396 0.056536321 0.98978853 -0.130852 0.056536321 0.98978853
		 -0.130852 0.056536321 0.98978853 -0.130852 0.36765963 0.92502147 -0.095716812 0.36765963
		 0.92502147 -0.095716812 0.36765963 0.92502147 -0.095716812 0.14284161 0.51913124
		 -0.84267378 0.14284161 0.51913124 -0.84267378 0.14284161 0.51913124 -0.84267378 0.80178452
		 0.59330809 0.07160376 0.80178452 0.59330809 0.07160376 0.80178452 0.59330809 0.07160376
		 0.48453948 0.48079857 -0.73079014 0.48453948 0.48079857 -0.73079014 0.48453948 0.48079857
		 -0.73079014 0.84498304 0.34499899 -0.40863115 0.84498304 0.34499899 -0.40863115 0.84498304
		 0.34499899 -0.40863115 0.60368764 0.17792563 0.77711242 0.60368764 0.17792563 0.77711242
		 0.60368764 0.17792563 0.77711242 0.99199933 -0.12118153 0.035391472 0.99199933 -0.12118153
		 0.035391472 0.99199933 -0.12118153 0.035391472 0.93506092 0.018934464 -0.35398105
		 0.93506092 0.018934464 -0.35398105 0.93506092 0.018934464 -0.35398105 0.69124049
		 -0.28254107 -0.6650992 0.69124049 -0.28254107 -0.6650992 0.69124049 -0.28254107 -0.6650992
		 0.58578408 -0.36515537 0.72354585 0.58578408 -0.36515537 0.72354585 0.58578408 -0.36515537
		 0.72354585 0.59952587 -0.40881732 0.68806767 0.59952587 -0.40881732 0.68806767 0.59952587
		 -0.40881732 0.68806767 0.36369899 -0.18212141 -0.91353971 0.36369899 -0.18212141
		 -0.91353971 0.36369899 -0.18212141 -0.91353971 0.62664652 -0.63617653 -0.45010388
		 0.62664652 -0.63617653 -0.45010388 0.62664652 -0.63617653 -0.45010388 -0.057311747
		 -0.69634002 -0.71542013 -0.057311747 -0.69634002 -0.71542013 -0.057311747 -0.69634002
		 -0.71542013 -0.030814169 -0.86123163 0.50727761 -0.030814169 -0.86123163 0.50727761
		 -0.030814169 -0.86123163 0.50727761 -0.46552119 -0.86645079 -0.18042436 -0.46552119
		 -0.86645079 -0.18042436 -0.46552119 -0.86645079 -0.18042436 -0.66259223 -0.73437589
		 0.14718565 -0.66259223 -0.73437589 0.14718565 -0.66259223 -0.73437589 0.14718565
		 -0.80963629 -0.28216234 -0.51465857 -0.80963629 -0.28216234 -0.51465857 -0.80963629
		 -0.28216234 -0.51465857 -0.85667664 -0.05159428 0.5132671 -0.85667664 -0.05159428
		 0.5132671 -0.85667664 -0.05159428 0.5132671 -0.99357909 -0.10563317 0.040523045 -0.99357909
		 -0.10563317 0.040523045 -0.99357909 -0.10563317 0.040523045;
	setAttr -s 50 -ch 152 ".fc[0:49]" -type "polyFaces" 
		f 3 0 1 2
		f 3 3 4 5
		f 3 6 7 8
		f 4 9 10 11 12
		f 3 -6 13 14
		f 3 15 16 17
		f 3 -8 18 -17
		f 3 -2 19 20
		f 3 21 22 23
		f 3 -19 24 -22
		f 3 25 26 27
		f 3 28 29 -25
		f 3 30 31 32
		f 3 -28 33 34
		f 4 35 36 37 38
		f 3 39 40 41
		f 3 -13 42 -41
		f 3 43 44 -3
		f 3 45 46 -43
		f 3 47 -38 48
		f 3 49 50 51
		f 3 52 53 -48
		f 3 -53 -29 -7
		f 3 -39 -54 54
		f 3 55 56 57
		f 3 -1 58 -4
		f 3 59 -9 60
		f 3 61 62 -5
		f 3 -63 -61 -16
		f 3 -14 -18 63
		f 3 64 -64 -24
		f 3 -20 -15 -26
		f 3 65 -23 -31
		f 3 -65 66 -27
		f 3 -66 67 -67
		f 3 -32 -30 68
		f 3 69 -33 -11
		f 3 -68 -70 70
		f 3 -71 71 -34
		f 3 72 -69 -49
		f 3 -12 -73 73
		f 3 -21 -35 -44
		f 3 -72 -10 -40
		f 3 -42 -50 -45
		f 3 -74 -37 -46
		f 3 -51 -47 74
		f 3 -36 -56 -75
		f 3 -59 -52 75
		f 3 -57 -55 -60
		f 3 -76 -58 -62;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "SphereFBXASC046002" -p "group";
	setAttr ".t" -type "double3" -286.83071519916177 257.38539287534371 409.44614824318194 ;
	setAttr ".r" -type "double3" -90.00000933466734 0 0 ;
	setAttr ".s" -type "double3" 84.632141835637597 84.632141835637597 84.632141835637597 ;
createNode mesh -n "SphereFBXASC046002Shape" -p "SphereFBXASC046002";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 17 ".vt[0:16]"  -1.063210607 0.16018346 -0.14315164 -0.53828526 -0.012169408 0.9238236
		 -0.35949874 0.50073147 -0.86035538 -0.44988179 0.93458897 -0.26131153 -0.42256004 0.69299269 0.66838169
		 0.53360033 0.85132611 0.43244743 0.49668193 0.82788754 -0.47770119 0.60015512 0.13531733 -0.86358714
		 0.91785431 -0.08590728 0.48697853 1.032545447 0.018853068 -0.35284662 0.54639882 -0.92072177 0.23840547
		 0.24552393 0.099755213 1.024770737 0.0097167492 -0.99192286 -0.33017111 0.23172796 -0.26832581 -1.019639254
		 0.15647149 -0.6110611 0.83836365 -0.8107686 -0.74148154 0.18834007 -0.47831774 -0.42620349 -0.84170675;
	setAttr -s 45 ".ed[0:44]"  16 2 0 2 13 0 13 16 0 2 0 0 0 3 0 3 2 0 1 11 0
		 11 4 0 4 1 0 3 6 0 6 2 0 3 4 0 4 5 0 5 3 0 11 5 0 2 7 0 7 13 0 9 5 0 5 8 0 8 9 0
		 8 10 0 10 9 0 13 10 0 10 12 0 12 13 0 10 15 0 15 12 0 1 14 0 14 11 0 16 12 0 15 16 0
		 15 14 0 1 15 0 16 0 0 0 1 0 4 0 0 5 6 0 6 7 0 9 6 0 9 7 0 11 8 0 9 13 0 14 8 0 14 10 0
		 15 0 0;
	setAttr -s 90 ".n[0:89]" -type "float3"  -0.24556439 0.011976549 -0.96930623
		 -0.24556439 0.011976549 -0.96930623 -0.24556439 0.011976549 -0.96930623 -0.72450256
		 0.50168675 -0.47265881 -0.72450256 0.50168675 -0.47265881 -0.72450256 0.50168675
		 -0.47265881 -0.16957313 0.36013782 0.91735798 -0.16957313 0.36013782 0.91735798 -0.16957313
		 0.36013782 0.91735798 -0.044109117 0.80593747 -0.5903551 -0.044109117 0.80593747
		 -0.5903551 -0.044109117 0.80593747 -0.5903551 -0.096971735 0.96259516 0.2529963 -0.096971735
		 0.96259516 0.2529963 -0.096971735 0.96259516 0.2529963 0.099258043 0.59218305 0.79966694
		 0.099258043 0.59218305 0.79966694 0.099258043 0.59218305 0.79966694 0.10200823 0.2763465
		 -0.95562911 0.10200823 0.2763465 -0.95562911 0.10200823 0.2763465 -0.95562911 0.90797251
		 0.3822462 0.17167938 0.90797251 0.3822462 0.17167938 0.90797251 0.3822462 0.17167938
		 0.90338022 -0.42298797 0.070606798 0.90338022 -0.42298797 0.070606798 0.90338022
		 -0.42298797 0.070606798 0.59594846 -0.64220524 -0.48209718 0.59594846 -0.64220524
		 -0.48209718 0.59594846 -0.64220524 -0.48209718 -0.13582915 -0.95910877 0.24831592
		 -0.13582915 -0.95910877 0.24831592 -0.13582915 -0.95910877 0.24831592 -0.089852706
		 -0.24209245 0.96608371 -0.089852706 -0.24209245 0.96608371 -0.089852706 -0.24209245
		 0.96608371 -0.487569 -0.77832007 -0.39559361 -0.487569 -0.77832007 -0.39559361 -0.487569
		 -0.77832007 -0.39559361 -0.40375417 -0.57044643 0.71524352 -0.40375417 -0.57044643
		 0.71524352 -0.40375417 -0.57044643 0.71524352 -0.73021907 0.079952195 -0.67851883
		 -0.73021907 0.079952195 -0.67851883 -0.73021907 0.079952195 -0.67851883 -0.83464175
		 0.30347875 0.45964524 -0.83464175 0.30347875 0.45964524 -0.83464175 0.30347875 0.45964524
		 -0.75639695 0.62733209 0.18525167 -0.75639695 0.62733209 0.18525167 -0.75639695 0.62733209
		 0.18525167 0.10522117 0.9940002 -0.029866278 0.10522117 0.9940002 -0.029866278 0.10522117
		 0.9940002 -0.029866278 0.18728018 0.49931854 -0.8459357 0.18728018 0.49931854 -0.8459357
		 0.18728018 0.49931854 -0.8459357 0.83614087 0.54641163 -0.047987856 0.83614087 0.54641163
		 -0.047987856 0.83614087 0.54641163 -0.047987856 0.74054962 0.40811071 -0.53388393
		 0.74054962 0.40811071 -0.53388393 0.74054962 0.40811071 -0.53388393 0.64481699 0.30514079
		 0.70078534 0.64481699 0.30514079 0.70078534 0.64481699 0.30514079 0.70078534 0.66980392
		 -0.36036947 -0.64922774 0.66980392 -0.36036947 -0.64922774 0.66980392 -0.36036947
		 -0.64922774 0.55293167 -0.27549183 0.78636557 0.55293167 -0.27549183 0.78636557 0.55293167
		 -0.27549183 0.78636557 0.61437541 -0.46349609 0.63852501 0.61437541 -0.46349609 0.63852501
		 0.61437541 -0.46349609 0.63852501 0.62069368 -0.62174386 -0.47767571 0.62069368 -0.62174386
		 -0.47767571 0.62069368 -0.62174386 -0.47767571 -0.030272085 -0.68462735 -0.72826433
		 -0.030272085 -0.68462735 -0.72826433 -0.030272085 -0.68462735 -0.72826433 -0.13480534
		 -0.91349232 0.38387397 -0.13480534 -0.91349232 0.38387397 -0.13480534 -0.91349232
		 0.38387397 -0.84108526 -0.37779596 -0.38709924 -0.84108526 -0.37779596 -0.38709924
		 -0.84108526 -0.37779596 -0.38709924 -0.89922971 -0.094741441 0.42709479 -0.89922971
		 -0.094741441 0.42709479 -0.89922971 -0.094741441 0.42709479;
	setAttr -s 30 -ch 90 ".fc[0:29]" -type "polyFaces" 
		f 3 0 1 2
		f 3 3 4 5
		f 3 6 7 8
		f 3 -6 9 10
		f 3 11 12 13
		f 3 -8 14 -13
		f 3 -2 15 16
		f 3 17 18 19
		f 3 -20 20 21
		f 3 22 23 24
		f 3 25 26 -24
		f 3 -7 27 28
		f 3 29 -27 30
		f 3 31 -28 32
		f 3 -1 33 -4
		f 3 34 -9 35
		f 3 -5 -36 -12
		f 3 -10 -14 36
		f 3 -16 -11 37
		f 3 38 -37 -18
		f 3 -39 39 -38
		f 3 -19 -15 40
		f 3 -40 41 -17
		f 3 42 -41 -29
		f 3 -21 -43 43
		f 3 -42 -22 -23
		f 3 -25 -30 -3
		f 3 -44 -32 -26
		f 3 -34 -31 44
		f 3 -45 -33 -35;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 14 ".lnk";
	setAttr -s 14 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode ilrOptionsNode -s -n "TurtleRenderOptions";
lockNode -l 1 ;
createNode ilrUIOptionsNode -s -n "TurtleUIOptions";
lockNode -l 1 ;
createNode ilrBakeLayerManager -s -n "TurtleBakeLayerManager";
lockNode -l 1 ;
createNode ilrBakeLayer -s -n "TurtleDefaultBakeLayer";
lockNode -l 1 ;
createNode phong -n "phong1";
	setAttr ".dc" 1;
	setAttr ".ambc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sc" -type "float3" 0.30000001 0.30000001 0.30000001 ;
	setAttr ".rfl" 0;
createNode shadingEngine -n "SphereSG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
createNode shadingEngine -n "SphereSG1";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
createNode phong -n "phong2";
	setAttr ".dc" 1;
	setAttr ".ambc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sc" -type "float3" 0.30000001 0.30000001 0.30000001 ;
	setAttr ".rfl" 0;
createNode shadingEngine -n "CubeFBXASC046001SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
createNode shadingEngine -n "CubeFBXASC046001SG1";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo4";
createNode phong -n "phong3";
	setAttr ".dc" 1;
	setAttr ".ambc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sc" -type "float3" 0.30000001 0.30000001 0.30000001 ;
	setAttr ".rfl" 0;
createNode shadingEngine -n "CubeFBXASC046000SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo5";
createNode shadingEngine -n "CubeFBXASC046000SG1";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo6";
createNode phong -n "phong4";
	setAttr ".dc" 1;
	setAttr ".ambc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sc" -type "float3" 0.30000001 0.30000001 0.30000001 ;
	setAttr ".rfl" 0;
createNode shadingEngine -n "CubeFBXASC046002SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo7";
createNode shadingEngine -n "CubeFBXASC046002SG1";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo8";
createNode phong -n "phong5";
	setAttr ".dc" 1;
	setAttr ".ambc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sc" -type "float3" 0.30000001 0.30000001 0.30000001 ;
	setAttr ".rfl" 0;
createNode shadingEngine -n "SphereFBXASC046001SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo9";
createNode shadingEngine -n "SphereFBXASC046001SG1";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo10";
createNode phong -n "phong6";
	setAttr ".dc" 1;
	setAttr ".ambc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sc" -type "float3" 0.30000001 0.30000001 0.30000001 ;
	setAttr ".rfl" 0;
createNode shadingEngine -n "SphereFBXASC046002SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo11";
createNode shadingEngine -n "SphereFBXASC046002SG1";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo12";
createNode polySplitRing -n "polySplitRing1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[1]" "e[3]" "e[5]" "e[8]";
	setAttr ".ix" -type "matrix" 40.250091552734375 0 0 0 -0 -6.5575722702922146e-006 -40.250091552733842 0
		 0 40.250091552733842 -6.5575722702922146e-006 0 -141.97799682617187 68.814804077148438 389.94146728515625 1;
	setAttr ".wt" 0.47750863432884216;
	setAttr ".re" 5;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[1]" "e[5]" "e[8]" "e[15]";
	setAttr ".ix" -type "matrix" 40.250091552734375 0 0 0 -0 -6.5575722702922146e-006 -40.250091552733842 0
		 0 40.250091552733842 -6.5575722702922146e-006 0 -141.97799682617187 68.814804077148438 389.94146728515625 1;
	setAttr ".wt" 0.50621628761291504;
	setAttr ".dr" no;
	setAttr ".re" 15;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak1";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[0]" -type "float3" 0 7.4505806e-009 -2.9802322e-008 ;
	setAttr ".tk[2]" -type "float3" 0 0 -2.9802322e-008 ;
	setAttr ".tk[4]" -type "float3" 0 7.4505806e-009 -2.9802322e-008 ;
	setAttr ".tk[6]" -type "float3" 0 0 -2.9802322e-008 ;
	setAttr ".tk[8]" -type "float3" -0.1647559 -0.16475622 0.52178198 ;
	setAttr ".tk[9]" -type "float3" 0.16475591 -0.16475622 0.52178198 ;
	setAttr ".tk[10]" -type "float3" 0.16475597 0.16475564 0.52178198 ;
	setAttr ".tk[11]" -type "float3" -0.1647559 0.16475558 0.52178198 ;
createNode polyDelEdge -n "polyDelEdge1";
	setAttr ".ics" -type "componentList" 3 "e[22]" "e[24]" "e[26:27]";
	setAttr ".cv" yes;
createNode polyTweak -n "polyTweak2";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[8:15]" -type "float3"  0.039848201 0.039848365 -1.038739324
		 -0.039848231 0.039848365 -1.038739324 -0.039848231 -0.039848037 -1.038739324 0.039848201
		 -0.039848037 -1.038739324 -0.11803968 -0.11803928 -1.89734209 -0.11803968 0.11804007
		 -1.89734209 0.11803968 0.11804007 -1.89734209 0.11803968 -0.11803928 -1.89734209;
createNode polySplitRing -n "polySplitRing3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[4]" "e[6]" "e[10:11]" "e[14]" "e[18]";
	setAttr ".ix" -type "matrix" 40.250091552734375 0 0 0 -0 -6.5575722702922146e-006 -40.250091552733842 0
		 0 40.250091552733842 -6.5575722702922146e-006 0 -141.97799682617187 68.814804077148438 389.94146728515625 1;
	setAttr ".wt" 0.47462770342826843;
	setAttr ".re" 11;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n"
		+ "                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n"
		+ "                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n"
		+ "            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n"
		+ "            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n"
		+ "                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n"
		+ "            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n"
		+ "            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n"
		+ "            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n"
		+ "                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n"
		+ "            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n"
		+ "            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n"
		+ "            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n"
		+ "                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n"
		+ "                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n"
		+ "                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n"
		+ "            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n"
		+ "                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n"
		+ "                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n"
		+ "            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n"
		+ "            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n"
		+ "            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n"
		+ "                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n"
		+ "                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n"
		+ "                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n"
		+ "                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n"
		+ "                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n"
		+ "                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n"
		+ "                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n"
		+ "                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n"
		+ "                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n"
		+ "                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n"
		+ "                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n"
		+ "                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n"
		+ "                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n"
		+ "                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n"
		+ "                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n"
		+ "                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 24 -ast 1 -aet 48 ";
	setAttr ".st" 6;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 14 ".st";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -s 8 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :renderGlobalsList1;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 18 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surfaces" "Particles" "Fluids" "Image Planes" "UI:" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 18 0 1 1 1 1 1
		 1 0 0 0 0 0 0 0 0 0 0 0 ;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "polySplitRing3.out" "CubeFBXASC046001Shape.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "SphereSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "SphereSG1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "CubeFBXASC046001SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "CubeFBXASC046001SG1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "CubeFBXASC046000SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "CubeFBXASC046000SG1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "CubeFBXASC046002SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "CubeFBXASC046002SG1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "SphereFBXASC046001SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "SphereFBXASC046001SG1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "SphereFBXASC046002SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "SphereFBXASC046002SG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "SphereSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "SphereSG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "CubeFBXASC046001SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "CubeFBXASC046001SG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "CubeFBXASC046000SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "CubeFBXASC046000SG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "CubeFBXASC046002SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "CubeFBXASC046002SG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "SphereFBXASC046001SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "SphereFBXASC046001SG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "SphereFBXASC046002SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "SphereFBXASC046002SG1.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":TurtleDefaultBakeLayer.idx" ":TurtleBakeLayerManager.bli[0]";
connectAttr ":TurtleRenderOptions.msg" ":TurtleDefaultBakeLayer.rset";
connectAttr "phong1.oc" "SphereSG.ss";
connectAttr "SphereSG.msg" "materialInfo1.sg";
connectAttr "phong1.msg" "materialInfo1.m";
connectAttr "phong1.oc" "SphereSG1.ss";
connectAttr "SphereShape.iog" "SphereSG1.dsm" -na;
connectAttr "SphereSG1.msg" "materialInfo2.sg";
connectAttr "phong1.msg" "materialInfo2.m";
connectAttr "phong2.oc" "CubeFBXASC046001SG.ss";
connectAttr "CubeFBXASC046001SG.msg" "materialInfo3.sg";
connectAttr "phong2.msg" "materialInfo3.m";
connectAttr "phong2.oc" "CubeFBXASC046001SG1.ss";
connectAttr "CubeFBXASC046001Shape.iog" "CubeFBXASC046001SG1.dsm" -na;
connectAttr "CubeFBXASC046001SG1.msg" "materialInfo4.sg";
connectAttr "phong2.msg" "materialInfo4.m";
connectAttr "phong3.oc" "CubeFBXASC046000SG.ss";
connectAttr "CubeFBXASC046000SG.msg" "materialInfo5.sg";
connectAttr "phong3.msg" "materialInfo5.m";
connectAttr "phong3.oc" "CubeFBXASC046000SG1.ss";
connectAttr "CubeFBXASC046000Shape.iog" "CubeFBXASC046000SG1.dsm" -na;
connectAttr "CubeFBXASC046000SG1.msg" "materialInfo6.sg";
connectAttr "phong3.msg" "materialInfo6.m";
connectAttr "phong4.oc" "CubeFBXASC046002SG.ss";
connectAttr "CubeFBXASC046002SG.msg" "materialInfo7.sg";
connectAttr "phong4.msg" "materialInfo7.m";
connectAttr "phong4.oc" "CubeFBXASC046002SG1.ss";
connectAttr "CubeFBXASC046002Shape.iog" "CubeFBXASC046002SG1.dsm" -na;
connectAttr "CubeFBXASC046002SG1.msg" "materialInfo8.sg";
connectAttr "phong4.msg" "materialInfo8.m";
connectAttr "phong5.oc" "SphereFBXASC046001SG.ss";
connectAttr "SphereFBXASC046001SG.msg" "materialInfo9.sg";
connectAttr "phong5.msg" "materialInfo9.m";
connectAttr "phong5.oc" "SphereFBXASC046001SG1.ss";
connectAttr "SphereFBXASC046001Shape.iog" "SphereFBXASC046001SG1.dsm" -na;
connectAttr "SphereFBXASC046001SG1.msg" "materialInfo10.sg";
connectAttr "phong5.msg" "materialInfo10.m";
connectAttr "phong6.oc" "SphereFBXASC046002SG.ss";
connectAttr "SphereFBXASC046002SG.msg" "materialInfo11.sg";
connectAttr "phong6.msg" "materialInfo11.m";
connectAttr "phong6.oc" "SphereFBXASC046002SG1.ss";
connectAttr "SphereFBXASC046002Shape.iog" "SphereFBXASC046002SG1.dsm" -na;
connectAttr "SphereFBXASC046002SG1.msg" "materialInfo12.sg";
connectAttr "phong6.msg" "materialInfo12.m";
connectAttr "polySurfaceShape1.o" "polySplitRing1.ip";
connectAttr "CubeFBXASC046001Shape.wm" "polySplitRing1.mp";
connectAttr "polyTweak1.out" "polySplitRing2.ip";
connectAttr "CubeFBXASC046001Shape.wm" "polySplitRing2.mp";
connectAttr "polySplitRing1.out" "polyTweak1.ip";
connectAttr "polyTweak2.out" "polyDelEdge1.ip";
connectAttr "polySplitRing2.out" "polyTweak2.ip";
connectAttr "polyDelEdge1.out" "polySplitRing3.ip";
connectAttr "CubeFBXASC046001Shape.wm" "polySplitRing3.mp";
connectAttr "SphereSG.pa" ":renderPartition.st" -na;
connectAttr "SphereSG1.pa" ":renderPartition.st" -na;
connectAttr "CubeFBXASC046001SG.pa" ":renderPartition.st" -na;
connectAttr "CubeFBXASC046001SG1.pa" ":renderPartition.st" -na;
connectAttr "CubeFBXASC046000SG.pa" ":renderPartition.st" -na;
connectAttr "CubeFBXASC046000SG1.pa" ":renderPartition.st" -na;
connectAttr "CubeFBXASC046002SG.pa" ":renderPartition.st" -na;
connectAttr "CubeFBXASC046002SG1.pa" ":renderPartition.st" -na;
connectAttr "SphereFBXASC046001SG.pa" ":renderPartition.st" -na;
connectAttr "SphereFBXASC046001SG1.pa" ":renderPartition.st" -na;
connectAttr "SphereFBXASC046002SG.pa" ":renderPartition.st" -na;
connectAttr "SphereFBXASC046002SG1.pa" ":renderPartition.st" -na;
connectAttr "phong1.msg" ":defaultShaderList1.s" -na;
connectAttr "phong2.msg" ":defaultShaderList1.s" -na;
connectAttr "phong3.msg" ":defaultShaderList1.s" -na;
connectAttr "phong4.msg" ":defaultShaderList1.s" -na;
connectAttr "phong5.msg" ":defaultShaderList1.s" -na;
connectAttr "phong6.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of tree1.ma
