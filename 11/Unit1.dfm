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
  object btn4: TSpeedButton
    Left = 128
    Top = 128
    Width = 23
    Height = 22
    OnClick = btn4Click
  end
  object memo1: TMemo
    Left = 256
    Top = 152
    Width = 185
    Height = 89
    Lines.Strings = (
      'memo1')
    TabOrder = 0
  end
  object btn1: TButton
    Left = 544
    Top = 152
    Width = 75
    Height = 25
    Caption = 'btn1'
    TabOrder = 1
  end
  object btn2: TButton
    Left = 576
    Top = 208
    Width = 75
    Height = 25
    Caption = 'btn2'
    TabOrder = 2
  end
  object btn3: TButton
    Left = 608
    Top = 280
    Width = 75
    Height = 25
    Caption = 'btn3'
    TabOrder = 3
  end
  object dtp1: TDateTimePicker
    Left = 336
    Top = 88
    Width = 186
    Height = 21
    Date = 44712.703361331020000000
    Time = 44712.703361331020000000
    TabOrder = 4
    OnClick = dtp1Click
  end
end
