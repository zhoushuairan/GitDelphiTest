unit UnitHello;

interface

uses Vcl.Dialogs;

// Package���̰���
procedure HelloWorld(StrContent: String);

// Package��������
function GetHelloWorld(StrContent: String): String;

// Package�స��
type
  TUser = class
  public
    function Add(Num1, Num2: Integer): Integer;
  end;

implementation

procedure HelloWorld(StrContent: String);
begin
  ShowMessage(StrContent);
end;

function GetHelloWorld(StrContent: String): String;
begin

  Result := StrContent;
end;

{ TUser }

function TUser.Add(Num1, Num2: Integer): Integer;
begin
  Result := Num1 + Num2;
end;

end.
