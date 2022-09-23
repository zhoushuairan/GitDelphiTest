unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DdeMan;

type
  TForm1 = class(TForm)
    btn1: TButton;
    dde1: TDdeClientConv;
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure GotoUrl(sURL:string);
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.GotoUrl(sURL: string);
begin
  with dde1 do
  begin
    ServiceApplication:='C:\Users\Administrator\AppData\Local\Google\Chrome\Application\chrome.exe';
    setLink('Goole','´ò¿ªWWW');
    requestData(sURL+',,0XFFFFFFFF,0X3,,,');
    closelink;
  end;
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
  GotoUrl('http://www.baidu.com');
end;

end.
