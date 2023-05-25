program Project2;

{$APPTYPE CONSOLE}

uses
  SysUtils;

type
   MMM = object
   private
     dengi : Integer;
     nujno : Integer;
   public
     constructor start;
     destructor Done;
     procedure naeb;
     function sravnenie : Integer;
     function vivod : Integer;
   end;

function MMM.sravnenie: Integer;
begin
if dengi > nujno  then writeln('Horoshaya rabota, zarabotali = ', dengi, ' nyjno bilo = ', nujno)
else writeln('dela plohi')
end;
//оверлоад отдельно от объекта. С ним можно брать 2 функции с одинаковыми иминами)))))))
function neznay(num1, num2: integer): Integer; overload;
begin
 result:= num1 + num2
end;
function neznay(num1, num2: Real): Real; overload;
begin
 result:= num1 + num2
end;


procedure MMM.naeb;
var
  a,b: integer;
begin
  randomize;
  a := random(10000);
  dengi := dengi + a;
end;

function MMM.vivod : Integer;
begin
   vivod := dengi;
end;

constructor MMM.start;
begin
  randomize;
  dengi := 100;
  readln(nujno)
end;

destructor MMM.Done;
begin
   WriteLn('MMM zakrivaetsa');
end;

var
   maza: MMM;
   name, n: string;

begin
   readln(name);
   n:= Copy(name, 1, 5);
   writeln(Format('%50s', [n]));
   writeln(neznay(100, 20));
   writeln(neznay(5.2, 3.4));
   maza.start;
   maza.naeb;
   maza.naeb;
   maza.sravnenie;
   maza.Done;
   readln;
end.

