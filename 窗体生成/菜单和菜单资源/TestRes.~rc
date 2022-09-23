program Project2;

{$R 'TestRes.res' 'TestRes.rc'}

uses
  Windows, Messages;

{供 WM_COMMAND 消息调用的自定义过程}
procedure OnCommand(wParam: Integer);
begin
  case LoWord(wParam) of
    101: MessageBox(0, 'is New',  '', 0);
    102: MessageBox(0, 'is Open', '', 0);
    103: MessageBox(0, 'is Save', '', 0);
    104: MessageBox(0, 'is Exit', '', 0);
  end;
end;

function WndProc(wnd: HWND; msg: UINT; wParam,lParam: Integer): Integer; stdcall;
begin
  Result := 0;
  case msg of
    WM_COMMAND : OnCommand(wParam);  {收到 WM_COMMAND 消息后调用 OnCommand 过程}
    WM_DESTROY : PostQuitMessage(0);
  else
    Result := DefWindowProc(wnd, msg, wParam, lParam);
  end;
end;

function RegMyWndClass: Boolean;
var
  cls: TWndClass;
begin
  cls.style         := CS_HREDRAW or CS_VREDRAW;
  cls.lpfnWndProc   := @WndProc;
  cls.cbClsExtra    := 0;
  cls.cbWndExtra    := 0;
  cls.hInstance     := HInstance;
  cls.hIcon         := 0;
  cls.hCursor       := LoadCursor(0, IDC_ARROW);
  cls.hbrBackground := HBRUSH(COLOR_WINDOW + 1);
  cls.lpszMenuName  := 'MyMenu1';
  cls.lpszClassName := 'MyWnd';
  Result := RegisterClass(cls) <> 0;
end;

{程序入口}
const
  tit = 'New Form';
  ws = WS_OVERLAPPEDWINDOW;
  x = 100; y = 100; w = 300; h = 180;
var
  hWnd: THandle;
  Msg : TMsg;
begin
  RegMyWndClass;
  hWnd := CreateWindow('MyWnd', tit, ws, x, y, w, h, 0, 0, HInstance, nil);
  ShowWindow(hWnd, SW_SHOWNORMAL);
  UpdateWindow(hWnd);

  while(GetMessage(Msg, 0, 0, 0)) do
  begin
    TranslateMessage(Msg);
    DispatchMessage(Msg);
  end;
end.
