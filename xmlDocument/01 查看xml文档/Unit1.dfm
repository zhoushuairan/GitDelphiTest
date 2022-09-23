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
  object btn1: TButton
    Left = 176
    Top = 104
    Width = 75
    Height = 25
    Caption = '1'
    TabOrder = 0
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 264
    Top = 104
    Width = 75
    Height = 25
    Caption = '2'
    TabOrder = 1
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 360
    Top = 104
    Width = 75
    Height = 25
    Caption = '3'
    TabOrder = 2
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 448
    Top = 104
    Width = 75
    Height = 25
    Caption = '4'
    TabOrder = 3
    OnClick = btn4Click
  end
  object mmo1: TMemo
    Left = 248
    Top = 200
    Width = 297
    Height = 153
    Lines.Strings = (
      'mmo1')
    TabOrder = 4
  end
  object Button1: TButton
    Left = 560
    Top = 104
    Width = 75
    Height = 25
    Caption = '5'
    TabOrder = 5
    OnClick = Button1Click
  end
  object xml1: TXMLDocument
    Left = 424
    Top = 232
    DOMVendorDesc = 'MSXML'
  end
end
