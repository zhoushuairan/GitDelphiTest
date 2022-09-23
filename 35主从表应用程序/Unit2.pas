unit Unit2;

interface

uses
  Windows, Messages, Classes, SysUtils, Graphics, Controls, StdCtrls, Forms,
  Dialogs, DBCtrls, DB, DBGrids, Grids, Mask, ExtCtrls;

type
  TForm2 = class(TForm)
    ScrollBox: TScrollBox;
    Label1: TLabel;
    EditOrderNo: TDBEdit;
    Label2: TLabel;
    EditCustNo: TDBEdit;
    Label3: TLabel;
    EditSaleDate: TDBEdit;
    Label4: TLabel;
    EditShipDate: TDBEdit;
    Label5: TLabel;
    EditEmpNo: TDBEdit;
    Label6: TLabel;
    EditShipToContact: TDBEdit;
    Label7: TLabel;
    EditShipToAddr: TDBEdit;
    DBGrid1: TDBGrid;
    DBNavigator: TDBNavigator;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.DFM}

uses Unit1;

end.