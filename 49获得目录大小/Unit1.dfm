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
    Left = 280
    Top = 216
    Width = 153
    Height = 13
  end
  object lbl2: TLabel
    Left = 283
    Top = 240
    Width = 149
    Height = 13
  end
  object drvcbb1: TDriveComboBox
    Left = 280
    Top = 72
    Width = 145
    Height = 19
    DirList = dirlst1
    TabOrder = 0
  end
  object dirlst1: TDirectoryListBox
    Left = 280
    Top = 104
    Width = 145
    Height = 97
    ItemHeight = 16
    TabOrder = 1
  end
  object btn1: TButton
    Left = 320
    Top = 280
    Width = 75
    Height = 25
    Caption = #26174#31034
    TabOrder = 2
    OnClick = btn1Click
  end
end
