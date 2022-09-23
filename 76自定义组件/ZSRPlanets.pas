unit ZSRPlanets;

interface

uses
  SysUtils, Classes;

type
  TZSRPlanets = class(TComponent)
  private
    { Private declarations }
    function GetPlanetName(const AIndex: Integer): string;
    function GetPlanetPosition(const APlanetName: string): Integer;
  protected
    { Protected declarations }
  public
    { Public declarations }
    property PlanetName[const AIndex: Integer]: string read GetPlanetName; default;
    property PlanetPosition[const APlanetName: string]: Integer read GetPlanetPosition;
  published
    { Published declarations }

  end;

procedure Register;

implementation

const
  PlanetNames: array[1..9] of string[7] = ('Mecury', 'Venus', 'Earth', 'Mars', 'Jupiter', 'Saturn', 'Uranus', 'Neptune', 'Pluto');

procedure Register;
begin
  RegisterComponents('Samples', [TZSRPlanets]);
end;

{ TZSRPlanets }

function TZSRPlanets.GetPlanetName(const AIndex: Integer): string;
begin
  if (AIndex < 0) or (AIndex > 9) then
  begin
    raise Exception.Create('wrong planet number,enter a number 1-9');
  end
  else
    Result := PlanetNames[AIndex];
end;

function TZSRPlanets.GetPlanetPosition(const APlanetName: string): Integer;
var
  i: Integer;
begin
  result := 0;
  i := 0;

  repeat
    Inc(i);
  until (i = 10) or (CompareStr(UpperCase(APlanetName), UpperCase(PlanetNames[i])) = 0);
  if i <> 0 then
    result := i;

end;

end.

