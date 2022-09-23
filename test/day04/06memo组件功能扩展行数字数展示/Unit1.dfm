object Form1: TForm1
  Left = 192
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
  object lbl1: TLabel
    Left = 64
    Top = 328
    Width = 24
    Height = 13
    Caption = #34892#65306
  end
  object lbl2: TLabel
    Left = 312
    Top = 320
    Width = 24
    Height = 13
    Caption = #21015#65306
  end
  object btn1: TButton
    Left = 104
    Top = 376
    Width = 89
    Height = 25
    Caption = 'create memo'
    TabOrder = 0
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 208
    Top = 376
    Width = 97
    Height = 25
    Caption = 'getrowcolumn'
    TabOrder = 1
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 320
    Top = 376
    Width = 129
    Height = 25
    Caption = 'setrowcolumn'
    TabOrder = 2
    OnClick = btn3Click
  end
  object pnl1: TPanel
    Left = 8
    Top = 16
    Width = 897
    Height = 297
    TabOrder = 3
  end
  object edt1: TEdit
    Left = 96
    Top = 328
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object edt2: TEdit
    Left = 344
    Top = 320
    Width = 121
    Height = 21
    TabOrder = 5
  end
end
