program Abon2e;
  uses crt,orbitap,pacot,control;
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

  label 1,2,3,15,16;
  var
  x,y,b,s,eps: real;
  n,i: byte;
  xS,yS,q: char;
  gS: arrofstring;
  k: integer;
  fS1,fS2,sS,res
  : string3;
  LS: string1;
  Yn,ans: arrofreal1;

  begin ClrScr; goto 3;

 1:  { Решение системы двух урaвнений }
     n:=4; x:=4; y:=7; eps:=1E-6; xS:='x'; yS:='y';
     fS1:='x^2+2*y^2-17'; fS2:='x^2-y^2-5';
     Rootsys(xS,yS,x,y,fS1,fS2,n,eps,res,ans);
     if res<>'' then writeln('Ошибка: ',res);
     writeln(xS,'  = ',ans[1]:16,'   ',yS,' = ',ans[2]:16); writeln;
     writeln('F1 = ',ans[3]:16,'  F2 = ',ans[4]:16); goto 16;
     {x=3, y=2}

 2: { задача Коши для ОДУ высокого порядка (m<=5) }
     n:=4; xS:='x'; LS:='yu'; sS:='-y';
     x:=0; Yn[1]:=0; Yn[2]:=1;
     b:=pi;
     s:=IntHODE(xS,x,LS,Yn,sS,b,n,res,k);
     if res<>'' then writeln('Ошибка: ',res) else begin
     writeln('x = ',b:16,'   y = ',s:16); writeln;
     write('Количество шагов  k = ',k) end; goto 16;
     {y(x)=sin(x), y(pi)=0}

 3: { задача Коши для системы ОДУ }
     n:=4; xS:='x'; LS:='wuv'; gS[1]:='u'; gS[2]:='v';
     gS[3]:='-u';  b:=pi/2;
     x:=0; Yn[1]:=0; Yn[2]:=1; Yn[3]:=0;
     Intsys(xS,x,LS,gS,b,n,res,Yn,k);
     if res<>''then writeln('Ошибка: ',res) else begin
     writeln('x = ',b:16,'        Количество шагов  k = ',k);
     writeln('');
     write('w = ',Yn[1]:16,'   u = ',Yn[2]:16,'   v = ',Yn[3]:16)
     end; goto 16;
     {w=sin(x), u=cos(x), v=-sin(x) x=pi/2, (w,u,v)=(1,0,-1)}

15: if bo then goto 16;
    writeln(xS,' = ',z1[1],'   f(',xS,') = ',z1[2]); goto 16;

16:   read(q);
   end.


{ ************************************************ }
  {  корень  сложной  функции  это  лишнее  --  задача  решается
как корень полной функции относительно xS='y' с параметром x }
