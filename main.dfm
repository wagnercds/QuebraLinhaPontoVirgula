object Form1: TForm1
  Left = 341
  Top = 92
  Width = 870
  Height = 640
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
  object Label1: TLabel
    Left = 24
    Top = 48
    Width = 29
    Height = 13
    Caption = 'antigo'
  end
  object Label2: TLabel
    Left = 16
    Top = 280
    Width = 24
    Height = 13
    Caption = 'novo'
  end
  object Memo1: TMemo
    Left = 16
    Top = 64
    Width = 769
    Height = 201
    ScrollBars = ssBoth
    TabOrder = 0
  end
  object Memo2: TMemo
    Left = 16
    Top = 296
    Width = 769
    Height = 265
    TabOrder = 1
  end
  object Button1: TButton
    Left = 88
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Carregar'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 168
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 3
    OnClick = Button2Click
  end
  object OpenDialog1: TOpenDialog
    Filter = 'Todos os arquivos|*.*'
    Left = 216
    Top = 16
  end
  object SaveDialog1: TSaveDialog
    Filter = 'Todos os arquivos|*.*'
    Left = 256
    Top = 24
  end
end
