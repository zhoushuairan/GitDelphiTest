unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    edt1: TEdit;
    btn1: TButton;
    edt2: TEdit;
    lbl1: TLabel;
    edt3: TEdit;
    lbl2: TLabel;
    edt4: TEdit;
    lbl3: TLabel;
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  function IDCard(IDNumber:string;var BirthYear,BirthMonth,BirthDay:Integer):Boolean;stdcall;external 'FishCDll.dll'
  function sexCheck(IDNumber:string):PChar;stdcall;external 'FishCDll.dll'
  function AddCheck(IDNumber:string):PChar;stdcall;external 'FishCDll.dll'
  implementation

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
var
  yy,mm,dd:Integer;
begin
  yy:=0;
  mm:=0;
  dd:=0;

  if IDCard(edt1.Text,yy,mm,dd) then
  begin
    edt2.Text:=IntToStr(yy)+'年'+IntToStr(mm)+'月'+IntToStr(dd)+'日';
    edt3.Text:=StrPas(sexCheck(edt1.Text));
    edt4.Text:=StrPas(AddCheck(edt1.Text));
  end
  else if  yy=-1 then
    edt4.Text:='位数不够'
  else
    edt4.Text:='未通过验证，请重新输入';
end;

end.
