unit Server;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm2 = class(TForm)
    mmo1: TMemo;
    btn1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses
  WinSock, ScktComp, InWinSock2, IdWinSock2;
{$R *.dfm}
var
  server1: TSocket;
procedure TForm2.FormCreate(Sender: TObject);
const
  WINSOCKET_VERSION = $0202;
var
  WSAData: TWSAData;
begin
  //���嵱ǰʹ�õ������汾
  if WSAStartup(winsock_version, WSAData) <> 0 then
  begin
    ShowMessage('��ʼ��ʧ��');
  end;
  mmo1.Lines.Add('�����ʼ���ɹ�');
end;

procedure TForm2.btn1Click(Sender: TObject);
var

  serverAddr: TSockAddrIn;
  addrLen1: Integer;
  CustomWInSOcket: TCustomWinSocket;
  ClientSocket: Integer;
begin
  //��������������
  server1 := socket(pf_inet, sock_stream, ipproto_ip);
  if server1 = INvalid_socket then
  begin
    mmo1.Lines.Add('����������ʧ��');
    Exit;
  end;
  mmo1.Lines.add('�����������ɹ�');

  //���������ƶ�ip�Ͷ˿�
  //��װ��Ϣ
  with serverAddr do
  begin
    sa_family := pf_inet;
    sin_port := 8080;
    sin_addr.S_addr := inet_addr('127.0.0.1');
  end;

  if bind(server1, @serverAddr, sizeof(serverAddr)) = socket_error then
  begin
    mmo1.Lines.Add('�˿ںű�ռ��');
    Exit;
  end;
  mmo1.Lines.add('IP�Ͷ˿ڰ󶨳ɹ�');
  //������ǰip�Ͷ˿�

  if listen(server1, somaxconn) = socket_error then
  begin
    mmo1.Lines.Add('����ʧ��');
  end;
  mmo1.Lines.Add('�����ɹ�');
  addrLen1 := SizeOf(serverAddr);
  ClientSocket := accept(server1, @serverAddr, @addrLen1);
  if ClientSocket = invalid_socket then
  begin
    case ClientSocket of
      wsaefault:
        mmo1.Lines.Add('��ȡipʧ��');
    end;
    mmo1.Lines.Add('��ȡ����ʧ��');
    Exit;
  end;

  //�����淵�ؽ���ɹ�ʱ�������пͻ������ӵ�������
  //���ͻ������ӳɹ�ʱ����ʾһ�¿ͻ��˵�ip
  CustomWInSOcket := TCustomWinSocket.Create(ClientSocket);
  mmo1.Lines.Add('�ͻ���ip'+CustomWInSOcket.RemoteAddress);
end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //�ر�socket
  if server1 <> invalid_socket then
  begin
    closesocket(server1);
  end;

  //����汾����Ϣ
  if WSACleanup = socket_error then
  begin
    ShowMessage('����汾��ʧ��');
  end;
end;

end.

