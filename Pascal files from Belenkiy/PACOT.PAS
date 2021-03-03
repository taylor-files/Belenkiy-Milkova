unit Pacot;
      {Для справки: interface of Orbita
      var       {Только для собсвенных процедур,
                  но не для абонента
      p: real;
      bo: boolean;
      k7: byte;
      z1: arrofreal;
      a1:real;
      a6: arrofreal2;
      er: array [1..30] of string;
      Pm: string;
      Pn: arrofreal1;}

 interface
 uses crt,Orbitap;

{1.1}   procedure Root(xS: char; x: real; sS: string3;
                  n: byte; eps: real;
                  var res: string3; var z: arrofreal1);
        procedure RootP(xS: char; x: real; sS: string3;
                  n: byte; eps: real;
                  PS: string1; Zn: arrofreal1;
                  var res: string3; var z: arrofreal1);
        procedure RootB(xS: char; x: real; BS: string1;
                  sS: string3;
                  gS: arrofstring; n: byte; eps: real;
                  var res: string3; var z: arrofreal1);
        procedure RootPB(xS: char; x: real; BS: string1;
                  sS: string3;
                gS: arrofstring; n: byte; eps: real;
                PS: string1; Zn: arrofreal1;
                var res: string3; var z: arrofreal1);

{1.2}   procedure Rootprime (xS: char; x: real; sS: string3;
                  n: byte; eps: real;
                  var res: string3; var z: arrofreal1);
        procedure RootprimeP (xS: char; x: real; sS: string3;
                  n: byte; eps: real;
                  PS: string1; Zn: arrofreal1;
                  var res: string3; var z: arrofreal1);
        procedure RootprimeB(xS: char; x: real; BS: string1;
                   sS: string3;
                  gS: arrofstring; n: byte; eps: real;
                  var res: string3; var z: arrofreal1);
        procedure RootprimePB(xS: char; x: real; BS: string1;
                    sS: string3;
                  gS: arrofstring; n: byte; eps: real;
                  PS: string1; Zn: arrofreal1;
                  var res: string3; var z: arrofreal1);

{1.3}   function Integral(xS: char; sS: string3;
                   x0,x1: real; n: byte;
                   var res: string3; var k: integer): real;
        function IntegralP(xS: char; sS: string3;
                   x0,x1: real; n: byte;
                PS: string1; Zn: arrofreal1;
                   var res: string3; var k: integer): real;
        function IntegralB(xS: char; BS: string1;
                   sS: string3;
            gS: arrofstring; x0,x1: real; n: byte;
                   var res: string3; var k: integer): real;
        function IntegralPB(xS: char; BS: string1;
                     sS: string3;
            gS: arrofstring; x0,x1: real; n: byte;
            PS: string1; Zn: arrofreal1;
                   var res: string3; var k: integer): real;

{1.4}    function IntODE(xS,yS: char; x,y: real; sS: string3;
                      x1: real; n: byte;
                      var res: string3; var k: integer): real;
         function IntODEP(xS,yS: char; x,y: real; sS: string3;
                      x1: real; n: byte;
                      PS: string1; Zn: arrofreal1;
                      var res: string3; var k: integer): real;
         function IntODEB(xS,yS: char; x,y: real; BS: string1;
                       sS: string3;
               gS: arrofstring; x1: real; n: byte;
                      var res: string3; var k: integer): real;
         function IntODEPB(xS,yS: char; x,y: real; BS: string1;
                        sS: string3;
               gS: arrofstring; x1: real; n: byte;
               PS: string1; Zn: arrofreal1;
                      var res: string3; var k: integer): real;

{2.1}    procedure Rootsys(xS,yS: char; x,y: real; fS1,fS2: string3;
                        n: byte; eps: real;
                        var res: string3; var z: arrofreal1);
         procedure RootsysP(xS,yS: char; x,y: real; fS1,fS2: string3;
                        n: byte; eps: real;
                        PS: string1; Zn: arrofreal1;
                       var res: string3; var z: arrofreal1);
         procedure RootsysB(xS,yS: char; x,y: real; BS: string1;
                      fS1,fS2: string3;
                     gS: arrofstring; n: byte; eps: real;
                    var res: string3; var z: arrofreal1);
         procedure RootsysPB(xS,yS: char; x,y: real; BS: string1;
                   fS1,fS2: string3;
                    gS: arrofstring; n: byte; eps: real;
                    PS: string1; Zn: arrofreal1;
                    var res: string3; var z: arrofreal1);

{2.2}    function IntHODE(xS: char;x: real; LS: string1; Yn: arrofreal1;
               sS: string3; x1: real; n: byte;
                var res: string3; var k: integer): real;
         function IntHODEP(xS: char;x: real; LS: string1; Yn: arrofreal1;
               sS: string3; x1: real; n: byte;
               PS: string1; Zn: arrofreal1;
                var res: string3; var k: integer): real;
         function IntHODEB(xS: char;x: real; LS,BS: string1;
                  vS: arrofstring; Yn: arrofreal1;
               sS: string3; x1: real; n: byte;
                var res: string3; var k: integer): real;
         function IntHODEPB(xS: char;x: real; LS,BS: string1;
                  vS: arrofstring; Yn: arrofreal1;
               sS: string3; x1: real; n: byte;
               PS: string1; Zn: arrofreal1;
                var res: string3; var k: integer): real;

{2.3}    procedure Intsys(xS: char; x: real; LS: string1;
              gS: arrofstring; x1: real; n: byte;
              var res: string3; var Yn: arrofreal1; var k: integer);
         procedure IntsysP(xS: char; x: real; LS: string1;
              gS: arrofstring; x1: real; n: byte;
              PS: string1; Zn: arrofreal1;
              var res: string3; var Yn: arrofreal1; var k: integer);
         procedure IntsysB(xS: char; x: real; LS,BS: string1;
              gS,vS: arrofstring; x1: real; n: byte;
              var res: string3; var Yn: arrofreal1; var k: integer);
         procedure IntsysPB(xS: char; x: real; LS,BS: string1;
              gS,vS: arrofstring; x1: real; n: byte;
              PS: string1; Zn: arrofreal1;
          var res: string3; var Yn: arrofreal1; var k: integer);

implementation
var hS: arrofstring; {for produres INTHODEB, INTHODEPB}

 { внутрення процедура: выполнение шага интегрирования ОДУ
  с автоматическим выбором длины шага }
   procedure Step(x1: real; n: byte; var x,y: real; var bul: boolean);
         var r1,r2,h1: real; j: byte;
      begin
      r1:=0; for j:=1 to n do begin r2:=abs(z1[j+2]);
      if r2>0 then r2:=exp(ln(r2)/j) else r2:=0{1};
      if r1<r2 then r1:=r2; end;
      if r1<1 then r1:=1; h1:=0.05{001}/r1;
      r2:=x1-x; if h1>r2-1E-15 then begin h1:=r2; bul:=true end;
      r1:=0; for j:=n+2 downto 2 do r1:=r1*h1+z1[j];
      y:=r1; x:=x+h1; end{Step};

{ внутрення процедура: выполнение шага интегрирования системы уравнений
  с автоматическим выбором длины шага }
  procedure Steps(x1: real; m,n: byte;
              var x: real; var bul: boolean; var Yn: arrofreal1);
          var i,j: byte; r1,r2,h1: real;
      begin
      r1:=0; for i:=1 to m do begin for j:=1 to n do
      begin r2:=abs(a6[i,j+1]);
      if r2>0 then r2:=exp(ln(r2)/j) else r2:=1;
      if r1<r2 then r1:=r2; end; end;
      if r1<1 then r1:=1; h1:=0.05/r1;
      r2:=x1-x; if h1>r2-1E-15 then begin h1:=r2; bul:=true end;
      for i:=1 to m do begin r1:=0; for j:=n+1 downto 1 do
      r1:=r1*h1+a6[i,j]; Yn[i]:=r1 end; x:=x+h1; end{Steps};

{ ************** Внутренняя процедура:
Common part of Roote; p=0 -- function, p=1 -- derivative}
  procedure Rootcommon (xS: char; x: real; sS: string3;
              n: byte; eps: real; p: byte;
              var res: string3; var z: arrofreal1); {Внутренняя}
      label 1; var r1,y0,y1: real; i,j: byte;
      begin for i:=1 to 5 do begin {five steps}
      if p=0 then Inversf(xS,x,sS,n,res,z1) else
                  Inversd(xS,x,sS,n,res,z1);
{ case p of 0: Invers(xS,sS,n); 1: Inversprime(xS,sS,n); end;}
      if bo then goto 1;
      y1:=z1[1]; x:=0; for j:=n+2 downto 2 do x:=z1[j]-x*y1;
      Explicit(xS,x,sS,p+1{n},res,z1); if bo then goto 1;
      if p=1 then z1[2]:=z1[3];
      r1:=abs(z1[2]); if r1<=eps then goto 1;
      end{i};
      k7:=24; bo:=true; {goto 1;}
 1:   if bo then ferr(k7,res) else begin res:='';
         z[1]:=z1[1]; z[2]:=z1[2] end  end;

{ ********** Внешние процедуры по каталогу }

{1.1. -- Вычисление корня уравнения f(x)=0}
{e}   procedure Root(xS: char; x: real; sS: string3;
                  n: byte; eps: real;
                  var res: string3; var z: arrofreal1);
      begin Rootcommon(xS,x,sS,n,eps,0,res,z) end;

{p}      procedure RootP(xS: char; x: real; sS: string3;
                  n: byte; eps: real;
                  PS: string1; Zn: arrofreal1;
                  var res: string3; var z: arrofreal1);
      begin Par(PS,Zn); Rootcommon (xS,x,sS,n,eps,0,res,z) end;

{b}   procedure RootB(xS: char; x: real; BS: string1;
                    sS: string3;
                gS: arrofstring; n: byte; eps: real;
                var res: string3; var z: arrofreal1);
      label 1; var r1,y1: real; i,j: byte;
      begin  for i:=1 to 5 do begin {five steps}
      InversfB(xS,x,BS,sS,gS,n,res,z1);
      if bo then goto 1;
      y1:=z1[1]; x:=0; for j:=n+2 downto 2 do x:=z1[j]-x*y1;
      ExplicitB(xS,x,BS,sS,gS,0,res,z1); if bo then goto 1;
      r1:=abs(z1[2]); if r1<=eps then goto 1 end{i};
      k7:=24; bo:=true;
   1: if bo then ferr(k7,res) else begin res:='';
         z[1]:=z1[1]; z[2]:=z1[2] end  end;
{pb}  procedure RootPB(xS: char; x: real; BS: string1;
                 sS: string3;
                gS: arrofstring; n: byte; eps: real;
                PS: string1; Zn: arrofreal1;
                var res: string3; var z: arrofreal1);
       begin Par(PS,Zn); RootB(xS,x,BS,sS,gS,n,eps,res,z) end;

{1.2. -- Вычисление корня производной
        (нахождение точки экстремума)}
{e}   procedure Rootprime(xS: char; x: real; sS: string3;
                        n: byte; eps: real;
                  var res: string3; var z: arrofreal1);
      begin Rootcommon(xS,x,sS,n,eps,1,res,z) end;
{p}   procedure RootprimeP(xS: char; x: real; sS: string3;
                  n: byte; eps: real;
                  PS: string1; Zn: arrofreal1;
                  var res: string3; var z: arrofreal1);
      begin Par(PS,Zn); Rootcommon (xS,x,sS,n,eps,1,res,z) end;

{b}   procedure RootprimeB(xS: char; x: real; BS: string1;
                   sS: string3;
                gS: arrofstring; n: byte; eps: real;
                var res: string3; var z: arrofreal1);
      label 1; var r1,y1: real; i,j: byte;
      begin  for i:=1 to 5 do begin {five steps}
      InversdB(xS,x,BS,sS,gS,n,res,z1); if bo then goto 1;
      y1:=z1[1]; x:=0; for j:=n+2 downto 2 do x:=z1[j]-x*y1;
      ExplicitB(xS,x,BS,sS,gS,1,res,z1); if bo then goto 1;
      r1:=abs(z1[3]); if r1<=eps then goto 1 end;{i}
      k7:=24; bo:=true;
   1: if bo then ferr(k7,res) else begin res:='';
         z[1]:=z1[1]; z[2]:=z1[3] end  end;

{pb}  procedure RootprimePB(xS: char; x: real; BS: string1;
                    sS: string3;
                gS: arrofstring; n: byte; eps: real;
                PS: string1; Zn: arrofreal1;
                var res: string3; var z: arrofreal1);
       begin Par(Ps,Zn); RootprimeB(xS,x,BS,sS,gS,n,eps,res,z) end;

{1.3. -- вычисление определенного интеграла
        с автоматическим выбором шага ********************}
{e}   function Integral(xS: char; sS: string3;
                x0,x1: real; n: byte;
           var res: string3; var k: integer): real;
      begin Integral:=IntODE(xS,'!',x0,0,sS,x1,n,res,k); end;
      {Comment: ! -- формальный символ, любой, т.к.
                подинтегральная функция не зависит от yS }

{p}   function IntegralP(xS: char; sS: string3;
                   x0,x1: real; n: byte;
                PS: string1; Zn: arrofreal1;
                   var res: string3; var k: integer): real;
      begin Par(PS,Zn); IntegralP:=Integral(xS,sS,x0,x1,n,res,k) end;

{b}   function IntegralB(xS: char; BS: string1; sS: string3;
            gS: arrofstring; x0,x1: real; n: byte;
                   var res: string3; var k: integer): real;
      begin IntegralB:=IntODEB(xS,'!',x0,0,BS,sS,gS,x1,n,res,k); end;

{pb}  function IntegralPB(xS: char; BS: string1; sS: string3;
            gS: arrofstring; x0,x1: real; n: byte;
            PS: string1; Zn: arrofreal1;
                   var res: string3; var k: integer): real;
      begin Par(PS,Zn);
            IntegralPB:=IntODEB(xS,'!',x0,0,BS,sS,gS,x1,n,res,k) end;

{1.4. -- Решение задачи Коши для ОДУ первого порядка ***********}
{e}   function IntODE(xS,yS: char; x,y: real; sS: string3;
                      x1: real; n: byte;
                      var res: string3; var k: integer): real;
      label 1; var bul: boolean;
      begin k:=0; bul:=false;
      repeat k:=k+1; Curve(xS,yS,x,y,sS,n,res,z1); if bo then goto 1;
      Step(x1,n,x,y,bul) until bul; IntODE:=y;
  1:  if bo then ferr(k7,res) else res:=''  end;

{p}   function IntODEP(xS,yS: char; x,y: real; sS: string3;
                      x1: real; n: byte;
                      PS: string1; Zn: arrofreal1;
                      var res: string3; var k: integer): real;
      begin Par(PS,Zn); IntODEP:=IntODE(xS,yS,x,y,sS,x1,n,res,k) end;

{b}   function IntODEB(xS,yS: char; x,y: real; BS: string1;
                   sS: string3;
               gS: arrofstring; x1: real; n: byte;
                      var res: string3; var k: integer): real;
            label 1; var bul: boolean;
      begin k:=0; bul:=false;
      repeat k:=k+1;
      CurveB(xS,yS,x,y,BS,sS,gS,n,res,z1); if bo then goto 1;
      Step(x1,n,x,y,bul) until bul; IntODEB:=y;
  1:  if bo then ferr(k7,res) else res:=''  end;

{pb}  function IntODEPB(xS,yS: char; x,y: real; BS: string1;
                 sS: string3;
               gS: arrofstring; x1: real; n: byte;
               PS: string1; Zn: arrofreal1;
                      var res: string3; var k: integer): real;
      begin Par(PS,Zn);
         IntODEPB:=IntODEB(xS,yS,x,y,BS,sS,gS,x1,n,res,k) end;

{2.1 -- решение системы двух уравнений ******************}
{e}   procedure Rootsys(xS,yS: char; x,y: real; fS1,fS2: string3;
                        n: byte; eps: real;
                        var res: string3; var z: arrofreal1);
      begin RootsysP(xS,yS,x,y,fS1,fS2,n,eps,'',Pn,res,z) end;

{p}   procedure RootsysP(xS,yS: char; x,y: real; fS1,fS2: string3;
             n: byte; eps: real; PS: string1; Zn: arrofreal1;
                        var res: string3; var z: arrofreal1);
      label 1,2;  var r1,y1,g2,g1: real; i,j,n0: byte;
      begin Pm:=PS+xS; n0:=Length(Pm); Pn:=Zn;
      for i:=1 to 20 do begin {20 итераций}
      Pn[n0]:=x; Rootcommon (yS,y,fS1,n,eps,0,res,z);
      if bo then goto 1; y1:=z[1];
      Implicit(xS,yS,x,y1,fS1,n,res,z1); if bo then goto 1;
      for j:=1 to n+1 do a6[1,j]:=z1[j+1];
      Inverstwo(xS,yS,x,fS2,n); if bo then goto 1;
      y1:=z1[1]; x:=0; for j:=n+2 downto 2 do x:=z1[j]-x*y1;
      Pn[n0]:=x;
      Rootcommon (yS,y,fS2,n,eps,0,res,z); if bo then goto 1;
      y:=z[1]; g2:=z[2];
      Explicit(yS,y,fS1,0,res,z1); if bo then goto 1;
      g1:=z1[2]; r1:=abs(g1);
      if r1<=eps then begin j:=i; goto 2 end;
      end; k7:=24; bo:=true; j:=20;
   2: z[1]:=x; z[2]:=y; z[3]:=g1; z[4]:=g2; z[0]:=j;
   1: if bo then ferr(k7,res); end;

{b} {отлажено 09.12.2009}
      procedure RootsysB(xS,yS: char; x,y: real; BS: string1;
                    fS1,fS2: string3;
                    gS: arrofstring; n: byte; eps: real;
                    var res: string3; var z: arrofreal1);
      label 1,2;
      var r1,y1,g2,g1: real; i,j,n0,m: byte;
      begin Pm:=xS;
      for i:=1 to 20 do begin {20 итераций}
      Pn[1]:=x; RootB(yS,y,BS,fS1,gS,n,eps,res,z); y1:=z[1];
      if bo then goto 1;
      {Из первого уравнения в окрестности заданного начального приближения
      y0 вычислен корень y1 при заданном значении x0=x}
      ImplicitB(xS,yS,x,y1,BS,fS1,gS,n,res,z1); if bo then goto 1;
      {Из первого уравнения при x=x0 получено разложение неявной функции
      y=y(x) с условием y(x0)=y1.
      Примечание: по построению, функция gS[1] тождественно по x
      рaвна нулю при y=y(x)}

      for j:=1 to n+1 do a6[1,j]:=z1[j+1];
      InverstwoB(xS,yS,x,BS,fS2,gS,n); if bo then goto 1;
      y1:=z1[1]; x:=0; for j:=n+2 downto 2 do x:=z1[j]-x*y1;
      {Фуннкция y(x) подставлена во второе уравнение и найден корень
       x уравнения g2(x,y(x))=0}
      Pn[1]:=x; RootB(yS,y,BS,fS2,gS,n,eps,res,z); if bo then goto 1;
      y1:=z[1]; y:=z[1]; g2:=z[2];
      {При полученном значении x и текущем начальном значении y0=y
      найдено следующее приближение -- корень y уравнения g2(x,y)=0}

      ExplicitB(yS,y,BS,fS1,gS,0,res,z1);
      if bo then goto 1; g1:=z1[2]; r1:=abs(g1);
      if r1<=eps then begin j:=i; goto 2 end;
      end{i}; k7:=24; bo:=true; j:=20;
   2: z[1]:=x; z[2]:=y; z[3]:=g1; z[4]:=g2; z[0]:=j;
   1: if bo then ferr(k7,res);
      end;

{pb} {отлажено 10.12.2009}
      procedure RootsysPB(xS,yS: char; x,y: real; BS: string1;
                   fS1,fS2: string3;
                    gS: arrofstring; n: byte; eps: real;
                    PS: string1; Zn: arrofreal1;
                    var res: string3; var z: arrofreal1);
      label 1,2;
      var r1,y1,g2,g1: real; i,j,n0,m,m0: byte;
      begin m0:=Length(PS)+1; Pm:=PS+xS; Pn:=Zn;
      for i:=1 to 20 do begin {20 итераций}
      Pn[m0]:=x; RootB(ys,y,BS,fS1,gS,n,eps,res,z); y1:=z[1];
      if bo then goto 1;
      {Из первого уравнения в окрестности заданного начального приближения
      y0 вычислен корень y1 при заданном значении x0=x}
      Pm:=PS; ImplicitB(xS,yS,x,y1,BS,fS1,gS,n,res,z1);
      if bo then goto 1;
      {Из первого уравнения при x=x0 получено разложение неявной функции
      y=y(x) с условием y(x0)=y1.
      Примечание: по построению, функция gS[1] тождественно по x
      рaвна нулю при y=y(x)}

      for j:=1 to n+1 do a6[1,j]:=z1[j+1];
      InverstwoB(xS,yS,x,BS,fS2,gS,n); if bo then goto 1;
      y1:=z1[1]; x:=0; for j:=n+2 downto 2 do x:=z1[j]-x*y1;
      {Фуннкция y(x) подставлена во второе уравнение и найден корень
       x уравнения g2(x,y(x))=0}
      Pm:=PS+xS; RootB(yS,y,bS,fS2,gS,n,eps,res,z); if bo then goto 1;
      y1:=z[1]; y:=z[1]; g2:=z[2];
      {При полученном значении x и текущем начальном значении y0=y
      найдено следующее приближение -- корень y уравнения g2(x,y)=0}
      ExplicitB(xS,x,BS,fS1,gS,0,res,z1);
      if bo then goto 1; g1:=z1[2]; r1:=abs(g1);
      if r1<=eps then begin j:=i; goto 2 end;
      end{i}; k7:=24; bo:=true; j:=20;
   2: z[1]:=x; z[2]:=y; z[3]:=g1; z[4]:=g2; z[0]:=j;
   1: if bo then ferr(k7,res);
      end;


{2.2 -- Решение задачи Коши для ОДУ высокого порядка (m<=5) ****}
{e}   function IntHODE(xS: char;x: real; LS: string1; Yn: arrofreal1;
               sS: string3; x1: real; n: byte;
                var res: string3; var k: integer): real;

      var i,m: byte; gS: arrofstring;
      begin m:=Length(LS);
      for i:=1 to m-1 do gS[i]:=LS[i+1]; gS[m]:=sS;
      Intsys(xS,x,LS,gS,x1,n,res,Yn,k);
      IntHODE:=Yn[1]; if bo then ferr(k7,res) else res:=''  end;

{p}   function IntHODEP(xS: char;x: real; LS: string1; Yn: arrofreal1;
               sS: string3; x1: real; n: byte;
                 PS: string1; Zn: arrofreal1;
                var res: string3; var k: integer): real;
      begin Par(PS,Zn); IntHODEP:=IntHODE(xS,x,LS,Yn,sS,x1,n,res,k) end;

{b}   function IntHODEB(xS: char;x: real; LS,BS: string1;
                  vS: arrofstring; Yn: arrofreal1;
               sS: string3; x1: real; n: byte;
                var res: string3; var k: integer): real;

      var i,m: byte; {gS: arrofstring; }
      begin m:=Length(LS);
      for i:=1 to m-1 do {gS}hS[i]:=LS[i+1]; {gS}hS[m]:=sS;
      IntsysB(xS,x,LS,BS,{gS}hS,vS,x1,n,res,Yn,k);
      IntHODEB:=Yn[1]; if bo then ferr(k7,res) else res:=''  end;

{pb}  function IntHODEPB(xS: char;x: real; LS,BS: string1;
                  vS: arrofstring; Yn: arrofreal1;
               sS: string3; x1: real; n: byte;
               PS: string1; Zn: arrofreal1;
                var res: string3; var k: integer): real;

      var i,m: byte; {hS: arrofstring; }
      begin m:=Length(LS);
      for i:=1 to m-1 do hS[i]:=LS[i+1]; hS[m]:=sS;
      IntsysPB(xS,x,LS,BS,hS,vS,x1,n,PS,Zn,res,Yn,k);
      IntHODEPB:=Yn[1]; if bo then ferr(k7,res) else res:=''  end;


{2.3 -- Решение задачи Коши для системы ОДУ (m<=5)
                  с автоматическим выбором шага ************** }
{e}   procedure Intsys(xS: char; x: real; LS: string1;
              gS: arrofstring; x1: real; n: byte;
              var res: string3; var Yn: arrofreal1; var k: integer);

      label 1; var m: byte; bul: boolean;
      begin k:=0; bul:=false; m:=Length(LS);
      repeat k:=k+1;
      Curves(xS,x,LS,Yn,gS,n,res,a6); if bo then goto 1;
      Steps(x1,m,n,x,bul,Yn) until bul;
   1: if bo then ferr(k7,res) else res:=''  end;

{p}   procedure IntsysP(xS: char; x: real; LS: string1;
              gS: arrofstring; x1: real; n: byte;
              PS: string1; Zn: arrofreal1;
              var res: string3; var Yn: arrofreal1; var k: integer);
      begin Par(PS,Zn); Intsys(xS,x,LS,gS,x1,n,res,Yn,k) end;

{b}   procedure IntsysB(xS: char; x: real; LS,BS: string1;
              gS,vS: arrofstring; x1: real; n: byte;
              var res: string3; var Yn: arrofreal1; var k: integer);
      label 1; var m: byte; bul: boolean;
      begin k:=0; bul:=false; m:=Length(LS);
      repeat k:=k+1;
      CurvesB(xS,x,LS,Yn,gS,n,BS,vS,res,a6); if bo then goto 1;
      Steps(x1,m,n,x,bul,Yn) until bul;
   1: if bo then ferr(k7,res) else res:=''  end;

{pb}  procedure IntsysPB(xS: char; x: real; LS,BS: string1;
              gS,vS: arrofstring; x1: real; n: byte;
              PS: string1; Zn: arrofreal1;
          var res: string3; var Yn: arrofreal1; var k: integer);
       begin Par(PS,Zn); IntsysB(xS,x,LS,BS,gS,vS,x1,n,res,Yn,k) end;


end.{unit}

{ ********************************************** }
{Исходный вариант процедуры Rootsys, заменен (совмещен с RootsysP)
26 ноября 2009 г.; этот вариант тоже работает и даже проще}
      procedure Rootsys(xS,yS: char; x,y: real; fS1,fS2: string;
                        n: byte; eps: real;
                        var res: string; var z: array of real);
      label 1,2;
      var r1,y1,g2,g1: real; i,j,n0: byte;
      Qn: arrofreal1;
      begin
      for i:=1 to 20 do begin {20 итераций}

      Qn[1]:=x; RootP(yS,y,fS1,n,eps,xS,Qn,res,z); y1:=z[1];
{      writeln(y,y1);}
      if bo then goto 1; {write (111); goto 1; no}
      {Из первого уравнения в окрестности заданного начального приближения
      y0 вычислен корень y1 при заданном значении x0=x};
      Implicit(xS,yS,x,y1,fS1,n,res,z1);
{      writeln('from g1 implicit y(x), x=',x:8, z1[1]:8,z1[2]:8);}
      if bo then goto 1;
      {Из первого уравнения при x=x0 получено разложение неявной функции
      y=y(x) с условием y(x0)=y1.
      Примечание: по построению, функция gS[1] тождественно по x
      рaвна нулю при y=y(x)}

      for j:=1 to n do a6[1,j]:=z1[j+1];
      Inverstwo(xS,yS,x,fS2,n);
      if bo then goto 1;
      y1:=z1[1]; x:=0; for j:=n+2 downto 2 do x:=z1[j]-x*y1;
      {Фуннкция y(x) подставлена во второе уравнение и найден корень
       x уравнения g2(x,y(x))=0}
      Qn[1]:=x; RootP(yS,y,fS2,n,eps,xS,Qn,res,z);
      y:=z[1]; g2:=z[2];
      {При полученном значении x и текущем начальном значении y0=y
      найдено следующее приближение -- корень y уравнения g2(x,y)=0}
{      writeln('from g2 x= ',x);}
      Qn[1]:=y; ExplicitP(xS,x,fS1,0,yS,Qn,res,z1);
      if bo then goto 1; g1:=z1[2]; r1:=abs(g1);
      if r1<=eps then begin j:=i; goto 2 end;
      end{i}; k7:=24; bo:=true; j:=20;
   2: z[1]:=x; z[2]:=y; z[3]:=g1; z[4]:=g2; z[0]:=j;
   1: if bo then ferr(k7,res);
    end;
                    ******************