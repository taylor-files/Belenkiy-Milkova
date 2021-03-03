
program basb;
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

  begin ClrScr; goto 7;


 1: { Блочная явная функция }
      xS:='x'; BS:='qr'; gS[1]:='2*x^3'; gS[2]:='5*x';
      sS:='x^2-q+r'; n:=4; x:=0;
      Prov(2); ExplicitB(xS,x,BS,sS,gS,n,res,cf); goto 15;

 2:  { Обратная к блочной функции }
     yS:='y'; BS:='qr'; sS:='q+r+y^2-17';
     gS[1]:='x^2'; gS[2]:='y^2';
     n:=4; x:=4; y:=7; Prov(Length(BS));

     InversfB(yS,y,BS,sS,gS,n,res,cf); xS:='x'; goto 15;

 3:  { Блочная неявная функция }
      xS:='x'; yS:='y'; BS:='qr';  n:=4;
      gS[1]:='2*sin(x*y)'; gS[2]:='log(x+y)';
      sS:='exp(y^2-q+r)'; x:=1; y:=0;  Prov(Length(BS));
      ImplicitB(xS,yS,x,y,BS,sS,gS,n,res,cf); goto 15;

 4:  { Блочная параметрическая функция }
     xS:='t'; BS:='qr'; fS1:='1+q'; fS2:='r'; n:=5; t:=-1/2;
     gS[1]:='2*t'; gS[2]:='t^2';
     ParametB(xS,t,fS1,fS2,BS,gS,n,res,cf); xS:='x'; goto 15;

 5:  { ОДУ первого порядка с блочной правой частью}
     xS:='x'; yS:='y'; x:=0; y:=1; n:=4;
     BS:='qr'; gS[1]:='x'; gS[2]:='y';
     sS:='exp(q)-exp(x)-r'; {y=exp(-x)}
     CurveB(xS,yS,x,y,BS,sS,gS,n,res,cf); goto 15;

 6:  { Блочная система ОДУ (m<=5) }
      xS:='x'; LS:='yuv'; x:=0; Yn[1]:=1; Yn[2]:=1; Yn[3]:=1;
      n:=4;
      gS[1]:='q-v+x'; gS[2]:='(q-r+x)/2'; gS[3]:='y+q+r-2*u+x';
      BS:='qr'; vS[1]:='u+v-x'; vS[2]:='u-v';
      CurvesB(xS,x,LS,Yn,gS,n,BS,vS,res,sf); goto 17;

 7:  { ОДУ высокого порядка m  (m<=5)} {ODE of order m}
      xS:='x'; LS:='yu'; x:=0; Yn[1]:=1; Yn[2]:=0; n:=6;
      BS:='qr'; vS[1]:='x+y'; vS[2]:='x+2*y';
      sS:='q-r'; CurvehB(xS,x,LS,Yn,sS,n,BS,vS,res,cf); goto 15;
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



