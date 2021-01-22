program sisLogica;

uses
  Forms,
  uMain in 'uMain.pas' {frMain},
  unotasTerceiros in 'unotasTerceiros.pas' {frNotasTerceiros},
  uData in 'uData.pas' {frdata: TDataModule},
  uConsulta in 'uConsulta.pas' {frConsulta},
  uCadEmpresas in 'uCadEmpresas.pas' {frCadEmpresas},
  uRamoAtuacao in 'uRamoAtuacao.pas' {frRamoAtuacao},
  uRelEmpresas in 'uRelEmpresas.pas' {relEmpresas: TQuickRep},
  frCadServico in 'frCadServico.pas' {frmCadServico},
  UfrCadSetor in 'UfrCadSetor.pas' {frCadSetor},
  uRelServicos in 'uRelServicos.pas' {relServico: TQuickRep},
  ufrcadEquip in 'ufrcadEquip.pas' {frcadEquip},
  ufrEquipSec in 'ufrEquipSec.pas' {frCadEquipSec};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Lógica Automações';
  Application.CreateForm(TfrMain, frMain);
  Application.CreateForm(Tfrdata, frdata);
  Application.CreateForm(TrelServico, relServico);
  Application.CreateForm(TfrcadEquip, frcadEquip);
  Application.CreateForm(TfrCadEquipSec, frCadEquipSec);
  Application.Run;
 end.
