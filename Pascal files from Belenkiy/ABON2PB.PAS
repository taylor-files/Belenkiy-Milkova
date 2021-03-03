program Abon2pb;
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
  x,y,x1,s,eps: real;
  n,i: byte;
  xS,yS,q: char;
  vS,gS: arrofstring;
  k: integer;
  fS1,fS2,sS,res: string3;
  LS,BS,PS: string1;
  Zn,Yn,ans: arrofreal1;

  begin ClrScr; goto 2;

 1:  { Решение системы двух урaвнений }
     { не отлажено}
     n:=4; x:=4; y:=7; eps:=1E-6; xS:='x'; yS:='y';
     BS:='qr'; gS[1]:='x^2+a-8'; gS[2]:='y^2+b-4';
{     fS1:='x^2+2*y^2-17'; fS2:='x^2-y^2-5';}
     fS1:='q+r+y^2-17+a-2*b'; fS2:='q-r-5';
     PS:='ab'; Zn[1]:=8; Zn[2]:=4;
     RootsysPB(xS,yS,x,y,BS,fS1,fS2,gS,n,eps,PS,Zn,res,ans);
     if res<>'' then writeln('Ошибка: ',res);
     writeln(xS,'  = ',ans[1]:16,'   ',yS,' = ',ans[2]:16); writeln;
     writeln('F1 = ',ans[3]:16,'  F2 = ',ans[4]:16); goto 16;

 2: { задача Коши для ОДУ высокого порядка (m<=5) }
     n:=4; xS:='x'; LS:='yu'; {sS:='-y';}
     x:=0; Yn[1]:=0; Yn[2]:=1;
     BS:='q'; vS[1]:='x+y'; sS:='x-q';
     PS:='ab'; Zn[1]:=8; Zn[2]:=4;
     x1:=pi;
     s:=IntHODEPB(xS,x,LS,BS,vS,Yn,sS,x1,n,PS,Zn,res,k);
     if res<>'' then writeln('Ошибка: ',res) else begin
     writeln('x = ',x1:16,'   y = ',s:16); writeln;
     write('Количество шагов  k = ',k) end; goto 16;

 3: { задача Коши для системы ОДУ }
     n:=4; xS:='x'; LS:='wuv';
     BS:='qr'; vS[1]:='u+x^2+a-8'; vS[2]:='v+x+b-4';
     {gS[1]:='u'; gS[2]:='v'; gS[3]:='-u';}
     gS[1]:='q-x^2+a-2*b'; gS[2]:='r-x+log(2*b/a)'; gS[3]:='-u';
     PS:='ab'; Zn[1]:=8; Zn[2]:=4;
     x1:=pi/2;
     x:=0; Yn[1]:=0; Yn[2]:=1; Yn[3]:=0;
     IntsysPB(xS,x,LS,BS,gS,vS,x1,n,PS,Zn,res,Yn,k);
     if res<>''then writeln('Ошибка: ',res) else begin
     writeln('x = ',x1:16,'        Количество шагов  k = ',k);
     writeln('');
     write('y = ',Yn[1]:16,'   u = ',Yn[2]:16,'   v = ',Yn[3]:16)
     end; goto 16;

15: if bo then goto 16;
    writeln(xS,' = ',z1[1],'   f(',xS,') = ',z1[2]); goto 16;

{17: write('Error  k = ',k7);}


16:   read(q);
   end.


{ ************************************************ }
  {  корень  сложной  функции  это  лишнее  --  задача  решается
как корень полной функции относительно xS='y' с параметром x }
