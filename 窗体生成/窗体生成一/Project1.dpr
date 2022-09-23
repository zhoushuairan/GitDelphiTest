program Project1;

uses
  Windows,
  Messages;

{�� WM_PAINT ��Ϣ���õ��Զ������}
procedure OnSize(h: HWND);
var
  Rect: TRect;
  pt: TPoint;
  buf: array[0..255] of Char;
begin
  GetWindowRect(h, Rect);                  {��ȡ���ھ���}
  pt.X := Rect.Right - Rect.Left;          {��ȡ���}
  pt.Y := Rect.Bottom - Rect.Top;          {��ȡ�߶�}
  wvsprintf(buf, '���:%d, �߶�:%d', @pt);  {��ʽ����������}
  SetWindowText(h, buf);                   {��ʾ�ڱ���}
end;

procedure OnClose(h: HWND);
begin
  if IDOK = MessageBox(h, 'ȷ�Ϲر���?', '��ʾ', MB_OKCANCEL) then
    DestroyWindow(h);
end;

procedure OnPaint(h: HWND);
const
  str = 'CodeGear Delphi 2007';
var
  DC: HDC;
  ps: PAINTSTRUCT;
  Rect: TRect;
begin
  MessageBeep(0);
  DC := BeginPaint(h, ps);
  GetClientRect(h, Rect);
  DrawText(DC, PChar(str), -1, Rect, DT_SINGLELINE or DT_CENTER or DT_VCENTER);
  EndPaint(h, ps);
end;

function WndProc(wnd: HWND; msg: UINT; wParam: Integer; lParam: Integer): Integer; stdcall;
begin
  Result := 0;
  case msg of
  WM_SIZE:
    OnSize(wnd);
    wm_close:
      OnClose(wnd);
    WM_PAINT:
      OnPaint(wnd); {���յ� WM_PAINT ��Ϣʱ�����Զ���� OnPaint ����}
    WM_DESTROY:
      PostQuitMessage(0);
  else
    Result := DefWindowProc(wnd, msg, wParam, lParam);
  end;
end;

function RegMyWndClass: Boolean;
var
  cls: TWndClass;
begin
  cls.style := CS_HREDRAW or CS_VREDRAW;
  cls.lpfnWndProc := @WndProc;
  cls.cbClsExtra := 0;
  cls.cbWndExtra := 0;
  cls.hInstance := HInstance;
  cls.hIcon := 0;
  cls.hCursor := LoadCursor(0, IDC_ARROW);
  cls.hbrBackground := HBRUSH(COLOR_WINDOW + 1);
  cls.lpszMenuName := nil;
  cls.lpszClassName := 'MyWnd';
  Result := RegisterClass(cls) <> 0;
end;

{�������}
const
  tit = 'New Form';
  ws = WS_OVERLAPPEDWINDOW;
  x = 100;
  y = 100;
  w = 300;
  h = 180;

var
  hWnd: THandle;
  msg: TMsg;

begin
  RegMyWndClass;
  hWnd := CreateWindow('MyWnd', tit, ws, x, y, w, h, 0, 0, HInstance, nil);
  ShowWindow(hWnd, SW_SHOWNORMAL);
  UpdateWindow(hWnd);

  while (GetMessage(msg, 0, 0, 0)) do
  begin
    TranslateMessage(msg);
    DispatchMessage(msg);
  end;
end.
 
