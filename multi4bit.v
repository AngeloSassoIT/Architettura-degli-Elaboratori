//: version "1.8.7"

module NAND(w0, w2, w1);
//: interface  /sz:(40, 40) /bd:[ ]
input w0;    //: /sn:0 {0}(422,193)(436,193){1}
//: {2}(440,193)(541,193){3}
//: {4}(438,195)(438,251)(504,251){5}
supply0 w12;    //: /sn:0 {0}(518,312)(518,302){1}
input w1;    //: /sn:0 {0}(426,293)(446,293){1}
//: {2}(450,293)(504,293){3}
//: {4}(448,291)(448,207)(470,207){5}
supply1 w11;    //: /sn:0 {0}(517,151)(517,179){1}
//: {2}(519,181)(555,181)(555,185){3}
//: {4}(515,181)(484,181)(484,199){5}
output w2;    //: /sn:0 /dp:7 {0}(555,202)(555,221)(520,221){1}
//: {2}(516,221)(484,221)(484,216){3}
//: {4}(518,223)(518,230){5}
//: {6}(520,232)(578,232){7}
//: {8}(518,234)(518,243){9}
wire w4;    //: /sn:0 {0}(518,260)(518,285){1}
//: enddecls

  //: supply1 g4 (w11) @(528,151) /sn:0 /w:[ 0 ]
  //: input g8 (w0) @(420,193) /sn:0 /w:[ 0 ]
  pmos g3 (.Z(w11), .S0(w2), .G0(w0));   //: @(549,193) /sn:0 /w:[ 3 0 3 ]
  pmos g2 (.Z(w11), .S0(w2), .G0(w1));   //: @(478,207) /sn:0 /w:[ 5 3 5 ]
  nmos g1 (.Z(w12), .S0(w4), .G0(w1));   //: @(512,293) /sn:0 /w:[ 1 1 3 ]
  //: output g10 (w2) @(575,232) /sn:0 /w:[ 7 ]
  //: joint g6 (w11) @(517, 181) /w:[ 2 1 4 -1 ]
  //: joint g7 (w2) @(518, 221) /w:[ 1 -1 2 4 ]
  //: input g9 (w1) @(424,293) /sn:0 /w:[ 0 ]
  //: supply0 g5 (w12) @(518,318) /sn:0 /w:[ 0 ]
  //: joint g14 (w1) @(448, 293) /w:[ 2 4 1 -1 ]
  //: joint g11 (w2) @(518, 232) /w:[ 6 5 -1 8 ]
  nmos g0 (.Z(w4), .S0(w2), .G0(w0));   //: @(512,251) /sn:0 /w:[ 0 9 5 ]
  //: joint g13 (w0) @(438, 193) /w:[ 2 -1 1 4 ]

endmodule

module AND(w5, w1, w0);
//: interface  /sz:(40, 40) /bd:[ ]
input w0;    //: /sn:0 {0}(321,210)(376,210){1}
input w1;    //: /sn:0 {0}(322,230)(376,230){1}
output w5;    //: /sn:0 /dp:1 {0}(536,221)(606,221){1}
wire w2;    //: /sn:0 {0}(479,221)(433,221){1}
//: enddecls

  //: output g4 (w5) @(603,221) /sn:0 /w:[ 1 ]
  //: input g3 (w1) @(320,230) /sn:0 /w:[ 0 ]
  //: input g2 (w0) @(319,210) /sn:0 /w:[ 0 ]
  NOT g1 (.w2(w2), .w5(w5));   //: @(480, 198) /sz:(55, 51) /sn:0 /p:[ Li0>0 Ro0<0 ]
  NAND g0 (.w1(w1), .w0(w0), .w2(w2));   //: @(377, 196) /sz:(55, 51) /sn:0 /p:[ Li0>1 Li1>1 Ro0<1 ]

endmodule

module moltiplicatore(a0, b3, b2, a2, a1, b1, s4, s7, s0, a3, s6, s5, s1, s3, b0, s2);
//: interface  /sz:(40, 40) /bd:[ ]
output s2;    //: /sn:0 {0}(670,605)(670,411){1}
output s0;    //: /sn:0 {0}(888,605)(888,58){1}
input a2;    //: /sn:0 {0}(650,291)(650,248)(551,248){1}
//: {2}(547,248)(448,248){3}
//: {4}(444,248)(347,248){5}
//: {6}(343,248)(186,248){7}
//: {8}(345,250)(345,266){9}
//: {10}(446,250)(446,273){11}
//: {12}(549,250)(549,282){13}
input b2;    //: /sn:0 {0}(933,-51)(933,-10){1}
//: {2}(931,-8)(719,-8)(719,3){3}
//: {4}(933,-6)(933,84){5}
//: {6}(931,86)(586,86)(586,96){7}
//: {8}(933,88)(933,261){9}
//: {10}(931,263)(462,263)(462,273){11}
//: {12}(933,265)(933,438)(340,438)(340,448){13}
output s6;    //: /sn:0 {0}(246,605)(246,587){1}
input a3;    //: /sn:0 /dp:7 {0}(533,462)(533,424)(427,424){1}
//: {2}(423,424)(326,424){3}
//: {4}(322,424)(227,424){5}
//: {6}(223,424)(186,424){7}
//: {8}(225,426)(225,441){9}
//: {10}(324,426)(324,448){11}
//: {12}(425,426)(425,455){13}
input b3;    //: /sn:0 /dp:7 {0}(241,441)(241,431)(915,431)(915,258){1}
//: {2}(915,254)(915,82){3}
//: {4}(915,78)(915,-14){5}
//: {6}(915,-18)(915,-51){7}
//: {8}(913,-16)(623,-16)(623,-6){9}
//: {10}(913,80)(487,80)(487,91){11}
//: {12}(913,256)(361,256)(361,266){13}
output s3;    //: /sn:0 {0}(553,605)(553,588){1}
output s1;    //: /sn:0 {0}(788,604)(788,235){1}
input a1;    //: /sn:0 /dp:9 {0}(768,110)(768,74)(668,74){1}
//: {2}(664,74)(572,74){3}
//: {4}(568,74)(473,74){5}
//: {6}(469,74)(186,74){7}
//: {8}(471,76)(471,91){9}
//: {10}(570,76)(570,96){11}
//: {12}(666,76)(666,104){13}
input b1;    //: /sn:0 {0}(953,-51)(953,-3){1}
//: {2}(951,-1)(818,-1)(818,10){3}
//: {4}(953,1)(953,91){5}
//: {6}(951,93)(682,93)(682,104){7}
//: {8}(953,95)(953,270){9}
//: {10}(951,272)(565,272)(565,282){11}
//: {12}(953,274)(953,445)(441,445)(441,455){13}
input a0;    //: /sn:0 {0}(883,16)(883,-24)(804,-24){1}
//: {2}(800,-24)(705,-24){3}
//: {4}(701,-24)(609,-24){5}
//: {6}(605,-24)(186,-24){7}
//: {8}(607,-22)(607,-6){9}
//: {10}(703,-22)(703,3){11}
//: {12}(802,-22)(802,10){13}
input b0;    //: /sn:0 {0}(549,462)(549,452)(970,452)(970,283){1}
//: {2}(970,279)(970,102){3}
//: {4}(970,98)(970,8){5}
//: {6}(970,4)(970,-51){7}
//: {8}(968,6)(900,6)(900,16){9}
//: {10}(968,100)(784,100)(784,110){11}
//: {12}(968,281)(666,281)(666,291){13}
output s4;    //: /sn:0 {0}(446,605)(446,587){1}
output s5;    //: /sn:0 {0}(345,605)(345,587){1}
output s7;    //: /sn:0 {0}(195,605)(195,562)(215,562){1}
wire w16;    //: /sn:0 {0}(671,146)(671,177){1}
wire w65;    //: /sn:0 {0}(807,177)(807,52){1}
wire w50;    //: /sn:0 /dp:1 {0}(350,308)(350,353){1}
wire cout1;    //: /sn:0 {0}(403,385)(436,385){1}
wire D7;    //: /sn:0 /dp:1 {0}(612,177)(612,36){1}
wire w62;    //: /sn:0 {0}(708,177)(708,45){1}
wire w4;    //: /sn:0 {0}(430,530)(430,497){1}
wire D5;    //: /sn:0 {0}(387,353)(387,209)(458,209){1}
wire w56;    //: /sn:0 /dp:1 {0}(451,315)(451,353){1}
wire w3;    //: /sn:0 /dp:1 {0}(476,176)(476,133){1}
wire w71;    //: /sn:0 {0}(773,177)(773,152){1}
wire D12;    //: /sn:0 {0}(570,530)(570,410){1}
wire D8;    //: /sn:0 {0}(508,176)(508,169)(548,169)(548,209)(560,209){1}
wire D13;    //: /sn:0 {0}(467,530)(467,410){1}
wire w18;    //: /sn:0 {0}(230,530)(230,483){1}
wire cout7;    //: /sn:0 {0}(504,385)(539,385){1}
wire cout3;    //: /sn:0 {0}(628,209)(656,209){1}
wire D11;    //: /sn:0 {0}(488,353)(488,234){1}
wire D9;    //: /sn:0 {0}(591,353)(591,234){1}
wire w53;    //: /sn:0 {0}(554,324)(554,353){1}
wire cout10;    //: /sn:0 {0}(283,562)(314,562){1}
wire cout8;    //: /sn:0 {0}(483,562)(518,562){1}
wire w8;    //: /sn:0 {0}(329,530)(329,490){1}
wire cout9;    //: /sn:0 {0}(382,562)(415,562){1}
wire D15;    //: /sn:0 {0}(267,530)(267,385)(335,385){1}
wire w35;    //: /sn:0 {0}(538,504)(538,530){1}
wire D10;    //: /sn:0 /dp:1 {0}(687,353)(687,234){1}
wire w47;    //: /sn:0 {0}(655,333)(655,353){1}
wire cout5;    //: /sn:0 /dp:1 {0}(635,385)(607,385){1}
wire cout;    //: /sn:0 {0}(724,209)(753,209){1}
wire D14;    //: /sn:0 {0}(366,530)(366,410){1}
wire w77;    //: /sn:0 {0}(575,177)(575,138){1}
//: enddecls

  AND g75 (.w1(b2), .w0(a0), .w5(w62));   //: @(689, 4) /sz:(40, 40) /sn:0 /p:[ Ti0>3 Ti1>11 Bo0<1 ]
  //: input g4 (a0) @(184,-24) /sn:0 /w:[ 7 ]
  //: joint g8 (b2) @(933, -8) /w:[ -1 1 2 4 ]
  //: joint g16 (a1) @(666, 74) /w:[ 1 -1 2 12 ]
  //: input g3 (b3) @(915,-53) /sn:0 /R:3 /w:[ 7 ]
  //: joint g26 (a2) @(345, 248) /w:[ 5 -1 6 8 ]
  //: joint g17 (a1) @(570, 74) /w:[ 3 -1 4 10 ]
  //: input g2 (b2) @(933,-53) /sn:0 /R:3 /w:[ 0 ]
  //: input g30 (a2) @(184,248) /sn:0 /w:[ 7 ]
  //: joint g23 (a2) @(446, 248) /w:[ 3 -1 4 10 ]
  AND g74 (.w1(b3), .w0(a0), .w5(D7));   //: @(593, -5) /sz:(40, 40) /sn:0 /p:[ Ti0>9 Ti1>9 Bo0<1 ]
  //: input g24 (a1) @(184,74) /sn:0 /w:[ 7 ]
  //: input g1 (b1) @(953,-53) /sn:0 /R:3 /w:[ 0 ]
  AND g77 (.w1(b0), .w0(a3), .w5(w35));   //: @(519, 463) /sz:(40, 40) /sn:0 /p:[ Ti0>0 Ti1>0 Bo0<0 ]
  FA g60 (.D0(D15), .D1(w18), .cin(cout10), .cout(s7), .s(s6));   //: @(216, 531) /sz:(66, 55) /sn:0 /p:[ Ti0>0 Ti1>0 Ri0>0 Lo0<1 Bo0<1 ]
  FA g29 (.D0(w62), .D1(w16), .cin(cout), .cout(cout3), .s(D10));   //: @(657, 178) /sz:(66, 55) /sn:0 /p:[ Ti0>0 Ti1>1 Ri0>0 Lo0<1 Bo0<1 ]
  FA g51 (.D0(D5), .D1(w50), .cin(cout1), .cout(D15), .s(D14));   //: @(336, 354) /sz:(66, 55) /sn:0 /p:[ Ti0>0 Ti1>1 Ri0>0 Lo0<1 Bo0<1 ]
  //: joint g18 (a1) @(471, 74) /w:[ 5 -1 6 8 ]
  AND g82 (.w1(b3), .w0(a2), .w5(w50));   //: @(331, 267) /sz:(40, 40) /sn:0 /p:[ Ti0>13 Ti1>9 Bo0<0 ]
  AND g70 (.w1(b3), .w0(a1), .w5(w3));   //: @(457, 92) /sz:(40, 40) /sn:0 /p:[ Ti0>11 Ti1>9 Bo0<1 ]
  //: joint g25 (b3) @(915, 256) /w:[ -1 2 12 1 ]
  //: joint g10 (b3) @(915, -16) /w:[ -1 6 8 5 ]
  //: output g65 (s4) @(446,602) /sn:0 /R:3 /w:[ 0 ]
  //: output g64 (s7) @(195,602) /sn:0 /R:3 /w:[ 0 ]
  //: output g49 (s0) @(888,602) /sn:0 /R:3 /w:[ 0 ]
  AND g72 (.w1(b0), .w0(a1), .w5(w71));   //: @(754, 111) /sz:(40, 40) /sn:0 /p:[ Ti0>11 Ti1>0 Bo0<1 ]
  //: joint g6 (b1) @(953, -1) /w:[ -1 1 2 4 ]
  HA g56 (.D1(w47), .D0(D10), .cout(cout5), .s(s2));   //: @(636, 354) /sz:(66, 56) /sn:0 /p:[ Ti0>1 Ti1>0 Lo0<0 Bo0<1 ]
  AND g73 (.w1(b0), .w0(a0), .w5(s0));   //: @(869, 17) /sz:(40, 40) /sn:0 /p:[ Ti0>9 Ti1>0 Bo0<1 ]
  AND g68 (.w1(b2), .w0(a1), .w5(w77));   //: @(556, 97) /sz:(40, 40) /sn:0 /p:[ Ti0>7 Ti1>11 Bo0<1 ]
  //: joint g7 (a0) @(802, -24) /w:[ 1 -1 2 12 ]
  //: joint g9 (a0) @(703, -24) /w:[ 3 -1 4 10 ]
  FA g58 (.D0(D13), .D1(w4), .cin(cout8), .cout(cout9), .s(s4));   //: @(416, 531) /sz:(66, 55) /sn:0 /p:[ Ti0>0 Ti1>0 Ri0>0 Lo0<1 Bo0<1 ]
  //: joint g22 (b2) @(933, 263) /w:[ -1 9 10 12 ]
  //: input g31 (a3) @(184,424) /sn:0 /w:[ 7 ]
  AND g71 (.w1(b1), .w0(a1), .w5(w16));   //: @(652, 105) /sz:(40, 40) /sn:0 /p:[ Ti0>7 Ti1>13 Bo0<0 ]
  FA g59 (.D0(D14), .D1(w8), .cin(cout9), .cout(cout10), .s(s5));   //: @(315, 531) /sz:(66, 55) /sn:0 /p:[ Ti0>0 Ti1>0 Ri0>0 Lo0<1 Bo0<1 ]
  //: output g67 (s6) @(246,602) /sn:0 /R:3 /w:[ 0 ]
  AND g83 (.w1(b1), .w0(a2), .w5(w53));   //: @(535, 283) /sz:(40, 40) /sn:0 /p:[ Ti0>11 Ti1>13 Bo0<0 ]
  //: joint g33 (a3) @(425, 424) /w:[ 1 -1 2 12 ]
  FA g54 (.D0(D11), .D1(w56), .cin(cout7), .cout(cout1), .s(D13));   //: @(437, 354) /sz:(66, 55) /sn:0 /p:[ Ti0>0 Ti1>1 Ri0>0 Lo0<1 Bo0<1 ]
  AND g81 (.w1(b0), .w0(a2), .w5(w47));   //: @(636, 292) /sz:(40, 40) /sn:0 /p:[ Ti0>13 Ti1>0 Bo0<0 ]
  FA g52 (.D0(D7), .D1(w77), .cin(cout3), .cout(D8), .s(D9));   //: @(561, 178) /sz:(66, 55) /sn:0 /p:[ Ti0>0 Ti1>0 Ri0>0 Lo0<1 Bo0<1 ]
  //: output g66 (s5) @(345,602) /sn:0 /R:3 /w:[ 0 ]
  //: joint g12 (b0) @(970, 100) /w:[ -1 4 10 3 ]
  HA g57 (.D1(w35), .D0(D12), .cout(cout8), .s(s3));   //: @(519, 531) /sz:(66, 56) /sn:0 /p:[ Ti0>1 Ti1>0 Lo0<1 Bo0<1 ]
  HA g28 (.D1(w71), .D0(w65), .cout(cout), .s(s1));   //: @(754, 178) /sz:(66, 56) /sn:0 /p:[ Ti0>0 Ti1>0 Lo0<1 Bo0<1 ]
  AND g84 (.w1(b2), .w0(a2), .w5(w56));   //: @(432, 274) /sz:(40, 40) /sn:0 /p:[ Ti0>11 Ti1>11 Bo0<0 ]
  //: joint g5 (b0) @(970, 6) /w:[ -1 6 8 5 ]
  //: joint g14 (b2) @(933, 86) /w:[ -1 5 6 8 ]
  //: joint g11 (a0) @(607, -24) /w:[ 5 -1 6 8 ]
  //: joint g21 (a2) @(549, 248) /w:[ 1 -1 2 12 ]
  //: joint g19 (b0) @(970, 281) /w:[ -1 2 12 1 ]
  //: output g61 (s1) @(788,601) /sn:0 /R:3 /w:[ 0 ]
  AND g79 (.w1(b2), .w0(a3), .w5(w8));   //: @(310, 449) /sz:(40, 40) /sn:0 /p:[ Ti0>13 Ti1>11 Bo0<1 ]
  //: joint g20 (b1) @(953, 272) /w:[ -1 9 10 12 ]
  //: joint g32 (a3) @(324, 424) /w:[ 3 -1 4 10 ]
  AND g78 (.w1(b3), .w0(a3), .w5(w18));   //: @(211, 442) /sz:(40, 40) /sn:0 /p:[ Ti0>0 Ti1>9 Bo0<1 ]
  //: output g63 (s3) @(553,602) /sn:0 /R:3 /w:[ 0 ]
  //: input g0 (b0) @(970,-53) /sn:0 /R:3 /w:[ 7 ]
  //: joint g15 (b3) @(915, 80) /w:[ -1 4 10 3 ]
  //: joint g27 (a3) @(225, 424) /w:[ 5 -1 6 8 ]
  //: output g62 (s2) @(670,602) /sn:0 /R:3 /w:[ 0 ]
  AND g80 (.w1(b1), .w0(a3), .w5(w4));   //: @(411, 456) /sz:(40, 40) /sn:0 /p:[ Ti0>13 Ti1>13 Bo0<1 ]
  HA g55 (.D1(w3), .D0(D8), .cout(D5), .s(D11));   //: @(459, 177) /sz:(61, 56) /sn:0 /p:[ Ti0>0 Ti1>0 Lo0<1 Bo0<1 ]
  FA g53 (.D0(D9), .D1(w53), .cin(cout5), .cout(cout7), .s(D12));   //: @(540, 354) /sz:(66, 55) /sn:0 /p:[ Ti0>0 Ti1>1 Ri0>1 Lo0<1 Bo0<1 ]
  AND g76 (.w1(b1), .w0(a0), .w5(w65));   //: @(788, 11) /sz:(40, 40) /sn:0 /p:[ Ti0>3 Ti1>13 Bo0<1 ]
  //: joint g13 (b1) @(953, 93) /w:[ -1 5 6 8 ]

endmodule

module HA(D1, D0, s, cout);
//: interface  /sz:(40, 40) /bd:[ ]
input D1;    //: /sn:0 {0}(382,302)(413,302){1}
//: {2}(417,302)(492,302){3}
//: {4}(415,300)(415,207)(492,207){5}
input D0;    //: /sn:0 {0}(380,165)(430,165){1}
//: {2}(434,165)(492,165){3}
//: {4}(432,167)(432,272)(492,272){5}
output cout;    //: /sn:0 /dp:1 {0}(621,285)(558,285){1}
output s;    //: /sn:0 /dp:1 {0}(621,186)(558,186){1}
//: enddecls

  EXOR g8 (.c0(D0), .c1(D1), .c2(s));   //: @(493, 157) /sz:(64, 65) /sn:0 /p:[ Li0>3 Li1>5 Ro0<1 ]
  //: joint g4 (D1) @(415, 302) /w:[ 2 4 1 -1 ]
  //: input g3 (D1) @(380,302) /sn:0 /w:[ 0 ]
  //: input g2 (D0) @(378,165) /sn:0 /w:[ 0 ]
  //: joint g1 (D0) @(432, 165) /w:[ 2 -1 1 4 ]
  //: output g6 (s) @(618,186) /sn:0 /w:[ 0 ]
  //: output g7 (cout) @(618,285) /sn:0 /w:[ 0 ]
  AND g0 (.w1(D1), .w0(D0), .w5(cout));   //: @(493, 250) /sz:(64, 65) /sn:0 /p:[ Li0>3 Li1>5 Ro0<1 ]

endmodule

module NOT(w5, w2);
//: interface  /sz:(40, 40) /bd:[ ]
supply0 w0;    //: /sn:0 {0}(519,294)(519,269){1}
supply1 w1;    //: /sn:0 {0}(519,204)(519,176){1}
input w2;    //: /sn:0 /dp:5 {0}(505,260)(476,260)(476,236){1}
//: {2}(476,232)(476,212)(505,212){3}
//: {4}(474,234)(450,234){5}
output w5;    //: /sn:0 /dp:3 {0}(519,252)(519,236){1}
//: {2}(521,234)(576,234){3}
//: {4}(519,232)(519,221){5}
//: enddecls

  //: joint g4 (w2) @(476, 234) /w:[ -1 2 4 1 ]
  //: output g3 (w5) @(573,234) /sn:0 /w:[ 3 ]
  //: input g2 (w2) @(448,234) /sn:0 /w:[ 5 ]
  //: supply1 g1 (w1) @(530,176) /sn:0 /w:[ 1 ]
  pmos g6 (.Z(w1), .S0(w5), .G0(w2));   //: @(513,212) /sn:0 /w:[ 0 5 3 ]
  //: joint g7 (w5) @(519, 234) /w:[ 2 4 -1 1 ]
  nmos g5 (.Z(w0), .S0(w5), .G0(w2));   //: @(513,260) /sn:0 /w:[ 1 0 0 ]
  //: supply0 g0 (w0) @(519,300) /sn:0 /w:[ 0 ]

endmodule

module EXOR(c0, c1, c2);
//: interface  /sz:(40, 40) /bd:[ ]
input c0;    //: /sn:0 {0}(312,170)(415,170){1}
//: {2}(419,170)(433,170){3}
//: {4}(417,172)(417,265)(551,265){5}
input c1;    //: /sn:0 /dp:5 {0}(316,292)(395,292){1}
//: {2}(399,292)(437,292){3}
//: {4}(397,290)(397,212)(551,212){5}
output c2;    //: /sn:0 {0}(698,243)(720,243){1}
wire anb;    //: /sn:0 {0}(656,225)(645,225)(645,210)(593,210){1}
wire bn;    //: /sn:0 {0}(551,292)(479,292){1}
wire abn;    //: /sn:0 {0}(656,252)(645,252)(645,267)(593,267){1}
wire w5;    //: /sn:0 {0}(475,187)(551,187){1}
//: enddecls

  NAND g4 (.w0(anb), .w1(abn), .w2(c2));   //: @(657, 220) /sz:(40, 40) /sn:0 /p:[ Li0>0 Li1>0 Ro0<0 ]
  NAND g3 (.w1(bn), .w0(c0), .w2(abn));   //: @(552, 259) /sz:(40, 40) /sn:0 /p:[ Li0>0 Li1>5 Ro0<1 ]
  //: joint g2 (c0) @(417, 170) /w:[ 2 -1 1 4 ]
  //: input g1 (c0) @(310,170) /sn:0 /w:[ 0 ]
  //: joint g10 (c1) @(397, 292) /w:[ 2 4 1 -1 ]
  //: input g9 (c1) @(314,292) /sn:0 /w:[ 0 ]
  NOT g7 (.w2(c1), .w5(bn));   //: @(438, 277) /sz:(40, 40) /sn:0 /p:[ Li0>3 Ro0<1 ]
  NAND g5 (.w1(c1), .w0(w5), .w2(anb));   //: @(552, 183) /sz:(40, 40) /sn:0 /p:[ Li0>5 Li1>1 Ro0<1 ]
  //: output g11 (c2) @(717,243) /sn:0 /w:[ 1 ]
  NOT g0 (.w2(c0), .w5(w5));   //: @(434, 157) /sz:(40, 40) /sn:0 /p:[ Li0>3 Ro0<0 ]

endmodule

module FA(D1, cin, s, D0, cout);
//: interface  /sz:(40, 40) /bd:[ ]
input D1;    //: /sn:0 /dp:3 {0}(406,174)(378,174){1}
//: {2}(374,174)(353,174){3}
//: {4}(376,176)(376,319)(488,319){5}
input D0;    //: /sn:0 /dp:3 {0}(406,142)(392,142){1}
//: {2}(388,142)(354,142){3}
//: {4}(390,144)(390,299)(488,299){5}
input cin;    //: /sn:0 {0}(355,243)(472,243){1}
//: {2}(476,243)(490,243){3}
//: {4}(474,241)(474,174)(563,174){5}
output cout;    //: /sn:0 /dp:1 {0}(672,278)(620,278){1}
output s;    //: /sn:0 {0}(666,158)(614,158){1}
wire w4;    //: /sn:0 {0}(574,287)(564,287)(564,309)(534,309){1}
wire w3;    //: /sn:0 {0}(574,266)(565,266)(565,235)(534,235){1}
wire w0;    //: /sn:0 /dp:5 {0}(563,158)(483,158){1}
//: {2}(479,158)(459,158){3}
//: {4}(481,160)(481,220)(488,220){5}
//: enddecls

  NAND g16 (.w1(D1), .w0(D0), .w2(w4));   //: @(489, 287) /sz:(44, 44) /sn:0 /p:[ Li0>5 Li1>5 Ro0<1 ]
  //: joint g3 (D1) @(376, 174) /w:[ 1 -1 2 4 ]
  //: joint g2 (D0) @(390, 142) /w:[ 1 -1 2 4 ]
  //: joint g1 (cin) @(474, 243) /w:[ 2 4 1 -1 ]
  EXOR g18 (.c1(cin), .c0(w0), .c2(s));   //: @(564, 134) /sz:(49, 51) /sn:0 /p:[ Li0>5 Li1>0 Ro0<1 ]
  //: input g6 (D1) @(351,174) /sn:0 /w:[ 3 ]
  //: input g7 (cin) @(353,243) /sn:0 /w:[ 0 ]
  //: output g12 (s) @(663,158) /sn:0 /w:[ 0 ]
  //: input g5 (D0) @(352,142) /sn:0 /w:[ 3 ]
  EXOR g14 (.c1(D1), .c0(D0), .c2(w0));   //: @(407, 134) /sz:(51, 51) /sn:0 /p:[ Li0>0 Li1>0 Ro0<3 ]
  NAND g19 (.w0(w0), .w1(cin), .w2(w3));   //: @(489, 212) /sz:(44, 44) /sn:0 /p:[ Li0>5 Li1>3 Ro0<1 ]
  NAND g20 (.w1(w4), .w0(w3), .w2(cout));   //: @(575, 254) /sz:(43, 44) /sn:0 /p:[ Li0>0 Li1>0 Ro0<1 ]
  //: joint g0 (w0) @(481, 158) /w:[ 1 -1 2 4 ]
  //: output g13 (cout) @(669,278) /sn:0 /w:[ 0 ]

endmodule

module main;    //: root_module
wire s2;    //: /sn:0 /dp:1 {0}(496,336)(496,302){1}
wire [3:0] B;    //: /sn:0 /dp:1 {0}(643,207)(692,207){1}
wire a2;    //: /sn:0 /dp:1 {0}(353,211)(415,211){1}
wire s0;    //: /sn:0 {0}(476,302)(476,336){1}
wire b2;    //: /sn:0 {0}(637,202)(607,202){1}
wire [3:0] A;    //: /sn:0 /dp:1 {0}(309,206)(347,206){1}
wire s6;    //: /sn:0 {0}(536,336)(536,302){1}
wire a3;    //: /sn:0 /dp:1 {0}(353,221)(415,221){1}
wire b3;    //: /sn:0 {0}(637,192)(607,192){1}
wire bo;    //: /sn:0 {0}(607,222)(637,222){1}
wire s3;    //: /sn:0 {0}(506,336)(506,302){1}
wire [7:0] S0;    //: /sn:0 /dp:1 {0}(511,377)(511,342){1}
wire a1;    //: /sn:0 /dp:1 {0}(415,201)(353,201){1}
wire s1;    //: /sn:0 {0}(486,302)(486,336){1}
wire b1;    //: /sn:0 {0}(607,212)(637,212){1}
wire a0;    //: /sn:0 /dp:1 {0}(415,191)(353,191){1}
wire s4;    //: /sn:0 {0}(516,336)(516,302){1}
wire s5;    //: /sn:0 {0}(526,336)(526,302){1}
wire s7;    //: /sn:0 {0}(546,336)(546,302){1}
//: enddecls

  concat B (.I0(bo), .I1(b1), .I2(b2), .I3(b3), .Z(B));   //: @(642,207) /sn:0 /w:[ 1 1 0 0 0 ] /dr:0
  //: dip g2 (B) @(730,207) /sn:0 /R:3 /w:[ 1 ] /st:5
  //: dip g1 (A) @(271,206) /sn:0 /R:1 /w:[ 0 ] /st:2
  concat A (.I0(a0), .I1(a1), .I2(a2), .I3(a3), .Z(A));   //: @(348,206) /sn:0 /R:2 /w:[ 1 1 0 0 1 ] /dr:0
  led S0 (.I(S0));   //: @(511,384) /sn:0 /R:2 /w:[ 0 ] /type:2
  moltiplicatore g0 (.a3(a3), .a2(a2), .a1(a1), .a0(a0), .b0(bo), .b1(b1), .b2(b2), .b3(b3), .s7(s7), .s6(s6), .s5(s5), .s4(s4), .s3(s3), .s2(s2), .s1(s1), .s0(s0));   //: @(416, 146) /sz:(190, 155) /sn:0 /p:[ Li0>1 Li1>1 Li2>0 Li3>0 Ri0>0 Ri1>0 Ri2>1 Ri3>1 Bo0<1 Bo1<1 Bo2<1 Bo3<1 Bo4<1 Bo5<1 Bo6<0 Bo7<0 ]
  concat S (.I0(s0), .I1(s1), .I2(s2), .I3(s3), .I4(s4), .I5(s5), .I6(s6), .I7(s7), .Z(S0));   //: @(511,341) /sn:0 /R:3 /w:[ 1 1 0 0 0 0 0 0 1 ] /dr:0

endmodule
