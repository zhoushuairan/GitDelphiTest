unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    btn1: TButton;
    btn2: TButton;
    lbl1: TLabel;
    lbl2: TLabel;
    edt1: TEdit;
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
var
  i,X:Integer;

procedure TForm1.FormCreate(Sender: TObject);
begin
  X:=Random(100);
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
  X:=Random(100);
  i:=0;
  edt1.Text:='';
  lbl1.Caption:='开始 ';
  btn1.Enabled:=false;
  
end;

procedure TForm1.btn2Click(Sender: TObject);
var
  my_data:Integer;
begin
  try
    my_data:=StrToInt(edt1.Text);
    i:=i+1;
  if my_data<>X then
  begin
    if i<4 then
    begin
      lbl1.Left:=80;
      if my_data<X then
      begin
        if MessageDlg('您猜的数太小了！还玩吗》',mtConfirmation,[mbYes,mbNo],0)=mryes then
          lbl1.Caption:='加油'
        else
          lbl1.Caption:='欢迎以后在玩';
      end
      else if my_data>X then
      begin
        if MessageDlg('您猜的数太大了！还玩吗？',mtConfirmation,[mbYes,mbNo],0)=mryes then
          lbl1.Caption:='加油'
        else
          lbl1.Caption:='欢迎以后在玩';
      end
    end
    else
    begin
      lbl1.Left:=30;
      lbl1.Caption:='抱歉，你没有机会了！';
      btn1.Enabled:=True;
    end;
    lbl1.Visible:=true;
  end
  else if my_data=X then
  begin
    lbl1.Visible:=false;
    if MessageDlg('您猜的对了！还玩吗？',mtConfirmation,[mbYes,mbNo],0)=mryes then
      btn1.Enabled:=True;
    lbl1.left:=80;
  end;
  except
    on EConvertError do
      ShowMessage('请输入1-100之间的数字。');
  end;

end;


end.
