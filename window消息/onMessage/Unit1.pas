unit Unit1;

interface
{Perform、SendMessage 会直接发送消息到窗体过程; 

PostMessage 是把消息放入消息队列.

因为 Application.OnMessage 只接收队列中的消息, 
所以 Perform、SendMessage 发送的消息, OnMessage 收不到.}

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AppEvnts, StdCtrls;

type
  TForm1 = class(TForm)
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure ApplicationEvents1Message(var Msg: tagMSG; var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.ApplicationEvents1Message(var Msg: tagMSG; var Handled: Boolean);
begin
  if Msg.message = wm_lbuttondblclk then
  begin
    ShowMessage('wm_lbuttondblclk');
    Handled := True;
  end;
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
  Self.Perform(WM_LBUTTONDBLCLK, 0, 0);
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
  SendMessage(Self.Handle, WM_LBUTTONDBLCLK, 0, 0);
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
  PostMessage(Self.Handle, WM_LBUTTONDBLCLK, 0, 0);
end;

end.

