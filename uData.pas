unit uData;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  Tfrdata = class(TDataModule)
    con: TADOConnection;
    qCadastro: TADOQuery;
    DataSource1: TDataSource;
    dsConsulta: TDataSource;
    dsRamo: TDataSource;
    dsEmpresa: TDataSource;
    dsSetor: TDataSource;
    qSetor: TADOQuery;
    qConsulta: TADOQuery;
    qRamo: TADOQuery;
    qEmpresa: TADOQuery;
    qFuncionario: TADOQuery;
    dsFuncionario: TDataSource;
    qEquip: TADOQuery;
    dsEquip: TDataSource;
    qEquip_sec: TADOQuery;
    dsEquipSec: TDataSource;
    qF1: TADOQuery;
    qf2: TADOQuery;
    qf3: TADOQuery;
    qf4: TADOQuery;
    qf5: TADOQuery;
    qf6: TADOQuery;
    qf7: TADOQuery;
    qf8: TADOQuery;
    qf9: TADOQuery;
    ds1: TDataSource;
    ds2: TDataSource;
    ds3: TDataSource;
    ds4: TDataSource;
    ds5: TDataSource;
    ds6: TDataSource;
    ds7: TDataSource;
    ds8: TDataSource;
    ds9: TDataSource;
    qConsulta1: TADOQuery;
    dsconsulta1: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frdata: Tfrdata;

implementation

{$R *.dfm}

end.
