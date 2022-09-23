unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ShellAPI;

const
  mi_iconevent = wm_user + 1000;

type
  TForm1 = class(TForm)
    pm1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    procedure N3Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure IconInstall;
    procedure IconUnInstall;
    procedure HideToTray(var message: TWMSysCommand); message wm_syscommand;
    procedure iconCLick(var message: TMessage); message mi_iconevent;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.HideToTray(var message: TWMSysCommand);
begin
  if message.CmdType = sc_minimize then
  begin
    inherited;
    ShowWindow(Handle, SW_HIDE);
    IconInstall;
  end
  else
    inherited;
end;

procedure TForm1.iconCLick(var message: TMessage);
var
  p: TPoint;
begin
  if message.LParam = wm_lbuttondown then
  begin
    ShowWindow(Handle, SW_NORMAL);
    SetForegroundWindow(handle);
    Self.SetFocus;
  end
  else if message.LParam = wm_rbuttondown then
  begin
    if Assigned(pm1) then
    begin
      GetCursorPos(p);
      pm1.Popup(p.x, p.y); //弹出菜单
    end;
  end;
end;

procedure TForm1.IconInstall;
var
  IconData: TNotifyIconData;
begin
  IconData.cbSize := SizeOf(TNotifyicondata);
  IconData.Wnd := handle;
  IconData.uID := 0;
  IconData.uFlags := NIF_ICON or NIF_MESSAGE or NIF_TIP;
  IconData.uCallbackMessage := mi_iconevent;
  IconData.hIcon := Application.Icon.Handle;
  IconData.szTip := '这是我们的托盘测试';

  Shell_NotifyIcon(NIM_ADD, @IconData);
end;

procedure TForm1.IconUnInstall;
var
  IconData: TNotifyIconData;
begin
  IconData.cbSize := SizeOf(TNotifyicondata);
  IconData.Wnd := handle;
  IconData.uID := 0;

  Shell_NotifyIcon(NIM_DELETE, @IconData);
end;

procedure TForm1.N3Click(Sender: TObject);
begin
  IconUnInstall;
  Close;
end;

procedure TForm1.N1Click(Sender: TObject);
begin
  ShowWindow(Handle, SW_NORMAL);
  SetForegroundWindow(handle);
  Self.SetFocus;
end;

end.

