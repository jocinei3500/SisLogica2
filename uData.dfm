object frdata: Tfrdata
  OldCreateOrder = False
  Left = 245
  Top = 193
  Height = 498
  Width = 1005
  object con: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=sislo' +
      'gica'
    LoginPrompt = False
    Left = 24
    Top = 16
  end
  object qCadastro: TADOQuery
    Connection = con
    Parameters = <>
    Left = 32
    Top = 64
  end
  object DataSource1: TDataSource
    Left = 32
    Top = 112
  end
  object dsConsulta: TDataSource
    DataSet = qConsulta
    Left = 96
    Top = 112
  end
  object dsRamo: TDataSource
    DataSet = qRamo
    Left = 160
    Top = 112
  end
  object dsEmpresa: TDataSource
    DataSet = qEmpresa
    Left = 224
    Top = 120
  end
  object dsSetor: TDataSource
    DataSet = qSetor
    Left = 280
    Top = 120
  end
  object qSetor: TADOQuery
    Connection = con
    Parameters = <>
    Left = 280
    Top = 64
  end
  object qConsulta: TADOQuery
    Connection = con
    Parameters = <>
    Left = 96
    Top = 64
  end
  object qRamo: TADOQuery
    Connection = con
    Parameters = <>
    Left = 160
    Top = 64
  end
  object qEmpresa: TADOQuery
    Connection = con
    Parameters = <>
    Left = 224
    Top = 64
  end
  object qFuncionario: TADOQuery
    Connection = con
    Parameters = <>
    Left = 328
    Top = 64
  end
  object dsFuncionario: TDataSource
    DataSet = qFuncionario
    Left = 328
    Top = 120
  end
  object qEquip: TADOQuery
    Connection = con
    Parameters = <>
    Left = 32
    Top = 200
  end
  object dsEquip: TDataSource
    DataSet = qEquip
    Left = 32
    Top = 248
  end
  object qEquip_sec: TADOQuery
    Connection = con
    Parameters = <>
    Left = 112
    Top = 200
  end
  object dsEquipSec: TDataSource
    DataSet = qEquip_sec
    Left = 112
    Top = 248
  end
  object qF1: TADOQuery
    Connection = con
    Parameters = <>
    Left = 224
    Top = 192
  end
  object qf2: TADOQuery
    Connection = con
    Parameters = <>
    Left = 280
    Top = 192
  end
  object qf3: TADOQuery
    Connection = con
    Parameters = <>
    Left = 328
    Top = 192
  end
  object qf4: TADOQuery
    Connection = con
    Parameters = <>
    Left = 376
    Top = 192
  end
  object qf5: TADOQuery
    Connection = con
    Parameters = <>
    Left = 416
    Top = 192
  end
  object qf6: TADOQuery
    Connection = con
    Parameters = <>
    Left = 464
    Top = 192
  end
  object qf7: TADOQuery
    Connection = con
    Parameters = <>
    Left = 504
    Top = 192
  end
  object qf8: TADOQuery
    Connection = con
    Parameters = <>
    Left = 552
    Top = 192
  end
  object qf9: TADOQuery
    Connection = con
    Parameters = <>
    Left = 592
    Top = 192
  end
  object ds1: TDataSource
    DataSet = qF1
    Left = 224
    Top = 248
  end
  object ds2: TDataSource
    DataSet = qf2
    Left = 280
    Top = 248
  end
  object ds3: TDataSource
    DataSet = qf3
    Left = 328
    Top = 248
  end
  object ds4: TDataSource
    DataSet = qf4
    Left = 376
    Top = 248
  end
  object ds5: TDataSource
    DataSet = qf5
    Left = 416
    Top = 248
  end
  object ds6: TDataSource
    DataSet = qf6
    Left = 464
    Top = 248
  end
  object ds7: TDataSource
    DataSet = qf7
    Left = 504
    Top = 248
  end
  object ds8: TDataSource
    DataSet = qf8
    Left = 552
    Top = 248
  end
  object ds9: TDataSource
    DataSet = qf9
    Left = 592
    Top = 248
  end
  object qConsulta1: TADOQuery
    Connection = con
    Parameters = <>
    Left = 400
    Top = 64
  end
  object dsconsulta1: TDataSource
    DataSet = qConsulta1
    Left = 400
    Top = 120
  end
end
