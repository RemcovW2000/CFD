rcircle = 0.5;
cd = rcircle*0.7071067812;
routercircle = 0.62;
c2d = routercircle * 0.7071067812;

offset = 0.05;

hoverd = 0.4;
distbot = hoverd * 2* rcircle;
meshbottom = distbot + rcircle;
extracellbottomy = 0.12;
bottomoffset = 0.0;

frontdist =10;
topdist = 10;
reardist = 30;

nradial = 7;
ncircle = 25;
nfront = 32;
nback = 64;
ntop = 32;
nbot = 10;
nbotwall = 7;

rwalnormal = 1.0719720767414596;
rback = 1.072;
rfront = 1.135;
rtop = 1.135;
rbot = 0.5;
rbotwall = 1/1.0719720767414596;

//+
Point(1) = {cd, cd, 0, 1.0};
//+
Point(2) = {-cd, cd, 0, 1.0};
//+
Point(3) = {-cd, -cd, 0, 1.0};
//+
Point(4) = {cd, -cd, 0, 1.0};
//+
Point(5) = {0, 0, 0, 1.0};
//+
Point(28) = {0, 0.12, 0, 1.0};
//+
Circle(1) = {2, 5, 3};
//+
Circle(2) = {3, 5, 4};
//+
Circle(3) = {4, 5, 1};
//+
Circle(4) = {1, 5, 2};
//+
Point(6) = {c2d, c2d, 0, 1.0};
//+
Point(7) = {-c2d, c2d, 0, 1.0};
//+
Point(8) = {-c2d, -c2d, 0, 1.0};
//+
Point(9) = {c2d, -c2d, 0, 1.0};
//+
Circle(5) = {7, 5, 8};
//+
Circle(6) = {8, 28, 9};
//+
Circle(7) = {9, 5, 6};
//+
Circle(8) = {6, 5, 7};
//+
Line(9) = {2, 7};
//+
Line(10) = {3, 8};
//+
Line(11) = {4, 9};
//+
Line(12) = {1, 6};
//+
Point(10) = {-frontdist, -meshbottom + extracellbottomy, 0, 1.0};
//+
Point(12) = {-frontdist, topdist, 0, 1.0};
//+
Point(14) = {reardist, topdist, 0, 1.0};
//+
Point(15) = {reardist, -meshbottom + extracellbottomy, 0, 1.0};
//+
Point(16) = {-(c2d + offset), topdist, 0, 1.0};
//+
Point(17) = {c2d + offset, topdist, 0, 1.0};
//+
Point(18) = {c2d + offset, -meshbottom + extracellbottomy, 0, 1.0};
//+
Point(19) = {-(c2d + offset), -meshbottom + extracellbottomy, 0, 1.0};
//+
Point(20) = {-frontdist, c2d + offset, 0, 1.0};
//+
Point(21) = {-frontdist, -(c2d + offset), 0, 1.0};
//+
Point(22) = {reardist, -(c2d + offset), 0, 1.0};
//+
Point(23) = {reardist, c2d + offset, 0, 1.0};
//+
Point(24) = {-frontdist, -meshbottom, 0, 1.0};
//+
Point(25) = {-(c2d + offset + bottomoffset), -meshbottom, 0, 1.0};
//+
Point(26) = {(c2d + offset + bottomoffset), -meshbottom, 0, 1.0};
//+
Point(27) = {reardist, -meshbottom, 0, 1.0};

//+
Line(13) = {7, 20};
//+
Line(14) = {8, 21};
//+
Line(15) = {7, 16};
//+
Line(16) = {6, 17};
//+
Line(17) = {8, 19};
//+
Line(18) = {9, 18};
//+
Line(19) = {6, 23};
//+
Line(20) = {9, 22};
//+
Line(21) = {19, 10};
//+
Line(22) = {18, 15};
//+
Line(23) = {16, 12};
//+
Line(24) = {17, 14};
//+
Line(25) = {23, 14};
//+
Line(26) = {22, 15};
//+
Line(27) = {20, 12};
//+
Line(28) = {21, 10};
//+
Line(29) = {16, 17};
//+
Point(29) = {0, 2, 0, 1.0};
//+
Circle(30) = {19, 29, 18};
//+
Line(31) = {20, 21};
//+
Line(32) = {23, 23};
//+
Line(33) = {23, 22};
//+
Line(34) = {19, 25};
//+
Line(35) = {18, 26};
//+
Line(36) = {26, 27};
//+
Line(37) = {15, 27};
//+
Line(38) = {10, 24};
//+
Line(39) = {25, 24};
//+
Line(40) = {25, 26};
//+

Transfinite Curve {9, 12, 11, 10} = nradial Using Progression rwalnormal;
//+
Transfinite Curve {1, 2, 3, 4, 8, 5, 6, 7, 30, 40, 29, 31, 33} = ncircle Using Progression 1;
//+
Transfinite Curve {23, 13, 14, 21, 39} = nfront Using Progression rfront;
//+
Transfinite Curve {24, 19, 20, 22, 36} = nback Using Progression rback;
//+
Transfinite Curve {27, 15, 16, 25} = ntop Using Progression rtop;
//+
Transfinite Curve {28, 17, 18, 26} = nbot Using Bump rbot;
//+
Transfinite Curve {38, 34, 35, 37} = nbotwall Using Progression rbotwall;
//+
Curve Loop(1) = {13, 27, -23, -15};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {8, 15, 29, -16};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {19, 25, -24, -16};
//+
Plane Surface(3) = {3};
//+
Curve Loop(4) = {7, 19, 33, -20};
//+
Plane Surface(4) = {4};
//+
Curve Loop(5) = {20, 26, -22, -18};
//+
Plane Surface(5) = {5};
//+
Curve Loop(6) = {22, 37, -36, -35};
//+
Plane Surface(6) = {6};
//+
Curve Loop(7) = {6, 18, -30, -17};
//+
Plane Surface(7) = {7};
//+
Curve Loop(8) = {30, 35, -40, -34};
//+
Plane Surface(8) = {8};
//+
Curve Loop(9) = {34, 39, -38, -21};
//+
Plane Surface(9) = {9};
//+
Curve Loop(10) = {21, -28, -14, 17};
//+
Plane Surface(10) = {10};
//+
Curve Loop(11) = {14, -31, -13, 5};
//+
Plane Surface(11) = {11};
//+
Curve Loop(12) = {4, 9, -8, -12};
//+
Plane Surface(12) = {12};
//+
Curve Loop(13) = {3, 12, -7, -11};
//+
Plane Surface(13) = {13};
//+
Curve Loop(14) = {2, 11, -6, -10};
//+
Plane Surface(14) = {14};
//+
Curve Loop(15) = {1, 10, -5, -9};
//+
Plane Surface(15) = {15};
//+
Transfinite Surface {1};
//+
Transfinite Surface {2};
//+
Transfinite Surface {3};
//+
Transfinite Surface {4};
//+
Transfinite Surface {5};
//+
Transfinite Surface {7};
//+
Transfinite Surface {10};
//+
Transfinite Surface {11};
//+
Transfinite Surface {15};
//+
Transfinite Surface {12};
//+
Transfinite Surface {13};
//+
Transfinite Surface {14};
//+
Transfinite Surface {9};
//+
Transfinite Surface {8};
//+
Transfinite Surface {6};
//+
Recombine Surface {1, 2, 3, 4, 5, 7, 10, 11, 15, 12, 13, 14, 9, 8, 6};

//+
Extrude {0, 0, 1} {
  Surface{1}; Surface{2}; Surface{3}; Surface{4}; Surface{5}; Surface{6}; Surface{8}; Surface{7}; Surface{14}; Surface{13}; Surface{15}; Surface{12}; Surface{11}; Surface{10}; Surface{9}; Layers {1}; Recombine;
}
//+
Physical Volume("Fluid", 371) = {1, 2, 3, 4, 5, 6, 7, 8, 9, 15, 14, 13, 11, 12, 10};
//+
Physical Surface("Inlet", 372) = {365, 339, 317, 53, 57, 79, 101};

//+
Physical Surface("Botwall", 373) = {361, 189, 167};
//+
Physical Surface("Cyli", 374) = {247, 225, 269, 291};
//+
Physical Surface("Outlet", 375) = {97, 123, 141, 163};
//+
Physical Surface("Side1", 376) = {3, 4, 5, 6, 2, 13, 12, 15, 14, 7, 8, 1, 11, 10, 9};
//+
Physical Surface("Side2", 377) = {370, 348, 326, 62, 84, 106, 304, 282, 238, 194, 216, 260, 128, 172, 150};
