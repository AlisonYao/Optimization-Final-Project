* let's test with only all nodes
* basically writing everything very explicitly
* avoid index error

set
         j /1,2/
         i /1*35/;

scalar
a1 /11/
b1 /0/;

parameter
         d(j,i) people waiting at A
$CALL GDXXRW.EXE student.xlsx par=d rng=A7:AI9
$GDXIN student.gdx
$LOAD d
$GDXIN
display d;


integer variables
AA1
AA2
AA3
AA4
AA5
AA6
AA7
AA8
AA9
AA10
AA11
AA12
AA13
AA14
AA15
AA16
AA17
AA18
AA19
AA20
AA21
AA22
AA23
AA24
AA25
AA26
AA27
AA28
AA29
AA30
AA31
AA32
AA33
AA34
AB1
AB2
AB3
AB4
AB5
AB6
AB7
AB8
AB9
AB10
AB11
AB12
AB13
AB14
AB15
AB16
AB17
AB18
AB19
AB20
AB21
AB22
AB23
AB24
AB25
AB26
AB27
AB28
AB29
AB30
AB31
AB32
AB33
AB34
BB1
BB2
BB3
BB4
BB5
BB6
BB7
BB8
BB9
BB10
BB11
BB12
BB13
BB14
BB15
BB16
BB17
BB18
BB19
BB20
BB21
BB22
BB23
BB24
BB25
BB26
BB27
BB28
BB29
BB30
BB31
BB32
BB33
BB34
BA1
BA2
BA3
BA4
BA5
BA6
BA7
BA8
BA9
BA10
BA11
BA12
BA13
BA14
BA15
BA16
BA17
BA18
BA19
BA20
BA21
BA22
BA23
BA24
BA25
BA26
BA27
BA28
BA29
BA30
BA31
BA32
BA33
BA34
a2
a3
a4
a5
a6
a7
a8
a9
a10
a11
a12
a13
a14
a15
a16
a17
a18
a19
a20
a21
a22
a23
a24
a25
a26
a27
a28
a29
a30
a31
a32
a33
a34
a35
b2
b3
b4
b5
b6
b7
b8
b9
b10
b11
b12
b13
b14
b15
b16
b17
b18
b19
b20
b21
b22
b23
b24
b25
b26
b27
b28
b29
b30
b31
b32
b33
b34
b35;


variable
         z total cost;

equations
cost
d1
d2
d3
d4
d5
d6
d7
d8
d9
d10
d11
d12
d13
d14
d15
d16
d17
d18
d19
d20
d21
d22
d23
d24
d25
d26
d27
d28
d29
d30
d31
d32
d33
d34
d35
d36
d37
d38
d39
d40
d41
d42
d43
d44
d45
d46
d47
d48
d49
d50
d51
d52
d53
d54
d55
d56
d57
d58
d59
d60
d61
d62
d63
d64
d65
d66
d67
d68
c1
c2
c3
c4
c5
c6
c7
c8
c9
c10
c11
c12
c13
c14
c15
c16
c17
c18
c19
c20
c21
c22
c23
c24
c25
c26
c27
c28
c29
c30
c31
c32
c33
c34
c35
c36
c37
c38
c39
c40
c41
c42
c43
c44
c45
c46
c47
c48
c49
c50
c51
c52
c53
c54
c55
c56
c57
c58
c59
c60
c61
c62
c63
c64
c65
c66
c67
c68
c69
c70
c71
c72
c73
c74
c75
c76
c77
c78
c79
c80
c81
c82
c83
c84
c85
c86
c87
c88
c89
c90
c91
c92
c93
c94
c95
c96
c97
c98
c99
c100
c101
c102
c103
c104
c105
c106
c107
c108
c109
c110
c111
c112
c113
c114
c115
c116
c117
c118
c119
c120
c121
c122
c123
c124
c125
c126
c127
c128
c129
c130
c131
c132
c133
c134
c135
c136;

cost .. z =e= 7.5*(AA1+AA2+AA3+AA4+AA5+aa6+aa7+aa8+aa9+aa10+aa11+aa12+aa13+aa14+aa15+aa16+aa17+aa18+aa19+aa20+aa21+aa22+aa23+aa24+aa25+aa26+aa27+aa28+aa29+aa30+aa31+aa32+aa33+aa34
                 +BB1+BB2+bb3+bb4+bb5+bb6+bb7+bb8+bb9+bb10+bb11+bb12+bb13+bb14+bb15+bb16+bb17+bb18+bb19+bb20+bb21+bb22+bb23+bb24+bb25+bb26+bb27+bb28+bb29+bb30+bb31+bb32+bb33+bb34)
            + 20*(BA1+BA2+ba3+ba4+ba5+ba6+ba7+ba8+ba9+ba10+ba11+ba12+ba13+ba14+ba15+ba16+ba17+ba18+ba19+ba20+ba21+ba22+ba23+ba24+ba25+ba26+ba27+ba28+ba29+ba30+ba31+ba32+ba33+ba34
                 +ab1+ab2+ab3+ab4+ab5+ab6+ab7+ab8+ab9+ab10+ab11+ab12+ab13+ab14+ab15+ab16+ab17+ab18+ab19+ab20+ab21+ab22+ab23+ab24+ab25+ab26+ab27+ab28+ab29+ab30+ab31+ab32+ab33+ab34);
d1 .. AB1 * 50 =g= d('1', '1');
d2 .. AB2 * 50 =g= d('1', '2');
d3 .. AB3 * 50 =g= d('1', '3');
d4 .. AB4 * 50 =g= d('1', '4');
d5 .. AB5 * 50 =g= d('1', '5');
d6 .. AB6 * 50 =g= d('1', '6');
d7 .. AB7 * 50 =g= d('1', '7');
d8 .. AB8 * 50 =g= d('1', '8');
d9 .. AB9 * 50 =g= d('1', '9');
d10 .. AB10 * 50 =g= d('1', '10');
d11 .. AB11 * 50 =g= d('1', '11');
d12 .. AB12 * 50 =g= d('1', '12');
d13 .. AB13 * 50 =g= d('1', '13');
d14 .. AB14 * 50 =g= d('1', '14');
d15 .. AB15 * 50 =g= d('1', '15');
d16 .. AB16 * 50 =g= d('1', '16');
d17 .. AB17 * 50 =g= d('1', '17');
d18 .. AB18 * 50 =g= d('1', '18');
d19 .. AB19 * 50 =g= d('1', '19');
d20 .. AB20 * 50 =g= d('1', '20');
d21 .. AB21 * 50 =g= d('1', '21');
d22 .. AB22 * 50 =g= d('1', '22');
d23 .. AB23 * 50 =g= d('1', '23');
d24 .. AB24 * 50 =g= d('1', '24');
d25 .. AB25 * 50 =g= d('1', '25');
d26 .. AB26 * 50 =g= d('1', '26');
d27 .. AB27 * 50 =g= d('1', '27');
d28 .. AB28 * 50 =g= d('1', '28');
d29 .. AB29 * 50 =g= d('1', '29');
d30 .. AB30 * 50 =g= d('1', '30');
d31 .. AB31 * 50 =g= d('1', '31');
d32 .. AB32 * 50 =g= d('1', '32');
d33 .. AB33 * 50 =g= d('1', '33');
d34 .. AB34 * 50 =g= d('1', '34');
d35 .. BA1 * 50 =g= d('2', '1');
d36 .. BA2 * 50 =g= d('2', '2');
d37 .. BA3 * 50 =g= d('2', '3');
d38 .. BA4 * 50 =g= d('2', '4');
d39 .. BA5 * 50 =g= d('2', '5');
d40 .. BA6 * 50 =g= d('2', '6');
d41 .. BA7 * 50 =g= d('2', '7');
d42 .. BA8 * 50 =g= d('2', '8');
d43 .. BA9 * 50 =g= d('2', '9');
d44 .. BA10 * 50 =g= d('2', '10');
d45 .. BA11 * 50 =g= d('2', '11');
d46 .. BA12 * 50 =g= d('2', '12');
d47 .. BA13 * 50 =g= d('2', '13');
d48 .. BA14 * 50 =g= d('2', '14');
d49 .. BA15 * 50 =g= d('2', '15');
d50 .. BA16 * 50 =g= d('2', '16');
d51 .. BA17 * 50 =g= d('2', '17');
d52 .. BA18 * 50 =g= d('2', '18');
d53 .. BA19 * 50 =g= d('2', '19');
d54 .. BA20 * 50 =g= d('2', '20');
d55 .. BA21 * 50 =g= d('2', '21');
d56 .. BA22 * 50 =g= d('2', '22');
d57 .. BA23 * 50 =g= d('2', '23');
d58 .. BA24 * 50 =g= d('2', '24');
d59 .. BA25 * 50 =g= d('2', '25');
d60 .. BA26 * 50 =g= d('2', '26');
d61 .. BA27 * 50 =g= d('2', '27');
d62 .. BA28 * 50 =g= d('2', '28');
d63 .. BA29 * 50 =g= d('2', '29');
d64 .. BA30 * 50 =g= d('2', '30');
d65 .. BA31 * 50 =g= d('2', '31');
d66 .. BA32 * 50 =g= d('2', '32');
d67 .. BA33 * 50 =g= d('2', '33');
d68 .. BA34 * 50 =g= d('2', '34');
c1 .. a1 =e= AA1 + AB1;
c2 .. b1 =e= BA1 + BB1;
c3 .. AA1 + BA1 =e= a2;
c4 .. AB1 + BB1 =e= b2;
c5 .. a2 =e= AA2 + AB2;
c6 .. b2 =e= BA2 + BB2;
c7 .. AA2 + BA2 =e= a3;
c8 .. AB2 + BB2 =e= b3;
c9 .. a3 =e= AA3 + AB3;
c10 .. b3 =e= BA3 + BB3;
c11 .. AA3 + BA3 =e= a4;
c12 .. AB3 + BB3 =e= b4;
c13 .. a4 =e= AA4 + AB4;
c14 .. b4 =e= BA4 + BB4;
c15 .. AA4 + BA4 =e= a5;
c16 .. AB4 + BB4 =e= b5;
c17 .. a5 =e= AA5 + AB5;
c18 .. b5 =e= BA5 + BB5;
c19 .. AA5 + BA5 =e= a6;
c20 .. AB5 + BB5 =e= b6;
c21 .. a6 =e= AA6 + AB6;
c22 .. b6 =e= BA6 + BB6;
c23 .. AA6 + BA6 =e= a7;
c24 .. AB6 + BB6 =e= b7;
c25 .. a7 =e= AA7 + AB7;
c26 .. b7 =e= BA7 + BB7;
c27 .. AA7 + BA7 =e= a8;
c28 .. AB7 + BB7 =e= b8;
c29 .. a8 =e= AA8 + AB8;
c30 .. b8 =e= BA8 + BB8;
c31 .. AA8 + BA8 =e= a9;
c32 .. AB8 + BB8 =e= b9;
c33 .. a9 =e= AA9 + AB9;
c34 .. b9 =e= BA9 + BB9;
c35 .. AA9 + BA9 =e= a10;
c36 .. AB9 + BB9 =e= b10;
c37 .. a10 =e= AA10 + AB10;
c38 .. b10 =e= BA10 + BB10;
c39 .. AA10 + BA10 =e= a11;
c40 .. AB10 + BB10 =e= b11;
c41 .. a11 =e= AA11 + AB11;
c42 .. b11 =e= BA11 + BB11;
c43 .. AA11 + BA11 =e= a12;
c44 .. AB11 + BB11 =e= b12;
c45 .. a12 =e= AA12 + AB12;
c46 .. b12 =e= BA12 + BB12;
c47 .. AA12 + BA12 =e= a13;
c48 .. AB12 + BB12 =e= b13;
c49 .. a13 =e= AA13 + AB13;
c50 .. b13 =e= BA13 + BB13;
c51 .. AA13 + BA13 =e= a14;
c52 .. AB13 + BB13 =e= b14;
c53 .. a14 =e= AA14 + AB14;
c54 .. b14 =e= BA14 + BB14;
c55 .. AA14 + BA14 =e= a15;
c56 .. AB14 + BB14 =e= b15;
c57 .. a15 =e= AA15 + AB15;
c58 .. b15 =e= BA15 + BB15;
c59 .. AA15 + BA15 =e= a16;
c60 .. AB15 + BB15 =e= b16;
c61 .. a16 =e= AA16 + AB16;
c62 .. b16 =e= BA16 + BB16;
c63 .. AA16 + BA16 =e= a17;
c64 .. AB16 + BB16 =e= b17;
c65 .. a17 =e= AA17 + AB17;
c66 .. b17 =e= BA17 + BB17;
c67 .. AA17 + BA17 =e= a18;
c68 .. AB17 + BB17 =e= b18;
c69 .. a18 =e= AA18 + AB18;
c70 .. b18 =e= BA18 + BB18;
c71 .. AA18 + BA18 =e= a19;
c72 .. AB18 + BB18 =e= b19;
c73 .. a19 =e= AA19 + AB19;
c74 .. b19 =e= BA19 + BB19;
c75 .. AA19 + BA19 =e= a20;
c76 .. AB19 + BB19 =e= b20;
c77 .. a20 =e= AA20 + AB20;
c78 .. b20 =e= BA20 + BB20;
c79 .. AA20 + BA20 =e= a21;
c80 .. AB20 + BB20 =e= b21;
c81 .. a21 =e= AA21 + AB21;
c82 .. b21 =e= BA21 + BB21;
c83 .. AA21 + BA21 =e= a22;
c84 .. AB21 + BB21 =e= b22;
c85 .. a22 =e= AA22 + AB22;
c86 .. b22 =e= BA22 + BB22;
c87 .. AA22 + BA22 =e= a23;
c88 .. AB22 + BB22 =e= b23;
c89 .. a23 =e= AA23 + AB23;
c90 .. b23 =e= BA23 + BB23;
c91 .. AA23 + BA23 =e= a24;
c92 .. AB23 + BB23 =e= b24;
c93 .. a24 =e= AA24 + AB24;
c94 .. b24 =e= BA24 + BB24;
c95 .. AA24 + BA24 =e= a25;
c96 .. AB24 + BB24 =e= b25;
c97 .. a25 =e= AA25 + AB25;
c98 .. b25 =e= BA25 + BB25;
c99 .. AA25 + BA25 =e= a26;
c100 .. AB25 + BB25 =e= b26;
c101 .. a26 =e= AA26 + AB26;
c102 .. b26 =e= BA26 + BB26;
c103 .. AA26 + BA26 =e= a27;
c104 .. AB26 + BB26 =e= b27;
c105 .. a27 =e= AA27 + AB27;
c106 .. b27 =e= BA27 + BB27;
c107 .. AA27 + BA27 =e= a28;
c108 .. AB27 + BB27 =e= b28;
c109 .. a28 =e= AA28 + AB28;
c110 .. b28 =e= BA28 + BB28;
c111 .. AA28 + BA28 =e= a29;
c112 .. AB28 + BB28 =e= b29;
c113 .. a29 =e= AA29 + AB29;
c114 .. b29 =e= BA29 + BB29;
c115 .. AA29 + BA29 =e= a30;
c116 .. AB29 + BB29 =e= b30;
c117 .. a30 =e= AA30 + AB30;
c118 .. b30 =e= BA30 + BB30;
c119 .. AA30 + BA30 =e= a31;
c120 .. AB30 + BB30 =e= b31;
c121 .. a31 =e= AA31 + AB31;
c122 .. b31 =e= BA31 + BB31;
c123 .. AA31 + BA31 =e= a32;
c124 .. AB31 + BB31 =e= b32;
c125 .. a32 =e= AA32 + AB32;
c126 .. b32 =e= BA32 + BB32;
c127 .. AA32 + BA32 =e= a33;
c128 .. AB32 + BB32 =e= b33;
c129 .. a33 =e= AA33 + AB33;
c130 .. b33 =e= BA33 + BB33;
c131 .. AA33 + BA33 =e= a34;
c132 .. AB33 + BB33 =e= b34;
c133 .. a34 =e= AA34 + AB34;
c134 .. b34 =e= BA34 + BB34;
c135 .. AA34 + BA34 =e= a35;
c136 .. AB34 + BB34 =e= b35;


model schedule /all/;

solve schedule using mip minimizing z;

display d,
aa1.l, ab1.l, ba1.l, bb1.l,
aa2.l, ab2.l, ba2.l, bb2.l,
aa3.l, ab3.l, ba3.l, bb3.l,
aa4.l, ab4.l, ba4.l, bb4.l,
aa5.l, ab5.l, ba5.l, bb5.l,
aa6.l, ab6.l, ba6.l, bb6.l,
aa7.l, ab7.l, ba7.l, bb7.l,
aa8.l, ab8.l, ba8.l, bb8.l,
aa9.l, ab9.l, ba9.l, bb9.l,
aa10.l, ab10.l, ba10.l, bb10.l,
aa11.l, ab11.l, ba11.l, bb11.l,
aa12.l, ab12.l, ba12.l, bb12.l,
aa13.l, ab13.l, ba13.l, bb13.l,
aa14.l, ab14.l, ba14.l, bb14.l,
aa15.l, ab15.l, ba15.l, bb15.l,
aa16.l, ab16.l, ba16.l, bb16.l,
aa17.l, ab17.l, ba17.l, bb17.l,
aa18.l, ab18.l, ba18.l, bb18.l,
aa19.l, ab19.l, ba19.l, bb19.l,
aa20.l, ab20.l, ba20.l, bb20.l,
aa21.l, ab21.l, ba21.l, bb21.l,
aa22.l, ab22.l, ba22.l, bb22.l,
aa23.l, ab23.l, ba23.l, bb23.l,
aa24.l, ab24.l, ba24.l, bb24.l,
aa25.l, ab25.l, ba25.l, bb25.l,
aa26.l, ab26.l, ba26.l, bb26.l,
aa27.l, ab27.l, ba27.l, bb27.l,
aa28.l, ab28.l, ba28.l, bb28.l,
aa29.l, ab29.l, ba29.l, bb29.l,
aa30.l, ab30.l, ba30.l, bb30.l,
aa31.l, ab31.l, ba31.l, bb31.l,
aa32.l, ab32.l, ba32.l, bb32.l,
aa33.l, ab33.l, ba33.l, bb33.l,
aa34.l, ab34.l, ba34.l, bb34.l,
a2.l, b2.l, a3.l, b3.l, a4.l, b4.l, a5.l, b5.l,
a6.l, b6.l, a7.l, b7.l, a8.l, b8.l, a9.l, b9.l, a10.l, b10.l,
a11.l, b11.l, a12.l, b12.l, a13.l, b13.l, a14.l, b14.l, a15.l, b15.l,
a16.l, b16.l, a17.l, b17.l, a18.l, b18.l, a19.l, b19.l,
a21.l, b21.l, a22.l, b22.l, a23.l, b23.l, a24.l, b24.l, a25.l, b25.l,
a26.l, b26.l, a27.l, b27.l, a28.l, b28.l, a29.l, b29.l,
a31.l, b31.l, a32.l, b32.l, a33.l, b33.l, a34.l, b34.l, a35.l, b35.l;

display z.l;