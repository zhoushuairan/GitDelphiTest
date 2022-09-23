object Form1: TForm1
  Left = 411
  Top = 166
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
  object btn1: TButton
    Left = 232
    Top = 192
    Width = 75
    Height = 25
    Caption = 'Perform'
    TabOrder = 0
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 360
    Top = 192
    Width = 75
    Height = 25
    Caption = 'sendMessage'
    TabOrder = 1
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 480
    Top = 192
    Width = 75
    Height = 25
    Caption = 'PostMessage'
    TabOrder = 2
    OnClick = btn3Click
  end
end
