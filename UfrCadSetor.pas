unit UfrCadSetor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, DBCtrls, Mask;

type
  TfrCadSetor = class(TForm)
    Panel1: TPanel;
    lbCaption: TLabel;
    lbClose: TLabel;
    gbmain: TGroupBox;
    gbcad: TGroupBox;
    Label2: TLabel;
    Label6: TLabel;
    edSetor: TEdit;
    gbCod: TGroupBox;
    Label1: TLabel;
    edCod: TEdit;
    GroupBox1: TGroupBox;
    btnOk: TBitBtn;
    btnExcluir: TBitBtn;
    btFechar: TBitBtn;
    btnAlterar: TBitBtn;
    btnFiltro: TBitBtn;
    btnRelatorio: TBitBtn;
    GroupBox2: TGroupBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    dbcEmpresa: TDBLookupComboBox;
    Label4: TLabel;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    procedure buscCod;
    procedure cadastrar;
    procedure limpar;
    function verificaCampos:boolean;
    procedure buscEmpresa;
  public
    { Public declarations }
  end;

var
  frCadSetor: TfrCadSetor;

implementation

uses uData;

{$R *.dfm}

{ TfrCadSetor }

procedure TfrCadSetor.buscCod;
begin
  try
    frData.qSetor.Close;
    frData.qSetor.SQL.Clear;
    frData.qSetor.SQL.Add('SELECT max(cod_setor) FROM SETOR');
    frData.qSetor.Open;
    edCod.Text:=IntToStr(frData.qSetor.Recordset.Fields[0].Value+1);
  except
    edCod.Text:='1';
  end;
end;

procedure TfrCadSetor.cadastrar;
  var lCod, lNomeSetor,lEmpresa:string;
begin
  if verificaCampos=false then
    exit;
  if messagebox(handle,'','',mb_IconQuestion+mb_YesNo)=IdNo then
    exit;
  lCod:=edCod.Text;
  lNomeSetor:=QuotedStr(edSetor.Text);
  lEmpresa:=IntToStr(dbcEmpresa.KeyValue);

  frData.qCadastro.Close;
  frData.qCadastro.SQL.Clear;
  frData.qCadastro.SQL.Add('INSERT INTO SETOR VALUES('+
  lCod+','+lNomeSetor+','+lEmpresa +')');

  frData.qCadastro.ExecSQL;

  if frData.qCadastro.RowsAffected>0 then
    showmessage('Cadastro com Sucesso');

  try

  except
  end;
end;

procedure TfrCadSetor.limpar;
begin

end;

function TfrCadSetor.verificaCampos: boolean;
begin

end;

procedure TfrCadSetor.FormShow(Sender: TObject);
begin
  buscCod;
  buscEmpresa;
end;

procedure TfrCadSetor.buscEmpresa;
begin
  try
    frData.qEmpresa.Close;
    frData.qEmpresa.SQL.Clear;
    frData.qEmpresa.SQL.Add('SELECT * FROM EMPRESAS');
    frData.qEmpresa.Open;

    dbcEmpresa.ListField:='RAZAO_SOCIAL';
    dbcEmpresa.KeyField:='cod_empresa';
  except
  end;
end;

procedure TfrCadSetor.BitBtn1Click(Sender: TObject);
begin
  cadastrar;
end;

end.
