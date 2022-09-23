unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    edt6: TEdit;
    lbl8: TLabel;
    edt7: TEdit;
    btn1: TButton;
    lbl9: TLabel;
    btn2: TButton;
    btn3: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  s1,s2,s3,s4,s5,s6:Integer;
implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);

begin
  s1:=0;
  s2:=0;
  s3:=0;
  s4:=0;
  s5:=0;
  s6:=0;
  edt1.Text:=IntToStr(s1);
  edt2.Text:=IntToStr(s2);
  edt3.Text:=IntToStr(s3);
  edt4.Text:=IntToStr(s4);
  edt5.Text:=IntToStr(s5);
  edt6.Text:=IntToStr(s6);
end;

procedure TForm1.btn1Click(Sender: TObject);
var
  max:Integer;
  flag:Integer;
begin
  max:=s1;
  flag:=1;
  if(s2>max) then
  begin
    max:=s2;
    flag:=2;
  end
  else if(s3>max) then
  begin
    max:=3;
    flag:=3;
  end
  else if(s4>max) then
  begin
    max:=4;
    flag:=4;
  end
  else  if(s5>max) then
  begin
    max:=5;
    flag:=5;
  end
  else  if(s6>max) then
  begin
    max:=6;
    flag:=6;
  end;
  case flag of
  1:ShowMessage('先进个人是A，的票数'+IntToStr(max));
  2:ShowMessage('先进个人是B，的票数'+IntToStr(max));
  3:ShowMessage('先进个人是C，的票数'+IntToStr(max));
  4:ShowMessage('先进个人是D，的票数'+IntToStr(max));
  5:ShowMessage('先进个人是E，的票数'+IntToStr(max));
  6:ShowMessage('先进个人是F，的票数'+IntToStr(max));
  end;
end;

procedure TForm1.btn2Click(Sender: TObject);
var
  i:Integer;
begin
  try
    i:=StrToInt(edt7.Text);
    if((i>6)or(i<1)) then
      ShowMessage('请输入1-6的数字');
    case i of
      1:s1:=s1+1;
      2:s2:=s2+1;
      3:s3:=s3+1;
      4:s4:=s4+1;
      5:s5:=s5+1;
      6:s6:=s6+1;
      end;
      edt1.Text:=IntToStr(s1);
      edt2.Text:=IntToStr(s2);
      edt3.Text:=IntToStr(s3);
      edt4.Text:=IntToStr(s4);
      edt5.Text:=IntToStr(s5);
      edt6.Text:=IntToStr(s6);
    except
      on EConvertError do
        ShowMessage('请在编辑框中输入正确数字。');
    end;

end;

procedure TForm1.btn3Click(Sender: TObject);
begin
  ShowMessage('拉闸防水'); 
end;

end.
