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
  object lbl1: TLabel
    Left = 312
    Top = 40
    Width = 201
    Height = 33
    AutoSize = False
    Caption = #31616#21333#25968#25454#24211#24212#29992
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object dbgrd1: TDBGrid
    Left = 248
    Top = 128
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
  object dbimg1: TDBImage
    Left = 616
    Top = 128
    Width = 105
    Height = 105
    DataField = 'Graphic'
    DataSource = ds1
    TabOrder = 1
  end
  object dbnvgr1: TDBNavigator
    Left = 272
    Top = 248
    Width = 240
    Height = 25
    DataSource = ds1
    TabOrder = 2
  end
  object db1: TDatabase
    AliasName = 'DBDEMOS'
    Connected = True
    DatabaseName = 'simple'
    SessionName = 'Default'
    Left = 224
    Top = 32
  end
  object tbl1: TTable
    Active = True
    DatabaseName = 'simple'
    TableName = 'biolife.db'
    Left = 264
    Top = 32
  end
  object ds1: TDataSource
    DataSet = tbl1
    Left = 544
    Top = 32
  end
end
