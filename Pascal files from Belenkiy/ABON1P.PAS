program Abon1p;
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

  label 1,2,3,4,5,6,15,16;
  var
  eps,x,y,s,a,b: real;
  n: byte;
  k: integer;
  xS,yS,q: char;
  gS: arrofstring;
  PS: string1;
  res,sS: string3;
  Zn: arrofreal1;
  ans: arrofreal1;


  begin ClrScr; goto 5;

 1: { корень явной функции }
    n:=4; eps:=1E-6;
   xS:='x'; x:=5;
   PS:='ab'; Zn[1]:=8; Zn[2]:=4;
   sS:='a*x^2+b*x-(a+b)'; {Ответ: x=1}

{     x:=1; xS:='x'; sS:='3*sin(x)-1.5'; {ответ: x=pi/6}
     RootP(xS,x,sS,n,eps,PS,Zn,res,ans); sS:='f('+xS+')'; goto 15;

 2: { корень производной (нахождение точки экстремума) }
    n:=4; x:=1.5; eps:=1E-4; xS:='x'; sS:='b*x^2-2*x*a/8'{'cos(p/2-x)'};
    PS:='ab'; Zn[1]:=8; Zn[2]:=4;
    RootprimeP(xS,x,sS,n,eps,PS,Zn,res,ans); sS:='df(x)'; goto 15;
    {x=0.25}

 3: { определенный интеграл }
    n:=3; xS:='x';  sS:='sin(x+a-2*b)'; a:=0; b:=pi;
    PS:='ab'; Zn[1]:=8; Zn[2]:=4;
    s:=IntegralP(xS,sS,a,b,n,Ps,Zn,res,k);
    if res<>'' then write('Ошибка: ',res) else
    begin writeln('Int = ',s:0:6);
    write('Количество шагов  k = ',k) end; goto 16; {Int=2}

 4: { задача Коши для ОДУ первого порядка }
     n:=4; xS:='x'; yS:='y'; sS:='-y+x+a-2*b'; x:=0; y:=1; b:=1;
     PS:='ab'; Zn[1]:=8; Zn[2]:=4;
     s:=IntODEP(xS,yS,x,y,sS,b,n,Ps,Zn,res,k);
     if res<>'' then write('Ошибка: ',res) else
     begin writeln(yS,'(',b,') = ',s);
     write('Количество шагов  k = ',k) end; goto 16;
     {Точный ответ Int=2/e=0.73575888}

15:  if res<>'' then write('Ошибка: ',res) else
     begin writeln(xS,' = ',ans[1],'   ',sS,' = ',ans[2]) end;
16: read(q);
    end{program}.


**********************
 2: { корень полной функции }
    n:=4; LS:='uv'; gS[1]:='x^(a/b)+5*x-7'; gS[2]:='-(3*x+1+a-2*b)';
    sS:='x^2+u-v+12'; x:=4; xS:='x'; eps:=1E-4;
    PS:='ab'; Zn[1]:=8; Zn[2]:=4;
    RootPB(xS,x,LS,sS,gS,n,eps,PS,Zn,res,ans); sS:='F(x)'; goto 15;

 4: { корень производной полной функции }
    n:=2; LS:='uv'; gS[1]:='x^2+5*x-a+1'; gS[2]:='-(3*x+1)+2*b/a-1';
    sS:='x^2+u-v+12';
    x:=6; xS:='x'; eps:=1E-4;
    PS:='ab'; Zn[1]:=8; Zn[2]:=4;
    RootprimePB(xS,x,LS,sS,gS,n,eps,PS,Zn,res,ans); sS:='F(x)'; goto 15;










