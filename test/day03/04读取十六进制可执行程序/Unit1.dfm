object Form1: TForm1
  Left = 455
  Top = 155
  BorderStyle = bsDialog
  Caption = 'Form1'
  ClientHeight = 441
  ClientWidth = 852
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object redt1: TRichEdit
    Left = 8
    Top = 8
    Width = 617
    Height = 433
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object btn1: TButton
    Left = 752
    Top = 24
    Width = 75
    Height = 25
    Caption = 'btn1'
    TabOrder = 1
    OnClick = btn1Click
  end
  object dlgOpen1: TOpenDialog
    Left = 752
    Top = 56
  end
end
