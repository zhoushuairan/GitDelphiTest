unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    edt1: TEdit;
    edt2: TEdit;
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
var
  year1,year2,year,leap,k,m:Integer;
begin
  try
    Canvas.Refresh;
    year1:=StrToInt(edt1.Text);
    year2:=StrToInt(edt2.Text);
    k:=0;m:=0;

    if(year1>year2) then
      ShowMessage('请在第二个编辑框中输入较大的年份')
    else if(year2-year1>150) then
      ShowMessage('请输入年份间隔100以内的年份')
    else
    begin
      Canvas.TextOut(30,100,edt1.Text+'年与'+edt2.Text+'年之间的闰年列表如下：');
      while(year1<year2) do
      begin
        if(year1 mod 4=0) then
          if((year1 mod 100<>0)or(year1 mod 400=0)) then
          begin
            Canvas.TextOut(30+m*50,120+(k div 300)*20,IntToStr(year1));
            k:=k+50;
            m:=(k mod 300)div 50
          end;
          year1:=year1+1;
      end;
    end;
    except
      on EConvertError do
      ShowMessage('请在编辑框中输入正确的数值');
    end;
end;

end.
