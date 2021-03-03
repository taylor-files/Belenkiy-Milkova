unit Control; { 10 декабря 2009 г.}

    interface
    uses Orbitap;  { Из Orbitap взят только тип stringj3 }
{    type
    string3=string[100];}
{    var
    res: string;
    fS: string[100];
    kc: byte;
     i: byte;
     t: char;
    label 1;}
function CSint(sS: string3; var res: string3): byte;
    implementation
    var s0: string3;
function Instr(s: char): byte;
      label 1; var i: byte; begin for i:=1 to Length(s0) do
      if(s0[i]=s) then goto 1; i:=0;    1: Instr:=i end;
function CSint(sS: string3; var res: string3): byte;
    var
    i0,i1,i,j,n,l,k: byte;
    n0,m: integer;
    {s0,}s1,s2,s3,s4,s5,s6: string[100];
    ch: char;
    w: boolean;
    err: string;
    label E,E0,E1,E2,E3,Ei,Ef,Es,Et,
          1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16;
    begin
    s0:='wijklmnabcdefghopqrstxyzuv+-*/^.)E(0123456789';
    {буквы 1-26, символы 27-35, цифры 36-45}
    {i,l,n -- в функциях sin,log,tan}
    s1:='sin cos tan sqr log exp arc';

    n:=length(sS); k:=0; if n=0 then goto E;
    {есть ли недопустимые символы, k=1; отлажено}
    for i:=1 to n do begin ch:=sS[i];
    if Instr(ch)=0 then begin k:=1; i1:=i; goto E end end;

                 {баланс скобок, k=2-4; отлажено}
    m:=0; for i:=1 to n do begin ch:=sS[i];
    if ch=')' then begin m:=m-1;
    if m<0 then begin k:=2; i1:=i; goto E end end;
    if ch='(' then begin m:=m+1; if i=n then goto E0;
    if sS[i+1]=')' then begin k:=13; i1:=i; goto E end;
    if m>6 then begin k:=3; i1:=i; goto E end end{(} end{i};
    if m>0 then begin
E0: k:=4; goto E end;

    {правильность записи стандартных функций, k=6-8; отлажено}
    i:=0;
 1: i:=i+1; if i<n-1 then begin
        for j:=0 to 2 do if Instr(sS[i+j])>26 then goto 1;
        i1:=i; s2:=Copy(sS,i,3);
        m:=-3; for j:=1 to 7 do
                begin m:=m+4;
                if s2=Copy(s1,m,3) then goto 2 end;
        k:=6; goto E;
 2:     if j<7 then goto 3; if i+7>n then goto Et;
        i:=i+3; s2:=Copy(sS,i,3);
        m:=-3; for j:=1 to 3 do
                begin m:=m+4;
                if s2=Copy(s1,m,3) then goto 3 end;
Et:        k:=7; goto E;
 3:     i:=i+3; if (i<n) and (sS[i]='(') then goto 1;
        k:=8; i1:=i; goto E;
     end{i};

    { Проверка концевого символа k=12, точка в кoнце числа k=14
     и недопустимое соседство, k=5;  отлажено}
    for i:=1 to n do begin; ch:=sS[i];
    j:=Instr(ch); if i=n then begin
    if not ((j>26) and (j<36) and (j<>33)) then goto Ef;
    k:=12; i1:=i; goto E end{i=n}; m:=Instr(sS[i+1]);
    if (j>26) and (j<32) and
       (m>26) and (m<35) then goto Es;
    if (ch=')') and ((m<26) or ((m>31) and (m<>33)))
       then goto Es;
    if (j<27) then begin if i<3 then goto E3;
      for j:=1 to 2 do if Instr(sS[i-j])<27 then goto Ef;
E3: if (m>31) and (m<>33) then
Es:    begin k:=5; i1:=i; goto E end end;
Ef: if (ch='.') and (Instr(sS[i-1])>35)
      and (Instr(sS[i+1])<36) then
      begin k:=14; i1:=i; goto E end;

end{i};

{    if (i<n) and (j=33) then begin ch:=sS[i+1];
    if not (((m>26) and (m<32)) or (m=33)) then
    begin k:=13; i1:=i+1; goto E end end;
    if (i>1) and (j=35) then begin ch:=sS[i-1]; m:=Instr(ch);
    if not (((m>26) and (m<35)) or (m=35)) then
    begin k:=14; i1:=i-1; goto E end end;}


            {нет ли запрещенных переменных, k=9-10; отлажено}
         for i:=1 to n-1 do begin if n>3 then begin
         for j:=0 to 2 do if Instr(sS[i+j])>26 then goto 4;
         i:=i+2; goto 5 end; {обход трехбуквенных стандартных функций}
 4:      if n>1 then begin i1:=i; ch:=sS[i]; j:=Instr(ch);
         if (j<27) and (Instr(sS[i+1])<27) then
          begin k:=10; s2:=Copy(sS,i,2); goto E end end;
          {нет ли неоднобуквенных переменных}
         if j<8 then begin k:=9; goto E end; {нет ли w,i,j,k,l,m,n}
 5:     end;

              {правильность записи чисел, k=5; отлажено}
        w:=true; i:=0;
Ei:     i:=i+1; if i>n then goto 16;
        j:=Instr(sS[i]);
         if j<36 {первая цифра} then goto Ei;
         if i=1 then goto 6;
         ch:=sS[i-1]; j:=Instr(ch);
         if (j<27) or ((ch='.') and (w))
            or (ch=')') or (ch='E') then
            begin k:=5; i1:=i-1; goto E end{проверка слева};

            {проверка справа}
 6:      for l:=i+1 to n do begin ch:=sS[l];
          j:=Instr(ch); if j<36 then goto 7 end; goto 16;
 7:      if (j<27) or (ch='(')  then
 8:       begin k:=5; i1:=l-1; ch:=sS[i1]; i1:=l-1; goto E end;
         if ((j>26) and (j<32)) or (ch=')') then
          goto E1{конец целого числа};

         if ch<>'E' then goto 10;
         {порядок числа}
         ch:=sS[l+1]; j:=Instr(ch);
         if (ch<>'+') and (ch<>'-') and (j<36) then
          begin k:=5; i1:=l; ch:='E'; goto E end;
         if (ch='+') or (ch='-') then l:=l+1;
         for l:=l+1 to n do begin ch:=sS[l];
         j:=Instr(ch); if j<36 then goto 9 end; goto 16;
 9:      if not (((j>26) and (j<32)) or (ch=')')) then {goto E1;}
         begin k:=5; l:=l-1; ch:=sS[l]; i1:=l; goto E end;
         goto E1{конец целого числа с порядком};
10:       {целое число после десятичной точки (мантисса)}
         if not w then begin w:=true;  goto 8 end;
         i:=l+1; w:=false; goto 6;

E1:      i:=l; w:=true; goto Ei;

           {Проверка степенного выражения, k=11-12; отлажено}
16:   i:=0;
14:   i:=i+1; if i>n-1 then goto E;
      if sS[i]<>'^' then goto 14; i0:=i{запоминание позиции};
{      writeln(i,'  n= ',n); read(ch);}  ch:=sS[i+1];
      if ch='(' then begin
11:   m:=1;
        for j:=i+2 to n do begin ch:=sS[j];
{         if ch='^' then begin k:=11; i1:=j; goto E end;}
         if ch='(' then m:=m+1;
         if ch=')' then begin
          m:=m-1; if m=0 then
           begin ch:=sS[j+1]; if ch<>'^' then
                  begin i:=j; goto 14 end else
                  begin k:=11; i1:=i0; i:=j+1; goto E end;
            {k:=11; i1:=j+1; goto E;} end{m} end{)} end{j};
      end{"(": конец выражения};
{      writeln(i); read(ch);      }
      if i>n-3 then goto 13;
         for j:=1 to 3 do if Instr(sS[i+j])>26 then goto 13;
         i:=i+3; goto 11;
13:    j:=Instr(ch); if j<27 then
       begin if sS[i+2]<>'^' then goto 14;
       k:=11; i1:=i0{i+2}; goto E end;
{       write(111);}
       if j>35 then begin {начало числа}
12:      for j:=i+2{1} to n do
          begin ch:=sS[j]; m:=Instr(ch);
{           if m=32 then begin k:=14; i1:=j; goto E end;}
           if m<36 then goto 15 end;
           {i:=j; goto 14;} goto E;
        {учтено, что скобок быть не может
         и буква не может следовать за числом, это проверено выше}
15:     if ch='^' then begin k:=11; i1:=j; goto E end;
        if sS[j-1]='E' then begin i:=j; goto 12 end;
       i:=j; goto 14 end; {конец числа}
{       k:=12; i1:=i; }

E:    if k=0 then goto E2;
      Str(i1:2,s3); Str(i1+1:2,s4); Str(m:2,s5); Str(i:2,s6);

      case k of

{ ********              Список ошибок            ******** }
 1:   err:='   Пробел в позиции '+s3;
 2:   err:='   Закрывается неоткрытая скобка: символ  "'+ch+
           '"  в позиции   '+s3;
 3:   err:='   Глубина скобок больше допустимого значения k=6: символ  "'
            +ch+'"  в позиции   '+s3;
 4:   err:='   Не закрыты '+s5+'  открывающих скобок';
 5:   err:='   Недопустимое соседство символов  "'+ch+'" и "'
             +sS[i1+1]+'" в позициях  '
             +s3+','+s4;
 6:   err:='   Неправильная запись  '+s2+'  элементарной функции '
           +'в позиции '+s3;
 7:   err:='Неправильная запись  '+Copy(sS,i1,6)+
            '  обратной тригонометрической функции в позиции '+s3;
 8:   err:='   Аргумент стандартной функции должен быть в скобках,'+
            ' ошибка в позиции  '+s3;
 9:   err:='   Использован недопустимый идентификатор переменных  '+ch
            +'  в позиции  '+s3;
10:   err:='   Использован двухбуквенный идентификатор переменных  '
            +s2+' , что  недопустимо';
11:   err:='Неопределенность: двукратное возведение в степень, '+
           'символ "^" в позициях '+s3+' и '+s6;
12:   err:='Недопустимый символ  '+ch+'  в конце формулы';
13:   err:='Пустые скобки в позициях  '+s3+','+s4;
14:   err:='Точка в конце числа в позиции  '+s3+' , это недопустимо';
{Ошибка в записи показателя степени в позиции  '+s4;}
{           'Duble Power function: symbol "^" in positions   ,+s4;
13:   err:='Notfeasible symbol after ) '+ch+' in position '+s3;
14:   err:='Notfeasible symbol "'+ch+'" befor ")" in position '+s3;}
end{case of};
    res:=err;
E2: CSint:=k;
end{func CSint};
end{unit}.
{*********************}
   begin {начало работы программы}
   ClrScr;
{  sS:='(a+c)+(b^2)^d+(4.5E-4^(+3*a))^c-arccos(3.2*h)+3.4E7*b^sin(x+2)+x^2';}
    sS:='((x^245)*g+1)';
   if not CSint(sS,res) then begin writeln(' Все в порядке'); goto 1 end;
   write(res);
1:   read(t);

 end.
.
{ **************************************** }
   2: begin writeln('   Закрывается неоткрытая скобка:');
            writeln('   символ  "',ch,'"  в позиции   ',i1) end;
   3: begin writeln('   Глубина скобок больше допустимого значения m=6:');
            writeln('   символ  "',ch,'"  в позиции   ',i1) end;
   4: writeln('Не закрыты  ',m,'  открывающих скобок');
   5: begin writeln('   Недопустимое соседство символов  ',ch,' и  ',sS[i1+1]);
            write('   на позициях  ',i1,',',i1+1) end;
   6: write('   Недопустимая запись из трех букв ',s2);
   7: begin write('   Неправильная запись обратной ');
            writeln('тригонометрической функции ');
            write('   в позициях  ',i1+3,' - ',i1+5) end;
   8: begin writeln('   Аргумент стандартной функции должен быть в скобках,');
            write('   ошибка в позиции ',i1) end;
   9: write('   Использован недопустимый идентификатор переменных  ',ch);
  10: begin write('   Использован двухбуквенный идентификатор переменных');
            writeln('  ',s2,' ,'); write('   что недопустимо') end;


function Mid(str: string; m,n: byte): string;
    var i: byte; s: string;
    begin s:=''; for i:=m to m+n-1 do s:=s+str[i]; Mid:=s end{func};


{**********************************************}



{**********************************************}


1. function Mid(str1:  string;  m,n: byte): string; копирует из строки
str1 отрезок длины n, начиная с позиции m. Идентична стандартной
функции Copy.

2. function Instr(str:  string;  s:  char): byte; находит в строке str
наименьший номер i4 позиции,  где встречается символ char. Если такого
номера нет, то i4:=0. Это частный случай стандартной функции Pos.

3. function SmartBoy:  byte; имеющая по умолчанию аргументы i1,k1 (целые)
и c4 (строка), обрабатывает строку c4, начиная с позиции i1 .

************************************************
В инструкцию:
                          Общие указания

1. В записи формул все идентификаторы переменных  однобуквенные,
   полный список допустимых идентификаторов приводится ниже.
2. Все используемые в записи формул переменные интерпретируются
   как имеющие тип "real", их можно не описывать в программе
   абанента (другие, не используемые в формулах, переменные могут
   быть описаны абонентом, но если они являются элементами списка,
   то это не обязательно).
3. Переменные  делятся  на  активные  (участвующие  в  операциях
   дифференцирования;   среди  них  --  "основная",  по  которой
   производится разложение) и пассивные  (сторонние  параметры).
   Все  переменные (активные и пассивные)  должны  иметь
   присвоенные им значения; есть одно исключение:  буква  "р"
   интерпретируется как "pi" (см. ниже) и  не требует
   присваивания  со  стороны  абонента.
4. В рабочей версии для обозначения переменных  (  в  том  числе
   основной)     могут    выбираться    любые    (однобуквенные)
   идентификаторы из списка. В интерактивной версии  обозначения
   предлагаются  в  соответствующих  окнах, причем  основная
   переменная обозначается через "х".
5. Длина формулы не более 99 символов, пробелы недопустимы.
6. Допустимая глубина скобок не  более  5.
7. Порядок разложения n не более 10 (в интерактивной версии
   не более 9); для разложения не самой функции, а ее
   производной, порядок n не больше 9.

                      **************
                      Запись формул

1. Список допустимых идентификаторов переменных:
     "a,b,c,d,e,f,g,h,o,p(=pi),q,r,s,t,u,v,x,y,z".
   Все  переменные  интерпретируются  как  тип  real,  хотя они
   могут принимать и целые значения.
      Примечания: 1) буквы "i,j,k,l,m,n,w" не включены
   в список, они резервировны для внутреннего пользования;
   2) буква может использоваться только как однобуквенный
   заменитель принятого в PASCALе обозначения числа pi=3.1415...
2. Знаки операций: "+,-,*,/,^" -- сложение, вычитание, умножение,
                                  деление, возведение в степень.
      Примечание: в языке PASCAL операция "^" отсутствует.

3. Выражение a^b интерпретируется в  соответствии  со  следующим
   алгоритмом:

   r:=0; if a=0 then begin if b<=0 then r:=?; goto 1 end;
   if b целое then begin n:=abs(b); r:=1;
      for i:=1 to n do r:=r*a; if b<0 then r:=1/r; goto 1 end;
      if a>0 then r:=exp(b*ln(a)) else r:=?;  1: a^b:=r.

   Здесь  r=?  означает,  что  значение  r не определено; в этом
   случае выдается сообщение об ошибке.
   С помощью скобок можно создавать "многоэтажные конструкции"
   вида a^(b^(c^d)). Безскобочная запись a^b^c недопустима --
   она создает неопределенность в интерпретации.

4. Знаки функций:
   "exp,log,sin,cos,tan" -- экспонента, логарифм натуральный,
                            синус, косинус, тангенс.
   "arcsin,arccos,arctan" -- обратные тригонометрические функции.

   Аргумент функции должен быть в скобках.
      Примечание: В языке Pascal функции  "tan,arcsin,arccos"
   отсутствуют, а  логарифм натуральный обозначается через "ln".

5. При записи числа используется десятичная точка (а не запятая).
   Число не  может  начинаться с десятичной точки и не может
   заканчиваться ею. Порядок числа обозначается символом "E",
   причем сам порядок может быть только целым числом.
