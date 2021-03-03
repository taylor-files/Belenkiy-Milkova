unit Orbitap; {Версия от 09 ноября 2009 г.}
      interface
      type
      string1=string[6];
      string2=string[10];
      string3=string[100];

      arrofstring=array [0..5] of string3;
      arrofreal=array[0..13] of real;
      arrofreal1=array[0..6] of real;
      arrofreal2=array[0..10,0..12] of real;

{ Внутренние вспомогательные процедуры для unit Pac }
      procedure Algor2(n: byte);
      procedure Par(PS: string1; Zn: arrofreal1);
      procedure ferr(er: byte; var res: string3);
      procedure ExpltwoB(xS,yS: char; x,y: real; LS: string1;
                 sS: string3; gS: arrofstring; n: byte);
      procedure Inverstwo(xS,yS: char; x: real; sS: string3; n: byte);
      procedure InverstwoB(xS,yS: char; x{,y}: real;
                  BS: string1; sS: string3; gS: arrofstring; n: byte);

{ Внешние процедуры (базовые процедуры для абонента и для unit Pac) }

{1.}  procedure Explicit(xS: char; x: real; sS: string3; n: byte;
                 var res: string3; var w: arrofreal);
      procedure ExplicitP(xS: char; x: real; sS: string3; n: byte;
                 PS: string1; Zn: arrofreal1;
                 var res: string3; var w: arrofreal);
      procedure ExplicitB(xS: char; x: real; BS: string1; sS: string3;
                      gS: arrofstring; n: byte;
                         var res: string3; var w: arrofreal);
      procedure ExplicitPB(xS: char; x: real; BS: string1; sS: string3;
                      gS: arrofstring; n: byte;
                      PS: string1; Zn: arrofreal1;
                      var res: string3; var w: arrofreal);

{2.}  procedure Inversf(yS: char; y: real; sS: string3; n: byte;
          var res: string3; var w: arrofreal);
      procedure InversfP(yS: char; y: real; sS: string3; n: byte;
          PS: string1; Zn: arrofreal1;
          var res: string3; var w: arrofreal);
      procedure InversfB(yS: char; y: real; BS: string1; sS: string3;
                  gS: arrofstring; n: byte;
                  var res: string3; var w: arrofreal);
      procedure InversfPB(yS: char; y: real; BS: string1; sS: string3;
                  gS: arrofstring; n: byte;
                  PS: string1; Zn: arrofreal1;
                  var res: string3; var w: arrofreal);

{3.}  procedure Implicit(xS,yS: char; x,y: real; sS: string3; n: byte;
                  var res: string3; var w: arrofreal);
      procedure ImplicitP(xS,yS: char; x,y: real; sS: string3; n: byte;
                      PS: string1; Zn: arrofreal1;
                  var res: string3; var w: arrofreal);
      procedure ImplicitB(xS,yS: char; x,y: real;
                   BS: string1; sS: string3; gS: arrofstring; n: byte;
                  var res: string3; var w: arrofreal);
      procedure ImplicitPB(xS,yS: char; x,y: real;
                   BS: string1; sS: string3; gS: arrofstring; n: byte;
                   PS: string1; Zn: arrofreal1;
                  var res: string3; var w: arrofreal);

{4.}  procedure Paramet(tS: char; t: real; fS1,fS2: string3; n: byte;
                      var res: string3; var w: arrofreal);
      procedure ParametP(tS: char; t: real; fS1,fS2: string3; n: byte;
                                  PS: string1; Zn: arrofreal1;
                       var res: string3; var w: arrofreal);
      procedure ParametB(tS: char; t: real; fS1,fS2: string3;
                       BS: string1;
                        gS: arrofstring; n: byte;
                       var res: string3; var w: arrofreal);
      procedure ParametPB(tS: char; t: real; fS1,fS2: string3;
                       BS: string1;
                        gS: arrofstring; n: byte;
                            PS: string1; Zn: arrofreal1;
                       var res: string3; var w: arrofreal);

{5.}  procedure Curve(xS,yS: char; x,y: real; sS: string3; n: byte;
                       var res: string3; var w: arrofreal);
      procedure CurveP(xS,yS: char; x,y: real; sS: string3; n: byte;
                           PS: string1; Zn: arrofreal1;
                       var res: string3; var w: arrofreal);
      procedure CurveB(xS,yS: char; x,y: real; BS: string1; sS: string3;
          gS: arrofstring; n: byte; var res: string3; var w: arrofreal);
      procedure CurvePB(xS,yS: char; x,y: real; BS: string1; sS: string3;
                        gS: arrofstring; n: byte;
                        PS: string1; Zn: arrofreal1;
                  var res: string3; var w: arrofreal);

{6.}  procedure Curves(xS: char; x: real; LS: string1;
            Yn: arrofreal1; gS: arrofstring; n: byte;
            var res: string3; var sf: arrofreal2);
      procedure CurvesP(xS: char; x: real; LS: string1;
            Yn: arrofreal1; gS: arrofstring; n: byte;
                   PS: string1; Zn: arrofreal1;
            var res: string3; var sf: arrofreal2);
      procedure CurvesB(xS: char; x: real; LS: string1;
            Yn: arrofreal1; gS: arrofstring; n: byte;
            BS: string1; vS: arrofstring;
            var res: string3; var sf: arrofreal2);
      procedure CurvesPB(xS: char; x: real; LS: string1;
            Yn: arrofreal1; gS: arrofstring; n: byte;
          BS: string1; vS: arrofstring; PS: string1; Zn: arrofreal1;
            var res: string3; var sf: arrofreal2);

{7.}  procedure Curveh(xS: char; x: real;
                LS: string1; Yn: arrofreal1; sS: string3; n: byte;
                var res: string3; var w: arrofreal);
      procedure CurvehP(xS: char; x: real;
                LS: string1; Yn: arrofreal1; sS: string3; n: byte;
                PS: string1; Zn: arrofreal1;
                     var res: string3; var w: arrofreal);
      procedure CurvehB(xS: char; x: real;
                LS: string1; Yn: arrofreal1; sS: string3; n: byte;
                BS: string1; vS: arrofstring;
                var res: string3; var w: arrofreal);
      procedure CurvehPB(xS: char; x: real;
                LS: string1; Yn: arrofreal1; sS: string3; n: byte;
                BS: string1; vS: arrofstring;
                PS: string1; Zn: arrofreal1;
                var res: string3; var w: arrofreal);

{8.}  procedure SingODE(xS: char; LS: string1; Yn: arrofreal1;
                        sS: string3; n: byte;
                        var res: string3; var w: arrofreal);
      procedure SingODEP(xS: char; LS: string1; Yn: arrofreal1;
                        sS: string3; n: byte;
                          PS: string1; Zn: arrofreal1;
                        var res: string3; var w: arrofreal);
      procedure SingODEB(xS: char; LS,BS: string1; Yn: arrofreal1;
                        sS: string3; gS: arrofstring; n: byte;
                        var res: string3; var w: arrofreal);

{ Comment: блочные сингулярные уравнения не рассматриваются }

{ ************** только для unit Pac }
      procedure Inversd(yS: char; y: real; sS: string3; n: byte;
                         var res: string3; var w: arrofreal);
      procedure InversdP(yS: char; y: real; sS: string3; n: byte;
                         PS: string1; Zn: arrofreal1;
                         var res: string3; var w: arrofreal);
      procedure InversdB(yS: char; y: real; BS: string1; sS: string3;
                  gS: arrofstring; n: byte;
                  var res: string3; var w: arrofreal);


      var       {Только для собсвенных процедур, и для unit Pac
                  но не для абонента !}
      bo: boolean;
      k7: byte;
      z1: arrofreal;
      a6: arrofreal2;
      er: array [1..30] of string;
      Pm: string1;
      Pn: arrofreal1;
      implementation

      label 2,3,4,5,6,7,8,9,10,11,12,13;
      var
      xS,yS,ch: char;
      b1: arrofreal;

{ Процедура занесения параметров в стандартные массивы (внутренняя)}
  procedure Par(PS: string1; Zn: arrofreal1);
  begin Pm:=PS; Pn:=Zn end;

  {*********************** Алгоритм А1 - Композиция z1=f(z1(x))}
      procedure Compos(n: byte);
      var j1,j3,k1,i3,i9: byte; r1: real; begin
      for j1:=1 to n do begin z1[j1]:=j1*z1[j1+1]; i3:=n-j1+1;
      for k1:=j1 downto 1 do begin i9:=k1+i3; r1:=0;
      for j3:=1 to k1 do r1:=r1+z1[j3]*b1[i9-j3+1];
      b1[i9]:=r1/k1 end end; for j1:=1 to n+1 do z1[j1]:=b1[j1];
      end;

           {             Основная процедура -           }
         {   вычисление полинома Тейлора сложной функции  }
procedure CT(sS,LS: string; n: byte; xS: char; x: real);
   { Если LS<>'', то должны быть заготовлены строки array a6
     (полиномы Тейлора) для каждой из переменных LS }
      label 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,
            21,22,23,24,25,31,32,33,34,35,41,42,43,44,45,46;
      var
      i1,i2,i3,i4,j2,j3,j4,k1,k2,k3,k4,k5,
      m,m1,m7,m8,m9,n5,n6: byte;
      c1,c2,c3,c4,c5,q3,q4: string2;
      q1,q2,ch1,y1S: char;
      i9,j1,j9,m5,n4,code: integer;
      i,j,k,l: byte;
      a3,a4,r1,r2,r3,r4,r5,x2: real;
      p,a1: real;
      b2: array [0..12] of real;
      n1,n2,n3,m2,m3,l1,e1,d1: array [0..6] of byte;
      a2: array [0..6,1..11] of real;
      t1: array [0..12,1..11] of real;

function Power(a,b: real): real; {a^b}
label 1;
var i,j: integer; r: real;
begin j:=trunc(b); k7:=0; r:=0;
   if a=0 then begin if b<=0 then k7:=2 {недопустимо a=0, b<=0};
               goto 1; end;
   r:=1; if b=j then begin if j=0 then goto 1;
                     for i:=1 to abs(j) do r:=r*a;
                     if j<0 then r:=1/r; goto 1 end;
   if a>0 then begin r:=exp(ln(a)*b); goto 1 end;
   if a<0 then k7:=1 {недопустимо a<0, b - нецелое};
1: Power:=r;
end;

 {***************************}
  function Mid(str: string; m,n: byte): string;
      var st: string; i: byte; begin st:='';
      for i:=m to n+m-1 do st:=st+str[i]; Mid:=st; end;
 {****************************}
  function Instr(str: string; s: char): byte;
      label 1; var i: byte; begin
{      write('Instr'); read(i);}
      for i:=1 to Length(str) do
      if(str[i]=s) then goto 1; i:=0;    1: Instr:=i end;
 {****************************}
  function SmartBoy: byte; label 1,2,3,4,5,6,7;
      begin
      j2:=i1; goto 2;
   1: j2:=j2+1; 2: ch:=sS[j2];
{      write('Smart  c4 = ',c4,'  ch = ',ch); read(j1);}
      j1:=Instr(c4,ch); if j1>0 then goto 5;
      if ch<>'(' then goto 4; j4:=j2+1;
   3: j2:=j2+Instr(Mid(sS,j2+1,k1-j2),')');
      j1:=j1+j4; j4:=Instr(Mid(sS,j1,j2-j1),'(');
      if j4>0 then goto 3;
   4: if j2<k1 then goto 1; goto 7;
   5: ch:=sS[j2-1]; if (ch<>'E') {and (ch<>'e')} then goto 6;
      ch:=sS[j2-2]; j3:=Ord(ch);
      if (j3>47) and (j3<58) then goto 1;
   6: j2:=j2-1;     7:  SmartBoy:=j2;
   end;
 {**************************************}
      procedure Convert;
      label 1,2,3,4; var j: byte;
      begin q2:='n'; j3:=j2-i1; if j3>0 then
      begin {Контроль записи числа} Val(Mid(sS,i1,j3+1),a1,code);
      if code=0 then goto 1 else begin k7:=3; goto 3 end; end;
      ch:=sS[i1];
      if Ord(ch)>96 then goto 2;
      Val(ch,a1,code); goto 1;
   2: q2:='x'; if ch<>xS then goto 4; if n>0 then z1[2]:=1;
      z1[1]:=z1[n6]; for j:=3 to n5 do z1[j]:=0; goto 3;
   4: if ch=xS then begin a1:=x; goto 1 end;
      m1:=Instr(LS,ch); if m1>0 then
      begin for j:=1 to n5 do z1[j]:=a6[m1,j]; goto 3 end;
      m1:=Instr(Pm,ch); if m1>0 then begin a1:=Pn[m1]; goto 1 end;

      if ch='p' then begin a1:=pi; goto 1 end;
   1: q2:='n'; for j:=2 to n5 do z1[j]:=0; z1[1]:=a1;
   3: end;

{*************************** Алгебраическое умножение}
      procedure Prod; label 1,2,3,4,5,6,7,8,9,10,11,12;
      var i1,j1,k1: byte;
      begin for j1:=1 to n5 do b1[j1]:=t1[k5,j1];
  10: a1:=z1[1]; a3:=b1[1]; if c5='*' then goto 1;
      if abs(a1)>1E-10 then goto 7; a1:=0;
      if q2='n' then begin
      k7:=4; goto 11 {Деление на нуль} end;
      for j1:=1 to n5 do begin
          if abs(z1[j1])>1E-10 then goto 8; z1[j1]:=0;
          if abs(b1[j1])>1E-10 then goto 9; b1[j1]:=0 end;
      k7:=5; goto 11;
      {Нераскрытая неопределенность - ее порядок больше n}
   9: k7:=6; goto 11; {Неустранимая особенность}
   8: j9:=j1-1; m7:=m7+j9; if m>0 then goto 12;
      m8:=m8+1; if m8=5 then begin k7:=7; goto 11;
     {В формуле больше одной особой точки, это недопустимо} end;
      if m8=2 then goto 4;
  12: for k1:=j1 to n6 do
          begin z1[k1-j9]:=z1[k1]; b1[k1-j9]:=b1[k1] end;
      n:=n-j9; j9:=0; m5:=n-1; n5:=n+1; n6:=n+2; goto 10;
   7: a1:=1/a1; z1[1]:=-1;
      if q2='x' then goto 2; if q1='x'then goto 3;
   6: z1[1]:=a1*a3; goto 4;
   2: for k1:=0 to n do begin r1:=0; for i1:=0 to k1 do
          r1:=r1+z1[i1+1]*b1[k1-i1+1]; b1[k1+1]:=-a1*r1 end;
      for k1:=1 to n5 do z1[k1]:=b1[k1]; goto 4;
   3: for j1:=1 to n5 do z1[j1]:=b1[j1]*a1; q2:=q1; goto 4;

   1: if q1<>'n'then goto 5; if q2='n' then goto 6;
      for j1:=1 to n5 do z1[j1]:=z1[j1]*a3; goto 4;
   5: if q2='n' then goto 3; for i1:=n5 downto 1 do begin r1:=0;
      for j1:=1 to i1 do r1:=r1+z1[j1]*b1[i1-j1+1];
      z1[i1]:=r1 end; goto 4;
  11: {k7:=4}; 4: end;
{********  Конец описаний процедуры CT,
           начало работы *********}
      begin
      p:=pi; m:=Length(LS);
      m9:=n; m8:=0; k7:=0; j9:=0; m7:=0;
  25: m8:=m8+1; n:=m9+j9; n5:=n+1;
      if n<11 then goto 24;
      if j9=0 then begin
   {Порядок разложения n= ',n,' больше 10} k7:=8; goto 46 end;
      {Устранение особенности порядка j9
       требует порядка разложения n, большего nmax=10}
      k7:=50*n+j9; goto 46;
  24: if m>5 then begin {Число переменных m>5}
      k7:=10; goto 46 end;
      m5:=n-1; n6:=n+2; i2:=Length(sS); i1:=0;
      {ch:=xS; Confert(ch)} ; z1[n6]:=x{a1};
      c2:='elsct'; k4:=6; k3:=1; i1:=1; n3[1]:=i2;
      c1:='              '; q1:=' '; q2:=' ';
      q3:=c1; q4:=c1; goto 32;
  31: {L1:}  if k3=k4 then {глубина скобок k>5}
             begin k7:=11; goto 46 end;
      d1[k3]:=i1; k3:=k3+1; n3[k3]:=j2-1;
      i1:=Instr(Mid(sS,i1,j2-i1),'(')+i1;
  32: {L2:}  m3[k3]:=i1-1; c3:=sS[i1]; c1[k3]:='+';
      q4[k3]:='n'; for j1:=1 to n5 do a2[k3,j1]:=0;
      if c3='+' then goto 4; if c3<>'-' then goto 33; c1[k3]:='-';
   4: i1:=i1+1;
  33: {L3:}
   c4:='+-'; k1:=n3[k3]; n1[k3]:=SmartBoy;
      q3[k3]:='p';
  34: {L4:}  m2[k3]:=i1; c4:='*/'; k1:=j2; n2[k3]:=SmartBoy;
      c4:='^'; k1:=j2; if SmartBoy<n2[k3] then goto 41;
      if sS[j2]=')' then begin
      l1[k3]:=1; goto 31 end; Convert;
  35: {L5:}  q1:=q3[k3]; if q1='p' then goto 5;
      i2:=m2[k3]-1; c5:=sS[i2]; k5:=k3;
      Prod; if k7=4 then goto 46; if m8=2 then goto 25;
   5: j2:=n1[k3]; if n2[k3]=j2 then goto 6; i1:=n2[k3]+2;
      q3[k3]:=q2; for j1:=1 to n5 do t1[k3,j1]:=z1[j1]; goto 34;
   6: if c1[k3]='-' then goto 7;
      for j1:=1 to n5 do z1[j1]:=a2[k3,j1]+z1[j1]; goto 8;
   7: for j1:=1 to n5 do z1[j1]:=a2[k3,j1]-z1[j1];
   8: c5:=q4[k3]; if c5='x' then q2:='x'; if j2=n3[k3] then goto 9;
      i1:=n1[k3]+2; for j1:=1 to n5 do a2[k3,j1]:=z1[j1];
      q4[k3]:=q2; c1[k3]:=sS[j2+1]; goto 33;
   9: j2:=j2+1; k3:=k3-1; if k3=0 then goto 45;
      {***** Стандартные функции *****}
      i2:=l1[k3]; a1:=z1[1]; i3:=d1[k3]; j3:=m3[k3+1]-i3;
      if j3=0 then goto 10; if j3=3 then goto 11;
      j3:={Pos(Copy этот вариант не работает}
      Instr(Mid(c2,3,5),sS[i3+3])+6; goto 12;
  11: j3:=Instr(Mid(c2,1,5), sS[i3]);
      if (j3=3) and (sS[i3+1]='q') then j3:=6;
  12: case j3 of
   1: begin r4:=exp(a1); if q2='n' then goto 13;
      b1[1]:=r4; for j1:=1 to n5 do b1[j1]:=r4 end;
   2: begin if a1<=0 then begin k7:=12; goto 46
      {ln неположительного аргумента} end;
      r4:=ln(a1); if q2='n' then goto 13;
      b1[1]:=r4; a1:=1.0/a1; b1[2]:=a1; if n=1 then goto 14;
      for j1:=1 to m5 do b1[j1+2]:=-b1[j1+1]*a1*j1 end;
   3: begin r4:=sin(a1); if q2='n' then goto 13; a1:=cos(a1);
  15: if n=1 then goto 14; b1[1]:=r4; b1[2]:=a1;
      for j1:=1 to m5 do b1[j1+2]:=-b1[j1] end;
   4: begin r4:=cos(a1); if q2='n' then goto 13;
      a1:=-sin(a1); goto 15 end;
   5: begin r3:=cos(a1);
      if r3=0 then begin k7:=13; goto 46 {tn(pi/2)} end;
      r4:=sin(a1)/r3; if q2='n' then goto 13; a1:=1/(r3*r3);
      if n=1 then goto 14;
      b2[1]:=a1; k1:=2; b1[1]:=-sin(z1[1]); b1[2]:=-r3/2;
      r3:=-1/r3; for j1:=2 to n do begin k1:=k1+j1+j1;
      b1[j1+1]:=-b1[j1-1]/k1; b2[j1]:=b2[j1-1]*r3*j1 end;
      goto 16 end;
   6: begin if a1<0 then begin k7:=14; goto 46
      {корень из отрицательного числа} end;
      r4:=sqrt(a1); if q2='n' then goto 13;
      if a1=0 then begin k7:=15;
         goto 46 {производная корня в нуле} end
         else b1[1]:=r4; a1:=1/a1;
      for j1:=1 to n do b1[j1+1]:=b1[j1]*a1*(1.5-j1) end;
   7: begin r2:=1;
  17: r3:=1-a1*a1; if r3<=0 then begin k7:=16; goto 46
      {arcsin (arccos) аргумента по модулю большего 1} end;
      r3:=1.0/r3; r5:=sqrt(r3); r4:=arctan(a1*r5);
      if r2<0 then r4:=0.5*Pi-r4;
      if q2='n' then goto 13;  a1:=r2*r5;
      if n=1 then goto 14; b2[1]:=a1;
      b1[1]:=-2*z1[1]; b1[2]:=-1; for j1:=1 to m5 do
      begin b1[j1+2]:=0; b2[j1+1]:=b2[j1]*r3*(0.5-j1) end;
      goto 16 end;
   8: begin r2:=-1; goto 17 end;
   9: begin r4:=arctan(a1); if q2='n' then goto 13;
      r3:=1+a1*a1; a1:=1/r3;
      if n=1 then goto 14; b2[1]:=a1; b1[1]:=2*z1[1]; b1[2]:=1;
      for j1:=1 to m5 do begin b1[j1+2]:=0;
          b2[j1+1]:=-b2[j1]*a1*j1 end;
  16: {***** Свертка (n-1)-го порядка *****}
      for j1:=1 to m5 do begin b1[j1]:=j1*b1[j1]; i3:=n-j1;
      for k1:=j1 downto 1 do begin i9:=k1+i3; r1:=0;
      for j3:=1 to k1 do r1:=r1+b1[j3]*b2[i9-j3+1];
      b2[i9]:=r1/k1 end end; {***** Конец свертки *****}
      b1[1]:=r4; r3:=1; for j1:=1 to n do
      begin b1[j1+1]:=b2[j1]*r3; r3:=r3*j1 end end
      end {of case j3}; Compos(n);
  10: case i2 of 1: goto 35; 2: goto 42; 3: goto 43; 4: goto 44;
           end{of case};
  13: z1[1]:=r4; goto 10;
  14: z1[1]:=r4; z1[2]:=a1*z1[2]; goto 10;

  41: {******* Степенной множитель *******}
      q3[k3+k4]:='p'; e1[k3]:=j2;
  18: i1:=j2+2; c4:='^'; k1:=n2[k3];
      if sS[SmartBoy]=')' then
         begin l1[k3]:=2; goto 31 end; Convert;
  42: k5:=k3+k4; q1:=q3[k5]; if q1<>'p' then begin c5:='*';
      Prod; if k7>0 then goto 46; if m8=2 then goto 25 end;
      for j1:=1 to n5 do t1[k5,j1]:=z1[j1]; q3[k5]:=q2;
      if j2<>n2[k3] then goto 18; i1:=m2[k3]; j2:=e1[k3];
      if sS[j2]=')' then begin l1[k3]:=3; goto 31 end; Convert;
  43: a1:=z1[1]; k5:=k3+k4;
      if q3[k5]='n' then goto 19; i2:=4; j3:=2; goto 12;
  44: q1:=q3[k5]; c5:='*';
      Prod; if k7>0 then goto 46; if m8=2 then goto 25;
      i2:=1; a1:=z1[1]; j3:=1; goto 12;
  19: a4:=t1[k5,1]; n4:=Trunc(a4);
      r4:=Power(a1,a4); if k7>0 then goto 46;
      z1[1]:=r4; if q2='n' then goto 35;
      if a4=n4 then goto 20; if a1>0 then goto 21; if a4<n then
      begin k7:=20; goto 46 {Производная в точке 0 от степенной
      функции нецелого порядка меньшего n} end;
  22: for j1:=2 to n5 do z1[j1]:=0; goto 35;
  21: a3:=1/a1; b1[1]:=r4; for j1:=0 to m5 do
      b1[j1+2]:=b1[j1+1]*a3*(a4-j1); Compos(n); goto 35;
  20: if n4<0 then goto 21; if n4=0 then goto 22;
      if n4>n then begin if a1=0 then goto 22 else goto 21 end;
      if a1<>0 then goto 21; for j1:=1 to n5 do b1[j1]:=0; r3:=1;
      for j1:=1 to n4 do r3:=r3*j1; b1[n4+1]:=r3;
      Compos(n); goto 35;
      {***** Конец степенного множителя *****}
  45: {***** Засылка результатов *****}; a1:=z1[n6];
      for j1:=n5 downto 1 do z1[j1+1]:=z1[j1]; z1[1]:=a1;
  46: if (m>0) and (m7>0) then begin k7:=1000*m7+n
      {Ввиду наличия устранимых особенностей суммарного порядка
       m7, порядок разложения понижен от первоначально заданного
       до меньшего значения, находящегося в фактической
       переменной, имеющей в обращении к процедуре смысл n} end
      else begin n:=m9; n5:=n+1 end;
      bo:=k7>0; end{CT};
{****** Конец процедуры  СТ ******}

   procedure ferr(er: byte; var res: string3);
   var j: integer;
   begin
   if er>1000 then
   begin {err=21}
   j:=trunc(er/1000);
   er:=er-j*1000;
   writeln(' Ввиду наличия устранимых');
   writeln(' особенностей суммарного');
   writeln(' порядка ',er:3,' порядок');
   writeln(' разложения понижен с ');
   writeln(' первоначального до ', j:2);
   end else
   if er>50 then
   begin  {err=9}
   j:=trunc(er/50);
   er:=er-j*50;
   writeln('Устранение особенности порядка');
   writeln(er:3,' требует разложения порядка');
   writeln(j:2,' больше nmax=10');
   end else
    case  er of
   1,18: res:='  Недопустимая операция a^b:'+
              '  a<0, b - нецелое';
   2,17,19: res:='  Недопустимая операция a^b:'+
                 '  a=0, b<0';
   3: res:='  Неправильно записана числовая константа';
   4: res:='  Деление на константу, меньшую по модулю 1Е-10';
   5: res:='  Нераскрытая неопределенность -'+
           '  ее порядок больше n';
   6: res:='  Неустранимая особенность';
   7: res:='  В формуле больше одной особой точки,'+
           '  это недопустимо !';
   8: res:='  Порядок разложения  n  больше  nmax=10';
  10: res:='  Число переменных m>5';
  11: res:='  Глубина скобок k>6';
  12: res:='  Логарифм неположительного аргумента';
  13: res:='  Тангенс прямого угла = бесконечности';
  14: res:='  Корень квадратный из отрицательного числа';
  15: res:='  Производная от sqr(x) в точке x=0 равна бесконечности';
  16: res:='  arcsin (arccos) аргумента по модулю большего 1';
  20: res:='  Производная в точке x=0 от степенной функции'+
           '  нецелого порядка ';
  22: res:='  Нет обратной функции: df/dx(x0)=0';
  23: res:='  dG/dx в точке x0 равно'+
           '  целому положительному числу, что недопустимо';
  24: res:='  Требуемая точность не достигнута';
  25: res:='  Не выполнено условие  F(0,Y0)=0 ';
  26: res:='  Нет неявной функции: dF/dy(x0,y0)=0';
  27: res:='  Нет искомой функции: df1/dt(t0)=0';
  28: res:='  Нет функции, обратной к производной: df1/dx(x0)=0';

      end{case of}; end{ferr};

{ ********************************* }
{ Внутренние вспомогательные процедуры для unit Pac }

{ Вспомогательная процедура: получение полинома обратной функции,
  заданной своим полиномом z1, полученным процедурой CT, алгоритм А2}
  procedure Algor2(n: byte);
      {for procedure Invers and Inverstwo}
      label 1; var i1,i2,j1,k1: byte; r1: real;
                       a5,a7: array[0..10] of real;
      begin a7[1]:=1/z1[3]; if n=1 then goto 1;
      r1:=1; for j1:=2 to n do
          begin r1:=r1*j1; z1[j1+2]:=z1[j1+2]*r1 end;
      for i1:=2 to n do begin a5[1]:=z1[i1+2];
          for i2:=1 to i1-1 do
              begin for k1:=i2 downto 1 do begin r1:=0;
                     for j1:=1 to k1 do r1:=r1+a7[j1]*a5[k1+1-j1];
                     a5[k1+1]:=r1/k1 end;

              a5[1]:=z1[i1-i2+2] end;
          r1:=0; for j1:=1 to i1-1 do
          r1:=r1+a7[j1]*a5[i1+1-j1];a7[i1]:=-a7[1]*r1 end;
 1:  for i1:=1 to n do z1[i1+2]:=a7[i1]/i1;
     r1:=z1[1]; z1[1]:=z1[2]; z1[2]:=r1; end;


{Внутренняя процедура: разложение по x сложной функции F(x,y,u,v,..),
где функция y=y(x) задана свом полиномом в массиве a6[1,.],
a u,v,... -- функции от x,y списка L,
формулы которых заданы в массиве g[.]}
      procedure ExpltwoB(xS,yS: char; x,y: real; LS: string1; sS: string3;
                      gS: arrofstring; n: byte);
          var j,k,m: byte;
      begin m:=Length(LS);
      for k:=1 to m do begin CT(gS[k],yS,n,xS,x);
          for j:=1 to n+1 do a6[k+1,j]:=z1[j+1] end;
      CT(sS,yS+LS,n,xS,x) end;

{ Внутренняя процедура: получение полинома функции, обратной к F(x,y(x)),
  где функция y(x) задана не формулой, а полиномом,
  полученным процедурой CT и занесенным в массив a6[1,.]}

     procedure Inverstwo(xS,yS: char; x{,y}: real; sS: string3; n: byte);
     label 1;
     begin CT(sS,yS,n,xS,x); if bo then goto 1;
     if z1[3]=0 then begin k7:=26; {нет неявной функции}
     bo:=true end else Algor2(n);  1: end;

{ Внутренняя процедура: получение полинома функции, обратной
  к блочной функции F(x,y(x),q,r,...),
  где функция y(x) задана не формулой, а полиномом,
  полученным процедурой CT и занесенным в массив a6[1,.],
  а блоки q,r,...    суть функции от x,y; 09 декабря 2009}

     procedure InverstwoB(xS,yS: char; x{,y}: real;
                  BS: string1; sS: string3; gS: arrofstring; n: byte);
     label 1;  var i,j,m: byte;
     begin m:=Length(BS);
     for i:=1 to m do begin CT(gS[i],yS,n,xS,x);
     for j:=1 to n+1 do a6[i+1,j]:=z1[j+1] end;
     CT(sS,yS+BS,n,xS,x); if bo then goto 1;
     if z1[3]=0 then begin k7:=26; {нет неявной функции}
     bo:=true end else Algor2(n);  1: end;

{ ************************* }
{ Базовые процедуры получения полиномов Тейлора (внешние) }

{ 1. Получение полинома Тейлора (= разложение) явной функции }
{1e}  procedure Explicit(xS: char; x: real; sS: string3; n: byte;
                     var res: string3; var w: arrofreal);
            var j: byte;
      begin CT(sS,'',n,xS,x);
      if bo then ferr(k7,res) else begin res:='';
      for j:=1 to n+2 do w[j]:=z1[j] end end;

{1p}  procedure ExplicitP(xS: char; x: real; sS: string3; n: byte;
                 PS: string1; Zn: arrofreal1;
                 var res: string3; var w: arrofreal);
      begin Par(PS,Zn); Explicit(xS,x,sS,n,res,w) end;

      { Разложение полной функции F(x,u1(x),...,um(x))
           (m<=5) (в демонстрационной версии m=1) }
{1b}  procedure ExplicitB{Whole}(xS: char; x: real; BS: string1;
                    sS: string3;
                      gS: arrofstring; n: byte;
                      var res: string3; var w: arrofreal);
      label 1; var i,j,m0: byte;
      begin m0:=Length(BS);
      for i:=1 to m0 do begin CT(gS[i],'',n,xS,x);
      if bo then goto 1; for j:=1 to n+1 do a6[i,j]:=z1[j+1] end;
      CT(sS,BS,n,xS,x);
  1:  if bo then ferr(k7,res) else
      begin res:=''; for j:=1 to n+2 do w[j]:=z1[j] end end;

{1pb} procedure ExplicitPB(xS: char; x: real; BS: string1;
                     sS: string3;
                      gS: arrofstring; n: byte;
                      PS: string1; Zn: arrofreal1;
                      var res: string3; var w: arrofreal);
      begin Par(Ps,Zn); ExplicitB(xS,x,BS,sS,gS,n,res,w) end;

{ 2. Разложение обратной функции *************************}
{2e}  procedure Inversf(yS: char; y: real; sS: string3; n: byte;
                    var res: string3; var w: arrofreal);
      label 1; var j: byte; r1: real;
      begin CT(sS,'',n,yS,y); if bo then goto 1;
      if n=0 then begin r1:=z1[1]; z1[1]:=z1[2]; z1[2]:=r1;
                        goto 1 end; if z1[3]=0 then
      begin {Нет обратной функции: df/dx(x0)=0}
      k7:=22; bo:=true; goto 1 end; Algor2(n);
  1:  if bo then ferr(k7,res) else
         begin res:=''; for j:=1 to n+2 do w[j]:=z1[j] end end;

{2p}  procedure InversfP(yS: char; y: real; sS: string3; n: byte;
                    PS: string1; Zn: arrofreal1;
                    var res: string3; var w: arrofreal);
      begin Par(PS,Zn); Inversf(yS,y,sS,n,res,w) end;

{2b}  procedure InversfB(yS: char; y: real;
          BS: string1; sS: string3; gS: arrofstring; n: byte;
                  var res: string3; var w: arrofreal);
      label 1; var j: byte; r1: real;
      begin
      ExplicitB(yS,y,BS,sS,gS,n,res,z1); if bo then goto 1;
      if n=0 then begin r1:=z1[1]; z1[1]:=z1[2]; z1[2]:=r1; goto 1 end;
      if z1[3]=0 then {Нет обратной функции: df/dx(x0)=0}
      begin k7:=22; bo:=true; goto 1 end; Algor2(n);
  1:  if bo then ferr(k7,res) else
      begin res:=''; for j:=1 to n+2 do w[j]:=z1[j] end end;

{2pb} procedure InversfPB(yS: char; y: real; BS: string1; sS: string3;
                  gS: arrofstring; n: byte;
                  PS: string1; Zn: arrofreal1;
                  var res: string3; var w: arrofreal);
      begin Par(PS,Zn); InversfB(yS,y,BS,sS,gS,n,res,w) end;

{ 3. Разложение неявной функции ******************* }
{3e}  procedure Implicit(xS,yS: char; x,y: real; sS: string3; n: byte;
                  var res: string3; var w: arrofreal);
      label 1,2; var i: byte; a0: real;
      begin a6[1,1]:=x; CT(sS,xS,1,yS,y); if bo then goto 1;
      a0:=z1[3]; if a0=0 then
      begin {Нет неявной функции: dF/dy(x0,y0)=0}
      bo:= true; k7:=26; goto 1 end;  a0:=1/a0; a6[1,1]:=z1[1];
      if n=0 then begin bo:=false; goto 2 end;
      {LS:=yS;} for i:=2 to n+1 do
      begin a6[1,i]:=0; CT(sS,yS,i-1,xS,x); if bo then goto 1;
      a6[1,i]:=-z1[i+1]*a0; end;
  2:  for i:=2 to n+2 do z1[i]:=a6[1,i-1]; z1[1]:={b0}x;
  1:  if bo then ferr(k7,res) else
         begin res:=''; for i:=1 to n+2 do w[i]:=z1[i] end end;

{3p}  procedure ImplicitP(xS,yS: char; x,y: real; sS: string3; n: byte;
                      PS: string1; Zn: arrofreal1;
                  var res: string3; var w: arrofreal);
      begin Par(PS,Zn); Implicit(xS,yS,x,y,sS,n,res,w) end;

{3b}  procedure ImplicitB(xS,yS: char; x,y: real;
                   BS: string1; sS: string3; gS: arrofstring; n: byte;
                  var res: string3; var w: arrofreal);
      label 1; var i,j,m,k: byte; a0{,x0}: real;
      begin m:=Length(BS)+1;
      for i:=m downto 2 do begin a6[1,1]:=x; a6[1,2]:=0;
      gS[i]:=gS[i-1]; CT(gS[i],xS,1,yS,y);
      if bo then goto 1; a6[i,1]:=z1[2]; a6[i,2]:=z1[3] end;
      gS[1]:=xS; CT(sS,xS+BS,1,yS,y);
      if bo then goto 1; a0:=z1[3]; if a0=0 then begin
      {Нет неявной функции: dF/dy=0} bo:=true; k7:=26; goto 1 end;
      a0:=1/a0; {x0:=x;}

      BS:=yS+BS; gS[1]:=yS; a6[1,1]:=y;
      for i:=2 to n+1 do begin a6[1,i]:=0; for k:=2 to m do
      begin CT(gS[k],yS,i-1,xS,x); if bo then goto 1;
      a6[k,i]:=z1[i+1] end{k}; CT(sS,BS,i-1,xS,x); if bo then goto 1;
      a6[1,i]:=-z1[i+1]*a0;
      for k:=2 to m do begin CT(gS[k],yS,i-1,xS,x);
      if bo then goto 1; a6[k,i]:=z1[i+1] end{k} end{i};
      for i:=2 to n+2 do z1[i]:=a6[1,i-1]; z1[1]:=x{0};
   1: if bo then ferr(k7,res) else
         begin res:=''; for i:=1 to n+2 do w[i]:=z1[i] end  end;

{3pb} procedure ImplicitPB(xS,yS: char; x,y: real;
                   BS: string1; sS: string3; gS: arrofstring; n: byte;
                   PS: string1; Zn: arrofreal1;
                  var res: string3; var w: arrofreal);
      begin Par(PS,Zn); ImplicitB(xS,yS,x,y,BS,sS,gS,n,res,w) end;

{ 4. Разложение функции, заданной параметрически *** }
{4e}  procedure Paramet(tS: char; t: real; fS1,fS2: string3; n: byte;
                       var res: string3; var w: arrofreal);
      label 1; var i,i1,i3,i9,j1,j3,k1: byte;
                  a1,a2,r1: real; a5: array[0..10] of real;
      begin Inversf(tS,t,fS1,n,res,w);
      if k7=22 then begin {Нет искомой функции, f1'(t0)=0}
      bo:=true; k7:=27; goto 1 end;
      if bo then goto 1;
      for j1:=1 to n do a5[j1]:=z1[j1+2];
      a2:=z1[1]; CT(fS2,'',n,tS,t); if bo then goto 1;
      a1:=z1[2]; i:=1; for j1:=1 to n do
      begin i:=i*j1; b1[j1+1]:=z1[j1+2]*i; z1[j1+1]:=a5[j1] end;
      Compos(n); if n>0 then for j1:=n+1 downto 1 do
      z1[j1+1]:=z1[j1];  z1[1]:=a2; z1[2]:=a1;
  1:  if bo then ferr(k7,res) else
         begin res:=''; for i:=1 to n+2 do w[i]:=z1[i] end  end;

{4p}  procedure ParametP(tS: char; t: real; fS1,fS2: string3; n: byte;
                            PS: string1; Zn: arrofreal1;
                       var res: string3; var w: arrofreal);
       begin Par(PS,Zn); Paramet(tS,t,fS1,fS2,n,res,w) end;

{4b}  procedure ParametB(tS: char; t: real; fS1,fS2: string3;
                       BS: string1;
                        gS: arrofstring; n: byte;
                       var res: string3; var w: arrofreal);
      label 1; var i,i1,i3,i9,j1,j3,k1: byte;
                  a1,a2,r1: real; a5: array[1..10] of real;

      begin InversfB(tS,t,BS,fS1,gS,n,res,w);
           {Там же получен массив а6}

      if k7=22 then begin {Нет искомой функции, f1'(t0)=0}
      bo:=true; k7:=27; goto 1 end;
      if bo then goto 1;
      for j1:=1 to n do a5[j1]:=z1[j1+2];
      a2:=z1[1]; CT(fS2,BS,n,tS,t); if bo then goto 1;
      a1:=z1[2]; i:=1; for j1:=1 to n do
      begin i:=i*j1; b1[j1+1]:=z1[j1+2]*i; z1[j1+1]:=a5[j1] end;
      Compos(n); if n>0 then for j1:=n+1 downto 1 do
      z1[j1+1]:=z1[j1];  z1[1]:=a2; z1[2]:=a1;
  1:  if bo then ferr(k7,res) else
         begin res:=''; for i:=1 to n+2 do w[i]:=z1[i] end  end;

{4pb} procedure ParametPB(tS: char; t: real; fS1,fS2: string3;
                        BS: string1;
                        gS: arrofstring; n: byte;
                            PS: string1; Zn: arrofreal1;
                       var res: string3; var w: arrofreal);
      begin Par(Ps,Zn); ParametB(tS,t,fS1,fS2,BS,gS,n,res,w) end;


{ 5.  ОДУ 1-го порядка: разложение интегральной кривой,
         заданной дифференциальным уравнением  *****}
{5e}  procedure Curve(xS,yS: char; x,y: real; sS: string3; n: byte;
                       var res: string3; var w: arrofreal);
      label 1; var i,j: byte;
      begin z1[1]:=x; a6[1,1]:=y; if n=0 then goto 1;
      for i:=0 to n do begin
      CT(sS,yS,i,xS,x); if bo then goto 1;
      j:=i+2; a6[1,j]:=z1[j]/(i+1) end;
      for j:=2 to n+2 do z1[j]:=a6[1,j-1];
 1:   if bo then ferr(k7,res) else
         begin res:=''; for i:=1 to n+2 do w[i]:=z1[i] end end;

{5p}  procedure CurveP(xS,yS: char; x,y: real; sS: string3; n: byte;
                                  PS: string1; Zn: arrofreal1;
                       var res: string3; var w: arrofreal);
      begin Par(PS,Zn); Curve(xS,yS,x,y,sS,n,res,w) end;

{5b}  procedure CurveB(xS,yS: char; x,y: real; BS: string1; sS: string3;
         gS: arrofstring; n: byte; var res: string3; var w: arrofreal);
      label 1; var i,j: byte;
      begin z1[1]:=x; a6[1,1]:=y; if n=0 then goto 1;
      for i:=0 to n do begin
      ExpltwoB(xS,yS,x,y,BS,sS,gS,n); if bo then goto 1;
      j:=i+2; a6[1,j]:=z1[j]/(i+1) end;
      for j:=2 to n+2 do z1[j]:=a6[1,j-1];
 1:   if bo then ferr(k7,res) else
        begin res:=''; for i:=1 to n+2 do w[i]:=z1[i] end end;

{5pb} procedure CurvePB(xS,yS: char; x,y: real; BS: string1; sS: string3;
                        gS: arrofstring; n: byte;
                        PS: string1; Zn: arrofreal1;
                  var res: string3; var w: arrofreal);
        begin Par(Ps,Zn); CurveB(xS,yS,x,y,BS,sS,gS,n,res,w) end;

{ 6. Разложение векторной интегральной кривой,
            заданной системой дифференциальных уравнений ****}
{6e}  procedure Curves(xS: char; x: real; LS: string1;
            Yn: arrofreal1; gS: arrofstring; n: byte;
            var res: string3; var sf: arrofreal2);
      label 1; var i,{j,}k: byte; m: integer;
      begin m:=Length(LS);
      for i:=1 to m do a6[i,1]:=Yn[i];
      if n=0 then begin bo:=false; goto 1 end;
      for k:=1 to n do
          begin {k:=j-2;} for i:=1 to m do
                begin CT(gS[i],LS,k-1,xS,x); if bo then goto 1;
                      a6[i,k+1]:=z1[k+1]/k end end;
  1:  if bo then ferr(k7,res) else
        begin res:='';
        for k:=1 to m do for i:=1 to n+1 do sf[k,i]:=a6[k,i];
         end end;

{6p}  procedure CurvesP(xS: char; x: real; LS: string1;
            Yn: arrofreal1; gS: arrofstring; n: byte;
                              PS: string1; Zn: arrofreal1;
            var res: string3; var sf: arrofreal2);
         begin Par(PS,Zn); Curves(xS,x,LS,Yn,gS,n,res,sf) end;

{6b}  procedure CurvesB(xS: char; x: real; LS: string1;
            Yn: arrofreal1; gS: arrofstring; n: byte;
            BS: string1; vS: arrofstring;
            var res: string3; var sf: arrofreal2);
      label 1; var i{,j},k,m,mb: byte; {m: integer;}
      begin m:=Length(LS); mb:=Length(BS);
      for i:=1 to m do a6[i,1]:=Yn[i];
      if n=0 then begin bo:=false; goto 1 end;
      for k:=1 to n do
          begin {k:=j-2;}
        for i:=1 to mb do begin CT(vS[i],LS,k-1,xS,x);
            a6[i+m,k]:=z1[k+1] end;
        for i:=1 to m do  begin
            CT(gS[i],LS+BS,k-1,xS,x); if bo then goto 1;
            a6[i,k+1]:=z1[k+1]/k end end;
  1:  if bo then ferr(k7,res) else
        begin res:='';
        for k:=1 to m do for i:=1 to n+1 do sf[k,i]:=a6[k,i];
        end end;

{6pb} procedure CurvesPB(xS: char; x: real; LS: string1;
            Yn: arrofreal1; gS: arrofstring; n: byte;
          BS: string1; vS: arrofstring; PS: string1; Zn: arrofreal1;
            var res: string3; var sf: arrofreal2);
         begin Par(PS,Zn); CurvesB(xS,x,LS,Yn,gS,n,BS,vS,res,sf) end;

{ 7.  Разложение интегральной кривой, заданной
       дифференциальным уравнением высокого поряка m  (m<=5) }
{7e}  procedure Curveh(xS: char; x: real;
                LS: string1; Yn: arrofreal1; sS: string3; n: byte;
                var res: string3; var w: arrofreal);
      label 1;
      var i,m: byte; gs: arrofstring;
      begin m:=Length(LS);
      for i:=1 to m-1 do gS[i]:=LS[i+1]; gS[m]:=sS;
      Curves(xS,x,LS,Yn,gS,n,res,a6); if bo then goto 1;
      w[1]:=x; for i:=2 to n+2 do w[i]:=a6[1,i-1]; 1: end;

{7p}  procedure CurvehP(xS: char; x: real;
                LS: string1; Yn: arrofreal1; sS: string3; n: byte;
                  PS: string1; Zn: arrofreal1;
                var res: string3; var w: arrofreal);
      begin Par(PS,Zn); Curveh(xS,x,LS,Yn,sS,n,res,w) end;

{7b}  procedure CurvehB(xS: char; x: real;
                LS: string1; Yn: arrofreal1; sS: string3; n: byte;
                BS: string1; vS: arrofstring;
                var res: string3; var w: arrofreal);
      label 1;
      var i,m: byte; gs: arrofstring;
      begin m:=Length(LS);
      for i:=1 to m-1 do gS[i]:=LS[i+1]; gS[m]:=sS;
      CurvesB(xS,x,LS,Yn,gS,n,BS,vS,res,a6); if bo then goto 1;
      w[1]:=x; for i:=2 to n+2 do w[i]:=a6[1,i-1]; 1: end;

{7pb} procedure CurvehPB(xS: char; x: real;
                LS: string1; Yn: arrofreal1; sS: string3; n: byte;
                BS: string1; vS: arrofstring;
                PS: string1; Zn: arrofreal1;
                var res: string3; var w: arrofreal);
       begin Par(PS,Zn); CurvehB(xS,x,LS,Yn,sS,n,BS,vS,res,w) end;


{ 8. Разложение интегральной кривой
      для сингулярного ОДУ m-го порядка (m<=5) *******}
{8e}  procedure SingODE(xS: char; LS: string1; Yn: arrofreal1;
                        sS: string3; n: byte;
                        var res: string3; var w: arrofreal);
      label 1,2,3;  var i,j,n0,m0,k,m: integer; a0: real;
      begin
{Надо было бы присвоить xS значение = 0, но это не делается:
   в PASCAL по умолчанию считается, что априори все переменные обнуляются}
      m:=Length(LS);
      Par(LS,Yn);
      CT(sS,'',0,xS,0); if bo then goto 1;
      if abs(z1[2])>1E-8 then begin bo:=true; k7:=25; goto 1 end;
      a0:=z1[3]; j:=Trunc(a0); z1[1]:=0; {x0=0 по требованию}
      if (a0>0) and (j=a0) and (j<n+2-m) then
      begin bo:=true; k7:=23;
      {dF/d',xs,'=',j,' есть целое положительное:
             неединственность решения} goto 1 end;
      for i:=1 to m do a6[i,1]:=Yn[i];
      n0:=n-m+2; m0:=0; if n0<2 then
      begin if n=0 then goto 3; m0:=-n0; n0:=1; goto 2 end;
      for j:=2 to n0 do begin k:=j-1;
      for i:=2 to m do a6[i-1,j]:=a6[i,k]/k;
      a6[m,j]:=0; CT(sS,LS,k,xS,0); if bo then goto 1;
      a6[m,j]:=z1[j+1]/(k-a0) end; {n:=n0+m-2;}
  2:  for j:=n0 to n do begin for i:=2 to m-m0 do
      a6[i-1,j+1]:=a6[i,j]/j; m0:=m0+1 end;
  3:  for j:=1 to n+1 do z1[j+1]:=a6[1,j];
  1:  if bo then ferr(k7,res) else
        begin res:=''; for i:=1 to n+2 do w[i]:=z1[i] end end;

{8p}  procedure SingODEP(xS: char; LS: string1; Yn: arrofreal1;
                        sS: string3; n: byte;
                  PS: string1; Zn: arrofreal1;
                        var res: string3; var w: arrofreal);
        begin Par(PS,Zn); SingODE(xS,LS,Yn,sS,n,res,w) end;

{8b}  procedure SingODEB(xS: char; LS,BS: string1; Yn: arrofreal1;
                        sS: string3; gS: arrofstring; n: byte;
                        var res: string3; var w: arrofreal);
      label 1,2,3;  var i,j,n0,m0,k,m,mb: integer; a0: real;
      begin
      m:=Length(LS); mb:=Length(BS);
      ExplicitPB(xS,0,BS,sS,gS,0,LS,Yn,res,z1); if bo then goto 1;
      if abs(z1[2])>1E-8 then begin bo:=true; k7:=25; goto 1 end;
      a0:=z1[3]; j:=Trunc(a0); z1[1]:=0; {x0=0 по требованию}
      if (a0>0) and (j=a0) and (j<n+2-m) then
      begin bo:=true; k7:=23;
      {dF/d',xs,'=',j,' есть целое положительное:
             неединственность решения} goto 1 end;
      for i:=1 to m do a6[i,1]:=Yn[i];
      n0:=n-m+2; m0:=0; if n0<2 then
      begin if n=0 then goto 3; m0:=-n0; n0:=1; goto 2 end;
      for j:=2 to n0 do begin k:=j-1;

      for i:= m+1 to m+mb do begin CT(gS[i],LS,k-1,xS,0);
      a6[i,k]:=z1[j] end;

      for i:=2 to m do a6[i-1,j]:=a6[i,k]/k;
      a6[m,j]:=0; CT(sS,LS+BS,k,xS,0); if bo then goto 1;
      a6[m,j]:=z1[j+1]/(k-a0) end{j}; {n:=n0+m-2;}
  2:  for j:=n0 to n do begin for i:=2 to m-m0 do
      a6[i-1,j+1]:=a6[i,j]/j; m0:=m0+1 end;
  3:  for j:=1 to n+1 do z1[j+1]:=a6[1,j];
  1:  if bo then ferr(k7,res) else
        begin res:=''; for i:=1 to n+2 do w[i]:=z1[i] end end;


{ Разложение функции, обратной к производной *************}
{e}   procedure Inversd(yS: char; y: real; sS: string3; n: byte;
                    var res: string3; var w: arrofreal);
      label 2; var j: byte; r1: real;
      begin CT(sS,'',n+1,yS,y); if bo then goto 2;
      for j:=1 to n+1 do z1[j+1]:=j*z1[j+2];
      {Comment. Увеличение порядка n на единицу
                и преобразование массива z1 связано с тем,
                что требуется обращение не самой функции f,
                а ее производной f'}
      if n=1 then begin r1:=z1[1]; z1[1]:=z1[2]; z1[2]:=r1;
                        goto 2 end; if z1[3]=0 then
      begin {Нет функции, обратной к производной: df1/dx(x0)=0}
      k7:=28; bo:=true; goto 2 end; Algor2(n);
  2:  if bo then ferr(k7,res) else begin res:='';
      for j:=1 to n+2 do w[j]:=z1[j] end end;

{p}   procedure InversdP(yS: char; y: real; sS: string3; n: byte;
                    PS: string1; Zn: arrofreal1;
                    var res: string3; var w: arrofreal);
      begin Par(PS,Zn); Inversd(yS,y,sS,n,res,w) end;

{b}  procedure InversdB(yS: char; y: real;
            BS: string1; sS: string3; gS: arrofstring; n: byte;
                  var res: string3; var w: arrofreal);
      label 1; var j: byte; r1: real;
      begin
      ExplicitB(yS,y,BS,sS,gS,n+1,res,z1); if bo then goto 1;
      for j:=1 to n+1 do z1[j+1]:=j*z1[j+2];
      if n=1 then begin r1:=z1[1]; z1[1]:=z1[2]; z1[2]:=r1; goto 1 end;
      if z1[3]=0 then {Нет обратной функции: df/dx(x0)=0}
      begin k7:=22; bo:=true; goto 1 end; Algor2(n);
  1:  if bo then ferr(k7,res) else
      begin res:=''; for j:=1 to n+2 do w[j]:=z1[j] end end;



end{unit}.


 {***************** Присваивание (внешняя процедура) }
      procedure Confert(ch: char); begin case ch of
   'x': a1:=x; 'o': a1:=o; 'y': a1:=y; 'z': a1:=z;
   'u': a1:=u; 'v': a1:=v; 't': a1:=t; 's': a1:=s;
   'w': a1:=w; 'h': a1:=h; 'a': a1:=a; 'b': a1:=b;
   'c': a1:=c; 'q': a1:=q; 'r': a1:=r; 'g': a1:=g;
   'd': a1:=d; 'e': a1:=e; 'f': a1:=f; {'p': a1:=p;}
       end{case of} end;
 {***************** Присваивание (внешняя процедура) }
      procedure Conferf(ch: char); begin case ch of
   'x': x:=a1; 'o': o:=a1; 'y': y:=a1; 'z': z:=a1;
   'u': u:=a1; 'v': v:=a1; 't': t:=a1; 's': s:=a1;
   'w': w:=a1; 'h': h:=a1; 'a': a:=a1; 'b': b:=a1;
   'c': c:=a1; 'g': g:=a1; 'q': q:=a1; 'r': r:=a1;
   'd': d:=a1; 'e': e:=a1; 'f': f:=a1; {'p': p:=a1;}
       end{case of} end;

{****  Разложение интегральной кривой, заданной
       дифференциальным уравнением высокого поряка m  (m<=5) }
      procedure Curveh(xS: char; x: real;
                LS: string; Yn: arrofreal1; sS: string; n: byte;
                var res: string; var w: arrofreal);
      label 1,2;
      var i,j,k: byte; m,m0,n0: integer;
      begin m:=Length(LS); for i:=1 to m do a6[i,1]:=Yn[i];
      n0:=n-m+2; m0:=0;
      if n0<2 then begin bo:=false;
                         z1[1]:=x; if n=0 then goto 1;
                         m0:=-n0; n0:=1; goto 2 end;
      for k:=0 to n do
          begin CT(sS,LS,k,xS,x); if bo then goto 1;
                j:=k+2; for i:=2 to m do
                            a6[i-1,j]:=a6[i,k+1]/(k+1);
                            a6[m,j]:=z1[j]/(k+1) end;
  2:  for j:=n0 to n+1 do
          begin for i:=2 to m-m0 do a6[i-1,j+1]:=a6[i,j]/j;
                m0:=m0+1 end;
      for j:=2 to n+2 do z1[j]:=a6[1,j-1];
  1:  if bo then ferr(k7,res) else
        begin res:=''; for i:=1 to n+2 do w[i]:=z1[i] end end;





