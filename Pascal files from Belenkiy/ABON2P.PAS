program Abon2p;
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

  label 1,2,3,4,15,16;
  var
  x,y,s,eps,x1: real;
  n,i: byte;
  xS,yS,q: char;
  gS: arrofstring;
  k: integer;
  fS1,fS2,res,sS: string3;
  PS,LS: string1;
  Yn,Zn: arrofreal1;
  ans: arrofreal1;

     begin ClrScr; goto 1;

 1:  { Решение системы двух уравнений }
     n:=6; x:=4; y:=7; eps:=1E-6; xS:='x'; yS:='y';
     fS1:='x^2+2*y^2-17+2*b-a'; fS2:='x^2-y^2-5+log(2*b/a)';
     PS:='ab'; Zn[1]:=8; Zn[2]:=4;
     RootsysP(xS,yS,x,y,fS1,fS2,n,eps,PS,Zn,res,ans);
     if res<>'' then writeln('Ошибка: ',res);
     writeln(xS,'  = ',ans[1]:16,'   ',yS,' = ',ans[2]:16); writeln;
     writeln('F1 = ',ans[3]:16,'  F2 = ',ans[4]:16); writeln;
     writeln('Число итераций равно ',ans[0]:6);
     goto 16;

 2: { задача Коши для ОДУ высокого порядка (m<=5) }
     n:=4; xS:='x'; LS:='yu'; sS:='(-y+2*b-a+(b-4)*u)';
     x:=0; Yn[1]:=0; Yn[2]:=1;
     x1:=pi;
     PS:='ab'; Zn[1]:=8; Zn[2]:=4;
     s:=IntHODEP(xS,x,LS,Yn,sS,x1,n,Ps,Zn,res,k);
     if res<>'' then writeln('Ошибка: ',res) else begin
     writeln('x = ',x1:16,'   y = ',s:16); writeln;
     write('Количество шагов  k = ',k) end; goto 16;

 3: { задача Коши для системы ОДУ }
     n:=4; xS:='x'; LS:='wuv'; gS[1]:='cos(x)+a-2*b'; gS[2]:='-sin(x)+a-8';
     gS[3]:='-u+b-4';  x1:=pi/2;
     x:=0; Yn[1]:=0; Yn[2]:=1; Yn[3]:=0;
     PS:='ab'; Zn[1]:=8; Zn[2]:=4;
     IntsysP(xS,x,LS,gS,x1,n,PS,Zn,res,Yn,k);
     if res<>''then writeln('Ошибка: ',res) else begin
     writeln('x = ',x1:16,'        Количество шагов  k = ',k);
     writeln('');
     write('y = ',Yn[1]:16,'   u = ',Yn[2]:16,'   v = ',Yn[3]:16)
     end; goto 16;

15: if bo then goto 16;
    writeln(xS,' = ',z1[1],'   f(',xS,') = ',z1[2]); goto 16;

16:   read(q);
   end.


