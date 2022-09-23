unit UnitClient;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    btnConnection: TButton;
    mmoContent: TMemo;
    mmoRecord: TMemo;
    grp1: TGroupBox;
    lbl1: TLabel;
    lbl2: TLabel;
    edtAddr: TEdit;
    edtPort: TEdit;
    mmoLog: TMemo;
    btnSend: TButton;
    procedure btnConnectionClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
uses
  WinSock, ScktComp;

var
  Client: TSocket;

procedure TForm1.btnConnectionClick(Sender: TObject);
var
  ServerAddr: TSockAddrIn;
  RecvContent: array[0..1023] of Char;
begin
//创建socket对象
  client:=socket(PF_INET,SOCK_STREAM,IPPROTO_IP);

  with ServerAddr do begin
    sin_family:=PF_INET;
    //端口号
    sin_port:=StrToInt(edtPort.Text);

    //本机所有有可能的ip作为服务器端的ip
    sin_addr.s_addr:=inet_addr(PAnsiChar(AnsiString(edtAddr.Text)));

  end;
  //链接服务器
 var ConnectResult := connect(Client, TSockAddr(ServerAddr), SizeOf(ServerAddr));
    if ConnectResult <> 0 then begin
        MmoLog.Lines.Add('连接失败');

    end;
end;

end.

