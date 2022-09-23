unit Qmemoextended;

interface

uses
  Windows, SysUtils, Classes, QControls, QStdCtrls, Messages, StdCtrls;

type
  tmemoextended = class(TMemo)
  private
    { Private declarations }
    FRow: LongInt;
    FColumn: LongInt;
    FOnHScroll: TNotifyEvent; //控件类的水平滚动事件
    FOnVScroll: TNotifyEvent; //控制类的垂直滚动事件

    procedure WMHScroll(var Msg: TWMHScroll); message WM_HSCROLL;
    procedure WHVScroll(var Msg: TWMVScroll); message WM_VSCROLL;
    procedure SetRow(Value: LongInt);
    function GetRow: LongInt;
    procedure SetColumn(Value: LongInt);
    function GetColumn: LongInt;
  protected
    { Protected declarations }
    procedure HScroll; dynamic;//事件调度方法。判断用户是否为事件添加了处理代码
    procedure VScroll; dynamic;
  public
    { Public declarations }
    property Row: LongInt read GetRow write SetRow;
    property Column: LongInt read GetColumn write SetColumn;
  published
    { Published declarations }
    property OnHScroll: TNotifyEvent read FOnHScroll write FOnHScroll;
    property OnVScroll: TNotifyEvent read FOnVScroll write FOnVScroll;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Samples', [tmemoextended]);
end;

{ tmemoextended }

function tmemoextended.GetColumn: LongInt;
begin
  result := SelStart + perform(EM_LINEINDEX, -1, 0);
end;

function tmemoextended.GetRow: LongInt;
begin
  Result := Perform(EM_LINEFROMCHAR, -1, 0);
end;

procedure tmemoextended.HScroll;
begin
  if Assigned(FOnHScroll) then
    FOnVScroll(Self);
end;

procedure tmemoextended.SetColumn(Value: Integer);
begin
  FColumn := perform(EM_LINELENGTH, perform(EM_LINEINDEX, GetRow, 0), 0);

  if FColumn > Value then
    FColumn := Value;

  SelStart := perform(EM_LINEINDEX, GetRow, 0) + FColumn;
end;

procedure tmemoextended.SetRow(Value: Integer);
begin
  SelStart := perform(EM_LINEINDEX, Value, 0);
  FRow := SelStart;
end;

procedure tmemoextended.VScroll;
begin
  if Assigned(FOnVScroll) then
    FOnVScroll(Self);
end;

procedure tmemoextended.WHVScroll(var Msg: TWMVScroll);
begin
  inherited;
  VScroll; //在此调用事件方法
end;

procedure tmemoextended.WMHScroll(var Msg: TWMHScroll);
begin
  inherited;
  HScroll;
end;

end.

