unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  jpeg,Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    edt1: TEdit;
    btn1: TButton;
    grp1: TGroupBox;
    pnl1: TPanel;
    img1: TImage;
    dlgOpen1: TOpenDialog;
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
var
  Pic:string;
begin
  if dlgOpen1.Execute then
  begin
    pic:=dlgOpen1.FileName;
    if Pic<>'' then
    begin
      edt1.Text:=Pic;
      img1.Picture.LoadFromFile(pic);
    end;
  end;
end;

end.
