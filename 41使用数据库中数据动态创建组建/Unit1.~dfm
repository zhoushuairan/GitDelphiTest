object Form1: TForm1
  Left = 252
  Top = 131
  Width = 928
  Height = 480
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object con1: TADOConnection
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=test_' +
      'ado'
    Provider = 'MSDASQL.1'
    Left = 352
    Top = 56
  end
  object tbl1: TADOTable
    Connection = con1
    Left = 440
    Top = 64
  end
  object ds1: TDataSource
    DataSet = tbl1
    Left = 504
    Top = 56
  end
end
