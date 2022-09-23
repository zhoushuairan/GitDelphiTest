object Form1: TForm1
  Left = 730
  Top = 217
  BorderStyle = bsDialog
  Caption = 'Form1'
  ClientHeight = 353
  ClientWidth = 459
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lst1: TListBox
    Left = 8
    Top = 232
    Width = 201
    Height = 121
    ItemHeight = 13
    TabOrder = 0
    OnClick = lst1Click
  end
  object mmo1: TMemo
    Left = 8
    Top = 8
    Width = 441
    Height = 217
    Lines.Strings = (
      'mmo1')
    TabOrder = 1
  end
end
