object Form1: TForm1
  Left = 535
  Top = 183
  AutoScroll = False
  Caption = 'Form1'
  ClientHeight = 273
  ClientWidth = 334
  Color = clBtnFace
  TransparentColorValue = clMaroon
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 0
    Top = 0
    Width = 225
    Height = 24
    AutoSize = False
    Caption = #27426#36814#23398#20064'delphi'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object btn1: TButton
    Left = 112
    Top = 56
    Width = 75
    Height = 25
    Caption = #21551#21160
    TabOrder = 0
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 112
    Top = 104
    Width = 75
    Height = 25
    Caption = #20572#27490
    TabOrder = 1
    OnClick = btn2Click
  end
  object time1: TTimer
    Enabled = False
    Interval = 100
    OnTimer = time1Timer
    Left = 40
    Top = 96
  end
end
