unit MyButton1;

interface

uses
  SysUtils, Classes, Controls, StdCtrls;

type
  TMyButton1 = class(TButtonControl)
  private
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
  published
    { Published declarations }

  constructor create(Owner:TComponent);override;
  destructor destroy;override;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Samples', [TMyButton1]);
end;

{ TMyButton1 }

constructor TMyButton1.create(Owner: TComponent);
begin
  inherited;
  width:=100;
  Height:=30;
  Caption:='ÐÂ°´Å¥';
end;

destructor TMyButton1.destroy;
begin

  inherited;
  
end;

end.
