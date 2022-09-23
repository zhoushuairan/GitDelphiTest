unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, Grids;

type
  TForm1 = class(TForm)
    strgrid1: TStringGrid;
    btn1: TSpeedButton;
    btn2: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
var
  i:Integer;
begin
  for i:=1 to 9 do
  begin
    strgrid1.Cells[i,0]:=IntToStr(i) ;
    strgrid1.Cells[0,i]:=IntToStr(i) ;
  end;
end;

procedure TForm1.btn1Click(Sender: TObject);
var
  i,j:Integer ;
begin
  for i:=1 to 9 do
    for j:=1 to 9 do
    strgrid1.Cells[i,j]:=IntToStr(i)+'*'+IntToStr(j)+'='+IntToStr(i*j);
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
  Close;
end;

end.
