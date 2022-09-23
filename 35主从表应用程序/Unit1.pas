unit Unit1;

interface

uses
  SysUtils, Windows, Classes, Graphics, Controls,
  Forms, Dialogs, DB, DBTables;

type
  TDataModule1 = class(TDataModule)
    Table2OrderNo: TFloatField;
    Table2ItemNo: TFloatField;
    Table2PartNo: TFloatField;
    Table2Qty: TIntegerField;
    Table2Discount: TFloatField;
    Table1OrderNo: TFloatField;
    Table1CustNo: TFloatField;
    Table1SaleDate: TDateTimeField;
    Table1ShipDate: TDateTimeField;
    Table1EmpNo: TIntegerField;
    Table1ShipToContact: TStringField;
    Table1ShipToAddr1: TStringField;
    DataSource1: TDataSource;
    Table1: TTable;
    Table2: TTable;
    DataSource2: TDataSource;
    procedure DataModuleCreate(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{$R *.DFM}

procedure TDataModule1.DataModuleCreate(Sender: TObject);
begin
  Table1.Open;
  Table2.Open;
end;

end. 