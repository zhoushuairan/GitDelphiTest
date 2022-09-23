object TimeEditForm: TTimeEditForm
  Left = 934
  Top = 186
  BorderStyle = bsDialog
  Caption = 'TTimeEditForm'
  ClientHeight = 175
  ClientWidth = 389
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object dtp1: TDateTimePicker
    Left = 104
    Top = 72
    Width = 186
    Height = 21
    Date = 44789.658238136570000000
    Time = 44789.658238136570000000
    Kind = dtkTime
    TabOrder = 0
  end
  object btn1: TButton
    Left = 128
    Top = 128
    Width = 75
    Height = 25
    Caption = 'Ok'
    ModalResult = 1
    TabOrder = 1
  end
  object btn2: TButton
    Left = 216
    Top = 128
    Width = 75
    Height = 25
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 2
  end
end
