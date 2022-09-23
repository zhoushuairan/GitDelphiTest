unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, Grids, DBGrids, DB, DBTables, StdCtrls;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    db1: TDatabase;
    tbl1: TTable;
    ds1: TDataSource;
    dbgrd1: TDBGrid;
    dbimg1: TDBImage;
    dbnvgr1: TDBNavigator;
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
