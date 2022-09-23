unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    procedure Edit1Click(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure Label4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Edit1Click(Sender: TObject);
begin
    Edit1.Text:='';
end;

procedure TForm1.Label1Click(Sender: TObject);
var
  temp: Integer;
begin
     temp:=StrToInt(Edit1.Text);
     Label5.Caption:=IntToStr(temp mod 10);
end;

procedure TForm1.Label2Click(Sender: TObject);
var
  temp: Integer;
begin
    temp:=StrToInt(Edit1.Text);
    Label6.Caption:=IntToStr(temp mod 100 Div 10);
end;

procedure TForm1.Label3Click(Sender: TObject);
var
  temp: Integer;
begin
    temp:=StrToInt(Edit1.Text);
    Label7.Caption:=IntToStr(temp div 100 mod 10);
end;

procedure TForm1.Label4Click(Sender: TObject);
var
  temp: Integer;
begin
    temp:=StrToInt(Edit1.Text);
    Label8.Caption:=IntToStr(temp div 1000);
end;

end.
