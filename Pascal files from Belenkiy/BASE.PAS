

program base;
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


  label 1,2,3,4,5,6,7,8,15,16,17,18;
  var
  x,y,t: real;
  xS,yS,q1: char;
  n,i,j,k,m,kc: byte;
  gS: arrofstring;
  fS1,fS2,sS,res: string3;
  LS: string1;
  cf: arrofreal;
  sf: arrofreal2;
  Yn: arrofreal1;

  procedure Prov(m: byte);
  label 1,2;
  begin kc:=CSint(sS,res); if kc>0 then begin
  writeln('   Ошибка в записи формулы sS, k = ',kc);
  goto 1; end; if m=0 then goto 2;
  for i:=1 to m do begin kc:=CSint(gS[i],res); if kc>0 then begin
  writeln('   Ошибка в записи формулы gs[',i,'], k =',kc);
 1:  write(res); read(q1); goto 2 end end; 2: end;

  begin ClrScr; goto 8;

 1: { Явная функция }
      n:=6; x:=0; xS:='x';
      sS:='x^5+4*x^4+6*x^3-5*x^2+2*x+1';
      sS:='arcsin(x)';
      Prov(0); Explicit(xS,x,sS,n,res,cf);  goto 15;

 2: { Обратная функция }
      n:=4; y:=0; sS:='exp(y)-1';
{      Prov(0);} Inversf('y',y,sS,n,res,cf); xS:='x'; goto 15;

 3:  { Неявная функция }
      xS:='x'; yS:='y';
      sS:='exp(y^2-2*sin(x*y)+log(x+y))';
      x:=1; y:=0;
      n:=4; {Prov(0);} Implicit(xS,yS,x,y,sS,n,res,cf); goto 15;

 4:  { Параметрическая функция }
     xS:='t'; fS1:='1+2*t'; fS2:='t^2'; n:=5; t:=-1/2;
     sS:=''; {Prov(2);} Paramet(xS,t,fS1,fS2,n,res,cf); xS:='x'; goto 15;

 5:  { ОДУ первого порядка } {ODE of order 1}
      xS:='x'; yS:='y'; x:=7; y:=1; n:=4;
      sS:='2*exp(x-7)-y'; Curve(xS,yS,x,y,sS,n,res,cf); goto 15;

 6:  { Система ОДУ (m<=5) }
      xS:='x'; LS:='yuv'; x:=0; Yn[1]:=1; Yn[2]:=1; Yn[3]:=1;
      n:=4; gS[1]:='u'; gS[2]:='v'; gS[3]:='y';
      Curves(xS,x,LS,Yn,gS,n,res,sf); goto 17; {Ответ: y=u=v=exp(x)}

 7:  { ОДУ высокого порядка m  (m<=5)} {ODE of order m}
     {Здесь и далее  Zn -- массив числовых значений переменных,
      перечисленых в строке LS}
      xS:='x'; LS:='yu'; x:=0; Yn[1]:=1; Yn[2]:=0; n:=6;
      sS:='-y'; Curveh(xS,x,LS,Yn,sS,n,res,cf); goto 15; {Ответ cos(x)}

 8:  { Сингулярное ОДУ; тест - функция Бесселя порядка q,
           деленная на x^q и нормированная условием y(0)=1, y'(0)=0;
           например, при q=0.5  y(x)= sin(x)/x,
           при q=3/2 y(x)=3*[sin(x)/x-cos(x)]/x^2, см. Двайт N 804 }
      {LS:='yu'; sS:='-(x*y+(2*q+1)*u)';}
      LS:='yu'; sS:='-(x*y+2*u)'; {ответ y(x)=sin(x)/x}
      Yn[1]:=1; Yn[2]:=0;
      n:=6; xS:='x'; x:=0;
      SingODE(xS,LS,Yn,sS,n,res,cf); goto 15;


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

{****************x********}

