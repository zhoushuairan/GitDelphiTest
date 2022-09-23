object Form1: TForm1
  Left = 347
  Top = 160
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
  object zsrmrq1: TZsrMarquee
    Left = 368
    Top = 104
    Width = 100
    Height = 75
    scrollDown = False
    Items.Strings = (
      'e.pt'
      'e.sign'
      'export.allowed'
      'import.allowed'
      'import.silent'
      'nodelock.physical'
      'nodelock.session')
  end
  object btn1: TBitBtn
    Left = 376
    Top = 224
    Width = 75
    Height = 25
    Caption = 'btn1'
    TabOrder = 1
    OnClick = btn1Click
  end
end
