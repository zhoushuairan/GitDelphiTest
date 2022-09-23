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
  //定义当前使用的网络库版本
  if WSAStartup(winsock_version, WSAData) <> 0 then
  begin
    ShowMessage('初始化失败');
  end;
  mmo1.Lines.Add('网络初始化成功');
end;

procedure TForm2.btn1Click(Sender: TObject);
var

  serverAddr: TSockAddrIn;
  addrLen1: Integer;
  CustomWInSOcket: TCustomWinSocket;
  ClientSocket: Integer;
begin
  //创建服务器对象
  server1 := socket(pf_inet, sock_stream, ipproto_ip);
  if server1 = INvalid_socket then
  begin
    mmo1.Lines.Add('服务器创建失败');
    Exit;
  end;
  mmo1.Lines.add('服务器创建成功');

  //给服务器制定ip和端口
  //组装信息
  with serverAddr do
  begin
    sa_family := pf_inet;
    sin_port := 8080;
    sin_addr.S_addr := inet_addr('127.0.0.1');
  end;

  if bind(server1, @serverAddr, sizeof(serverAddr)) = socket_error then
  begin
    mmo1.Lines.Add('端口号被占用');
    Exit;
  end;
  mmo1.Lines.add('IP和端口绑定成功');
  //监听当前ip和端口

  if listen(server1, somaxconn) = socket_error then
  begin
    mmo1.Lines.Add('监听失败');
  end;
  mmo1.Lines.Add('监听成功');
  addrLen1 := SizeOf(serverAddr);
  ClientSocket := accept(server1, @serverAddr, @addrLen1);
  if ClientSocket = invalid_socket then
  begin
    case ClientSocket of
      wsaefault:
        mmo1.Lines.Add('获取ip失败');
    end;
    mmo1.Lines.Add('获取连接失败');
    Exit;
  end;

  //当上面返回结果成功时，百事有客户端链接到服务器
  //当客户端连接成功时，显示一下客户端的ip
  CustomWInSOcket := TCustomWinSocket.Create(ClientSocket);
  mmo1.Lines.Add('客户端ip'+CustomWInSOcket.RemoteAddress);
end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //关闭socket
  if server1 <> invalid_socket then
  begin
    closesocket(server1);
  end;

  //清理版本库信息
  if WSACleanup = socket_error then
  begin
    ShowMessage('清理版本库失败');
  end;
end;

end.

