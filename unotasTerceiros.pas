unit unotasTerceiros;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DBCtrls;

type
  TfrNotasTerceiros = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    edCod: TEdit;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    edValor: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    edServico: TEdit;
    edDescricao: TEdit;
    edFornecedor: TEdit;
    edData: TMaskEdit;
    Label2: TLabel;
    dbcEmpresa: TDBLookupComboBox;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    function verify : boolean;
    procedure cadastrar;
    procedure upDateCod;
    procedure limpar;
    procedure buscEmpresas;
  public
    { Public declarations }
  end;

var
  frNotasTerceiros: TfrNotasTerceiros;

implementation

uses uData, uMain;

{$R *.dfm}

procedure TfrNotasTerceiros.cadastrar;
var
  cod,servico,descricao,fornecedor,data,valor:string;
begin
  if verify=false then
    begin
      exit;
    end;
  cod:=edCod.Text;
  servico:=QuotedStr(edServico.Text);
  descricao:=QuotedStr(edDescricao.Text);
  fornecedor:=QuotedStr(edFornecedor.Text);
  data:=QuotedStr(edData.Text);
  if pos(',',edValor.Text)>0then
      valor:=copy(edValor.Text,1,pos(',',edValor.Text)-1)+'.'+
      copy(edValor.Text,pos(',',edValor.Text)+1,length(edValor.Text))
  else begin
  valor:=edValor.Text;end;

  frdata.qCadastro.SQL.Clear;
  frdata.qCadastro.SQL.Add('INSERT INTO NOTASTERCEIROS VALUES('+
  cod + ',' + servico +','+ descricao +','+ fornecedor +','+ data +
  ','+ valor +')');
  frdata.qCadastro.ExecSQL;
  if frdata.qCadastro.RowsAffected <>0then
    begin
      Showmessage('Cadastrada com sucesso');
      limpar;
    end;


end;

function TfrNotasTerceiros.verify: boolean;
begin
  result:=false;
  if edCod.Text=''then
    begin
      showmessage('Digite o Código');
      edcod.SetFocus;
      exit;
    end;

  if edDescricao.Text=''then
    begin
      showmessage('digite a Descrição');
      edDescricao.setfocus;
      exit;
    end;

  if edValor.Text=''then
    begin
      showmessage('Digite o Valor da Nota');
      edValor.SetFocus;
      exit;
    end;

     result:=true;
end;

procedure TfrNotasTerceiros.BitBtn1Click(Sender: TObject);
begin
  cadastrar;
end;




procedure TfrNotasTerceiros.upDateCod;
var
  lCod:string;
begin
  try
      frdata.qConsulta.SQL.Clear;
      frdata.qConsulta.SQL.Add('SELECT MAX(COD_NOTA) FROM NOTASTERCEIROS');
      frData.qConsulta.Open;
      lCod:=frdata.qConsulta.Recordset.Fields[0].Value + 1;
      edCod.Text:=lCod;
  except
    edCod.Text:='1';
  end;
end;

procedure TfrNotasTerceiros.FormShow(Sender: TObject);
begin
upDateCod;
buscEmpresas;
end;

procedure TfrNotasTerceiros.limpar;
begin
  upDateCod;
  edServico.Clear;
  edDescricao.Clear;
  edfornecedor.Clear;
  edData.Clear;
  edValor.Clear;
  edservico.Clear;
  edServico.SetFocus;
end;

procedure TfrNotasTerceiros.buscEmpresas;
begin
  frdata.qConsulta.Close;
  frdata.qConsulta.SQL.Clear;
  frdata.qConsulta.SQL.Add('SELECT * FROM EMPRESAS');
  frdata.qConsulta.Open;

  dbcempresa.KeyField:='cod_empresa';
  dbcempresa.ListField:='nome_fantasia';
end;

end.
