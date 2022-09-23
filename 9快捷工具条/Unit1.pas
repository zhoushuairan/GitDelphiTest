unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdActns, ActnList, ExtActns, StdCtrls, ComCtrls, ImgList,
  ToolWin;

type
  TForm1 = class(TForm)
    il1: TImageList;
    redt1: TRichEdit;
    actlst1: TActionList;
    flpn1: TFileOpen;
    flpnwth1: TFileOpenWith;
    flsvs1: TFileSaveAs;
    flprntstp1: TFilePrintSetup;
    FilePageSetup1: TFilePageSetup;
    FileRun1: TFileRun;
    FileExit1: TFileExit;
    edtct1: TEditCut;
    edtcpy1: TEditCopy;
    edtpst1: TEditPaste;
    edtslctl1: TEditSelectAll;
    edtnd1: TEditUndo;
    edtdlt1: TEditDelete;
    WindowClose1: TWindowClose;
    WindowCascade1: TWindowCascade;
    WindowTileHorizontal1: TWindowTileHorizontal;
    WindowTileVertical1: TWindowTileVertical;
    WindowMinimizeAll1: TWindowMinimizeAll;
    WindowArrange1: TWindowArrange;
    mm1: TMainMenu;
    file1: TMenuItem;
    edit1: TMenuItem;
    window1: TMenuItem;
    help1: TMenuItem;
    open1: TMenuItem;
    about1: TMenuItem;
    clbr1: TCoolBar;
    tlb1: TToolBar;
    btn1: TToolButton;
    btn2: TToolButton;
    btn3: TToolButton;
    btn4: TToolButton;
    btn5: TToolButton;
    tlb2: TToolBar;
    btn6: TToolButton;
    btn7: TToolButton;
    btn8: TToolButton;
    btn9: TToolButton;
    btn10: TToolButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
