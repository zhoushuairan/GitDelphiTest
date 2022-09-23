unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Timer1: TTimer;
    Button1: TButton;
    Image1: TImage;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
const
  Password: String = 'dll950628abcdA';
{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  SetWindowLong(Edit1.Handle, GWL_STYLE, GetWindowLong(Edit1.Handle, GWL_STYLE) or ES_CENTER);
  Edit1.Invalidate;
  // 以上两句设置Edit空间的Text文字属性。

  Image1.Left:= 0;
  Image1.Top:= 0;
  Button1.Visible:= False;
  Edit1.Visible:= False;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  Label1.Font.Size:= Random( 50 ); // 改变字体大小
  Label1.Left:= Random( 1316 );
  Label1.Top:= Random( 718 );

  Case ( Random( 8 ) ) of
    0: Label1.Font.Color:= clRed;
    1: Label1.Font.Color:= clBlue;
    2: Label1.Font.Color:= clBlack;
    3: Label1.Font.Color:= clWhite;
    4: Label1.Font.Color:= clGreen;
    5: Label1.Font.Color:= clGray;
    6: Label1.Font.Color:= clMaroon;
    7: Label1.Font.Color:= clFuchsia;
  end;

  Case ( Random( 8 ) ) of
    0: Label1.Color:= clRed;
    1: Label1.Color:= clBlue;
    2: Label1.Color:= clBlack;
    3: Label1.Color:= clWhite;
    4: Label1.Color:= clGreen;
    5: Label1.Color:= clGray;
    6: Label1.Color:= clMaroon;
    7: Label1.Color:= clFuchsia;
  end;
end;

procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if ( Key = VK_SPACE ) then
  begin
    Button1.Visible:= True;
    Edit1.Visible:= True;
  end;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  If ( Password = Edit1.Text ) then
    Close
  Else
    begin
      MessageBox( handle, '密码错误!', '警告', MB_OK Or MB_ICONWARNING);
      Edit1.Text:= '';
    end;
end;

end.
