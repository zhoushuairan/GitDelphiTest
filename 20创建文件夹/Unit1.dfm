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
    Left = 208
    Top = 272
    Width = 89
    Height = 13
    AutoSize = False
    Caption = #36755#20837#25991#20214#21517#65306
  end
  object lbl2: TLabel
    Left = 256
    Top = 312
    Width = 113
    Height = 13
    AutoSize = False
  end
  object drvcbb1: TDriveComboBox
    Left = 184
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
  object btn1: TButton
    Left = 320
    Top = 352
    Width = 75
    Height = 25
    Caption = #21019#24314#25991#20214
    TabOrder = 3
    OnClick = btn1Click
  end
  object edt1: TEdit
    Left = 304
    Top = 264
    Width = 121
    Height = 21
    TabOrder = 4
    Text = 'edt1'
  end
end
