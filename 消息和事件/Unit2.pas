unit Unit2;

interface
uses
  SysUtils,Windows,Dialogs;
type
  TMyMsg=record
    MsgNum: Cardinal;
    MsgText: ShortString;
  end;
  {消息处理类}
  TMsgAccepter=class(TObject)
    procedure AcceptMsg2000(var msg:TMyMsg);message 2000;
  end;
implementation

{ TMsgAccepter }


procedure TMsgAccepter.AcceptMsg2000(var msg: TMyMsg);
begin
  ShowMessage('消息编号为：'+inttostr(msg.MsgNum)+'消息内容是：'+msg.MsgText);
end;

end.
 