unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB;

type
  TForm1 = class(TForm)
    con1: TADOConnection;
    tbl1: TADOTable;
    ds1: TDataSource;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
var
  PageControl1:array[0..9] of TPageControl;
  Panel1:array[0..9] of TPanel;
   Panel2:array[0..9,0..9] of TPanel;
    Panel1:array[0..9] of TPanel;
    TabSheet:array[0..9,0..9] of Ttabsheet;
    i,k,m,n,s:Integer;
    flag1,flag2,flag3,flag4:Integer;
begin
  tbl1.Active:=false;
  tbl1.Filter:='TObject='+''''+'TPanel'+''''+'and level=1';
  tbl1.Filtered:=True;
  tbl1.Active:=True;
  flag1:=tbl1.RecordCount;
  tbl1.First;
  for i:=0 to tbl1.RecordCount do
  begin
    Panel1[i]:=TPanel.Create(Self);
    with Panel1[i] do
    begin
      parent:=Self;
      top:=ADOTable1Top.AsInteger;
      left:=ADOTable1Left.asInteger;
      Width:=ADOTable1width.AsInteger;
      Height:=ADOTable1Height.asInteger;
    end;
    tbl1.Next;
  end;
  tbl1.Filter:='TObject='+''''+'TPageControl'+'''';
  tbl1.Filtered:=True;
  tbl1.Refresh;
  flag2:=tbl1.RecordCount;
  tbl1.First;

  for k:=0 to tbl1.RecordCount do
  begin
    PageControl1[k]:=TPageControl.Create(Self);
    with PageControl1[k] do
    begin
      parent:=Panel1[k];
      top:=ADOTable1Top.AsInteger;
      left:=ADOTable1Left.asInteger;
      Width:=ADOTable1width.AsInteger;
      Height:=ADOTable1Height.asInteger;
    end;
    tbl1.Next;
  end;

  tbl1.Filter:='TObject='+''''+'TTabSheet'+'''';
  tbl1.Filtered:=True;
  tbl1.Refresh;
  flag2:=tbl1.RecordCount-1;

  for k:=0 to flag2 do
  begin
    tbl1.First;
    for m:=0 to tbl1.RecordCount-1 do
    begin
      TabSheet[k][m]:=TTabSheet.Create(PageControl1[k]);
      with TabSheet[k][m] do
      begin
        PageControl:=pagecontrol1[k];
        top:=ADOTable1Top.AsInteger;
        left:=ADOTable1Left.asInteger;
        Width:=ADOTable1width.AsInteger;
        Height:=ADOTable1Height.asInteger;
        Caption:=AdoTable1Caption.asInteger;
      end;
      tbl1.Next;
    end;
  end;

  tbl1.Filter:='TObject='+''''+'TTabSheet'+'''';
  tbl1.Filtered:=True;
  tbl1.Refresh;
  flag3:=tbl1.RecordCount-1;
  for k:=0 to flag1 do
  for m:=0 to flag2 do
  begin
    tbl1.First;
    for n:=0 to tbl1.RecordCount do
    begin
      Panel2[k][m]:=TPanel.Create(Self);
      with Panel2[k][m] do
      begin
        parent:=TabSheet1[k][m];
        top:=ADOTable1Top.AsInteger;
        left:=ADOTable1Left.asInteger;
        Width:=ADOTable1width.AsInteger;
        Height:=ADOTable1Height.asInteger;
      end;
      tbl1.Next;
    end;
  end;
end;

end.
