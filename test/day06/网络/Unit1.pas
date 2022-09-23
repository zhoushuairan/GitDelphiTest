unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, WinSock, StdCtrls;

type
  TForm1 = class(TForm)
    edt1: TEdit;
    edt2: TEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    btn1: TButton;
    btn2: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
    function SockInit: BOOL;
    procedure SockFree;
    function getLocalHostName:string;
    function getIpAddress:String;
  public
    { Public declarations }
  end;

const
  Version: Word = $0202;

var
  Form1: TForm1;
  wsadata: TWSAData;

implementation

{$R *.dfm}
function TForm1.SockInit:BOOL;
begin
  if WSAStartup(Version,wsadata) =error_success then begin
    ShowMessage('Winsock库初始化成功！');
  end
  else begin
    if WSACleanup<> error_success then begin
      ShowMessage('winsock库释放失败！');
    end;
  end;
end;

procedure tform1.SockFree;
begin
  WSACleanup;
end;
procedure TForm1.FormCreate(Sender: TObject);
begin
  SockInit;
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  SockFree;
end;
function tform1.getLocalHostName:string;
var
  HostName:array[0..255] of Char;
begin
  gethostname(HostName,SizeOf(HostName  ));
  Result:=HostName;
end;
procedure TForm1.btn1Click(Sender: TObject);
begin
  edt1.Text:=getLocalHostName;
end;

function tform1.getIpAddress:string;
type
  TapInAddr=array[0..10] of PInAddr;
  PapInAddr=^TapInAddr;
var
  RemoteHost:PHostEnt;
  InAddr:PapInAddr;
  HostName:array[0..255] of char;
  i:Integer;
begin
  gethostname(HostName,SizeOf(HostName));
  RemoteHost:=gethostbyname(HostName);//获取主机信息

  if(RemoteHost=nil) then begin
    Result:='127.0.0.1';//如果取不到主机信息，则程序结束返回本机默认地址
    Exit;
  end;

  ShowMessage('Local HostName: '+RemoteHost.h_name);
  InAddr:=PapInAddr(remotehost^.h_addr_list);//得到主机信息结构中ip地址的列表
  i:=0;

  while inaddr^[i] <>nil do begin
    result:=StrPas( inet_ntoa(InAddr^[i]^));
    i:=i+1;
  end;
end;
procedure TForm1.btn2Click(Sender: TObject);
begin
  edt1.Text:=getLocalHostName;
  edt2.Text:=getIpAddress;
end;

end.

