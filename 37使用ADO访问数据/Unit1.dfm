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
  PixelsPerInch = 96
  TextHeight = 13
  object dbgrd1: TDBGrid
    Left = 208
    Top = 112
    Width = 320
    Height = 120
    DataSource = ds1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object dbnvgr1: TDBNavigator
    Left = 224
    Top = 232
    Width = 240
    Height = 25
    DataSource = ds1
    TabOrder = 1
  end
  object con1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=test_' +
      'ado'
    Left = 240
    Top = 40
  end
  object tbl1: TADOTable
    Active = True
    Connection = con1
    CursorType = ctStatic
    TableName = 'country'
    Left = 304
    Top = 48
  end
  object ds1: TDataSource
    DataSet = tbl1
    Left = 360
    Top = 48
  end
end
