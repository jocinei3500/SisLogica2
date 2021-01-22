unit frCadServico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, DBCtrls, Mask, ComCtrls, Grids,
  DBGrids;

type
  TfrmCadServico = class(TForm)
    pTitle: TPanel;
    lbCaption: TLabel;
    lbClose: TLabel;
    gbMain: TGroupBox;
    gbCad: TGroupBox;
    Label9: TLabel;
    Label13: TLabel;
    dbcSetor: TDBLookupComboBox;
    gbCod: TGroupBox;
    lbCod: TLabel;
    edCod: TEdit;
    gbbutton: TGroupBox;
    btnOk: TBitBtn;
    btnExcluir: TBitBtn;
    btFechar: TBitBtn;
    btnAlterar: TBitBtn;
    btnFiltro: TBitBtn;
    Label2: TLabel;
    edResponsavel: TEdit;
    Label6: TLabel;
    dbcEmpresa: TDBLookupComboBox;
    btCadEmp: TBitBtn;
    btcadSetor: TBitBtn;
    tEmpresa: TTimer;
    tdata: TTimer;
    tSetor: TTimer;
    tExecutor: TTimer;
    tResponsavel: TTimer;
    tDescricao: TTimer;
    tInicio: TTimer;
    tTermino: TTimer;
    tValorTotal: TTimer;
    tValorHora: TTimer;
    Label16: TLabel;
    dbcEquipamento: TDBLookupComboBox;
    btcadEquip: TBitBtn;
    Label17: TLabel;
    dbcEquiP_Sec: TDBLookupComboBox;
    btcadEquipSec: TBitBtn;
    gbDesc: TGroupBox;
    edDescFazer: TMemo;
    edDescFeito: TMemo;
    Label3: TLabel;
    Label19: TLabel;
    gbdata: TGroupBox;
    Label15: TLabel;
    Label14: TLabel;
    edDtInicial: TMaskEdit;
    edDtFinal: TMaskEdit;
    gbHora: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label12: TLabel;
    edInicio: TMaskEdit;
    edTermino: TMaskEdit;
    edIntervalo: TMaskEdit;
    edTotalTempo: TEdit;
    gbval: TGroupBox;
    Label8: TLabel;
    lbValHora: TLabel;
    edTipoServico: TComboBox;
    edValorhora: TEdit;
    edrsH: TEdit;
    gbvt: TGroupBox;
    Label11: TLabel;
    edrsVT: TEdit;
    edvalorTotal: TEdit;
    gbUG: TGroupBox;
    Label18: TLabel;
    edUrgencia: TComboBox;
    GroupBox6: TGroupBox;
    dbcExecutor: TDBLookupComboBox;
    gbSituacao: TGroupBox;
    Label20: TLabel;
    Label21: TLabel;
    edSitServ: TComboBox;
    edSituFiscal: TComboBox;
    Label1: TLabel;
    gbFunc: TGroupBox;
    dbcFunc2: TDBLookupComboBox;
    dbcFunc3: TDBLookupComboBox;
    dbcFunc1: TDBLookupComboBox;
    dbcFunc4: TDBLookupComboBox;
    dbcFunc5: TDBLookupComboBox;
    dbcFunc6: TDBLookupComboBox;
    dbcFunc7: TDBLookupComboBox;
    dbcFunc8: TDBLookupComboBox;
    dbcFunc9: TDBLookupComboBox;
    btFunc2: TBitBtn;
    btFunc1: TSpeedButton;
    gbConsulta: TGroupBox;
    Label10: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    dbcSetor1: TDBLookupComboBox;
    edResponsavel1: TEdit;
    dbcEmpresa1: TDBLookupComboBox;
    dbcEquip_Pri1: TDBLookupComboBox;
    dbcEquip_sec1: TDBLookupComboBox;
    gbData1: TGroupBox;
    Label29: TLabel;
    eddataInicial1: TMaskEdit;
    GroupBox5: TGroupBox;
    Label35: TLabel;
    edTiposervicos1: TComboBox;
    GroupBox7: TGroupBox;
    Label37: TLabel;
    Edit5: TEdit;
    edvalortotal1: TEdit;
    GroupBox8: TGroupBox;
    Label38: TLabel;
    edUrgencia1: TComboBox;
    GroupBox9: TGroupBox;
    Label39: TLabel;
    SpeedButton1: TSpeedButton;
    dbcExecutor1: TDBLookupComboBox;
    GroupBox10: TGroupBox;
    Label40: TLabel;
    Label41: TLabel;
    edsitserv1: TComboBox;
    edSitFisc1: TComboBox;
    dbgdados: TDBGrid;
    gbFiltrado: TGroupBox;
    BitBtn5: TBitBtn;
    edQtFunc: TEdit;
    Label33: TLabel;
    gbDtEmissao: TGroupBox;
    edDtEmissaoIn: TMaskEdit;
    Label27: TLabel;
    edDtEmissaofi: TMaskEdit;
    Label28: TLabel;
    btEMenos: TButton;
    gbdtEmissao1: TGroupBox;
    Label42: TLabel;
    edDataEmissao: TMaskEdit;
    btEmais: TButton;
    gbdata2: TGroupBox;
    Label30: TLabel;
    edData2: TMaskEdit;
    EDdata3: TMaskEdit;
    Label43: TLabel;
    btDMais: TButton;
    btDmenos: TButton;
    edValorTotal2: TEdit;
    Edit2: TEdit;
    Label31: TLabel;
    procedure FormShow(Sender: TObject);
    procedure dbcEmpresaClick(Sender: TObject);
    procedure edInicioExit(Sender: TObject);
    procedure edTerminoExit(Sender: TObject);
    procedure edIntervaloExit(Sender: TObject);
    procedure edValorhoraKeyPress(Sender: TObject; var Key: Char);
    procedure edValorhoraExit(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edTipoServicoClick(Sender: TObject);
    procedure tEmpresaTimer(Sender: TObject);
    procedure tdataTimer(Sender: TObject);
    procedure tSetorTimer(Sender: TObject);
    procedure tExecutorTimer(Sender: TObject);
    procedure tResponsavelTimer(Sender: TObject);
    procedure tDescricaoTimer(Sender: TObject);
    procedure tInicioTimer(Sender: TObject);
    procedure tTerminoTimer(Sender: TObject);
    procedure tValorTotalTimer(Sender: TObject);
    procedure tValorHoraTimer(Sender: TObject);
    procedure edDataKeyPress(Sender: TObject; var Key: Char);
    procedure dbcSetorClick(Sender: TObject);
    procedure dbcEquipamentoClick(Sender: TObject);
    procedure btFunc1Click(Sender: TObject);
    procedure btFunc2Click(Sender: TObject);
    procedure dbcExecutorClick(Sender: TObject);
    procedure dbcFunc1Click(Sender: TObject);
    procedure dbcFunc3Click(Sender: TObject);
    procedure dbcFunc2Click(Sender: TObject);
    procedure dbcFunc4Click(Sender: TObject);
    procedure dbcFunc5Click(Sender: TObject);
    procedure dbcFunc6Click(Sender: TObject);
    procedure dbcFunc7Click(Sender: TObject);
    procedure dbcFunc8Click(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure edCodExit(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure edTiposervicos1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure btCadEmpClick(Sender: TObject);
    procedure btcadSetorClick(Sender: TObject);
    procedure btcadEquipClick(Sender: TObject);
    procedure btcadEquipSecClick(Sender: TObject);
    procedure dbcFunc9Click(Sender: TObject);
    procedure edValorhoraChange(Sender: TObject);
    procedure dbcEmpresa1Exit(Sender: TObject);
    procedure dbcSetor1Exit(Sender: TObject);
    procedure dbcEquip_Pri1Exit(Sender: TObject);
    procedure dbcEquip_sec1Exit(Sender: TObject);
    procedure edResponsavel1Exit(Sender: TObject);
    procedure btEmaisClick(Sender: TObject);
    procedure btEMenosClick(Sender: TObject);
    procedure dbcEmpresa1Click(Sender: TObject);
    procedure dbcSetor1Click(Sender: TObject);
    procedure dbcEquip_Pri1Click(Sender: TObject);
    procedure dbcEmpresa1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbcSetor1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbcEquip_Pri1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbcEquip_sec1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbcExecutor1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbcFunc1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbcFunc2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbcFunc3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbcFunc4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbcFunc5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbcFunc6KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbcFunc7KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbcFunc8KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbcFunc9KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbcEmpresaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbcSetorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbcEquipamentoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbcExecutorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edDtEmissaoInExit(Sender: TObject);
    procedure edDtEmissaofiExit(Sender: TObject);
    procedure eddataInicial1Exit(Sender: TObject);
    procedure edData2Exit(Sender: TObject);
    procedure EDdata3Exit(Sender: TObject);
    procedure dbcExecutor1Exit(Sender: TObject);
    procedure edsitserv1Exit(Sender: TObject);
    procedure edSitFisc1Exit(Sender: TObject);
    procedure edvalortotal1Exit(Sender: TObject);
    procedure edValorTotal2Exit(Sender: TObject);
    procedure edUrgencia1Click(Sender: TObject);
    procedure dbgdadosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgdadosDblClick(Sender: TObject);
  private
    { Private declarations }
    procedure cadastrar;
    procedure limpar;
    procedure alterar;
    procedure atualizar;
    procedure buscCod;
    function VerificaCampos:boolean;
    procedure buscEmpresa;
    procedure buscSetor;
    procedure buscFuncionario;
    procedure calculaHora;
    procedure calculaValTotal;
    procedure formatPHora;
    procedure buscEquip;
    procedure buscEquip_sec;
    procedure buscFunc1;
    procedure buscFunc2;
    procedure buscFunc3;
    procedure buscFunc4;
    procedure buscfunc5;
    procedure buscFunc6;
    procedure buscFunc7;
    procedure buscFunc9;
    procedure buscfunc8;
    procedure consultar;
    procedure filtrar;
    procedure prepCad;
    function formatDateMY(date: string): string;
    procedure buscDados;



  public
    { Public declarations }
  end;

var
  frmCadServico: TfrmCadServico;
  lTempoTotal:Integer;
  gAlert:integer;
  gConsulta:array[1..21] of string;
  gvHora:Real;

implementation

uses uData, uRelServicos, uCadEmpresas, UfrCadSetor, ufrcadEquip,
  ufrEquipSec;

{$R *.dfm}

{ TfrmCadServico }

procedure TfrmCadServico.alterar;
begin

end;

procedure TfrmCadServico.atualizar;
begin

end;

procedure TfrmCadServico.buscCod;
var
  lCod:string;
begin
  try
      frdata.qConsulta.SQL.Clear;
      frdata.qConsulta.SQL.Add('SELECT MAX(COD_servico)from servicos');
      frData.qConsulta.Open;
      lCod:=frdata.qConsulta.Recordset.Fields[0].Value + 1;
      edCod.Text:=lCod;
  except
    edCod.Text:='1';
  end;
end;

procedure TfrmCadServico.cadastrar;
var
  lCod,lDataEmissao,lEmpresa,lSetor,lExecutor,lResponsavel,lDescfazer,lDescFeito,lDataInicial,lDataFinal,lhoraInicial:string;
  lHoraTermino,lIntervalo,lTServico,lValorHora,lValortotal:string;
  lEquip_Pri,lEquip_Sec,lSitServ,lSitFiscal,lUrgencia,lTempoTotal:string;
  lfunc : array [1..9] of string;
  lSql,dia,mes,ano,lqtFunc:string;
  x,lpos:integer;
begin

  if verificaCampos=false then
    exit;
  if messagebox(handle,'Tem certeza que deseja cadastrar?','Cadastrar',mb_IconQuestion+mb_YesNo)=id_no then
    exit;
  lqtFunc:=edqtFunc.Text;


  lCod:=edCod.Text;
  lEmpresa:=dbcEmpresa.KeyValue;
  lSetor:=dbcSetor.KeyValue;
  lExecutor:=qUOTEDsTR(dbcExecutor.KeyValue);
  lResponsavel:=QuotedStr(edResponsavel.Text);
  lDescFazer:=Quotedstr(edDescfazer.Text);
  lDescFeito:=Quotedstr(edDescFeito.Text);
  //-----------------------------------------
  lDataEmissao:=Quotedstr(formatDateMY(edDataEmissao.Text));
  ldataInicial:=Quotedstr(formatDateMY(edDTInicial.Text));
  ldataFinal:=Quotedstr(formatDateMY(edDTFinal.Text));
  lHoraInicial:=QuotedStr(edInicio.Text);
  lHoraTermino:=QuotedStr(edTermino.Text);
  lIntervalo:=QuotedStr(edIntervalo.Text);
  lTServico:=QuotedStr(edTipoServico.Text);
  lValorHora:='null';
  lvalorTotal:=Copy(edValorTotal.Text,1,pos(',',edValorTotal.Text)-1)+'.'+copy(edValorTotal.Text,pos(',',edValorTotal.Text)+1,2);
  lEquip_pri:=dbcEquipamento.KeyValue;
  lequip_sec:=dbcEquip_sec.KeyValue;
  lsitServ:=QuotedStr(edSitserv.Text);
  lSitFiscal:=quotedStr(edSituFiscal.Text);
  lUrgencia:=QuotedStr(edUrgencia.Text);
  LtEMPOtOTAL:=Quotedstr(edtotaltempo.Text);


  for x:=1 to 9 do
    begin
      lfunc[x]:='null';
    end;

      if dbcfunc1.Text<>'' then
        begin
          lfunc[1]:=QuotedStr(dbcfunc1.KeyValue);
          if dbcfunc2.Text<> '' then
            begin
              lfunc[2]:=QuotedStr(dbcfunc2.KeyValue);
              if dbcfunc3.Text<>'' then
                begin
                  lfunc[3]:=QuotedStr(dbcfunc3.KeyValue);
                  if dbcfunc4.Text<>'' then
                    begin
                      lfunc[4]:=QuotedStr(dbcfunc4.KeyValue);
                      if dbcfunc5.Text<>''then
                        begin
                          lfunc[5]:=QuotedStr(dbcfunc5.KeyValue);
                          if dbcfunc6.Text<>'' then
                            begin
                              lfunc[6]:=QuotedStr(dbcfunc6.KeyValue);
                              if dbcfunc7.Text<>'' then
                                begin
                                  lfunc[7]:=QuotedStr(dbcfunc7.KeyValue);
                                  if dbcfunc8.Text<>'' then
                                    begin
                                      lfunc[8]:=QuotedStr(dbcfunc8.KeyValue);
                                      if dbcfunc9.Text<>''then
                                        begin
                                          lfunc[9]:=QuotedStr(dbcfunc9.KeyValue);
                                        end;
                                    end;
                                end;
                            end;
                        end;
                    end;
                end;
            end;
        end;
  if edValorHora.Visible=true then
    begin
      lValorHora:=QuotedStr(edValorHora.Text);
      lpos:=pos(',',lvalorhora);
      lvalorhora:=Copy(lvalorhora,1,lpos-1)+'.'+copy(lvalorhora,lpos+1,length(lvalorHora));
    end;


    lSql:='INSERT INTO SERVICOS VALUES('+ lCod +','+lEmpresa+','+lSetor+','+ lEquip_pri+','+lEquip_sec+','+
    lExecutor+','+ lfunc[1]+','+lfunc[2]+','+lfunc[3]+','+lfunc[4]+','+lfunc[5]+','+lfunc[6]+','+lfunc[7]+','+
    lfunc[8]+','+lfunc[9]+','+lResponsavel+','+lDesCFazer+','+ lDescFeito+','+ldataEmissao+','+
    lDataInicial+','+lDatafinal+','+lHoraInicial+','+lHoraTermino+','+lIntervalo+','+ lTempoTotal+','+lTServico+','+
    lValorHora+','+lValorTotal +','+lSitServ+','+lSitFiscal+','+lUrgencia+','+lqtFunc +')';
  try
    frData.qCadastro.Close;
    frData.qCadastro.SQL.Clear;
    frData.qCadastro.SQL.Add(lSql);
    frdata.qCadastro.ExecSQL;

    if frData.qCadastro.RowsAffected>0 then
      begin
        showmessage('Cadastro com sucesso!');
        limpar;
        buscCod;
        edDtInicial.SetFocus;
      end;

  except
  end;





end;

procedure TfrmCadServico.limpar;
begin
  dbcEmpresa.KeyValue:=0;
  dbcsetor.KeyValue:=0;
  dbcExecutor.KeyValue:=0;
  dbcEquipamento.KeyValue:=0;
  dbcEquip_sec.KeyValue:=0;
  edSitServ.Text:='ESCOLHA...';
  EDsITUfISCAL.Text:='ESCOLHA...';
  edQtFunc.Clear;
  edResponsavel.Clear;
  edDescFeito.Clear;
  edInicio.Clear;
  edTermino.Clear;
  edIntervalo.Text:='00:00';
  edTipoServico.Text:='POR SERVIÇO';
  lbValHora.Visible:=false;edValorHora.Visible:=false;
  edDescFazer.Clear;
  edUrgencia.Text:='ESCOLHA...';
  edValorHora.Clear;
  edTotalTempo.Clear;
  edValorTotal.Clear;
end;

function TfrmCadServico.VerificaCampos: boolean;
begin

  if dbcEmpresa.Text='' then
    begin
      result:=false;
      tEmpresa.Enabled:=true;
      exit;
    end
  else if dbcSetor.Text='' then
    begin
      result:=false;
      tSetor.Enabled:=true;
      exit;
    end
  else if dbcExecutor.Text=''then
    begin
      result:=false;
      tExecutor.Enabled:=true;
      exit;
    end
  else if edResponsavel.Text=''then
    begin
      result:=false;
      tResponsavel.Enabled:=true;
      exit;
    end
  else if edDescFeito.Text=''then
    begin
      result:=false;
      tDescricao.Enabled:=true;
      exit;
    end

  else if edTipoServico.Text='POR HORA'then
    begin
      if edValorHora.Text=''then
        begin
          result:=false;
          tValorHora.Enabled:=true;
          exit;
        end;
      end
    else if edTipoServico.Text='POR SERVIÇO'then
    begin
      if edValorTotal.Text=''then
        begin
          result:=false;
          tvalorTotal.Enabled:=true;
          exit;
        end;
    end;

    result:=true;
end;

procedure TfrmCadServico.FormShow(Sender: TObject);
begin
buscCod;
buscEmpresa;
buscFuncionario;
edDataEmissao.Text:=formatDateTime('dd/mm/yy',now());
end;

procedure TfrmCadServico.buscEmpresa;
begin
try
  frdata.qEmpresa.Close;
  frdata.qEmpresa.SQL.Clear;
  frdata.qEmpresa.SQL.Add('SELECT * FROM EMPRESAS');
  frdata.qEmpresa.Open;

  dbcEmpresa.ListField:='RAZAO_SOCIAL';
  dbcEmpresa.KeyField:='COD_EMPRESA';

  dbcEmpresa1.ListField:='RAZAO_SOCIAL';
  dbcEmpresa1.KeyField:='COD_EMPRESA';
except
end;


end;

procedure TfrmCadServico.buscSetor;
  var lCodEmpresa:string;
begin
    if gbCad.Visible=true then
      begin
        lCodEmpresa:=dbcEmpresa.KeyValue;
        frdata.qSetor.Close;
        frdata.qSetor.SQL.Clear;
        frdata.qSetor.SQL.Add('SELECT * FROM SETOR WHERE EMPRESA='+ lCodEmpresa );
        frdata.qSetor.Open;

        if frdata.qSetor.RecordCount=0 then
          begin
            frdata.qSetor.Close;
          end;

        dbcSetor.ListField:='NOME_SETOR';
        dbcSetor.KeyField:='COD_SETOR';

        frdata.qEquip.Close;
        frdata.qEquip_sec.Close;
      end
    else
      begin

        lCodEmpresa:=dbcEmpresa1.KeyValue;
        frdata.qSetor.Close;
        frdata.qSetor.SQL.Clear;
        frdata.qSetor.SQL.Add('SELECT * FROM SETOR WHERE EMPRESA='+ lCodEmpresa );
        frdata.qSetor.Open;

        if frdata.qSetor.RecordCount=0 then
          begin
            frdata.qSetor.Close;
          end;

        dbcSetor1.ListField:='NOME_SETOR';
        dbcSetor1.KeyField:='COD_SETOR';

        frdata.qEquip.Close;
        frdata.qEquip_sec.Close;
      end;

end;

procedure TfrmCadServico.buscFuncionario;
begin
  try
    frData.qFuncionario.Close;
    frData.qFuncionario.SQL.Clear;
    frData.qFuncionario.SQL.Add('SELECT * FROM FUNCIONARIOS');
    frData.qFuncionario.Open;
    dbcExecutor.ListField:='NOME_FUNC';
    dbcExecutor.KeyField:='nome_func';

    dbcExecutor1.ListField:='NOME_FUNC';
    dbcExecutor1.KeyField:='nome_func';


  except
  end;
end;

procedure TfrmCadServico.dbcEmpresaClick(Sender: TObject);
begin
buscSetor;
end;
//--------------------------------------
//-----------------------------------------
//BEGINING-131----------  PROCEDURE THAT MAKES CALCULATION OF HOUR WORKED
procedure TfrmCadServico.calculaHora;
var
  lTempoInicial,lTempoFinal,lIntervalo:Integer;
  lHoraTotal,lMinTotal:string;
  lAux:Real;

begin
  edTotalTempo.Clear;
  if (pos(' ',edInicio.Text)>0)or(pos(' ',edTermino.Text)>0) then
    exit;
  lTempoInicial:=StrToInt(Copy(edInicio.Text,1,2))*60;
  lTempoInicial:=lTempoInicial+StrToInt(Copy(edInicio.Text,4,2));
  lTempoFinal:=StrToInt(Copy(edTermino.Text,1,2))*60;
  lTempoFinal:=lTempoFinal+StrToInt(Copy(edTermino.Text,4,2));
  lIntervalo:=StrToInt(Copy(edIntervalo.Text,1,2))*60;
  lIntervalo:=lIntervalo+StrToInt(Copy(edIntervalo.Text,4,2));
  if lTempoFinal<=lTempoInicial then
    begin
      showmessage('A hora de Término não pode ser menor que a hora de Inicio');
      edTermino.SetFocus;
      exit;
    end;

  lTempoTotal:=lTempoFinal-(lTempoInicial);
  lTempoTotal:=lTempoTotal-lIntervalo;
  lHoraTotal:=IntToStr(lTempoTotal div 60)+':';
  case length(lHoraTotal)of
    2:lHoraTotal:='0'+lHoraTotal;
    1:lHoraTotal:='00'+lHoraTotal;
  end;
  lMinTotal:=IntToStr(lTempoTotal mod 60);
  case length(lMinTotal) of
    1:lMinTotal:='0'+lMinTotal;
    0:lMinTotal:='00';
  end;

  lHoraTotal:=lHoraTotal+lMinTotal;
  edTotalTempo.Text:=lHoraTotal;;


end;
 //131 END OF PROCEDURE THAT CALCULATES THE TIME WORKED
//-----------------------------
//=============================

procedure TfrmCadServico.edInicioExit(Sender: TObject);
begin
  if pos(' ',edDataEmissao.Text)=0then
    gConsulta[2]:=' DATA_EMISSAO ='+ QuotedStr(formatDateMy(eddataEmissao.Text))
  else
    gConsulta[2]:='';
end;

procedure TfrmCadServico.edTerminoExit(Sender: TObject);
begin
  calculaHora;
  calculaValTotal
end;

procedure TfrmCadServico.edIntervaloExit(Sender: TObject);
begin
  calculaHora;
  calculaValTotal;
end;

procedure TfrmCadServico.calculaValTotal;
var
  lValMin,lValTotal:Real;
  lTotalText,lAux1,lAux2:string;
  lPos,qtFunc:integer;

begin
  edValorTotal.Clear;
  qtFunc:=StrToInt(edqtfunc.Text);
  if gvHora<1 then
    exit;
  lValMin:=gvHora/60;
  lValTotal:=lValMin * lTempoTotal;
  lvalTotal:=lValTotal*qtFunc;
  lTotalText:=FloatToStr(lValTotal);
  lPos:=pos(',',lTotalText);
  if lPos = 0 then
    lTotalText:=lTotalText+',00'
  else
    lTotalText:=Copy(lTotalText,1,lPos-1)+','+Copy(lTotalText,lPOs+1,2);

    edValorTotal.Text:=lTotalText;

end;

procedure TfrmCadServico.formatPHora;
var
  lPos:integer;
  lval,lVH:string;
begin
  lval:=edValorHora.Text;
  lPos:=pos(',',lVal);
  if lPos = 0 then
    edValorHora.Text:=edValorHora.Text+',00'
  else if (lPos >0) then
    begin
      if length(Copy(lVal,lPos+1,length(lVal)))=0 then
        lvh:=lVal+'00'
      else if length(Copy(lVal,lPos+1,length(lVal)))=1 then
        lvh:=lVal+'0'
      else
        lvh:=Copy(lVal,1,2)+','+Copy(lVal,lpos+1,2);


        gvHora:=StrToFloat(Copy(lVal,1,2)+','+Copy(lVal,lpos+1,2));
        edValorHora.Text:=lvh;


    end;

end;

procedure TfrmCadServico.edValorhoraKeyPress(Sender: TObject;
  var Key: Char);
begin
if (not (Key in['0'..'9',Chr(8)]))and(not(key in[',']))then Key:= #0;
  if key=#13 then
    formatPHora;
end;

procedure TfrmCadServico.edValorhoraExit(Sender: TObject);
begin
  formatPHora;
  calculaValtotal;
  
end;

procedure TfrmCadServico.btnOkClick(Sender: TObject);
begin
  cadastrar;
end;

procedure TfrmCadServico.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  begin
  if key=vk_f10 then
    cadastrar
  else if key=vk_Prior then
    perform(wm_nextDlgctl,1,0)
  else if key=vk_f9 then
    filtrar;

end;

procedure TfrmCadServico.edTipoServicoClick(Sender: TObject);
begin
 if edTipoServico.Text='POR HORA' then
    begin
      edValorHora.Visible:=true;
      edrsh.Visible:=true;
      lbValHora.Visible:=true;
      edValorTotal.DragMode:=dmAutomatic;
      edValorHora.SetFocus;
    end
  else
    begin
      edValorHora.Visible:=false;
      edrsh.Visible:=false;
      lbValHora.Visible:=false;
      edValorTotal.DragMode:=dmManual;
      edValorTotal.SetFocus;
    end;

end;

procedure TfrmCadServico.tEmpresaTimer(Sender: TObject);
var  x:integer;
begin
  if gAlert<= 3 then
    begin
      galert:=galert+1;
      btnOk.SetFocus;
      if dbcEmpresa.Color=clwindow then
        dbcEmpresa.Color:=$008080FF
      else
        dbcEmpresa.Color:=clWindow
    end
  else
    begin
      galert:=0;
      tEmpresa.Enabled:=false;
      dbcEmpresa.DropDown;
      dbcEmpresa.SetFocus
    end;
end;



procedure TfrmCadServico.tdataTimer(Sender: TObject);
var  x:integer;
begin
  if gAlert<= 3 then
    begin
      galert:=galert+1;
      btnOk.SetFocus;
      if edDtInicial.Color=clwindow then
        edDtInicial.Color:=$008080FF
      else
        edDtinicial.Color:=clWindow
    end
  else
    begin
      galert:=0;
      tdata.Enabled:=false;
      eddtInicial.SetFocus
    end;

end;

procedure TfrmCadServico.tSetorTimer(Sender: TObject);
var  x:integer;
begin
  if gAlert<= 3 then
    begin
      galert:=galert+1;
      btnOk.SetFocus;
      if dbcSetor.Color=clwindow then
        dbcSetor.Color:=$008080FF
      else
        dbcSetor.Color:=clWindow
    end
  else
    begin
      galert:=0;
      tSetor.Enabled:=false;
      dbcSetor.DropDown;
      dbcSetor.SetFocus
    end;

end;

procedure TfrmCadServico.tExecutorTimer(Sender: TObject);
var  x:integer;
begin
  if gAlert<= 3 then
    begin
      galert:=galert+1;
      btnOk.SetFocus;
      if dbcExecutor.Color=clwindow then
        dbcExecutor.Color:=$008080FF
      else
        dbcExecutor.Color:=clWindow
    end
  else
    begin
      galert:=0;
      tExecutor.Enabled:=false;
      dbcExecutor.DropDown;
      dbcExecutor.SetFocus
    end;

end;

procedure TfrmCadServico.tResponsavelTimer(Sender: TObject);
var  x:integer;
begin
  if gAlert<= 3 then
    begin
      galert:=galert+1;
      btnOk.SetFocus;
      if edResponsavel.Color=clwindow then
        edResponsavel.Color:=$008080FF
      else
        edResponsavel.Color:=clWindow
    end
  else
    begin
      galert:=0;
      tResponsavel.Enabled:=false;
      edResponsavel.SetFocus
    end;

end;

procedure TfrmCadServico.tDescricaoTimer(Sender: TObject);
var  x:integer;
begin
  if gAlert<= 3 then
    begin
      galert:=galert+1;
      btnOk.SetFocus;
      if edDescFazer.Color=clwindow then
        edDescfazer.Color:=$008080FF
      else
        edDescFazer.Color:=clWindow
    end
  else
    begin
      galert:=0;
      tDescricao.Enabled:=false;
      edDescFazer.SetFocus
    end;

end;

procedure TfrmCadServico.tInicioTimer(Sender: TObject);
var  x:integer;
begin
  if gAlert<= 3 then
    begin
      galert:=galert+1;
      btnOk.SetFocus;
      if edInicio.Color=clwindow then
        edInicio.Color:=$008080FF
      else
        edinicio.Color:=clWindow
    end
  else
    begin
      galert:=0;
      tinicio.Enabled:=false;
      edinicio.SetFocus
    end;

end;

procedure TfrmCadServico.tTerminoTimer(Sender: TObject);
var  x:integer;
begin
  if gAlert<= 3 then
    begin
      galert:=galert+1;
      btnOk.SetFocus;
      if edTermino.Color=clwindow then
        edTermino.Color:=$008080FF
      else
        edTermino.Color:=clWindow
    end
  else
    begin
      galert:=0;
      tTermino.Enabled:=false;
      edTermino.SetFocus
    end;

end;

procedure TfrmCadServico.tValorTotalTimer(Sender: TObject);
var  x:integer;
begin
  if gAlert<= 3 then
    begin
      galert:=galert+1;
      btnOk.SetFocus;
      if edvalorTotal.Color=clwindow then
        edvalorTotal.Color:=$008080FF
      else
        edvalorTotal.Color:=clWindow
    end
  else
    begin
      galert:=0;
      tValorTotal.Enabled:=false;
      edvalorTotal.SetFocus
    end;

end;

procedure TfrmCadServico.tValorHoraTimer(Sender: TObject);
var  x:integer;
begin
  if gAlert<= 3 then
    begin
      galert:=galert+1;
      btnOk.SetFocus;
      if edvalorHora.Color=clwindow then
        edValorHora.Color:=$008080FF
      else
        edValorHora.Color:=clWindow
    end
  else
    begin
      galert:=0;
      tValorHora.Enabled:=false;
      edValorhora.SetFocus;
    end;

end;

procedure TfrmCadServico.edDataKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13  then
    edDtInicial.SetFocus;
end;

procedure TfrmCadServico.buscEquip;
var
  lSetor:string;
begin

  if gbCad.Visible=true then
    begin
      lSetor:=IntToStr(dbcSetor.KeyValue);
      frdata.qEquip.Close;
      frdata.qEquip.SQL.Clear;
      frdata.qEquip.SQL.Add('SELECT * FROM EQUIP_PRI WHERE SETOR='+lSetor);
      frdata.qEquip.Open;
      if frdata.qEquip.RecordCount=0 then
        frData.qEquip.Close;

      dbcEquipamento.ListField:='NOME_EQUIP_PRI';
      DBCeQUIPAMENTO.KeyField:='COD_EQUIP_PRI';

      frData.qEquip_sec.Close;
    end
  else
    begin
      lSetor:=IntToStr(dbcSetor1.KeyValue);
      frdata.qEquip.Close;
      frdata.qEquip.SQL.Clear;
      frdata.qEquip.SQL.Add('SELECT * FROM EQUIP_PRI WHERE SETOR='+lSetor);
      frdata.qEquip.Open;
      if frdata.qEquip.RecordCount=0 then
        frData.qEquip.Close;

      dbcEquip_pri1.ListField:='NOME_EQUIP_PRI';
      dbcEquip_pri1.KeyField:='COD_EQUIP_PRI';

      frData.qEquip_sec.Close;
    end;

end;

procedure TfrmCadServico.dbcSetorClick(Sender: TObject);
begin
buscEquip;
end;

procedure TfrmCadServico.buscEquip_sec;
var
  lEquip:string;
begin
  if gbCad.Visible=true then
    begin
      lEquip:=IntToStr(dbcEquipamento.KeyValue);
      frdata.qEquip_sec.Close;
      frdata.qEquip_sec.SQL.Clear;
      frdata.qEquip_sec.SQL.Add('SELECT * FROM EQUIP_SEC WHERE EQUIP_PRI ='+ lEquip);
      frdata.qEquip_sec.Open;
      if frdata.qEquip.RecordCount=0 then
        frData.qEquip_sec.Close;

      dbcEquip_SEC.ListField:='NOME_EQUIP_sec';
      dbcEquip_sec.KeyField:='COD_EQUIP_sec';
    end
  else
    begin
      lEquip:=IntToStr(dbcEquip_pri1.KeyValue);
      frdata.qEquip_sec.Close;
      frdata.qEquip_sec.SQL.Clear;
      frdata.qEquip_sec.SQL.Add('SELECT * FROM EQUIP_SEC WHERE EQUIP_PRI ='+ lEquip);
      frdata.qEquip_sec.Open;
      if frdata.qEquip.RecordCount=0 then
        frData.qEquip_sec.Close;

      dbcEquip_SEC1.ListField:='NOME_EQUIP_sec';
      dbcEquip_sec1.KeyField:='COD_EQUIP_sec';
    end;

end;

procedure TfrmCadServico.dbcEquipamentoClick(Sender: TObject);
begin
  buscEquip_Sec;
end;


procedure TfrmCadServico.btFunc1Click(Sender: TObject);
begin
gbFunc.Visible:=true;
gbCad.Enabled:=false;;
gbButton.Enabled:=false;

end;

procedure TfrmCadServico.btFunc2Click(Sender: TObject);
begin
  gbFunc.Visible:=false;
  gbCad.Enabled:=true;
  gbButton.Enabled:=true;
end;

procedure TfrmCadServico.buscFunc1;
var
  lFunc1:string;
begin
  lFunc1:=QuotedStr(dbcExecutor.KeyValue);
  frData.qF1.Close;
  frData.qF1.SQL.Clear;
  frData.qF1.SQL.Add('select * from funcionarios where nome_func <>'+ lFunc1);
  frData.qF1.Open;

  dbcFunc1.KeyField:='nome_func';
  dbcFunc1.ListField:='nome_func';

end;

procedure TfrmCadServico.dbcExecutorClick(Sender: TObject);
begin

  buscFunc1;
end;

procedure TfrmCadServico.buscFunc2;
var
  lfunc1,lFunc2:string;
begin
  lFunc1:=QuotedStr(dbcExecutor.KeyValue);
  lfunc2:=QuotedStr(dbcFunc1.KeyValue);
  frdata.qf2.Close;
  frdata.qf2.SQL.Clear;
  frdata.qf2.SQL.Add('select * from funcionarios where nome_func <>'+ lfunc1 +''+
  ' and nome_func <> '+ lFunc2);
  frdata.qf2.Open;

  dbcFunc2.KeyField:='nome_func';
  dbcFunc2.ListField:='nome_func';
end;

procedure TfrmCadServico.dbcFunc1Click(Sender: TObject);
begin
  if dbcFunc1.Text<>''then
    edqtFunc.Text:='2';
    calculaValTotal;
  buscFunc2;
end;

procedure TfrmCadServico.buscFunc3;
var
  lfunc1,lFunc2,lfunc3:string;
begin
  lFunc1:=QuotedStr(dbcExecutor.KeyValue);
  lfunc2:=QuotedStr(dbcFunc1.KeyValue);
  lfunc3:=QuotedStr(dbcfunc2.KeyValue);
  frdata.qf3.Close;
  frdata.qf3.SQL.Clear;
  frdata.qf3.SQL.Add('select * from funcionarios where nome_func <>'+ lfunc1 +''+
  ' and nome_func <> '+ lFunc2+' and nome_func <>'+ lFunc3);
  frdata.qf3.Open;

  dbcFunc3.KeyField:='nome_func';
  dbcFunc3.ListField:='nome_func';

end;

procedure TfrmCadServico.buscFunc4;
var
  lfunc1,lFunc2,lfunc3,lfunc4:string;
begin
  lFunc1:=QuotedStr(dbcExecutor.KeyValue);
  lfunc2:=QuotedStr(dbcFunc1.KeyValue);
  lfunc3:=QuotedStr(dbcFunc2.KeyValue);
  lfunc4:=QuotedStr(dbcfunc3.KeyValue);
  frdata.qf4.Close;
  frdata.qf4.SQL.Clear;
  frdata.qf4.SQL.Add('select * from funcionarios where nome_func <>'+ lfunc1 +''+
  ' and nome_func <> '+ lFunc2 + ' and nome_func <> '+ lfunc3 + ' and nome_func <> '+ lfunc4 );
  frdata.qf4.Open;

  dbcFunc4.KeyField:='nome_func';
  dbcFunc4.ListField:='nome_func';

end;

procedure TfrmCadServico.buscfunc5;
var
  lfunc1,lFunc2,lfunc3,lfunc4, lfunc5:string;
begin
  lFunc1:=QuotedStr(dbcExecutor.KeyValue);
  lfunc2:=QuotedStr(dbcFunc1.KeyValue);
  lfunc3:=QuotedStr(dbcFunc2.KeyValue);
  lfunc4:=QuotedStr(dbcfunc3.KeyValue);
  lfunc5:=QuotedStr(dbcfunc4.KeyValue);
  frdata.qf5.Close;
  frdata.qf5.SQL.Clear;
  frdata.qf5.SQL.Add('select * from funcionarios where nome_func <>'+ lfunc1 +''+
  ' and nome_func <> '+ lFunc2 + ' and nome_func <> '+ lfunc3 + ' and nome_func <> '+ lfunc4+''+
  ' and nome_func <>'+ lfunc5 );
  frdata.qf5.Open;

  dbcFunc5.KeyField:='nome_func';
  dbcFunc5.ListField:='nome_func';

end;

procedure TfrmCadServico.buscFunc6;
var
  lfunc1,lFunc2,lfunc3,lfunc4, lfunc5,lfunc6:string;
begin
  lFunc1:=QuotedStr(dbcExecutor.KeyValue);
  lfunc2:=QuotedStr(dbcFunc1.KeyValue);
  lfunc3:=QuotedStr(dbcFunc2.KeyValue);
  lfunc4:=QuotedStr(dbcfunc3.KeyValue);
  lfunc5:=QuotedStr(dbcfunc4.KeyValue);
  lfunc6:=QuotedStr(dbcfunc5.KeyValue);
  frdata.qf6.Close;
  frdata.qf6.SQL.Clear;
  frdata.qf6.SQL.Add('select * from funcionarios where nome_func <>'+ lfunc1 +''+
  ' and nome_func <> '+ lFunc2 + ' and nome_func <> '+ lfunc3 + ' and nome_func <> '+ lfunc4+''+
  ' and nome_func <>'+ lfunc5 +' and nome_func <>' + lfunc6);
  frdata.qf6.Open;

  dbcFunc6.KeyField:='nome_func';
  dbcFunc6.ListField:='nome_func';

end;

procedure TfrmCadServico.buscFunc7;
var
  lfunc1,lFunc2,lfunc3,lfunc4, lfunc5,lfunc6,lfunc7:string;
begin
  lFunc1:=QuotedStr(dbcExecutor.KeyValue);
  lfunc2:=QuotedStr(dbcFunc1.KeyValue);
  lfunc3:=QuotedStr(dbcFunc2.KeyValue);
  lfunc4:=QuotedStr(dbcfunc3.KeyValue);
  lfunc5:=QuotedStr(dbcfunc4.KeyValue);
  lfunc6:=QuotedStr(dbcfunc5.KeyValue);
  lfunc7:=QuotedStr(dbcfunc6.KeyValue);
  frdata.qf7.Close;
  frdata.qf7.SQL.Clear;
  frdata.qf7.SQL.Add('select * from funcionarios where nome_func <>'+ lfunc1 +''+
  ' and nome_func <> '+ lFunc2 + ' and nome_func <> '+ lfunc3 + ' and nome_func <> '+ lfunc4+''+
  ' and nome_func <>'+ lfunc5 +' and nome_func <>' + lfunc6+ ' and nome_func <>' + lfunc7);
  frdata.qf7.Open;

  dbcFunc7.KeyField:='nome_func';
  dbcFunc7.ListField:='nome_func';

end;

procedure TfrmCadServico.buscFunc9;
var
  lfunc1,lFunc2,lfunc3,lfunc4, lfunc5,lfunc6,lfunc7, lfunc8,lfunc9:string;
begin
  lFunc1:=QuotedStr(dbcExecutor.KeyValue);
  lfunc2:=QuotedStr(dbcFunc1.KeyValue);
  lfunc3:=QuotedStr(dbcFunc2.KeyValue);
  lfunc4:=QuotedStr(dbcfunc3.KeyValue);
  lfunc5:=QuotedStr(dbcfunc4.KeyValue);
  lfunc6:=QuotedStr(dbcfunc5.KeyValue);
  lfunc7:=QuotedStr(dbcfunc6.KeyValue);
  lfunc8:=QuotedStr(dbcfunc8.KeyValue);
  lfunc9:=QuotedStr(dbcfunc8.KeyValue);
  frdata.qf9.Close;
  frdata.qf9.SQL.Clear;
  frdata.qf9.SQL.Add('select * from funcionarios where nome_func <>'+ lfunc1 +''+
  ' and nome_func <> '+ lFunc2 + ' and nome_func <> '+ lfunc3 + ' and nome_func <> '+ lfunc4+''+
  ' and nome_func <>'+ lfunc5 +' and nome_func <>' + lfunc6+ ' and nome_func <>' + lfunc7 + ''+
  ' and nome_func <> '+ lfunc8+ ' and nome_func <> '+ lfunc9);
  frdata.qf9.Open;

  dbcFunc9.KeyField:='nome_func';
  dbcFunc9.ListField:='nome_func';

end;

procedure TfrmCadServico.dbcFunc3Click(Sender: TObject);
begin
if dbcFunc3.Text<>''then
    edqtFunc.Text:='4';
    calculaValTotal;
  buscFunc4;
end;

procedure TfrmCadServico.dbcFunc2Click(Sender: TObject);
begin
if dbcFunc2.Text<>''then
    edqtFunc.Text:='3';
    calculaValTotal;
buscfunc3;
end;

procedure TfrmCadServico.dbcFunc4Click(Sender: TObject);
begin
  if dbcFunc4.Text<>''then
    edqtFunc.Text:='5';
    calculaValTotal;
buscfunc5;
end;

procedure TfrmCadServico.dbcFunc5Click(Sender: TObject);
begin
  if dbcFunc5.Text<>''then
    edqtFunc.Text:='6';
    calculaValTotal;
buscfunc6;
end;

procedure TfrmCadServico.dbcFunc6Click(Sender: TObject);
begin
if dbcFunc6.Text<>''then
    edqtFunc.Text:='7';
    calculaValTotal;
buscfunc7
end;

procedure TfrmCadServico.dbcFunc7Click(Sender: TObject);
begin
if dbcFunc7.Text<>''then
    edqtFunc.Text:='8';
    calculaValTotal;
buscfunc8;
end;

procedure TfrmCadServico.dbcFunc8Click(Sender: TObject);
begin
if dbcFunc8.Text<>''then
    edqtFunc.Text:='9';
    calculaValTotal;
buscfunc9;
end;

procedure TfrmCadServico.buscfunc8;
var
  lfunc1,lFunc2,lfunc3,lfunc4, lfunc5,lfunc6,lfunc7, lfunc8:string;
begin
  lFunc1:=QuotedStr(dbcExecutor.KeyValue);
  lfunc2:=QuotedStr(dbcFunc1.KeyValue);
  lfunc3:=QuotedStr(dbcFunc2.KeyValue);
  lfunc4:=QuotedStr(dbcfunc3.KeyValue);
  lfunc5:=QuotedStr(dbcfunc4.KeyValue);
  lfunc6:=QuotedStr(dbcfunc5.KeyValue);
  lfunc7:=QuotedStr(dbcfunc6.KeyValue);
  lfunc8:=QuotedStr(dbcfunc7.KeyValue);
  frdata.qf8.Close;
  frdata.qf8.SQL.Clear;
  frdata.qf8.SQL.Add('select * from funcionarios where nome_func <>'+ lfunc1 +''+
  ' and nome_func <> '+ lFunc2 + ' and nome_func <> '+ lfunc3 + ' and nome_func <> '+ lfunc4+''+
  ' and nome_func <>'+ lfunc5 +' and nome_func <>' + lfunc6+ ' and nome_func <>' + lfunc7 + ''+
  ' and nome_func <> '+ lfunc8);
  frdata.qf8.Open;

  dbcFunc8.KeyField:='nome_func';
  dbcFunc8.ListField:='nome_func';

end;

procedure TfrmCadServico.consultar;
var
  x:integer;
  lconsulta,lAssCon:string;
begin
lConsulta:='SELECT S.COD_SERVICO AS "CODIGO",E.RAZAO_SOCIAL AS "RAZÃO SOCIAL", E.NOME_FANTASIA AS "NOME FANTASIA", '+
  ' ST.NOME_SETOR AS"SETOR", EQ.NOME_EQUIP_PRI AS"EQUIPAMENTO PRIMARIO", ES.NOME_EQUIP_SEC AS "EQUIPAMENTO SECUNDARIO",'+
  'S.RESPONSAVEL AS "RESPONSAVEL",'+
  'S.FUNC1 AS "EXECUTOR1",S.FUNC2 AS "EXECUTOR2", S.DESC_FEITO AS "DESCRICAO", S.DATA_INICIAL AS "DATA DE INICIO", S.DATA_FINAL AS "DATA FINAL"'+
  ',S.HORA_INICIAL AS "HORA INICIAL",S.HORA_FINAL AS "HORA FINAL",S.INTERVALO AS "INTERVALO",'+
  ' S.TEMPO_TOTAL AS "TEMPO TOTAL", S.TIPO_COBRANCA AS "TIPO DE COBRANCA",S.VALOR_HORA "VALOR DA HORA"'+
  ',S.V_TOTAL AS "VALOR TOTAL",S.SIT_SERV AS"SITUACAO DO SERVICO",S.SIT_FISC AS "SITUACAO FISCAL",'+
  ' S.URGENCIA AS"URGENCIA", S.QUANT_FUNC AS "QTF" FROM '+
  ' SERVICOS S INNER JOIN EMPRESAS E ON S.EMPRESA=E.COD_EMPRESA INNER JOIN'+
   ' SETOR ST ON S.SETOR = ST.COD_SETOR INNER JOIN EQUIP_PRI EQ ON S.EQUIP_PRI=EQ.COD_EQUIP_PRI '+
   ' INNER JOIN EQUIP_SEC ES ON S.EQUIP_SEC=ES.COD_EQUIP_SEC WHERE ';

 //121 início for que monta a consulta conforme foi preenchido
 showmessage(IntToStr(length(lConsulta)));
  for x:=1 to 21 do
      begin
      if length(lConsulta)>953 then
        begin
          if gConsulta[x]<>''then
            lassCon:=lAssCon+' and '+gConsulta[x]
          end
        else
          lassCon:=lassCon+gConsulta[x];
    end;
    lConsulta:=lConsulta+lAssCon;
    //121 fim ......
     // (início 122) mensagem que aparece se não for digitado nenhum dos campos
    if length(lconsulta)=953 then
      begin
        messagebox(handle,'Não foi possível concluir a consulta, pelo menos um campo deve ser preenchido','Parâmetro insuficiente:2334',mb_IconInformation);
        edCod.SetFocus;
        exit;
      end;
     //(fim 122)
    try
    lConsulta:=lConsulta+ ' ORDER BY S.COD_SERVICO';
      frdata.qConsulta.Close;
      frdata.qConsulta.SQL.Clear;
      frdata.qConsulta.SQL.Add(lConsulta);
      frdata.qConsulta.Open;

      if frData.qConsulta.RecordCount=0 then
        begin
          messagebox(handle,'Não foi encontrado nenhum registro que corresponda ao filtro solicitado','Parâmetro Inexistente:2834',mb_IconInformation);
          exit;
        end;
      gbFiltrado.visible:=true;
      gbCad.Visible:=false;
      gbConsulta.Visible:=false;
      gbCod.Visible:=false;
    except
    end;



    //-------------------------------------------------------

    lConsulta:='SELECT SUM(S.V_TOTAL) as "v_total"FROM '+
  ' SERVICOS S INNER JOIN EMPRESAS E ON S.EMPRESA=E.COD_EMPRESA INNER JOIN'+
   ' SETOR ST ON S.SETOR = ST.COD_SETOR INNER JOIN EQUIP_PRI EQ ON S.EQUIP_PRI=EQ.COD_EQUIP_PRI '+
   ' INNER JOIN EQUIP_SEC ES ON S.EQUIP_SEC=ES.COD_EQUIP_SEC WHERE ';
    //---------------------------------

    lConsulta:=lConsulta+lAssCon;
    frData.qConsulta1.Close;
    frData.qConsulta1.SQL.Clear;
    frData.qConsulta1.SQL.Add(lConsulta);
    frData.qConsulta1.Open;


  end;

procedure TfrmCadServico.filtrar;
begin
 if gbConsulta.Visible=false then
    begin
      gbconsulta.Visible:=true;
      gbCad.Visible:=false;
      gbCad.TabStop:=false;
      edCod.DragMode:=dmManual;
      edCod.Color:=clWindow;
      EDcOD.Clear;
      edDataEmissao.Clear;
      edCod.SetFocus;
      btnFiltro.Caption:='FILTRAR   [F9]';
      btnFiltro.Font.Color:=clRed;
      btnOk.Caption:='CADASTRO   [F10]';
      btnExcluir.Enabled:=false;
      btnAlterar.Enabled:=false;
      lbCaption.Caption:='[CONSULTA EMPRESAS]';
    end
  else
    begin
      consultar;
    end;

end;



procedure TfrmCadServico.prepCad;
begin
end;

procedure TfrmCadServico.btnFiltroClick(Sender: TObject);
begin
  filtrar;

end;

procedure TfrmCadServico.edCodExit(Sender: TObject);
begin
  if edCod.Text<>''then
    gConsulta[1]:=' S.COD_SERVICO ='+ edCod.Text
  else
    gConsulta[1]:='';

end;



function TfrmCadServico.formatDateMY(date: string): string;
var
  day,month,year:string ;
begin
  day:=copy(date,1,2);
  month:=copy(date,4,2);
  year:=copy(date,7,2);
  result:=year+month+day;

end;

procedure TfrmCadServico.BitBtn5Click(Sender: TObject);
begin
  relservico.Preview;
end;

procedure TfrmCadServico.edTiposervicos1Click(Sender: TObject);
begin
  if edTipoServicos1.Text <>''then
    gConsulta[13]:=' S.TIPO_COBRANCA ='+ QuotedStr(edTipoServicos1.Text)
  else
    gConsulta[13]:='';
end;

procedure TfrmCadServico.BitBtn1Click(Sender: TObject);
begin
  application.CreateForm(TFrCadEmpresas,FrCadEmpresas);
  frCadEmpresas.ShowModal;
end;

procedure TfrmCadServico.BitBtn2Click(Sender: TObject);
begin
  application.CreateForm(TfrCadSetor,frCadEmpresas);
  frCadSetor.ShowModal;
end;

procedure TfrmCadServico.BitBtn3Click(Sender: TObject);
begin
  application.CreateForm(TfrCadEquip,frCadEquip);
  frCadEquip.ShowModal;
end;

procedure TfrmCadServico.BitBtn4Click(Sender: TObject);
begin
  application.CreateForm(TfrCadEquipSec,frCadEquipSec);
  frCadEquipSec.ShowModal;
end;

procedure TfrmCadServico.btCadEmpClick(Sender: TObject);
begin
  application.CreateForm(TfrCadEmpresas,frCadEmpresas);
  frCadEmpresas.ShowModal;
end;

procedure TfrmCadServico.btcadSetorClick(Sender: TObject);
begin
  application.CreateForm(TfrCadSetor,frCadSetor);
  frCadSetor.ShowModal;
end;

procedure TfrmCadServico.btcadEquipClick(Sender: TObject);
begin
  application.CreateForm(TfrCadEquip,frCadEquip);
  frCadEquip.ShowModal;
end;

procedure TfrmCadServico.btcadEquipSecClick(Sender: TObject);
begin
  application.CreateForm(TfrCadEquipSec,frcadEquipSec);
  frCadEquipSec.ShowModal;
end;

procedure TfrmCadServico.dbcFunc9Click(Sender: TObject);
begin
if dbcFunc9.Text<>''then
    edqtFunc.Text:='10';
    calculaValTotal;
end;

procedure TfrmCadServico.edValorhoraChange(Sender: TObject);
begin

calculaValtotal;

end;

procedure TfrmCadServico.dbcEmpresa1Exit(Sender: TObject);
begin
if dbcEmpresa1.Text<>''then
    gConsulta[3]:=' S.EMPRESA =' +IntToStr(dbcEmpresa1.KeyValue)
  else
    gConsulta[3]:='';
end;

procedure TfrmCadServico.dbcSetor1Exit(Sender: TObject);
begin
  if dbcSetor1.Text<>''then
    gConsulta[4]:=' S.SETOR = '+ IntToStr(dbcSetor1.KeyValue)
  else
    gConsulta[4]:='';
end;

procedure TfrmCadServico.dbcEquip_Pri1Exit(Sender: TObject);
begin
  if dbcEquip_pri1.Text<>''then
    gConsulta[5]:=' S.EQUIP_PRI=' +IntToStr(dbcEquip_pri1.KeyValue)
  else
    gConsulta[5]:='';
end;

procedure TfrmCadServico.dbcEquip_sec1Exit(Sender: TObject);
begin
  if dbcEquip_Sec1.Text<>''then
    gConsulta[6]:=' S.Equip_sec '+ IntToStr(dbcEquip_Sec1.KeyValue)
  else
    gConsulta[6]:='';
end;

procedure TfrmCadServico.edResponsavel1Exit(Sender: TObject);
begin
  if edResponsavel1.Text<>''then
    gConsulta[7]:=' RESPONSAVEL LIKE '+ QuotedStr(edResponsavel1.Text)+'%'
  else
    gConsulta[7]:='';
end;

procedure TfrmCadServico.btEmaisClick(Sender: TObject);
begin
gbdtEmissao.Visible:=true;
gbdtEmissao1.Visible:=false;
end;

procedure TfrmCadServico.btEMenosClick(Sender: TObject);
begin
  gbdtEmissao1.Visible:=true;
  gbDtEmissao.Visible:=false;
end;

procedure TfrmCadServico.dbcEmpresa1Click(Sender: TObject);
begin
  buscSetor;
end;



procedure TfrmCadServico.dbcSetor1Click(Sender: TObject);
begin
  buscEquip;
end;

procedure TfrmCadServico.dbcEquip_Pri1Click(Sender: TObject);
begin
  buscEquip_sec;
end;

procedure TfrmCadServico.dbcEmpresa1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_back then
    begin
      dbcEmpresa1.KeyValue:=0;
      buscSetor;
    end;
end;

procedure TfrmCadServico.dbcSetor1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_back then
    begin
     dbcSetor1.KeyValue:=0;
     buscEquip_sec;
    end;
end;

procedure TfrmCadServico.dbcEquip_Pri1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key=vk_back then
    begin
      dbcEquip_pri1.KeyValue:=0;
      buscEquip_sec;
    end;
end;

procedure TfrmCadServico.dbcEquip_sec1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key=vk_back then
    dbcEquip_sec1.KeyValue:=0;

  end;

procedure TfrmCadServico.dbcExecutor1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key=vk_back then
    dbcExecutor1.KeyValue:=0;
end;

procedure TfrmCadServico.dbcFunc1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_back then
    begin
      dbcFunc1.KeyValue:=0;
    end;
end;

procedure TfrmCadServico.dbcFunc2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_back then
    dbcFunc2.KeyValue:=0;
end;

procedure TfrmCadServico.dbcFunc3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_back then
    dbcFunc3.KeyValue:=0;
end;

procedure TfrmCadServico.dbcFunc4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_back then
    dbcFunc4.KeyValue:=0;
end;

procedure TfrmCadServico.dbcFunc5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_back then
    dbcFunc5.KeyValue:=0;
end;

procedure TfrmCadServico.dbcFunc6KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=vk_back then
    dbcFunc6.KeyValue:=0;
end;

procedure TfrmCadServico.dbcFunc7KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_back then
    dbcFunc7.KeyValue:=0;
end;

procedure TfrmCadServico.dbcFunc8KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_back then
    dbcFunc8.KeyValue:=0;
end;

procedure TfrmCadServico.dbcFunc9KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_back then
    dbcFunc9.KeyValue:=0;
end;

procedure TfrmCadServico.dbcEmpresaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_back then
    begin
      dbcEmpresa.KeyValue:=0;
      buscSetor;
    end;
end;

procedure TfrmCadServico.dbcSetorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_back then
    begin
      dbcSetor.KeyValue:=0;
      buscEquip;
    end;
end;

procedure TfrmCadServico.dbcEquipamentoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key=vk_back then
    begin
      dbcEquip_sec.KeyValue:=0;
      buscEquip_sec;
    end;
end;

procedure TfrmCadServico.dbcExecutorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_back then
    dbcExecutor.KeyValue:=0;
end;

procedure TfrmCadServico.edDtEmissaoInExit(Sender: TObject);
begin
   if pos(' ',edDTEmissaoiN.Text)=0then
    gConsulta[8]:=' S.DATA_EMISSAO >= '+ QuotedStr(FormatDateMy(eddtEmissaoiN.Text))
  else
    gConsulta[8]:='';
end;

procedure TfrmCadServico.edDtEmissaofiExit(Sender: TObject);
begin
 if pos(' ',edDtEmissaofI.Text)=0then
    gConsulta[9]:=' S.DATA_EMISSAO <= '+QuotedStr(formatDateMy(eddtEmissaofI.Text))
  else
    gConsulta[9]:='';
end;

procedure TfrmCadServico.eddataInicial1Exit(Sender: TObject);
begin
   if pos(' ',edDataInicial1.Text)=0then
    gConsulta[10]:=' DATA_INICIAL ='+ QuotedStr(formatDateMy(eddataInicial1.Text))
  else
    gConsulta[10]:='';
end;

procedure TfrmCadServico.edData2Exit(Sender: TObject);
begin
   if pos(' ',edData2.Text)=0then
    gConsulta[11]:=' DATA_INICIAL BEETWEN '+ QuotedStr(formatdateMy(eddata2.Text))
  else
    gConsulta[11]:='';
end;

procedure TfrmCadServico.EDdata3Exit(Sender: TObject);
begin
   if pos(' ',edData3.Text)=0then
    gConsulta[12]:=QuotedStr(formatdateMy(eddata3.Text))
  else
    gConsulta[12]:='';
end;

procedure TfrmCadServico.dbcExecutor1Exit(Sender: TObject);
  var
    lFunc:string;
begin
  lFunc:=QuotedStr(dbcExecutor1.KeyValue);
  if lFunc<>''then
    gConsulta[14]:=' S.FUNC1 ='+ lFunc+
    ' OR S.FUNC2 ='+ lFunc+
    ' OR S.FUNC3 ='+ lFunc+
    ' OR S.FUNC4 ='+ lFunc+
    ' OR S.FUNC5 ='+ lFunc+
    ' OR S.FUNC6 ='+ lFunc+
    ' OR S.FUNC7 ='+ lFunc+
    ' OR S.FUNC8 ='+ lFunc+
    ' OR S.FUNC9 ='+ lFunc+
    ' OR S.FUNC10 ='+ lFunc

  else
    gConsulta[14]:='';
end;

procedure TfrmCadServico.edsitserv1Exit(Sender: TObject);
begin
  if edSitServ1.Text <>''then
    gConsulta[15]:=' S.SIT_SERV ='+ QuotedStr(edSitServ1.Text)
  else
    gConsulta[15]:='';
end;

procedure TfrmCadServico.edSitFisc1Exit(Sender: TObject);
begin
  if edSitFisc1.Text<>''then
    gConsulta[16]:=' S.SIT_fisc ='+ QuotedStr(edSitFisc1.Text)
  else
    gConsulta[16]:='';
end;

procedure TfrmCadServico.edvalortotal1Exit(Sender: TObject);
begin
  if edValorTotal1.Text <>''then
    gConsulta[17]:=' S.V_TOTAL BETWEEN '+ edValorTotal1.Text
  else
    gConsulta[15]:='';
end;

procedure TfrmCadServico.edValorTotal2Exit(Sender: TObject);
begin
  if edValorTotal2.Text <>''then
    gConsulta[18]:=edValorTotal2.Text
  else
    gConsulta[18]:='';
end;

procedure TfrmCadServico.edUrgencia1Click(Sender: TObject);
begin
  if edUrgencia1.Text <>''then
    gConsulta[19]:=' S.URGENCIA ='+ QuotedStr(edUrgencia1.Text)
  else
    gConsulta[19]:='';
end;

procedure TfrmCadServico.buscDados;
var
  lCod:string;
begin
  lCod:=dbgDados.SelectedField.Value;

  frdata.qConsulta1.Close;
  frdata.qConsulta1.SQL.Clear;
  frdata.qConsulta1.SQL.Add('SELECT * FROM SERVIcOS WHERE COD_SERVICO='+
  lCod);
  frdata.qConsulta1.Open;
  gbCad.Visible:=true;
  gbFiltrado.Visible:=false;
  gbConsulta.Visible:=false;
  gbcod.Visible:=true;
  buscEmpresa;

  edCod.Text:=frdata.qConsulta1.Recordset.Fields[0].Value;
  lCod:=frdata.qConsulta1.Recordset.Fields[1].Value;
  dbcEmpresa.KeyValue:=StrToInt(frdata.qConsulta1.Recordset.Fields[1].Value);
  dbcSetor.KeyValue:=frdata.qConsulta1.Recordset.Fields[2].Value;
  dbcEquipamento.KeyValue:=frdata.qConsulta1.Recordset.Fields[3].Value;
  dbcEquip_Sec.KeyValue:=frdata.qConsulta1.Recordset.Fields[4].Value;
  edResponsavel.Text:=frdata.qConsulta1.Recordset.Fields[15].value;
  edDtInicial.Text:=frdata.qConsulta1.Recordset.Fields[19].Value;
  edDtFinal.Text:=frdata.qConsulta1.Recordset.Fields[20].Value;
  edInicio.Text:=frdata.qConsulta1.Recordset.Fields[21].Value;
  edTermino.Text:=frdata.qConsulta1.Recordset.Fields[22].Value;
  edIntervalo.Text:=frdata.qConsulta1.Recordset.Fields[23].Value;
  edTotalTempo.Text:=frdata.qConsulta1.Recordset.Fields[24].Value;
  edDescFazer.Text:=frdata.qConsulta1.Recordset.Fields[16].Value;
  edDescFeito.Text:=String(frdata.qConsulta1.Recordset.Fields[17].Value);


  
  buscSetor;
  buscEquip;
  buscEquip_sec;
end;

procedure TfrmCadServico.dbgdadosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_return then
    buscDados;
end;

procedure TfrmCadServico.dbgdadosDblClick(Sender: TObject);
begin
  buscDados;
end;

end.
