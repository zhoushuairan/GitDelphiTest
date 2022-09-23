unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MPlayer;

type
  TForm1 = class(TForm)
    mp1: TMediaPlayer;
    mp2: TMediaPlayer;
    mp3: TMediaPlayer;
    procedure mp1Click(Sender: TObject; Button: TMPBtnType;
      var DoDefault: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.mp1Click(Sender: TObject; Button: TMPBtnType;
  var DoDefault: Boolean);
begin
  mp2.Open;
  mp2.play;
  mp3.Open;
  mp3.Play;
  mp1.Display:=form1;
  mp1.open;
  mp1.DisplayRect:=Rect(60,0,0,0);
  mp1.Play;
end;

end.
