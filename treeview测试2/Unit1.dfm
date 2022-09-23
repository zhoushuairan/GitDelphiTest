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
  object tv1: TTreeView
    Left = 312
    Top = 72
    Width = 121
    Height = 97
    Indent = 19
    TabOrder = 0
  end
  object mmo1: TMemo
    Left = 536
    Top = 32
    Width = 321
    Height = 353
    Lines.Strings = (
      'mmo1')
    TabOrder = 1
  end
  object pnl1: TPanel
    Left = 288
    Top = 24
    Width = 185
    Height = 41
    Caption = 'pnl1'
    TabOrder = 2
  end
  object btn1: TButton
    Left = 192
    Top = 352
    Width = 75
    Height = 25
    Caption = 'btn1'
    TabOrder = 3
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 304
    Top = 352
    Width = 75
    Height = 25
    Caption = 'btn2'
    TabOrder = 4
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 432
    Top = 352
    Width = 75
    Height = 25
    Caption = 'btn3'
    TabOrder = 5
    OnClick = btn3Click
  end
end
