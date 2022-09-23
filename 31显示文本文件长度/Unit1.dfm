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
    Left = 352
    Top = 32
    Width = 96
    Height = 13
    AutoSize = False
    Caption = #26174#31034#25991#26412#25991#20214#38271#24230
  end
  object edt1: TEdit
    Left = 328
    Top = 72
    Width = 153
    Height = 21
    TabOrder = 0
    Text = 'edt1'
  end
  object btn1: TButton
    Left = 504
    Top = 72
    Width = 75
    Height = 25
    Caption = #25171#24320'....'
    TabOrder = 1
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 336
    Top = 128
    Width = 129
    Height = 25
    Caption = #26174#31034#25991#26412#25991#20214#38271#24230
    TabOrder = 2
    OnClick = btn2Click
  end
  object dlgOpen1: TOpenDialog
    DefaultExt = '*.txt'
    Filter = 'Text file(*.txt)|*.txt'
    Left = 448
    Top = 224
  end
end
