unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    edt1: TEdit;
    btn1: TButton;
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
    function getLocalIpAddress:String;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
uses
  WinSock;
{ TForm1 }

function TForm1.getLocalIpAddress: String;
type
  pu_long=^u_long;
var
  varTWSAData:TWSAData;
  varPHostEnt:PHostEnt;
  varTInAddr:TInAddr;
  namebuf:array[0..255]of Char;
  fd:Integer;
  rc:Integer;
begin
  result:='';
  rc:=WSAStartup($101,varTWSAData);
  if rc<>0 then
    raise esocketerror.createFmt('wsa启动错误：%d',[rc])
  else
  begin
    gethostname(namebuf,SizeOf(namebuf));
    varPHostEnt:=gethostbyname(namebuf);
    varTInaddr.s_addr:=u_long(pu_long(varPhostEnt^.h_addr_list^)^);
    result:=inet_ntoa(varTInAddr);
  end;
  fd:=winsock.socket(PF_INET,SOCK_STREAM,0);
  if fd=invalid_socket then
    raise esocketError.createfmt('%d%d:无效的套接字',[fd,wsagetlasterror]);
  WSACleanup;
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
  edt1.Text:='您本机的IP地址是：'+getLocalIpAddress;
end;

end.
