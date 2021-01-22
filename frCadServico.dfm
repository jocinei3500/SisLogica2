object frmCadServico: TfrmCadServico
  Left = 43
  Top = 117
  BorderStyle = bsNone
  ClientHeight = 594
  ClientWidth = 1306
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pTitle: TPanel
    Left = 0
    Top = 0
    Width = 1306
    Height = 33
    Align = alTop
    Color = 9149895
    TabOrder = 0
    object lbCaption: TLabel
      Left = 80
      Top = 8
      Width = 189
      Height = 24
      Caption = 'ORDEM DE SERVI'#199'O'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lbClose: TLabel
      Left = 1232
      Top = 8
      Width = 33
      Height = 33
      Caption = '"'
      Font.Charset = SYMBOL_CHARSET
      Font.Color = 11645361
      Font.Height = -32
      Font.Name = 'Webdings'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object gbMain: TGroupBox
    Left = 0
    Top = 33
    Width = 1306
    Height = 561
    Align = alClient
    TabOrder = 1
    object gbConsulta: TGroupBox
      Left = 8
      Top = 56
      Width = 1297
      Height = 425
      TabOrder = 4
      Visible = False
      object Label10: TLabel
        Left = 128
        Top = 8
        Width = 66
        Height = 16
        Caption = 'EMPRESA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label22: TLabel
        Left = 147
        Top = 41
        Width = 47
        Height = 16
        Caption = 'SETOR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label23: TLabel
        Left = 102
        Top = 144
        Width = 100
        Height = 16
        Caption = 'RESPONS'#193'VEL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label24: TLabel
        Left = 775
        Top = 46
        Width = 115
        Height = 16
        Caption = 'EXECUTADO POR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label25: TLabel
        Left = 82
        Top = 75
        Width = 112
        Height = 16
        Caption = 'EQUIP. PRIM'#193'RIO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label26: TLabel
        Left = 58
        Top = 108
        Width = 136
        Height = 16
        Caption = 'EQUIP. SECUND'#193'RIO'
        Color = 14215660
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object gbData1: TGroupBox
        Left = 8
        Top = 168
        Width = 889
        Height = 41
        TabOrder = 5
        Visible = False
        object Label29: TLabel
          Left = 142
          Top = 9
          Width = 37
          Height = 16
          Caption = 'DATA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object eddataInicial1: TMaskEdit
          Left = 200
          Top = 9
          Width = 64
          Height = 24
          EditMask = '!99/99/99;1;_'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 8
          ParentFont = False
          TabOrder = 0
          Text = '  /  /  '
          OnExit = eddataInicial1Exit
        end
        object btDMais: TButton
          Left = 272
          Top = 9
          Width = 17
          Height = 25
          Caption = '+'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnClick = btEmaisClick
        end
      end
      object gbdata2: TGroupBox
        Left = 8
        Top = 168
        Width = 889
        Height = 41
        TabOrder = 10
        object Label30: TLabel
          Left = 94
          Top = 9
          Width = 87
          Height = 16
          Caption = 'DATA ENTRE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label43: TLabel
          Left = 271
          Top = 17
          Width = 9
          Height = 16
          Caption = 'A'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object edData2: TMaskEdit
          Left = 200
          Top = 9
          Width = 64
          Height = 24
          EditMask = '!99/99/99;1;_'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 8
          ParentFont = False
          TabOrder = 0
          Text = '  /  /  '
          OnExit = edData2Exit
        end
        object EDdata3: TMaskEdit
          Left = 288
          Top = 9
          Width = 64
          Height = 24
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
          OnExit = EDdata3Exit
        end
        object btDmenos: TButton
          Left = 360
          Top = 9
          Width = 17
          Height = 25
          Caption = '-'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnClick = btEMenosClick
        end
      end
      object dbcSetor1: TDBLookupComboBox
        Left = 208
        Top = 40
        Width = 329
        Height = 28
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ListSource = frdata.dsSetor
        ParentFont = False
        TabOrder = 1
        OnClick = dbcSetor1Click
        OnExit = dbcSetor1Exit
        OnKeyDown = dbcSetor1KeyDown
      end
      object edResponsavel1: TEdit
        Left = 209
        Top = 140
        Width = 688
        Height = 24
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnExit = edResponsavel1Exit
      end
      object dbcEmpresa1: TDBLookupComboBox
        Left = 208
        Top = 8
        Width = 617
        Height = 28
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ListSource = frdata.dsEmpresa
        ParentFont = False
        TabOrder = 0
        OnClick = dbcEmpresa1Click
        OnExit = dbcEmpresa1Exit
        OnKeyDown = dbcEmpresa1KeyDown
      end
      object dbcEquip_Pri1: TDBLookupComboBox
        Left = 208
        Top = 73
        Width = 329
        Height = 28
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ListSource = frdata.dsEquip
        ParentFont = False
        TabOrder = 2
        OnClick = dbcEquip_Pri1Click
        OnExit = dbcEquip_Pri1Exit
        OnKeyDown = dbcEquip_Pri1KeyDown
      end
      object dbcEquip_sec1: TDBLookupComboBox
        Left = 208
        Top = 106
        Width = 329
        Height = 28
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ListSource = frdata.dsEquipSec
        ParentFont = False
        TabOrder = 3
        OnExit = dbcEquip_sec1Exit
        OnKeyDown = dbcEquip_sec1KeyDown
      end
      object GroupBox5: TGroupBox
        Left = 8
        Top = 208
        Width = 889
        Height = 41
        TabOrder = 6
        object Label35: TLabel
          Left = 79
          Top = 17
          Width = 115
          Height = 16
          Caption = 'TIPO DE SERVI'#199'O'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object edTiposervicos1: TComboBox
          Left = 200
          Top = 9
          Width = 145
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 16
          ParentFont = False
          TabOrder = 0
          OnClick = edTiposervicos1Click
          Items.Strings = (
            'POR HORA'
            'POR SERVI'#199'O')
        end
      end
      object GroupBox7: TGroupBox
        Left = 8
        Top = 248
        Width = 889
        Height = 41
        TabOrder = 7
        object Label37: TLabel
          Left = 78
          Top = 17
          Width = 92
          Height = 16
          Caption = 'VALOR TOTAL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label31: TLabel
          Left = 359
          Top = 17
          Width = 9
          Height = 16
          Caption = 'A'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Edit5: TEdit
          Left = 176
          Top = 9
          Width = 24
          Height = 24
          TabStop = False
          CharCase = ecUpperCase
          DragMode = dmAutomatic
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          Text = 'R$'
        end
        object edvalortotal1: TEdit
          Left = 200
          Top = 9
          Width = 144
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          Text = '000.00'
          OnExit = edvalortotal1Exit
        end
        object edValorTotal2: TEdit
          Left = 400
          Top = 9
          Width = 144
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          Text = '000.00'
          OnExit = edValorTotal2Exit
        end
        object Edit2: TEdit
          Left = 376
          Top = 9
          Width = 24
          Height = 24
          TabStop = False
          CharCase = ecUpperCase
          DragMode = dmAutomatic
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          Text = 'R$'
        end
      end
      object GroupBox8: TGroupBox
        Left = 8
        Top = 288
        Width = 889
        Height = 41
        TabOrder = 8
        object Label38: TLabel
          Left = 59
          Top = 17
          Width = 70
          Height = 16
          Caption = 'URG'#202'NCIA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object edUrgencia1: TComboBox
          Left = 152
          Top = 9
          Width = 145
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 16
          ParentFont = False
          TabOrder = 0
          Text = 'ESCOLHA...'
          OnClick = edUrgencia1Click
          Items.Strings = (
            'BAIXA'
            'M'#201'DIA'
            'ALTA')
        end
      end
      object GroupBox9: TGroupBox
        Left = 904
        Top = 0
        Width = 385
        Height = 329
        TabOrder = 9
        object Label39: TLabel
          Left = 6
          Top = 22
          Width = 115
          Height = 16
          Caption = 'EXECUTADO POR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object SpeedButton1: TSpeedButton
          Left = 352
          Top = 44
          Width = 23
          Height = 25
          Caption = '+'
          OnClick = btFunc1Click
        end
        object dbcExecutor1: TDBLookupComboBox
          Left = 8
          Top = 43
          Width = 337
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ListSource = frdata.dsFuncionario
          ParentFont = False
          TabOrder = 0
          OnExit = dbcExecutor1Exit
          OnKeyDown = dbcExecutor1KeyDown
        end
        object GroupBox10: TGroupBox
          Left = 8
          Top = 80
          Width = 369
          Height = 121
          Caption = 'SITUA'#199#195'O'
          TabOrder = 1
          object Label40: TLabel
            Left = 5
            Top = 25
            Width = 82
            Height = 16
            Caption = 'DO SERVI'#199'O'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label41: TLabel
            Left = 45
            Top = 65
            Width = 45
            Height = 16
            Caption = 'FISCAL'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object edsitserv1: TComboBox
            Left = 96
            Top = 17
            Width = 145
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemHeight = 16
            ParentFont = False
            TabOrder = 0
            Text = 'ESCOLHA...'
            OnExit = edsitserv1Exit
            Items.Strings = (
              'CONCLU'#205'DA'
              'EM ANDAMENTO'
              'N'#195'O INICIADA'
              'DESCARTADA')
          end
          object edSitFisc1: TComboBox
            Left = 96
            Top = 57
            Width = 145
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemHeight = 16
            ParentFont = False
            TabOrder = 1
            Text = 'ESCOLHA..'
            OnExit = edSitFisc1Exit
            Items.Strings = (
              'PAGO'
              'EM ABERTO'
              'CORTESIA')
          end
        end
      end
    end
    object gbFiltrado: TGroupBox
      Left = 8
      Top = 40
      Width = 1297
      Height = 441
      TabOrder = 5
      Visible = False
      object dbgdados: TDBGrid
        Left = 8
        Top = 16
        Width = 1281
        Height = 401
        DataSource = frdata.dsConsulta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = dbgdadosDblClick
        OnKeyDown = dbgdadosKeyDown
      end
    end
    object gbCad: TGroupBox
      Left = 8
      Top = 48
      Width = 1297
      Height = 433
      TabOrder = 0
      object Label9: TLabel
        Left = 128
        Top = 8
        Width = 66
        Height = 16
        Caption = 'EMPRESA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label13: TLabel
        Left = 147
        Top = 41
        Width = 47
        Height = 16
        Caption = 'SETOR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 102
        Top = 144
        Width = 100
        Height = 16
        Caption = 'RESPONS'#193'VEL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 775
        Top = 46
        Width = 115
        Height = 16
        Caption = 'EXECUTADO POR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label16: TLabel
        Left = 82
        Top = 75
        Width = 112
        Height = 16
        Caption = 'EQUIP. PRIM'#193'RIO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label17: TLabel
        Left = 58
        Top = 108
        Width = 136
        Height = 16
        Caption = 'EQUIP. SECUND'#193'RIO'
        Color = 14215660
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object dbcSetor: TDBLookupComboBox
        Left = 208
        Top = 40
        Width = 329
        Height = 28
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ListSource = frdata.dsSetor
        ParentFont = False
        TabOrder = 1
        OnClick = dbcSetorClick
        OnKeyDown = dbcSetorKeyDown
      end
      object edResponsavel: TEdit
        Left = 209
        Top = 140
        Width = 688
        Height = 24
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object dbcEmpresa: TDBLookupComboBox
        Left = 208
        Top = 8
        Width = 617
        Height = 28
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        KeyField = 'cod_empresa'
        ListField = 'razao_social'
        ListSource = frdata.dsEmpresa
        ParentFont = False
        TabOrder = 0
        OnClick = dbcEmpresaClick
        OnKeyDown = dbcEmpresaKeyDown
      end
      object btCadEmp: TBitBtn
        Left = 832
        Top = 8
        Width = 57
        Height = 25
        Caption = '[F5]'
        TabOrder = 9
        TabStop = False
        OnClick = btCadEmpClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333303
          333333333333337FF3333333333333903333333333333377FF33333333333399
          03333FFFFFFFFF777FF3000000999999903377777777777777FF0FFFF0999999
          99037F3337777777777F0FFFF099999999907F3FF777777777770F00F0999999
          99037F773777777777730FFFF099999990337F3FF777777777330F00FFFFF099
          03337F773333377773330FFFFFFFF09033337F3FF3FFF77733330F00F0000003
          33337F773777777333330FFFF0FF033333337F3FF7F3733333330F08F0F03333
          33337F7737F7333333330FFFF003333333337FFFF77333333333000000333333
          3333777777333333333333333333333333333333333333333333}
        NumGlyphs = 2
      end
      object btcadSetor: TBitBtn
        Left = 536
        Top = 40
        Width = 57
        Height = 25
        Caption = '[F6]'
        TabOrder = 12
        TabStop = False
        OnClick = btcadSetorClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333303
          333333333333337FF3333333333333903333333333333377FF33333333333399
          03333FFFFFFFFF777FF3000000999999903377777777777777FF0FFFF0999999
          99037F3337777777777F0FFFF099999999907F3FF777777777770F00F0999999
          99037F773777777777730FFFF099999990337F3FF777777777330F00FFFFF099
          03337F773333377773330FFFFFFFF09033337F3FF3FFF77733330F00F0000003
          33337F773777777333330FFFF0FF033333337F3FF7F3733333330F08F0F03333
          33337F7737F7333333330FFFF003333333337FFFF77333333333000000333333
          3333777777333333333333333333333333333333333333333333}
        NumGlyphs = 2
      end
      object dbcEquipamento: TDBLookupComboBox
        Left = 208
        Top = 73
        Width = 329
        Height = 28
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ListSource = frdata.dsEquip
        ParentFont = False
        TabOrder = 2
        OnClick = dbcEquipamentoClick
        OnKeyDown = dbcEquipamentoKeyDown
      end
      object btcadEquip: TBitBtn
        Left = 536
        Top = 73
        Width = 57
        Height = 25
        Caption = '[F8]'
        TabOrder = 13
        TabStop = False
        OnClick = btcadEquipClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333303
          333333333333337FF3333333333333903333333333333377FF33333333333399
          03333FFFFFFFFF777FF3000000999999903377777777777777FF0FFFF0999999
          99037F3337777777777F0FFFF099999999907F3FF777777777770F00F0999999
          99037F773777777777730FFFF099999990337F3FF777777777330F00FFFFF099
          03337F773333377773330FFFFFFFF09033337F3FF3FFF77733330F00F0000003
          33337F773777777333330FFFF0FF033333337F3FF7F3733333330F08F0F03333
          33337F7737F7333333330FFFF003333333337FFFF77333333333000000333333
          3333777777333333333333333333333333333333333333333333}
        NumGlyphs = 2
      end
      object dbcEquiP_Sec: TDBLookupComboBox
        Left = 208
        Top = 106
        Width = 329
        Height = 28
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ListSource = frdata.dsEquipSec
        ParentFont = False
        TabOrder = 3
      end
      object btcadEquipSec: TBitBtn
        Left = 537
        Top = 107
        Width = 57
        Height = 25
        Caption = '[F11]'
        TabOrder = 14
        TabStop = False
        OnClick = btcadEquipSecClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333303
          333333333333337FF3333333333333903333333333333377FF33333333333399
          03333FFFFFFFFF777FF3000000999999903377777777777777FF0FFFF0999999
          99037F3337777777777F0FFFF099999999907F3FF777777777770F00F0999999
          99037F773777777777730FFFF099999990337F3FF777777777330F00FFFFF099
          03337F773333377773330FFFFFFFF09033337F3FF3FFF77733330F00F0000003
          33337F773777777333330FFFF0FF033333337F3FF7F3733333330F08F0F03333
          33337F7737F7333333330FFFF003333333337FFFF77333333333000000333333
          3333777777333333333333333333333333333333333333333333}
        NumGlyphs = 2
      end
      object gbDesc: TGroupBox
        Left = 16
        Top = 328
        Width = 1273
        Height = 97
        Caption = 'DESCRI'#199#195'O DE SERVI'#199'OS ...'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 11
        object Label3: TLabel
          Left = 6
          Top = 17
          Width = 158
          Height = 16
          Caption = 'O QUE DEVE SER FEIITO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label19: TLabel
          Left = 510
          Top = 17
          Width = 108
          Height = 16
          Caption = 'O QUE FOI FEITO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object edDescFazer: TMemo
          Left = 8
          Top = 32
          Width = 497
          Height = 57
          TabOrder = 0
        end
        object edDescFeito: TMemo
          Left = 512
          Top = 32
          Width = 505
          Height = 57
          TabOrder = 1
        end
      end
      object gbdata: TGroupBox
        Left = 8
        Top = 168
        Width = 889
        Height = 41
        TabOrder = 5
        object Label15: TLabel
          Left = 102
          Top = 9
          Width = 84
          Height = 16
          Caption = 'DATA INICIAL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label14: TLabel
          Left = 341
          Top = 17
          Width = 77
          Height = 16
          Caption = 'DATA FINAL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object edDtInicial: TMaskEdit
          Left = 200
          Top = 9
          Width = 64
          Height = 24
          EditMask = '!99/99/99;1;_'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 8
          ParentFont = False
          TabOrder = 0
          Text = '  /  /  '
        end
        object edDtFinal: TMaskEdit
          Left = 432
          Top = 9
          Width = 65
          Height = 24
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
      object gbHora: TGroupBox
        Left = 8
        Top = 208
        Width = 889
        Height = 41
        TabOrder = 6
        object Label4: TLabel
          Left = 84
          Top = 17
          Width = 102
          Height = 16
          Caption = 'HORA DE IN'#205'CIO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 293
          Top = 17
          Width = 126
          Height = 16
          Caption = 'HORA DE T'#201'RMINO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 541
          Top = 17
          Width = 76
          Height = 16
          Caption = 'INTERVALO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label12: TLabel
          Left = 693
          Top = 17
          Width = 117
          Height = 16
          Caption = 'TOTAL DE HORAS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object edInicio: TMaskEdit
          Left = 200
          Top = 9
          Width = 49
          Height = 24
          EditMask = '!99:99;1;_'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 5
          ParentFont = False
          TabOrder = 0
          Text = '  :  '
          OnExit = edInicioExit
        end
        object edTermino: TMaskEdit
          Left = 432
          Top = 9
          Width = 37
          Height = 24
          EditMask = '!99:99;1;_'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 5
          ParentFont = False
          TabOrder = 1
          Text = '  :  '
          OnExit = edTerminoExit
        end
        object edIntervalo: TMaskEdit
          Left = 632
          Top = 9
          Width = 38
          Height = 24
          EditMask = '!99:99;1;_'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 5
          ParentFont = False
          TabOrder = 2
          Text = '00:00'
          OnExit = edIntervaloExit
        end
        object edTotalTempo: TEdit
          Left = 816
          Top = 9
          Width = 57
          Height = 24
          TabStop = False
          CharCase = ecUpperCase
          Color = 15658734
          DragMode = dmAutomatic
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
      end
      object gbval: TGroupBox
        Left = 8
        Top = 248
        Width = 889
        Height = 41
        TabOrder = 7
        object Label8: TLabel
          Left = 79
          Top = 17
          Width = 115
          Height = 16
          Caption = 'TIPO DE SERVI'#199'O'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lbValHora: TLabel
          Left = 376
          Top = 17
          Width = 109
          Height = 16
          Caption = 'VALOR DA HORA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object edTipoServico: TComboBox
          Left = 200
          Top = 9
          Width = 145
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 16
          ParentFont = False
          TabOrder = 0
          Text = 'POR SERVI'#199'O'
          OnClick = edTipoServicoClick
          Items.Strings = (
            'POR HORA'
            'POR SERVI'#199'O')
        end
        object edValorhora: TEdit
          Left = 520
          Top = 9
          Width = 96
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          Text = '00,00'
          Visible = False
          OnChange = edValorhoraChange
          OnExit = edValorhoraExit
        end
        object edrsH: TEdit
          Left = 497
          Top = 9
          Width = 24
          Height = 24
          TabStop = False
          CharCase = ecUpperCase
          DragMode = dmAutomatic
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          Text = 'R$'
          Visible = False
        end
      end
      object gbvt: TGroupBox
        Left = 8
        Top = 288
        Width = 521
        Height = 41
        TabOrder = 8
        object Label11: TLabel
          Left = 78
          Top = 17
          Width = 92
          Height = 16
          Caption = 'VALOR TOTAL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object edrsVT: TEdit
          Left = 176
          Top = 9
          Width = 24
          Height = 24
          TabStop = False
          CharCase = ecUpperCase
          DragMode = dmAutomatic
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          Text = 'R$'
        end
        object edvalorTotal: TEdit
          Left = 200
          Top = 9
          Width = 144
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          Text = '000.00'
        end
      end
      object gbUG: TGroupBox
        Left = 536
        Top = 288
        Width = 361
        Height = 41
        TabOrder = 10
        object Label18: TLabel
          Left = 59
          Top = 17
          Width = 70
          Height = 16
          Caption = 'URG'#202'NCIA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object edUrgencia: TComboBox
          Left = 152
          Top = 9
          Width = 145
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 16
          ParentFont = False
          TabOrder = 0
          Text = 'ESCOLHA...'
          Items.Strings = (
            'BAIXA'
            'M'#201'DIA'
            'ALTA')
        end
      end
      object GroupBox6: TGroupBox
        Left = 904
        Top = 0
        Width = 385
        Height = 321
        TabOrder = 15
        object Label1: TLabel
          Left = 6
          Top = 22
          Width = 115
          Height = 16
          Caption = 'EXECUTADO POR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object btFunc1: TSpeedButton
          Left = 352
          Top = 44
          Width = 23
          Height = 25
          Caption = '+'
          OnClick = btFunc1Click
        end
        object Label33: TLabel
          Left = 267
          Top = 209
          Width = 45
          Height = 16
          Caption = 'Qt Func'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object dbcExecutor: TDBLookupComboBox
          Left = 8
          Top = 43
          Width = 337
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ListSource = frdata.dsFuncionario
          ParentFont = False
          TabOrder = 0
          OnClick = dbcExecutorClick
          OnKeyDown = dbcExecutorKeyDown
        end
        object gbSituacao: TGroupBox
          Left = 8
          Top = 80
          Width = 369
          Height = 121
          Caption = 'SITUA'#199#195'O'
          TabOrder = 1
          object Label20: TLabel
            Left = 5
            Top = 25
            Width = 82
            Height = 16
            Caption = 'DO SERVI'#199'O'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label21: TLabel
            Left = 45
            Top = 65
            Width = 45
            Height = 16
            Caption = 'FISCAL'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object edSitServ: TComboBox
            Left = 96
            Top = 17
            Width = 145
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemHeight = 16
            ParentFont = False
            TabOrder = 0
            Text = 'ESCOLHA...'
            Items.Strings = (
              'CONCLU'#205'DA'
              'EM ANDAMENTO'
              'N'#195'O INICIADA'
              'DESCARTADA')
          end
          object edSituFiscal: TComboBox
            Left = 96
            Top = 57
            Width = 145
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemHeight = 16
            ParentFont = False
            TabOrder = 1
            Text = 'ESCOLHA..'
            Items.Strings = (
              'PAGO'
              'EM ABERTO'
              'CORTESIA')
          end
        end
        object edQtFunc: TEdit
          Left = 337
          Top = 204
          Width = 40
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          Text = '1'
        end
      end
    end
    object gbFunc: TGroupBox
      Left = 920
      Top = 128
      Width = 385
      Height = 337
      TabOrder = 3
      Visible = False
      object dbcFunc2: TDBLookupComboBox
        Left = 8
        Top = 43
        Width = 369
        Height = 28
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ListSource = frdata.ds2
        ParentFont = False
        TabOrder = 1
        OnClick = dbcFunc2Click
        OnKeyDown = dbcFunc2KeyDown
      end
      object dbcFunc3: TDBLookupComboBox
        Left = 8
        Top = 75
        Width = 369
        Height = 28
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ListSource = frdata.ds3
        ParentFont = False
        TabOrder = 2
        OnClick = dbcFunc3Click
        OnKeyDown = dbcFunc3KeyDown
      end
      object dbcFunc1: TDBLookupComboBox
        Left = 8
        Top = 11
        Width = 369
        Height = 28
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ListSource = frdata.ds1
        ParentFont = False
        TabOrder = 0
        OnClick = dbcFunc1Click
        OnKeyDown = dbcFunc1KeyDown
      end
      object dbcFunc4: TDBLookupComboBox
        Left = 8
        Top = 107
        Width = 369
        Height = 28
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ListSource = frdata.ds4
        ParentFont = False
        TabOrder = 3
        OnClick = dbcFunc4Click
        OnKeyDown = dbcFunc4KeyDown
      end
      object dbcFunc5: TDBLookupComboBox
        Left = 8
        Top = 139
        Width = 369
        Height = 28
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ListSource = frdata.ds5
        ParentFont = False
        TabOrder = 4
        OnClick = dbcFunc5Click
        OnKeyDown = dbcFunc5KeyDown
      end
      object dbcFunc6: TDBLookupComboBox
        Left = 8
        Top = 171
        Width = 369
        Height = 28
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ListSource = frdata.ds6
        ParentFont = False
        TabOrder = 5
        OnClick = dbcFunc6Click
        OnKeyDown = dbcFunc6KeyDown
      end
      object dbcFunc7: TDBLookupComboBox
        Left = 8
        Top = 203
        Width = 369
        Height = 28
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ListSource = frdata.ds7
        ParentFont = False
        TabOrder = 6
        OnClick = dbcFunc7Click
        OnKeyDown = dbcFunc7KeyDown
      end
      object dbcFunc8: TDBLookupComboBox
        Left = 8
        Top = 235
        Width = 369
        Height = 28
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ListSource = frdata.ds8
        ParentFont = False
        TabOrder = 7
        OnClick = dbcFunc8Click
        OnKeyDown = dbcFunc8KeyDown
      end
      object dbcFunc9: TDBLookupComboBox
        Left = 8
        Top = 267
        Width = 369
        Height = 28
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ListSource = frdata.ds9
        ParentFont = False
        TabOrder = 8
        OnClick = dbcFunc9Click
        OnKeyDown = dbcFunc9KeyDown
      end
      object btFunc2: TBitBtn
        Left = 128
        Top = 304
        Width = 137
        Height = 25
        Caption = 'OK   [F10]'
        Default = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
        TabStop = False
        OnClick = btFunc2Click
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333333333330000333333333333333333333333F33333333333
          00003333344333333333333333388F3333333333000033334224333333333333
          338338F3333333330000333422224333333333333833338F3333333300003342
          222224333333333383333338F3333333000034222A22224333333338F338F333
          8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
          33333338F83338F338F33333000033A33333A222433333338333338F338F3333
          0000333333333A222433333333333338F338F33300003333333333A222433333
          333333338F338F33000033333333333A222433333333333338F338F300003333
          33333333A222433333333333338F338F00003333333333333A22433333333333
          3338F38F000033333333333333A223333333333333338F830000333333333333
          333A333333333333333338330000333333333333333333333333333333333333
          0000}
        NumGlyphs = 2
      end
    end
    object gbCod: TGroupBox
      Left = 8
      Top = 8
      Width = 1297
      Height = 41
      TabOrder = 1
      object lbCod: TLabel
        Left = 136
        Top = 16
        Width = 52
        Height = 16
        Caption = 'C'#211'DIGO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object gbDtEmissao: TGroupBox
        Left = 464
        Top = 0
        Width = 353
        Height = 41
        TabOrder = 1
        Visible = False
        object Label27: TLabel
          Left = 15
          Top = 17
          Width = 110
          Height = 16
          Caption = 'EMISS'#195'O ENTRE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label28: TLabel
          Left = 199
          Top = 17
          Width = 9
          Height = 16
          Caption = 'A'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object edDtEmissaoIn: TMaskEdit
          Left = 128
          Top = 9
          Width = 65
          Height = 24
          TabStop = False
          EditMask = '!99/99/99;1;_'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 8
          ParentFont = False
          TabOrder = 0
          Text = '  /  /  '
          OnExit = edDtEmissaoInExit
        end
        object edDtEmissaofi: TMaskEdit
          Left = 216
          Top = 9
          Width = 65
          Height = 24
          TabStop = False
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
          OnExit = edDtEmissaofiExit
        end
        object btEMenos: TButton
          Left = 280
          Top = 9
          Width = 17
          Height = 25
          Caption = '-'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnClick = btEMenosClick
        end
      end
      object gbdtEmissao1: TGroupBox
        Left = 464
        Top = 0
        Width = 353
        Height = 41
        TabOrder = 2
        object Label42: TLabel
          Left = 15
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
        object edDataEmissao: TMaskEdit
          Left = 144
          Top = 9
          Width = 65
          Height = 24
          TabStop = False
          EditMask = '!99/99/99;1;_'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 8
          ParentFont = False
          TabOrder = 0
          Text = '  /  /  '
          OnExit = edInicioExit
        end
        object btEmais: TButton
          Left = 208
          Top = 9
          Width = 17
          Height = 25
          Caption = '+'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          Visible = False
          OnClick = btEmaisClick
        end
      end
      object edCod: TEdit
        Left = 208
        Top = 8
        Width = 161
        Height = 28
        TabStop = False
        Color = clInactiveBorder
        DragMode = dmAutomatic
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnExit = edCodExit
      end
    end
    object gbbutton: TGroupBox
      Left = 8
      Top = 488
      Width = 1297
      Height = 65
      TabOrder = 2
      object btnOk: TBitBtn
        Left = 24
        Top = 24
        Width = 137
        Height = 25
        Caption = 'OK   [F10]'
        Default = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TabStop = False
        OnClick = btnOkClick
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333333333330000333333333333333333333333F33333333333
          00003333344333333333333333388F3333333333000033334224333333333333
          338338F3333333330000333422224333333333333833338F3333333300003342
          222224333333333383333338F3333333000034222A22224333333338F338F333
          8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
          33333338F83338F338F33333000033A33333A222433333338333338F338F3333
          0000333333333A222433333333333338F338F33300003333333333A222433333
          333333338F338F33000033333333333A222433333333333338F338F300003333
          33333333A222433333333333338F338F00003333333333333A22433333333333
          3338F38F000033333333333333A223333333333333338F830000333333333333
          333A333333333333333338330000333333333333333333333333333333333333
          0000}
        NumGlyphs = 2
      end
      object btnExcluir: TBitBtn
        Left = 160
        Top = 24
        Width = 137
        Height = 25
        Cancel = True
        Caption = 'EXCLUIR   [DEL]'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        TabStop = False
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333333333333333333333000033338833333333333333333F333333333333
          0000333911833333983333333388F333333F3333000033391118333911833333
          38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
          911118111118333338F3338F833338F3000033333911111111833333338F3338
          3333F8330000333333911111183333333338F333333F83330000333333311111
          8333333333338F3333383333000033333339111183333333333338F333833333
          00003333339111118333333333333833338F3333000033333911181118333333
          33338333338F333300003333911183911183333333383338F338F33300003333
          9118333911183333338F33838F338F33000033333913333391113333338FF833
          38F338F300003333333333333919333333388333338FFF830000333333333333
          3333333333333333333888330000333333333333333333333333333333333333
          0000}
        NumGlyphs = 2
      end
      object btFechar: TBitBtn
        Left = 864
        Top = 24
        Width = 75
        Height = 25
        Caption = '&Fechar'
        TabOrder = 2
        TabStop = False
        Kind = bkClose
      end
      object btnAlterar: TBitBtn
        Left = 296
        Top = 24
        Width = 137
        Height = 25
        Caption = 'ALTERAR   [F7]'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        TabStop = False
        Glyph.Data = {
          F2010000424DF201000000000000760000002800000024000000130000000100
          0400000000007C01000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333334433333
          3333333333388F3333333333000033334224333333333333338338F333333333
          0000333422224333333333333833338F33333333000033422222243333333333
          83333338F3333333000034222A22224333333338F33F33338F33333300003222
          A2A2224333333338F383F3338F33333300003A2A222A222433333338F8333F33
          38F33333000034A22222A22243333338833333F3338F333300004222A2222A22
          2433338F338F333F3338F3330000222A3A2224A22243338F3838F338F3338F33
          0000A2A333A2224A2224338F83338F338F3338F300003A33333A2224A2224338
          333338F338F3338F000033333333A2224A2243333333338F338F338F00003333
          33333A2224A2233333333338F338F83300003333333333A2224A333333333333
          8F338F33000033333333333A222433333333333338F338F30000333333333333
          A224333333333333338F38F300003333333333333A223333333333333338F8F3
          000033333333333333A3333333333333333383330000}
        NumGlyphs = 2
      end
      object btnFiltro: TBitBtn
        Left = 432
        Top = 24
        Width = 137
        Height = 25
        Caption = 'FILTRO   [F9]'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        TabStop = False
        OnClick = btnFiltroClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333333333FF3333333333333C0C333333333333F777F3333333333CC0F0C3
          333333333777377F33333333C30F0F0C333333337F737377F333333C00FFF0F0
          C33333F7773337377F333CC0FFFFFF0F0C3337773F33337377F3C30F0FFFFFF0
          F0C37F7373F33337377F00FFF0FFFFFF0F0C7733373F333373770FFFFF0FFFFF
          F0F073F33373F333373730FFFFF0FFFFFF03373F33373F333F73330FFFFF0FFF
          00333373F33373FF77333330FFFFF000333333373F333777333333330FFF0333
          3333333373FF7333333333333000333333333333377733333333333333333333
          3333333333333333333333333333333333333333333333333333}
        NumGlyphs = 2
      end
      object BitBtn5: TBitBtn
        Left = 568
        Top = 24
        Width = 137
        Height = 25
        Caption = 'RELAT'#211'RIO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        TabStop = False
        OnClick = BitBtn5Click
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333333333FF3333333333333C0C333333333333F777F3333333333CC0F0C3
          333333333777377F33333333C30F0F0C333333337F737377F333333C00FFF0F0
          C33333F7773337377F333CC0FFFFFF0F0C3337773F33337377F3C30F0FFFFFF0
          F0C37F7373F33337377F00FFF0FFFFFF0F0C7733373F333373770FFFFF0FFFFF
          F0F073F33373F333373730FFFFF0FFFFFF03373F33373F333F73330FFFFF0FFF
          00333373F33373FF77333330FFFFF000333333373F333777333333330FFF0333
          3333333373FF7333333333333000333333333333377733333333333333333333
          3333333333333333333333333333333333333333333333333333}
        NumGlyphs = 2
      end
    end
  end
  object tEmpresa: TTimer
    Enabled = False
    Interval = 100
    OnTimer = tEmpresaTimer
    Left = 105
    Top = 145
  end
  object tdata: TTimer
    Enabled = False
    Interval = 100
    OnTimer = tdataTimer
    Left = 41
    Top = 329
  end
  object tSetor: TTimer
    Enabled = False
    Interval = 100
    OnTimer = tSetorTimer
    Left = 121
    Top = 177
  end
  object tExecutor: TTimer
    Enabled = False
    Interval = 100
    OnTimer = tExecutorTimer
    Left = 25
    Top = 185
  end
  object tResponsavel: TTimer
    Enabled = False
    Interval = 100
    OnTimer = tResponsavelTimer
    Left = 25
    Top = 217
  end
  object tDescricao: TTimer
    Enabled = False
    Interval = 100
    OnTimer = tDescricaoTimer
    Left = 97
    Top = 361
  end
  object tInicio: TTimer
    Enabled = False
    Interval = 100
    OnTimer = tInicioTimer
    Left = 41
    Top = 361
  end
  object tTermino: TTimer
    Enabled = False
    Interval = 100
    OnTimer = tTerminoTimer
    Left = 33
    Top = 145
  end
  object tValorTotal: TTimer
    Enabled = False
    Interval = 100
    OnTimer = tValorTotalTimer
    Left = 41
    Top = 393
  end
  object tValorHora: TTimer
    Enabled = False
    Interval = 100
    OnTimer = tValorHoraTimer
    Left = 41
    Top = 113
  end
end
