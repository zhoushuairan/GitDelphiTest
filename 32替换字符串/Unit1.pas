unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ToolWin, ComCtrls;

type
  TForm1 = class(TForm)
    mmo1: TMemo;
    lbl1: TLabel;
    edt1: TEdit;
    lbl2: TLabel;
    edt2: TEdit;
    lbl3: TLabel;
    cbb1: TComboBox;
    btn1: TButton;
    ToolBar1: TToolBar;
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
  s,s1:string;
begin
  s:=mmo1.Text;
  case cbb1.ItemIndex of
    0:s1:=StringReplace(s,edt1.Text,edt2.Text,[]);
    1:s1:=StringReplace(s,edt1.Text,edt2.Text,[rfReplaceAll]);
    2:s1:=StringReplace(s,edt1.Text,edt2.Text,[rfIgnoreCase]);
    3:s1:=StringReplace(s,edt1.Text,edt2.Text,[rfReplaceAll,rfReplaceAll]);
  end;
  mmo1.Text:=s1;
end;

end.
