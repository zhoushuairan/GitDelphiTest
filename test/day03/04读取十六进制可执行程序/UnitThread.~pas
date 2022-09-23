unit UnitThread;

interface

uses
  Classes, Windows, SysUtils;

type
  TMyThread = class(TThread)
  protected
    procedure Execute; override;
  end;

implementation

{ TMyThread }

procedure TMyThread.Execute;
var
  PeName: string;
  Stream: TMemoryStream;
  s, temp: string;
  PeSize: Integer;
  Count, i, n, k: Integer;
  buf: array[1..16] of Char;
begin
  FreeOnTerminate := True;
  if dlgOpen1.Execute then
  begin
    PeName := dlgOpen1.FileName;

    try
      Stream := TMemoryStream.Create;
      Stream.LoadFromFile(PeName);
      PeSize := Stream.Size;
      Stream.Position := 0;

      Count := PeSize div 16;
      s := '';
      //循环读取内存流中的数据
      for k := 0 to Count + 1 do
      begin
        temp := Format('%.5x', [Stream.Position]); //取得内存流的当前位置，x表示一个整数，表示已16进制返回
        AppendStr(s, temp + ' ');
        n := Stream.Read(buf, 16); //从内存流中读取16个字节的数据，保存到buf缓存流中
        if n = 0 then
          Break;

        for i := 1 to n do
        begin
          AppendStr(s, IntToHex(ord(buf[i]), 2) + ' ');
          if i mod 4 = 0 then
            AppendStr(s, ' '); //让取出的数据四个一组

        end;

        AppendStr(s, stringofchar(' ', 62 - Length(s)));

        //32-126之间的，都是可以从键盘上直接输入的字符
        for i := 1 to n do
        begin
          if (buf[i] < #32) or (buf[i] > #126) then
            buf[i] := '.';
          AppendStr(s, buf[i]);
        end;

        redt1.Lines.Add(s);
        s := '';
        temp := '';
      end;
    finally
      Stream.free;

    end;
  end;
end;

end.

