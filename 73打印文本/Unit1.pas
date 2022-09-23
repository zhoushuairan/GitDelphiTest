unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,Printers, StdCtrls;

type
  TForm1 = class(TForm)
    mmo1: TMemo;
    btn1: TButton;
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
begin
  with Printer do
  begin
    BeginDoc;
    Canvas.TextRect(Rect(200,200,PageWidth-200,PageHeight-200),200,200,mmo1.Lines.Text);
    EndDoc;
  end;
end;

end.
