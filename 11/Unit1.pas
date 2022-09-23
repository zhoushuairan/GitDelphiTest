unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Buttons;

type
  TForm1 = class(TForm)
    memo1: TMemo;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    dtp1: TDateTimePicker;
    btn4: TSpeedButton;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure dtp1Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure FormShow(Sender:TObject);
    constructor Create(AOwner: TComponent); override;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
 var
  hNotePad:HWND;
  hedit:HWND;
{ TForm1 }

constructor TForm1.Create(AOwner: TComponent);
begin
  inherited;
  Memo1.Text:='这是猪悟能的postmessage测试';
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  //PostMessage(Handle,WM_USER+99,0,0);
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
    //dtp1.Format:='';
    hNotePad:=FindWindow('Notepad','无标题 - 记事本');
    if hNotePad<>0 then
    begin
      hedit:=FindWindowEx(hNotePad,0,'edit',nil);
      PostMessage(hedit,WM_CHAR,Wparam('B'),0);
      Writeln('send');
    end;
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
  { TODO -o猪悟能 : 发送串必须用sendMessage }
   hNotePad:=FindWindow(nil,'无标题 - 记事本');
   if hNotePad<>0 then
   begin
    hedit:=FindWindowEx(hNotePad,0,'edit',nil);
    SendMessage(hedit,WM_SETTEXT,Length(Memo1.Text),
      Integer(PChar(Memo1.Text)));
    Writeln('send');
   end;
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
  begin
 hNotePad:=FindWindow('Notepad','无标题 - 记事本');
  if hNotePad<>0 then
  begin
    hedit:=FindWindowEx(hNotePad,0,'edit',nil);
    PostMessage(hedit,WM_CHAR,Wparam($bd),0);
    PostMessage(hedit,WM_CHAR,Wparam($f1),0);
    Writeln('send');
  end;
end;
end;

procedure TForm1.dtp1Click(Sender: TObject);
begin
  dtp1.Format:='';

end;

procedure TForm1.btn4Click(Sender: TObject);
var
  pmt:TpopupMenu;
begin
with btn4.ClientToScreen(Point(0,0)) do

end;

end.
