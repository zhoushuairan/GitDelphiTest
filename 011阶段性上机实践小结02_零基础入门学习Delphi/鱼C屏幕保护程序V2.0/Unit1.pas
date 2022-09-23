unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Edit1: TEdit;
    Label1: TLabel;
    Timer1: TTimer;
    Button1: TButton;
    Timer2: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button1Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
const
  Password: String = 'Fishc.com!';
var
  Flag: Boolean = True;
  n: Integer = 3;
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
  Timer2.Enabled:= False;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  SetWindowPos(handle, HWND_TOPMOST, 0, 0, 0, 0, SWP_NOSIZE+SWP_NOMOVE);
  // 以上API函数作用将该程序置于最顶层，盖住其他程序。
  
  Label1.Font.Size:= Random( 50 ); // 改变字体大小
  Label1.Left:= Random( 800 );
  Label1.Top:= Random( 600 );

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
  If ( (Key = VK_SPACE) And ( Flag = True ) ) Then
    begin
      Button1.Visible:= True;
      Edit1.Visible:= True;
    end
  Else
    begin
      If ( Flag = False ) Then
        MessageBox( handle, '输入密码错误次数太多,程序暂时禁止尝试再次输入，请稍后再试！',
        '警告', MB_OK Or MB_ICONSTOP )
      Else
        MessageBox( handle, '请按下空格并输入密码解锁', '提醒', MB_OK Or MB_ICONWARNING );
    end;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  If ( (Password = Edit1.Text) And (n > 0) ) then
    Close
  Else
    If ( n > 0 ) then
      begin
        MessageBox( handle, '密码错误!',
        '警告', MB_OK Or MB_ICONWARNING);
        n:= n - 1;
        Edit1.Text:= '';
      end
    Else
      begin
        MessageBox( handle, '输入密码错误次数太多,程序暂时禁止尝试再次输入，请稍后再试！',
        '警告', MB_OK Or MB_ICONSTOP );
        Timer2.Enabled:= True;
      end;
end;

procedure TForm1.Timer2Timer(Sender: TObject);
begin
  Flag:= True;
  n:= 3;
  Timer2.Enabled:= False;
end;

end.
