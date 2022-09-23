object Form1: TForm1
  Left = 252
  Top = 131
  BorderStyle = bsDialog
  Caption = 'Form1'
  ClientHeight = 441
  ClientWidth = 912
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnl1: TPanel
    Left = 8
    Top = 8
    Width = 897
    Height = 385
    TabOrder = 0
    object img1: TImage
      Left = 1
      Top = 1
      Width = 895
      Height = 383
      Align = alClient
      Stretch = True
    end
  end
  object btn1: TButton
    Left = 176
    Top = 408
    Width = 75
    Height = 25
    Caption = #25130#23631
    TabOrder = 1
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 432
    Top = 408
    Width = 75
    Height = 25
    Caption = #36716#25442#25104'jpeg'#26684#24335
    TabOrder = 2
    OnClick = btn2Click
  end
end
