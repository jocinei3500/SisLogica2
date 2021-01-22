object frConsulta: TfrConsulta
  Left = 290
  Top = 120
  Width = 870
  Height = 450
  Caption = 'Consulta Personalizada'
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
    Left = 32
    Top = 27
    Width = 21
    Height = 13
    Caption = 'SQL'
  end
  object Label2: TLabel
    Left = 320
    Top = 56
    Width = 30
    Height = 13
    Caption = 'Result'
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 144
    Width = 817
    Height = 241
    DataSource = frdata.dsConsulta
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object edSql: TEdit
    Left = 56
    Top = 24
    Width = 785
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 56
    Top = 48
    Width = 257
    Height = 25
    Caption = 'Put Consulting   >>>>'
    TabOrder = 2
    OnClick = Button1Click
  end
  object edResult: TEdit
    Left = 320
    Top = 72
    Width = 521
    Height = 21
    TabOrder = 3
  end
end
