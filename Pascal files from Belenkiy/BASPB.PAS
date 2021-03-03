program baspb;
{ Получение полинома Тейлора для функций,
  заданых различными способами }
  uses crt,orbitap,control;

{Для справки:
   Interface of unit Orbita
      type
      string1=string[6];
      string2=string[10];
      string3=string[100];

      arrofstring=array [0..5] of string;
      arrofreal=array[0..13] of real;
      arrofreal1=array[0..5] of real;
      arrofreal2=array[0..10,0..12] of real;}

  label 1,2,3,4,5,6,7,15,16,17,18;
  var
  x,y,t,eps: real;
  xS,yS,q1: char;
  n,i,j,k,m,kc: byte;
  vS,gS: arrofstring;
  fS1,fS2,fS,sS,res: string3;
  BS,PS,LS: string1;
  cf: arrofreal;
  sf: arrofreal2;
  Yn,Zn: arrofreal1;

  procedure Prov(m: byte);
  label 1,2;
  begin kc:=CSint(sS,res); if kc>0 then begin
  writeln('   Ошибка в записи формулы sS, k = ',kc);
  goto 1; end; if m=0 then goto 2;
  for i:=1 to m do begin kc:=CSint(gS[i],res); if kc>0 then begin
  writeln('   Ошибка в записи формулы gs[',i,'], k =',kc);
 1:  write(res); read(q1); goto 2 end end; 2: end;

  {begin ClrScr;
  fS:=')';
  write(CSint(fS)); read(q1); end.
  {Проверка работы функции Err}

  begin ClrScr; goto 1;


 1: { 1pb Блочная явная функция с параметрами }
      xS:='x'; BS:='qr'; gS[1]:='2*x^3+a-8'; gS[2]:='5*x+b-4';
      sS:='x^2-q+r*2*b/a'; n:=4; x:=0;
      PS:='ab'; Zn[1]:=8; Zn[2]:=4;
      Prov(2); ExplicitPB(xS,x,BS,sS,gS,n,PS,Zn,res,cf); goto 15;

 2:  { 2pb  Обратная к блочной функции с параметрами}
     yS:='y'; BS:='qr'; sS:='q+r+y^2-17+a-2*b';
     gS[1]:='x^2+a-8'; gS[2]:='y^2+b-4';
     PS:='ab'; Zn[1]:=8; Zn[2]:=4;
     n:=4; x:=4; y:=7; Prov(Length(BS));

     InversfPB(yS,y,BS,sS,gS,n,PS,Zn,res,cf); xS:='x'; goto 15;

 3:  { 3pb Блочная неявная функция с параметрами}
      xS:='x'; yS:='y'; BS:='qr';  n:=4;
      gS[1]:='2*sin(x*y)+a-8'; gS[2]:='log(x+y)+b-4';
      sS:='exp(y^2-q+r)*2*b/a'; x:=1; y:=0;  Prov(Length(BS));
      PS:='ab'; Zn[1]:=8; Zn[2]:=4;
      ImplicitPB(xS,yS,x,y,BS,sS,gS,n,PS,Zn,res,cf); goto 15;

 4:  { Блочная параметрическая функция с параметрами}
     xS:='t'; BS:='qr'; fS1:='1+q+a-8'; fS2:='r+b-4'; n:=5; t:=-1/2;
     gS[1]:='2*t+a-2*b'; gS[2]:='t^2*2*b/a';
     PS:='ab'; Zn[1]:=8; Zn[2]:=4;
     ParametPB(xS,t,fS1,fS2,BS,gS,n,PS,Zn,res,cf); xS:='x'; goto 15;

 5:  { ОДУ первого порядка с блочной правой частью и с параметрами}
     xS:='x'; yS:='y'; x:=0; y:=1; n:=4;
     BS:='qr'; gS[1]:='x+a-8'; gS[2]:='y+b-4';
     PS:='ab'; Zn[1]:=8; Zn[2]:=4;
     sS:='exp(q+a-2*b)-exp(x)-r'; {y=exp(-x)}
     CurvePB(xS,yS,x,y,BS,sS,gS,n,PS,Zn,res,cf); goto 15;

 6:  { Блочная система ОДУ (m<=5) с параметрами}
      xS:='x'; LS:='yuv'; x:=0; Yn[1]:=1; Yn[2]:=1; Yn[3]:=1;
      n:=4;
{      gS[1]:='u'; gS[2]:='v'; gS[3]:='y';
      gS[1]:='q-v+x'; gS[2]:='(q-r+x)/2'; gS[3]:='y+q+r-2*u+x';
      BS:='qr'; vS[1]:='u+v-x'; vS[2]:='u-v';   без параметров  }
      gS[1]:='q-v+x+a-8'; gS[2]:='(q-r+x)/2+b-4'; gS[3]:='y+q+r-2*u+x';
      BS:='qr'; vS[1]:='u+v-x+a/b-2'; vS[2]:='u-v+a-2*b';
      PS:='ab'; Zn[1]:=8; Zn[2]:=4;
      CurvesPB(xS,x,LS,Yn,gS,n,BS,vS,PS,Zn,res,sf); goto 17;

 7:  { ОДУ высокого порядка m  (m<=5)} {ODE of order m}
      xS:='x'; LS:='yu'; x:=0; Yn[1]:=1; Yn[2]:=0; n:=6;
      BS:='qr'; vS[1]:='x+y+a-8'; vS[2]:='x+2*y+b-4';
      PS:='ab'; Zn[1]:=8; Zn[2]:=4;
      sS:='q-r+a-2*b';
      CurvehPB(xS,x,LS,Yn,sS,n,BS,vS,PS,Zn,res,cf); goto 15;
      {Ответ cos(x)}

15:   if res <> '' then writeln('Ошибка:',res) else
         begin writeln(' ',xS,' = ',cf[1]); writeln('Ck = ',cf[2]);
         for i:=3 to n+2 do writeln('     ',cf[i]) end; goto 16;

17:   if res <> '' then writeln('Ошибка:',res) else
      begin m:=Length(LS); j:=1;
      writeln('x = ',x:16); write('C = ');
      for k:=1 to m do write(sf[k,1]:16,'    '); writeln;
      for i:=2 to n+1 do begin for k:=1 to m do
      write('    ',sf[k,i]:16); writeln end end; goto 16;

16:   read(q1);


end.






