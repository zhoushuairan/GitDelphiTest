unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,Unit2;

type
  TForm1 = class(TForm)
    btn1: TButton;
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
var
  Msg:TMyMsg;
  MsgAccept: TMsgAccepter;
begin
  Msg.MsgNum:=2000;
  Msg.MsgText:='消息和事件';
  MsgAccept:= TMsgAccepter.Create;
  MsgAccept.Dispatch(Msg);
end;

end.
