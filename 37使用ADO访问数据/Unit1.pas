unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, Grids, DBGrids, DB, ADODB;

type
  TForm1 = class(TForm)
    con1: TADOConnection;
    tbl1: TADOTable;
    ds1: TDataSource;
    dbgrd1: TDBGrid;
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
