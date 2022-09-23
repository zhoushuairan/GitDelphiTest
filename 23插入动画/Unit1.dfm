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
  object mp1: TMediaPlayer
    Left = 80
    Top = 184
    Width = 253
    Height = 30
    Display = mp1
    FileName = 'G:\delphiTest\23'#25554#20837#21160#30011'\speedis.avi'
    TabOrder = 0
    OnClick = mp1Click
  end
  object mp2: TMediaPlayer
    Left = 80
    Top = 224
    Width = 253
    Height = 30
    FileName = 'G:\delphiTest\23'#25554#20837#21160#30011'\sod.mid'
    Visible = False
    TabOrder = 1
  end
  object mp3: TMediaPlayer
    Left = 80
    Top = 264
    Width = 253
    Height = 30
    FileName = 'G:\delphiTest\23'#25554#20837#21160#30011'\sound1.wav'
    Visible = False
    TabOrder = 2
  end
end
