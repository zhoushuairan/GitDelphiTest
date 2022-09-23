unit Qcustomlabel1;

interface

uses
  SysUtils, Classes, Controls, StdCtrls, ExtCtrls;

type
  TState = (stclock, stRunClock, stBackClock);

  TBeginTime = type string; //这样声明，tbegintime就有了运行时类型信息

  tcustomlabel1 = class(TLabel)
  private
    { Private declarations }
    Fstate: TState;
    Ftimer: TTimer;
    RCD: array[1..8] of Integer; //作为秒表时，显示的时间，共8位
    FBeginTime: TBeginTime;   //作为倒计时de开始时间
    FWakeTime: string;  //闹钟时间
    FAllowWake: Boolean;  //是否开启闹钟功能
    FOnWakeUp: TNotifyEvent; //当闹钟功能开启时，响应这个事件
    FOntimeUp: TNotifyEvent; //当倒计时完成，响应这个事件

    function GetActive: Boolean; //取得TClock状态
    procedure SetActive(value: Boolean);
    procedure setState(Value: TState);
    procedure setBeginTimer(value: TBeginTime);
    procedure setWakeTime(value: string);
  protected
    { Protected declarations }
    procedure walkClock(sender: TObject); //正常的时钟状态
    procedure RunClock(Sender: TObject);  //运行时执行
    procedure BackClock(Sender: TObject); //倒计时的
  public
    { Public declarations }
    constructor create(AWoner: TComponent); override;
    procedure ResetRunclock; //复位       秒表
    procedure resetBackClock; //复位倒计时
  published
    { Published declarations }
    property state: TState read Fstate write setState default stclock;
    property Active: Boolean read GetActive write SetActive;
    property BeginTime: TBeginTime read FBeginTime write setBeginTimer;
    property wakeTime: string read FWakeTime write setWakeTime;
    property AllowWake: Boolean read FAllowWake write FAllowWake;
    property onWakeUp: TNotifyEvent read FOnWakeUp write FOnWakeUp;
    property onTimeUp: TNotifyEvent read FOntimeUp write FOntimeUp;
    property Align;
    property Alignment;
    property color;
    property font;
    property parentColor;
    property parentFont;
    property parentShowHint;
    property popupMenu;
    property showHint;
    property visible;
    property transparent;
    property onClick;
  end;

//procedure Register;

implementation 
{$R ClockDcr.dcr} 
//procedure Register;
//begin
//  RegisterComponents('Samples', [tcustomlabel1]);
//end;


procedure tcustomlabel1.BackClock(Sender: TObject);
begin
  if StrToTime(Caption) <> strtotime('00:00:00') then
    Caption := TimeToStr(StrToTime(caption) - 0.00001)
  else
  begin
    Active := False;
    Beep;
    if Assigned(FontimeUp) then
      FOntimeUp(Self);
  end;
end;

constructor tcustomlabel1.create(AWoner: TComponent);
begin
  inherited create(AWoner);

  Ftimer := TTimer.Create(Self);
  Active := False; //控件禁用
  AllowWake := False;        //闹钟禁用
  state := stclock;          //电子表的功能状态为时钟

  BeginTime := '00:00:00';
  wakeTime := '00:00:00';

end;

function tcustomlabel1.GetActive: Boolean;
begin
  Result := Ftimer.Enabled;
end;

procedure tcustomlabel1.resetBackClock;
var
  i: Integer;
begin
  if state = stRunClock then
  begin
    Active := False;
    for i := 1 to 8 do
      RCD[i] := 0;
    Caption := '00:00:00';
  end;
end;

procedure tcustomlabel1.ResetRunclock;
begin
  if state = stbackclock then
  begin
    Active := false;
    caption := BeginTime;
  end;
end;

procedure tcustomlabel1.RunClock(Sender: TObject);
begin
  RCD[1] := rcd[1] + 1;
  if RCD[1] = 10 then
  begin
    RCD[2] := rcd[2] + 1;
    RCD[1] := 0;
  end;

  if RCD[2] = 10 then
  begin
    RCD[3] := rcd[3] + 1;
    RCD[2] := 0;
  end;
  if RCD[3] = 10 then
  begin
    RCD[4] := rcd[4] + 1;
    RCD[3] := 0;
  end;

  if RCD[4] = 6 then
  begin
    RCD[5] := rcd[5] + 1;
    RCD[4] := 0;
  end;

  if RCD[5] = 10 then
  begin
    RCD[6] := rcd[6] + 1;
    RCD[5] := 0;
  end;

  if RCD[6] = 6 then
  begin
    RCD[7] := rcd[7] + 1;
    RCD[6] := 0;
  end;

  if RCD[7] = 10 then
  begin
    RCD[8] := rcd[8] + 1;
    RCD[7] := 0;
  end;

  if RCD[8] = 10 then
    RCD[8] := 10;

  Caption := IntToStr(RCD[8]) + IntToStr(rcd[7]) + ':' + IntToStr(RCD[6]) + IntToStr(rcd[5]) + ':' + IntToStr(RCD[4]) + IntToStr(rcd[3]) + ':' + IntToStr(RCD[2]) + IntToStr(rcd[1]);
end;

procedure tcustomlabel1.SetActive(value: Boolean);
begin
  Ftimer.Enabled := value;
end;

procedure tcustomlabel1.setBeginTimer(value: TBeginTime);
begin
  try
    FBeginTime := value;
    if state = stbackClock then
    begin
      Active := False;
      Caption := value;
    end;
  except
    on Exception do
    begin
      FBeginTime := '00:00:00';
      if state = stbackClock then
        Caption := '00:00:00';
    end;
  end;
end;

procedure tcustomlabel1.setState(Value: TState);
var
  i: Integer;
begin
  case Value of
    stclock:
      begin
        Active := False;
        Ftimer.Interval := 1000;
        Ftimer.OnTimer := walkClock; //开始正常的电子表计时
        Active := True;
      end;

    stRunClock:
      begin
        Active := False;
        for i := 1 to 8 do
          RCD[i] := 0;
        Caption := IntToStr(RCD[8]) + IntToStr(rcd[7]) + ':' + IntToStr(RCD[6]) + IntToStr(rcd[5]) + ':' + IntToStr(RCD[4]) + IntToStr(rcd[3]) + ':' + IntToStr(RCD[2]) + IntToStr(rcd[1]);

        Ftimer.Interval := 10;
        Ftimer.OnTimer := RunClock;
        Active := True;
      end;

    stBackClock:
      begin
        Active := False;
        setBeginTimer(TimeToStr(Time));
        Caption := BeginTime;
        Ftimer.Interval := 1000;
        Ftimer.OnTimer := BackClock;
        Active := True;
      end;
  end;
end;

//设置闹钟的时间
procedure tcustomlabel1.setWakeTime(value: string);
begin
  try
    FWakeTime := value;
  except
    on Exception do
    begin
      FWakeTime := '00:00:00';
    end;
  end;

end;

procedure tcustomlabel1.walkClock(sender: TObject);
begin
  Caption := TimeToStr(Time);
  if AllowWake and (StrToTime(Caption) = StrToTime(waketime)) then
  begin
    Beep;
    if Assigned(fOnwakeUp) then
      FOnWakeUp(Self);
  end;
end;

end.

