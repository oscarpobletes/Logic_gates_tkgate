//: version "2.0-b10"
//: property encoding = "iso8859-1"
//: property locale = "en"
//: property prefix = "_GG"
//: property timingViolationMode = 2
//: property initTime = "0 ns"

`timescale 1ns/1ns

//: /netlistBegin main
module main;    //: root_module
reg w0;    //: /sn:0 {0}(162,181)(176,181)(176,203)(191,203){1}
reg w1;    //: /sn:0 {0}(158,300)(191,300)(191,306)(234,306){1}
wire w6;    //: /sn:0 {0}(161,391)(176,391)(176,312){1}
//: {2}(178,310)(188,310)(188,311)(234,311){3}
//: {4}(176,308)(176,208)(191,208){5}
wire w7;    //: /sn:0 {0}(461,318)(461,343)(431,343)(431,303)(380,303){1}
//: {2}(378,301)(378,200)(306,200)(306,185)(316,185){3}
//: {4}(376,303)(344,303){5}
wire w3;    //: /sn:0 {0}(212,206)(222,206)(222,191)(200,191)(200,178)(231,178){1}
wire w8;    //: /sn:0 {0}(460,176)(460,182)(360,182){1}
//: {2}(356,182)(337,182){3}
//: {4}(358,184)(358,284)(298,284)(298,301)(323,301){5}
wire w2;    //: /sn:0 {0}(255,309)(291,309)(291,306)(323,306){1}
wire w5;    //: /sn:0 {0}(247,178)(287,178)(287,180)(316,180){1}
//: enddecls

  //: joint g8 (w7) @(378, 303) /w:[ 1 2 4 -1 ]
  _GGNAND2 #(4) g4 (.I0(w5), .I1(w7), .Z(w8));   //: @(327,182) /sn:0 /w:[ 1 3 3 ]
  //: comment g13 @(457,274) /sn:0
  //: /line:"--"
  //: /line:"Q"
  //: /line:""
  //: /end
  _GGNBUF #(2) g3 (.I(w3), .Z(w5));   //: @(237,178) /sn:0 /w:[ 1 0 ]
  _GGAND2 #(6) g2 (.I0(w0), .I1(w6), .Z(w3));   //: @(202,206) /sn:0 /w:[ 1 5 0 ]
  //: SWITCH g1 (w1) @(141,300) /sn:0 /w:[ 0 ] /st:0 /dn:1
  _GGNAND2 #(4) g16 (.I0(w1), .I1(w6), .Z(w2));   //: @(245,309) /sn:0 /w:[ 1 3 0 ]
  //: comment g11 @(246,283) /sn:0
  //: /line:"R"
  //: /end
  //: comment g10 @(247,141) /sn:0
  //: /line:"S"
  //: /end
  //: LED g6 (w8) @(460,169) /sn:0 /w:[ 0 ] /type:0
  //: joint g9 (w8) @(358, 182) /w:[ 1 -1 2 4 ]
  //: LED g7 (w7) @(461,311) /sn:0 /w:[ 0 ] /type:0
  //: comment g15 @(568,153) /sn:0
  //: /line:"N Qn-1    R    S    Qn"
  //: /line:"0   0     0    0    0 "
  //: /line:"1   0     0    1    1 "
  //: /line:"2   0     1    0    0 "
  //: /line:"3   0     1    1    x"
  //: /line:"4   1     0    0    1 "
  //: /line:"5   1     0    1    1 "
  //: /line:"6   1     1    0    0 "
  //: /line:"7   1     1    1    x"
  //: /line:""
  //: /line:""
  //: /line:""
  //: /line:"R   S   Qn"
  //: /line:"0   0   Qn-1 "
  //: /line:"0   1    1  "
  //: /line:"1   0    0 "
  //: /line:"1   1    x"
  //: /end
  _GGCLOCK_P100_0_50 g17 (.Z(w6));   //: @(148,391) /sn:0 /w:[ 0 ] /omega:100 /phi:0 /duty:50
  //: comment g14 @(122,54) /sn:0
  //: /line:"R-S NAND"
  //: /end
  _GGNAND2 #(4) g5 (.I0(w8), .I1(w2), .Z(w7));   //: @(334,303) /sn:0 /w:[ 5 1 5 ]
  //: SWITCH g0 (w0) @(145,181) /sn:0 /w:[ 0 ] /st:1 /dn:1
  //: joint g18 (w6) @(176, 310) /w:[ 2 4 -1 1 ]
  //: comment g12 @(462,140) /sn:0
  //: /line:"Q"
  //: /end

endmodule
//: /netlistEnd
