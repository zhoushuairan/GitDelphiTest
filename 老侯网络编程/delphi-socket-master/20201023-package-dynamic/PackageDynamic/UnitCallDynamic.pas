unit UnitCallDynamic;

interface

// ��̬����Package-����
procedure Add(Num1, Num2: Integer); stdcall;

// ��̬����Package-����
function ShowMessage(Content: String): String; stdcall;

// ���������б�
exports Add, ShowMessage;

implementation

procedure Add(Num1, Num2: Integer); stdcall;
begin
  Writeln(Num1 + Num2);
end;

function ShowMessage(Content: String): String; stdcall;
begin
  Result := Content;
end;

end.
