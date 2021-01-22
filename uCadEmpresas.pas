unit uCadEmpresas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DBCtrls, ExtCtrls, Grids, DBGrids;

type
  TfrCadEmpresas = class(TForm)
    gbmain: TGroupBox;
    gbCod: TGroupBox;
    Label1: TLabel;
    edCod: TEdit;
    gbcad: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    edRazaoSocial: TEdit;
    eddata: TMaskEdit;
    dbcRamoAtuacao: TDBLookupComboBox;
    edTelefone: TMaskEdit;
    edNomeFantasia: TEdit;
    edContato: TEdit;
    edCelular: TMaskEdit;
    BitBtn5: TBitBtn;
    gbConsulta: TGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    edRazaoSocial1: TEdit;
    dbcRamoAtuacao1: TDBLookupComboBox;
    edTelefone1: TMaskEdit;
    edFantasia1: TEdit;
    edcontato1: TEdit;
    edCel1: TMaskEdit;
    Panel1: TPanel;
    lbCaption: TLabel;
    lbClose: TLabel;
    gbEntreData: TGroupBox;
    Label17: TLabel;
    Label18: TLabel;
    edDtFinal: TMaskEdit;
    edDtInicial: TMaskEdit;
    gbUnidata: TGroupBox;
    Label16: TLabel;
    eddata1: TMaskEdit;
    btdata: TBitBtn;
    gbFiltrado: TGroupBox;
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    btnOk: TBitBtn;
    btnExcluir: TBitBtn;
    btFechar: TBitBtn;
    btnAlterar: TBitBtn;
    btnFiltro: TBitBtn;
    btnRelatorio: TBitBtn;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnFiltroClick(Sender: TObject);
    procedure edCodExit(Sender: TObject);
    procedure edRazaoSocial1Exit(Sender: TObject);
    procedure edFantasia1Exit(Sender: TObject);
    procedure dbcRamoAtuacao1Exit(Sender: TObject);
    procedure btdataClick(Sender: TObject);
    procedure eddata1Exit(Sender: TObject);
    procedure edDtInicialExit(Sender: TObject);
    procedure edDtFinalExit(Sender: TObject);
    procedure edTelefone1Change(Sender: TObject);
    procedure edCel1Exit(Sender: TObject);
    procedure edcontato1Exit(Sender: TObject);
    procedure edTelefone1Exit(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure btnRelatorioClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
  private
    { Private declarations }
    procedure Cadastrar;
    procedure updateCod;
    function verify: boolean;
    procedure buscRamoAtuacao;
    procedure limpar;
    function verifyCon: boolean;
    procedure filtrar;
    procedure prepCad;
    procedure execFiltro;
    procedure limpaConsulta;

  public
    { Public declarations }
  end;

var
  frCadEmpresas: TfrCadEmpresas;
  gConsulta:array[1..810] of string;

implementation

uses uData, uConsulta, uRamoAtuacao, uRelEmpresas;

{$R *.dfm}

procedure TfrCadEmpresas.BitBtn3Click(Sender: TObject);
begin
  close;
end;

procedure TfrCadEmpresas.Cadastrar;
var
  lCod,lRazaoSocial,lNomeFantasia,lRamoAtuacao,lTelefone,lCelular,lContato,lData:string;

begin
  if verify=false then
    exit
  else if messagebox(handle,'Tem certeza que desaja cadastrar?','Cadastro',mb_yesno)=idNo then
    exit;
  lCod:=edCod.Text;

  if edrazaoSocial.Text=''then
    lRazaoSocial:='null'
  else
    lRazaoSocial:=QuotedStr(edRazaoSocial.Text);

  lNomeFantasia:=Quotedstr(edNomeFantasia.Text);

  if dbcRamoAtuacao.Text='' then
    lRamoAtuacao:='null'
  else
    lRamoAtuacao:=dbcRamoAtuacao.KeyValue;

  if length(edTelefone.Text)<13 then
    lTelefone:='null'
  else
    lTelefone:=QuotedStr(edTelefone.Text);

  if length(edCelular.Text)<13 then
    lCelular:='null'
  else
    lCelular:=QuotedStr(edCelular.Text);
  lContato:=QuotedStr(edContato.Text);
  lData:=QuotedStr(edData.Text);

  frdata.qCadastro.SQL.Clear;
  frdata.qCadastro.SQL.Add('INSERT INTO EMPRESAS VALUES('+
  lCod+','+ lRazaoSocial +','+ lNomeFantasia +','+lRamoAtuacao+','+
  lTelefone +','+ lCelular +','+ lContato +','+ lData +')');
  frdata.qCadastro.ExecSQL;

  if frdata.qCadastro.RowsAffected > 0 then
    begin
      Showmessage('Cadastrado com Sucesso');
      limpar;
      updatecod;
    end;
    
end;

procedure TfrCadEmpresas.BitBtn1Click(Sender: TObject);
begin
    if btnOk.Caption='OK   [F10]'then
      cadastrar
    else
      prepCad;
end;

procedure TfrCadEmpresas.updateCod;
var
  lCod:string;
begin
  edData.Text:=formatdatetime('dd/mm/yy',now());
  try
      frdata.qConsulta.SQL.Clear;
      frdata.qConsulta.SQL.Add('SELECT MAX(COD_EMPRESA)from EMPRESAS');
      frData.qConsulta.Open;
      lCod:=IntToStr(frdata.qConsulta.Recordset.Fields[0].Value + 1);
      edCod.Text:=lCod;
  except
    edCod.Text:='1';
  end;

end;

procedure TfrCadEmpresas.FormShow(Sender: TObject);
begin
  edRazaosocial.SetFocus;
     upDateCod;
     buscramoatuacao;
end;

function TfrCadEmpresas.verify: boolean;
begin
  result:=false;
  if edNomefantasia.Text=''then
    begin
      showmessage('Difite o nome fantasia da empresa');
      edNomefantasia.SetFocus;
      exit;
    end;
    if dbcRamoatuacao.Text='' then
      begin
        showmessage('Informe o ramo de atuacao da empresa');
        dbcRamoatuacao.SetFocus;
        exit;
      end;

    if edTelefone.Text='' then
      begin
        showmessage('Informe pelo menos um telefone');
        edTelefone.SetFocus;
        exit;
      end;
    if edContato.Text='' then
      begin
        showmessage('informe um nome para contato');
        edContato.SetFocus;
        exit;
      end;



  result:=true;
end;

procedure TfrCadEmpresas.buscRamoAtuacao;
begin
  frdata.qRamo.Close;
  frdata.qRamo.SQL.Clear;
  frdata.qRamo.SQL.Add('SELECT * FROM RAMO_ATUACAO');
  frdata.qRamo.Open;

  dbcRamoatuacao.KeyField:='cod_ramo';
  dbcRamoatuacao.ListField:='nome_RAMO';
  dbcRamoAtuacao1.KeyField:='cod_ramo';
  dbcRamoAtuacao1.ListField:='noME_RAMO';

end;

procedure TfrCadEmpresas.limpar;
begin
  edRazaosocial.Clear;
  edNomeFantasia.Clear;
  dbcRamoatuacao.KeyValue:=0;
  edtelefone.Clear;
  edcelular.Clear;
  edContato.Clear;
  edRazaosocial.SetFocus;
end;

procedure TfrCadEmpresas.SpeedButton1Click(Sender: TObject);
begin
  application.CreateForm(tfrRamoAtuacao,frRamoAtuacao);
  frRamoAtuacao.ShowModal;
end;

procedure TfrCadEmpresas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_f5 then
    begin
      application.CreateForm(tfrRamoAtuacao,frRamoAtuacao);
      frRamoAtuacao.ShowModal;
    end

  else if key=vk_f10 then
    begin
      if btnOk.Caption='OK   [F10]'then
        cadastrar
      else
        prepCad
      end
  else if key=vk_f9 then
    filtrar;
end;
procedure TfrCadEmpresas.btnFiltroClick(Sender: TObject);
begin
  filtrar;
end;

function TfrCadEmpresas.verifyCon: boolean;
begin
  result:=false;
  if (trim(edCod.Text)<>'') or(trim(edrazaosocial1.Text)<>''+
  '') or (trim(edfantasia1.Text)<>''+
  '') or (dbcRamoAtuacao1.Text<>''+
  '') or (pos(' ',eddtInicial.Text)=0)or (pos(' '+
  '',eddtFinal.Text)=0)or(pos(' ',eddata1.Text)=0)or(pos(' '+
  '',edTelefone1.Text)=0)or(pos(' ',edCel1.Text)=0)or(trim(edContato.Text)<>'')then
  result:=true

end;

procedure TfrCadEmpresas.filtrar;
begin
  if gbConsulta.Visible=false then
    begin
      gbconsulta.Visible:=true;
      gbCad.Visible:=false;
      gbCad.TabStop:=false;
      edCod.DragMode:=dmManual;
      edCod.Color:=clWindow;
      EDcOD.Clear;
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
      execFiltro;
    end;

end;

procedure TfrCadEmpresas.prepCad;
begin
  if messagebox(handle,'Deseja voltar ao cadastro?','CADASTRO',mb_yesno+mb_IconQuestion)=idYes then
    begin
    limpaconsulta;
      btnOk.Caption:='OK   [F10]';
      gbCad.Visible:=true;
      gbcad.TabStop:=true;
      gbConsulta.Visible:=false;
      gbfiltrado.Visible:=false;
      gbCod.Visible:=true;
      btnFiltro.Caption:='FILTRO   [F9]';
      edCod.DragMode:=dmAutomatic;
      edCod.Color:=clInactiveBorder;
      upDateCod;
      lbcaption.Caption:='[CADASTRO DE EMPRESAS]';
      
    end;
end;

procedure TfrCadEmpresas.edCodExit(Sender: TObject);
begin
  if trim(edCod.Text)<>''then
      gConsulta[1]:=' cod_Empresa = '+edCod.Text
  else
    gConsulta[1]:='';

end;

procedure TfrCadEmpresas.execFiltro;
var
  x:integer;
  lconsulta:string;
begin
 lConsulta:='SELECT E.RAZAO_SOCIAL AS "RAZÃO SOCIAL", E.NOME_FANTASIA AS "NOME FANTASIA",'+
  ' R.NOME_RAMO AS "RAMO DE ATUAÇÃO", E.TELEFONE AS "TELEFONE",E.CELULAR, E.CONTATO, E.DATA_CADASTRO AS "DATA" FROM '+
  ' EMPRESAS E INNER JOIN RAMO_ATUACAO R ON E.RAMO_ATUACAO=R.COD_RAMO WHERE ';
 //121 início for que monta a consulta conforme foi preenchido
  for x:=1 to 8 do
    begin
      if length(lConsulta)>262 then
        begin
          if gConsulta[x]<>''then
            lConsulta:=lConsulta+' and '+gConsulta[x]
          end
        else
          lConsulta:=lConsulta+gConsulta[x];
    end;
    //121 fim ......
     // (início 122) mensagem que aparece se não for digitado nenhum dos campos
    if length(lconsulta)=262 then
      begin
        messagebox(handle,'Não foi possível concluir a consulta, pelo menos um campo deve ser preenchido','Parâmetro insuficiente:2334',mb_IconInformation);
        edCod.SetFocus;
        exit;
      end;
     //(fim 122)
    try
      frdata.qConsulta.Close;
      frdata.qConsulta.SQL.Clear;
      frdata.qConsulta.SQL.Add(lConsulta);
      frdata.qConsulta.Open;
      gbFiltrado.visible:=true;
      gbCad.Visible:=false;
      gbConsulta.Visible:=false;
      gbCod.Visible:=false;
    except
    end;

end;

procedure TfrCadEmpresas.edRazaoSocial1Exit(Sender: TObject);
begin
  if trim(edRazaoSocial1.Text)<>''then
    gConsulta[2]:=' RAZAO_SOCIAL LIKE '+QuotedStr(edRazaoSocial1.Text)
  else
    gConsulta[2]:='';
end;

procedure TfrCadEmpresas.edFantasia1Exit(Sender: TObject);
begin
  if trim(edFantasia1.Text)<>''then
    gConsulta[3]:= ' NOME_FANTASIA LIKE '+QuotedStr(edFantasia1.Text)
  else
    gconsulta[3]:=''

end;

procedure TfrCadEmpresas.dbcRamoAtuacao1Exit(Sender: TObject);
var
  lkey:string;
begin
  if dbcRamoAtuacao1.Text<>'' then
    begin
      lKey:=IntToStr(dbcRamoAtuacao1.KeyValue);
      gConsulta[4]:=' RAMO_ATUACAO ='+ lKey;
    end
  else
      gconsulta[4]:='';

end;

procedure TfrCadEmpresas.btdataClick(Sender: TObject);
begin
  if btData.Caption='Data Única >'then
    begin
      btData.Caption:='Entre Data >';
      gbUnidata.Visible:=true;
      gbEntreData.Visible:=false;
    end
  else
    begin
      btdata.Caption:='Data Única >';
      gbUnidata.Visible:=false;
      gbEntreData.Visible:=true;

    end;

end;

procedure TfrCadEmpresas.eddata1Exit(Sender: TObject);
begin
  if pos(' ',edData1.Text)=0 then
    gConsulta[5]:=' DATA ='+ QuotedStr(edData1.Text)
  else
    gConsulta[5]:=''

end;

procedure TfrCadEmpresas.edDtInicialExit(Sender: TObject);
begin
  if pos(' ',edDtInicial.Text)=0 then
    gConsulta[6]:=' DATA BETWEEN '+ QuotedStr(edDtInicial.Text)
  else
  gConsulta[6]:='';
end;

procedure TfrCadEmpresas.edDtFinalExit(Sender: TObject);
begin
  if pos(' ',edDtFinal.Text)=0 then
      gConsulta[7]:=' DATA <='+ QuotedStr(edDtFinal.Text)
  else
    gConsulta[7]:='';
end;

procedure TfrCadEmpresas.edTelefone1Change(Sender: TObject);
begin
if pos(' ',edTelefone1.Text)=0then
  gConsulta[8]:=' TELEFONE ='+ QuotedStr(edTelefone1.Text)
end;

procedure TfrCadEmpresas.edCel1Exit(Sender: TObject);
begin
  if pos(' ',edCel1.Text)=0 then
    gConsulta[9]:=' CELULAR ='+ QuotedStr(edCel1.Text)
  else
    gConsulta[9]:='';
end;

procedure TfrCadEmpresas.edcontato1Exit(Sender: TObject);
begin
  if trim(edContato1.Text)<>'' then
    gConsulta[10]:=' CONTATO LIKE '+ QuotedStr(edContato1.Text)
  else
    gConsulta[10]:='';
end;

procedure TfrCadEmpresas.edTelefone1Exit(Sender: TObject);
begin
  if pos(' ',edTelefone1.Text)=0then
    gConsulta[8]:=' TELEFONE ='+QuotedStr(edTelefone1.Text)
  else
    gConsulta[8]:='';
end;

procedure TfrCadEmpresas.BitBtn5Click(Sender: TObject);
begin
  application.CreateForm(TFrRamoAtuacao,frRamoAtuacao);
  frRamoAtuacao.ShowModal;
end;

procedure TfrCadEmpresas.limpaConsulta;
begin
  edCod.Clear;
  edRazaoSocial1.Clear;
  edFantasia1.Clear;
  dbcRamoAtuacao1.KeyValue:=0;
  edDtInicial.Clear;
  eddtFinal.Clear;
  edTelefone1.Clear;
  edCel1.Clear;
  edContato1.Clear;
  edData1.Clear;
  gbEntredata.Visible:=false;
  gbUnidata.Visible:=true;
  btData.Caption:='Entre Data >';
  


end;

procedure TfrCadEmpresas.btnRelatorioClick(Sender: TObject);
begin
  execFiltro;
  relempresas.Preview;
end;

procedure TfrCadEmpresas.btnOkClick(Sender: TObject);
begin
  if btnOk.Caption='OK   [F10]'then
    cadastrar
  else
    prepcad
end;

end.


