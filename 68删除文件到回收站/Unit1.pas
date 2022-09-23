unit Unit1;

interface

implementation
uses
  ShellAPI;
var
  T:TSHFileOpStruct;
  p:String;
begin
  p:='C:\Users\Administrator\Desktop\11.xml';
  with T do
  begin
    Wnd:=0;
    wFunc:=FO_DElete;
    pFrom:=pchar(p);
    fFlags:=fof_allowundo
  end;
  SHFileOperation(T);
end.
 