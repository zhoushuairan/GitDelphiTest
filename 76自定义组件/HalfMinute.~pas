unit HalfMinute;

interface

uses
  SysUtils, Classes, Windows, Messages, Graphics, Forms, Dialogs, ExtCtrls;

type
  TTimeEvent = procedure(Sender: TObject; TheTime: TDateTime) of object;

  THalfMinute = class(TComponent)
  private
    { Private declarations }
    FTimer: TTimer;
    FOnHalfMinute: TTimeEvent;
    FOldSecond, FSecond: Word;
    procedure FTimerTimer(Sender: TObject);
  protected
    { Protected declarations }

    procedure DoHalfMinute(TheTime: TDateTime);
  public
    { Public declarations }
    constructor create(AOwner: TComponent); override;
    destructor destroy; override;
  published
    { Published declarations }
    property OnHalfMinute: TTimeEvent read FOnHalfMinute write FOnHalfMinute;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Samples', [THalfMinute]);
end;


{ THalfMinute }

constructor THalfMinute.create(AOwner: TComponent);
begin
  inherited create(AOwner);

  if not (csDesigning in ComponentState) then
  begin
    FTimer := TTimer.Create(Self);
    FTimer.Enabled := True;
    FTimer.Interval := 500;
    FTimer.OnTimer := FTimerTimer;
  end;
end;

destructor THalfMinute.destroy;
begin
  FTimer.Free;
  inherited destroy;
end;

procedure THalfMinute.DoHalfMinute(TheTime: TDateTime);
begin
  if Assigned(FOnHalfMinute) then
    FOnHalfMinute(Self, TheTime);
end;

procedure THalfMinute.FTimerTimer(Sender: TObject);
var
  DT: TDateTime;
  Temp: Word;
begin
  DT := now;
  FOldSecond := FSecond;
  DecodeTime(DT, Temp, Temp, fsecond, Temp);

  if (FSecond = 30) or (FSecond = 0) then
  begin
    DoHalfMinute(DT);
  end;
end;

end.
 
