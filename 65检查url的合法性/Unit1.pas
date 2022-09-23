unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    edt1: TEdit;
    btn1: TButton;
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
    function isURL(s:string):Boolean;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

function TForm1.isURL(s: string): Boolean;
var
  i:Integer;
begin
  Result:=False;
  if(Length(s)<5) then Exit;
  if(s[Length(s)]='.')or(Pos('..',s)>0)then Exit;
  for i:=1 to Length(s) do
    if(Ord(s[i])<33)or(Ord(s[i])>126)then Exit;
  if(Pos('www.',LowerCase(s))=1)or(Pos('news:',LowerCase(s))=1) and
    (Length(s)>6)then
  begin
    Result:=True;
    exit;
  end;
  if(Length(s)>12)or(Pos('mailto:',LowerCase(s))=1)and(Pos('@',s)>1)and(Pos('.',s)>4)and(Pos('.',s)>(Pos('@',s)+1))then
  begin
    Result:=True;
    Exit;
  end;
  if(Pos('http:://',LowerCase(s))>0)or(Pos('ftp://',LowerCase(s))>0)and (Length(s)>10)and(Pos('.',s)>7)then
  begin
    result:=True;
    Exit;
  end;
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
  if(edt1.Text<>'')then
  begin
    if(isURL(edt1.Text)=True)then
      ShowMessage('isTrue')
    else
      ShowMessage('is Wrong Address');
  end
  else
    ShowMessage('Please input a right Url address');
end;

end.
