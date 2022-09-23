unit client;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    btn1: TButton;
    procedure btn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
uses
  WinSock, ScktComp, InWinSock2, IdWinSock2;
{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
var
  client:TSocket;
  serverAddr: TSockAddrIn;
begin

  //����socket
  client:= socket(pf_inet, sock_stream, ipproto_ip);

  //��װip�Ͷ˿�
  with serverAddr do
  begin
    sa_family := pf_inet;
    sin_port := 8080;
    sin_addr.S_addr := inet_addr('127.0.0.1');
  end;
  //���ӷ�����


end;

procedure TForm1.FormCreate(Sender: TObject);
const
  WINSOCKET_VERSION = $0202;
var
  WSAData: TWSAData;
begin
//��ʼ������汾
  if WSAStartup(winsock_version, WSAData) <> 0 then
  begin
    Form1.Caption:='������ʼ��ʧ��';
  end;
end;

end.
