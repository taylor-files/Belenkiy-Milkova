program Abon1e;
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
  x1,eps,x,y,s: real;
  n: byte;
  k: integer;
  xS,yS,q: char;
  gS: arrofstring;
  sS,LS,res: string;
  ans: arrofreal1;

  begin ClrScr; goto 3;

 1: { корень явной функции }
    n:=4; eps:=1E-6;
    xS:='x'; x:=5;
    sS:='2*x^2+8*x+6';
    Root(xS,x,sS,n,eps,res,ans); sS:='f('+xS+')'; goto 15;

 2: { корень производной (нахождение точки экстремума) }
    n:=4; x:=1.5; eps:=1E-4; xS:='x'; sS:='4*x^2-2*x';
    Rootprime(xS,x,sS,n,eps,res,ans); sS:='df(x)'; goto 15;

 3: { определенный интеграл }
    n:=3; xS:='x';  sS:='sin(x)'; x:=0; x1:=pi;
    s:=Integral(xS,sS,x,x1,n,res,k);
    if res<>'' then write('Ошибка: ',res) else
    begin writeln('Int = ',s:0:6);
    write('Количество шагов  k = ',k) end; goto 16;

 4: { задача Коши для ОДУ первого порядка }
     n:=4; xS:='x'; yS:='y'; sS:='-y+x'; x:=0; y:=1; x1:=1;
     s:=IntODE(xS,yS,x,y,sS,x1,n,res,k);
     {Точный ответ Int=2/e=0.73575888}
     if res<>'' then write('Ошибка: ',res) else
     begin writeln(yS,'(',x1,') = ',s);
     write('Количество шагов  k = ',k) end; goto 16;

15:  if res<>'' then write('Ошибка: ',res) else
     begin writeln(xS,' = ',ans[1],'   ',sS,' = ',ans[2]) end;
16: read(q);
    end{program}.





