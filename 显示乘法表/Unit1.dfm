object Form1: TForm1
  Left = 550
  Top = 152
  Width = 876
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
  object btn1: TSpeedButton
    Left = 192
    Top = 384
    Width = 105
    Height = 22
    Caption = #26174#31034#20056#27861#34920
    OnClick = btn1Click
  end
  object btn2: TSpeedButton
    Left = 496
    Top = 392
    Width = 81
    Height = 22
    Caption = #36864#20986
    OnClick = btn2Click
  end
  object strgrid1: TStringGrid
    Left = 56
    Top = 48
    Width = 801
    Height = 257
    ColCount = 10
    RowCount = 10
    TabOrder = 0
    RowHeights = (
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24)
  end
end
