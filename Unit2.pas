unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
   procedure KvadrKoren(a,b,c:real; var x1,x2:real);
   function Faktorial(n:word):word;
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

{ TForm2 }

procedure TForm2.Button1Click(Sender: TObject);
var a1,b1,c1, x1,x2:real;
begin
a1:=1; b1:=2; c1:=-3;
x1:=10000; x2:=10000;
InputBox('', 'начальные значения', 'x1= '+FloatToStr(x1)+' x2= '+FloatToStr(x2));
KvadrKoren(1, 2, -3, x1,x2);
InputBox('Процедура Квадр', 'корни', 'x1= '+FloatToStr(x1)+' x2= '+FloatToStr(x2));
end;

procedure TForm2.Button2Click(Sender: TObject);
var i:integer; b:word;
begin
for i:=1 to 10 do
Memo1.Lines.Add('Факториал n='+IntToStr(i)+' равен '+IntToStr(Faktorial(i)));
b:=Faktorial(10);
ShowMessage('10! ='+IntToStr(b));
end;

function TForm2.Faktorial(n: word): word;
var i,j:word;
begin
j:=1;
for i:=1 to n do j:=j*i;
Result:=j;
end;

procedure TForm2.KvadrKoren(a, b, c: real; var x1, x2: real);
var D:real;
begin
D:=sqr(b)-4*a*c;
if D<0 then begin ShowMessage('Корней нет');exit; end;
x1:=(-b+sqrt(D))/(2*a); x2:=(-b-sqrt(D))/(2*a);
a:=10000; b:=10000; c:=10000;
end;

end.
