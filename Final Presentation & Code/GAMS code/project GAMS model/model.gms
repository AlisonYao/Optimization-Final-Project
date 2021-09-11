
Sets
   i time interval /1*34/
   j '1:jinqiao to ab, 2:ab to jiqiao' /1,2/ ;

integer Variable
   AA(i) bus from A to A
   BB(i) bus from B to B
   AB(i) bus from A to B
   BA(i) bus from B to A
   a(i) bus at A
   b(i) bus at B;

Variable
   W total cost  ;

parameter
         d(j,i) waiting people at A
$CALL GDXXRW.EXE student.xlsx par=d rng=A5:AI7
$GDXIN student.gdx
$LOAD d
$GDXIN
display d;

Scalar
     s number of seats /50/
     N max number of bus /6/
     c1 cost of traveling /20/
     c2 cost of waiting /7.5/
     k tolerance /5/;

Equations
     cost objective function
     Anumber(i) satisfy students demand at ai
     Bnumber(i) satisfy students demand at bi
     AAbus(i) bus number at node ai
     BBbus(i) bus number at node bi
     ABbus(i) bus number at node a(i+1)
     BAbus(i) bus number at node b(i+1)
     starta
     startb;

cost .. W =e= sum(i, c2*AA(i)+c2*BB(i)+c1*AB(i)+c1*BA(i))   ;
Anumber(i) ..  s*AB(i) =g= d('1',i) -k ;
Bnumber(i) ..  s*BA(i) =g= d('2',i) -k ;
AAbus(i) ..    a(i) =e= AA(i)+ AB(i) ;
BBbus(i) ..    b(i) =e= BB(i)+ BA(i) ;
ABbus(i)$(ord(i)<34) ..  a(i+1) =e= AA(i)+ BA(i) ;
BAbus(i)$(ord(i)<34) ..  b(i+1) =e= BB(i)+AB(i)  ;
starta .. a('1') =e= N  ;
startb .. b('1') =e= 0  ;


Model schedule /all/;
option mip = Cplex;
Solve schedule using mip minimizing W ;

Display  a.l, b.l, AA.l, AB.l, BA.l, BB.l, W.l;
