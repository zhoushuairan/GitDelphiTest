unit uSyncThread;


interface
uses
   Classes,SysUtils;
type
    TWorkThread = class(TThread)

    protected
        procedure Execute; override;
    end;

implementation
uses
  Unit1;

procedure TWorkThread.Execute;
var
  i:Integer ;
begin
  freeonterminate:=True;
  i:=0;
  while True do
  begin
    Form1.lbl1.Caption:=IntToStr(i);
    if i=10 then
    begin
      Exit;
    end;
    inc(i);
    Sleep(100);

  end;  

end;

end.
