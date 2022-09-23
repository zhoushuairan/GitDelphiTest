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
  object drvcbb1: TDriveComboBox
    Left = 192
    Top = 88
    Width = 145
    Height = 19
    DirList = dirlst1
    TabOrder = 0
  end
  object dirlst1: TDirectoryListBox
    Left = 184
    Top = 128
    Width = 145
    Height = 97
    FileList = fllst1
    ItemHeight = 16
    TabOrder = 1
  end
  object fllst1: TFileListBox
    Left = 376
    Top = 128
    Width = 145
    Height = 97
    ItemHeight = 13
    TabOrder = 2
  end
  object mmo1: TMemo
    Left = 232
    Top = 240
    Width = 185
    Height = 89
    Lines.Strings = (
      'mmo1')
    TabOrder = 3
  end
  object btn1: TButton
    Left = 320
    Top = 352
    Width = 75
    Height = 25
    Caption = #26174#31034
    TabOrder = 4
    OnClick = btn1Click
  end
end
