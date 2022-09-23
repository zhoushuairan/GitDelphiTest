unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtDlgs, Menus, ToolsAPI,Unit2, OleServer, AccessXP;

type
  TMainForm = class(TForm)
    MainMenu: TMainMenu;
    File1: TMenuItem;
    Exit1: TMenuItem;
    N1: TMenuItem;
    PrintSetup1: TMenuItem;
    Print1: TMenuItem;
    N2: TMenuItem;
    SaveAs1: TMenuItem;
    Save1: TMenuItem;
    Open1: TMenuItem;
    New1: TMenuItem;
    Edit1: TMenuItem;
    Object1: TMenuItem;
    Links1: TMenuItem;
    N3: TMenuItem;
    GoTo1: TMenuItem;
    Replace1: TMenuItem;
    Find1: TMenuItem;
    N4: TMenuItem;
    PasteSpecial1: TMenuItem;
    Paste1: TMenuItem;
    Copy1: TMenuItem;
    Cut1: TMenuItem;
    N5: TMenuItem;
    Repeatcommand1: TMenuItem;
    Undo1: TMenuItem;
    Window1: TMenuItem;
    Show1: TMenuItem;
    Hide1: TMenuItem;
    N6: TMenuItem;
    ArrangeAll1: TMenuItem;
    Cascade1: TMenuItem;
    ile1: TMenuItem;
    NewWindow1: TMenuItem;
    Help1: TMenuItem;
    About1: TMenuItem;
    HowtoUseHelp1: TMenuItem;
    utorial1: TMenuItem;
    SearchforHelpOn1: TMenuItem;
    Keyboard1: TMenuItem;
    Procedures1: TMenuItem;
    Commands1: TMenuItem;
    Index1: TMenuItem;
    Contents1: TMenuItem;
    OpenPictureDialog: TOpenDialog;
    SavePictureDialog: TSavePictureDialog;
    AccessApplication1: TAccessApplication;
    procedure Open1Click(Sender: TObject);
    procedure SaveAs1Click(Sender: TObject);
    procedure ile1Click(Sender: TObject);
    procedure Cascade1Click(Sender: TObject);
    procedure ArrangeAll1Click(Sender: TObject);
    procedure About1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

uses
  Unit3;

{$R *.dfm}

procedure TMainForm.Open1Click(Sender: TObject);
var
  Child: TChild;
begin
  if OpenPictureDialog.Execute then
  begin
    Child := TChild.Create(Self);
    with Child.Image.Picture do
    begin
      LoadFromFile(OpenPictureDialog.FileName);
      Child.ClientWidth := Width;
      Child.ClientHeight := Height;
    end;
    Child.Caption := ExtractFileName(OpenPictureDialog.FileName);
    Child.Show;
  end;
end;

procedure TMainForm.SaveAs1Click(Sender: TObject);
begin
  if SavePictureDialog.Execute then
  begin
    with ActiveMDIChild as TChild do
{ 检查MDI子窗体是否被激活，只保存激活窗体的图像文件}
      Image.Picture.SaveToFile(SavePictureDialog.FileName);
  end;
end;

procedure TMainForm.ile1Click(Sender: TObject);
begin
  tile;
end;

procedure TMainForm.Cascade1Click(Sender: TObject);
begin
  Cascade;
end;

procedure TMainForm.ArrangeAll1Click(Sender: TObject);
begin
  ArrangeIcons;
end;

procedure TMainForm.About1Click(Sender: TObject);
begin
  AboutBox.ShowModal;
end;

end.

