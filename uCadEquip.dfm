inherited frCadSetor1: TfrCadSetor1
  Left = 248
  Top = 129
  Caption = 'frCadSetor1'
  ClientHeight = 534
  ClientWidth = 1021
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 1021
    inherited lbCaption: TLabel
      Width = 292
      Caption = 'CADASTRO DE EQUIPAMENTOS'
    end
  end
  inherited gbmain: TGroupBox
    Height = 433
    inherited gbcad: TGroupBox
      Top = 64
      Height = 241
      inherited Label2: TLabel
        Left = 40
        Width = 165
        Caption = 'NOME DO EQUIPAMENTO'
      end
      inherited Label6: TLabel
        Top = 65
      end
      inherited edSetor: TEdit
        Width = 616
      end
      inherited dbcEmpresa: TDBLookupComboBox
        Top = 56
      end
    end
    inherited gbCod: TGroupBox
      Height = 49
      object lbDtEmiss: TLabel [1]
        Left = 397
        Top = 17
        Width = 122
        Height = 16
        Caption = 'DATA DE EMISS'#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      inherited edCod: TEdit
        Width = 113
      end
      object edDataEmissao: TMaskEdit
        Left = 528
        Top = 17
        Width = 65
        Height = 24
        TabStop = False
        DragMode = dmAutomatic
        EditMask = '!99/99/99;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 8
        ParentFont = False
        TabOrder = 1
        Text = '  /  /  '
      end
    end
    inherited GroupBox2: TGroupBox
      Top = 344
    end
  end
end
