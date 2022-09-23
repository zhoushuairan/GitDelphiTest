unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm3 = class(TForm)
    lbl1: TLabel;
    edt1: TEdit;
    btn1: TButton;
    btn2: TButton;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses
  Unit1;

{$R *.dfm}

procedure TForm3.btn1Click(Sender: TObject);
var
  num:Integer;
begin
  try
    num:=StrToInt(edt1.Text);
    form1.lst1.Items.delete(num-1);
    form1.lst2.Items.delete(num-1);
    form1.lst3.Items.delete(num-1);
    form1.lst4.Items.delete(num-1);
    form1.lst5.Items.delete(num-1);
    edt1.Text:='';
  except
    on EConvertError do
      ShowMessage('请输入正确的数字。');
  end;
end;

procedure TForm3.btn2Click(Sender: TObject);
begin
  close;
end;

end.
