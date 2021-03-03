program Abon1pb;
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
  x0,x1,eps,x,y,s: real;
  n: byte;
  k: integer;
  xS,yS,q: char;
  gS: arrofstring;
  BS,PS,res,sS: string;
  Zn: arrofreal1;
  ans: arrofreal1;


  begin ClrScr; goto 4;


 1: { корень явной функции }
    n:=4; BS:='uv'; gS[1]:='x^(a/b)+5*x-7'; gS[2]:='-(3*x+1+a-2*b)';
    sS:='x^2+u-v+12'; x:=4; xS:='x'; eps:=1E-4;
    PS:='ab'; Zn[1]:=8; Zn[2]:=4;
    RootPB(xS,x,BS,sS,gS,n,eps,PS,Zn,res,ans); sS:='F(x)'; goto 15;
    {x=-1}

 2: { корень производной }
    n:=2; BS:='uv'; gS[1]:='x^2+5*x-a+1'; gS[2]:='-(3*x+1)+2*b/a-1';
    sS:='x^2+u-v+12';
    x:=6; xS:='x'; eps:=1E-4;
    PS:='ab'; Zn[1]:=8; Zn[2]:=4;
    RootprimePB(xS,x,BS,sS,gS,n,eps,PS,Zn,res,ans); sS:='F(x)'; goto 15;
    {x=-2}

 3: { определенный интеграл }
    n:=3; xS:='x';
    BS:='q'; gS[1]:='x'; {gS[2]:='-x^2+2*b';}
    sS:='sin(q+a-2*b)'; x0:=0; x1:=pi;
    PS:='ab'; Zn[1]:=8; Zn[2]:=4;
    s:=IntegralPB(xS,BS,sS,gS,x0,x1,n,PS,Zn,res,k);
    if res<>'' then write('Ошибка: ',res) else
    begin writeln('Int = ',s:0:6);
    write('Количество шагов  k = ',k) end; goto 16; {Int=2}

 4: { задача Коши для ОДУ первого порядка
      с блочной правой частью}
     n:=4; xS:='x'; yS:='y'; sS:='q-r+y-x-2*b/a'; x:=0; y:=1; x1:=1;
     BS:='qr'; gS[1]:='x^2-y^2+5+a-8'; gS[2]:='x^2-y^2+4+b-4';
     PS:='ab'; Zn[1]:=8; Zn[2]:=4;
     s:=IntODEPB(xS,yS,x,y,BS,sS,gS,x1,n,PS,Zn,res,k);
     if res<>'' then write('Ошибка: ',res) else
     begin writeln(yS,'(',x1,') = ',s);
     write('Количество шагов  k = ',k) end; goto 16;
     {Ответ: y(1)=2}

15:  if res<>'' then write('Ошибка: ',res) else
     begin writeln(xS,' = ',ans[1],'   ',sS,' = ',ans[2]) end;
16: read(q);
    end{program}.

**************************
Не отлажено

 4: { задача Коши для ОДУ первого порядка }
     n:=4; xS:='x'; yS:='y'; sS:='-y+x+a-2*b'; x:=0; y:=1; b:=1;
     PS:='ab'; Zn[1]:=8; Zn[2]:=4;
     s:=IntODEP(xS,yS,x,y,sS,b,n,Ps,Zn,res,k);
     if res<>'' then write('Ошибка: ',res) else
     begin writeln(yS,'(',b,') = ',s);
     write('Количество шагов  k = ',k) end; goto 16;
     {Точный ответ Int=2/e=0.73575888}










