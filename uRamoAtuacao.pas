unit uRamoAtuacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TfrRamoAtuacao = class(TForm)
    gbMain: TGroupBox;
    GroupBox4: TGroupBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    GroupBox1: TGroupBox;
    Label7: TLabel;
    edCod: TEdit;
    Label1: TLabel;
    edRamoAtuacao: TEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure cadastrar;
    procedure buscCod;

  public
    { Public declarations }
  end;

var
  frRamoAtuacao: TfrRamoAtuacao;

implementation

uses uData, uCadEmpresas;

{$R *.dfm}

procedure TfrRamoAtuacao.cadastrar;
  var
    lCod,lRamo:string;
begin
  lCod:=edCod.Text;
  if edRamoatuacao.Text<>''then
    if messagebox(handle,'Tem certeza que deseja cadastrar?','Cadastro',mb_yesno)=idyes then
    lRamo:=QuotedStr(edRamoAtuacao.Text)
    else
      exit
  else
    begin
      showmessage('Campo RAMO DE ATUAÇÂO vazio');
      edRamoAtuacao.SetFocus;
      exit;
    end;
  try
    frdata.qCadastro.Close;
    frdata.qCadastro.SQL.Clear;
    frdata.qCadastro.SQL.Add('INSERT INTO RAMO_ATUACAO VALUES('+lcod +','+lRamo + ')');
    frdata.qCadastro.ExecSQL;
    if frdata.qCadastro.RowsAffected>0 then
      begin
        showmessage('Cadastrado com sucesso.');
        frdata.qRamo.Close;
        frdata.qRamo.Open;
        frcadEmpresas.dbcRamoAtuacao.KeyValue:=edCod.Text;
        buscCod;
        if frcadEmpresas.Showing=true then
          begin
            frcadEmpresas.dbcRamoAtuacao.SetFocus;
            close;
          end;
        end;
  except
  end;
end;

procedure TfrRamoAtuacao.BitBtn1Click(Sender: TObject);
begin
cadastrar;
end;

procedure TfrRamoAtuacao.buscCod;
begin

 edRamoAtuacao.Clear;
 edRamoAtuacao.SetFocus;
  try
    frData.qConsulta.Close;
    frData.qConsulta.SQL.Clear;
    frData.qConsulta.SQL.Add('SELECT max(cod_ramo)FROM RAMO_ATUACAO');
    frData.qConsulta.Open;
    if frData.qConsulta.RecordCount>0 then
      edCod.Text:=InttoStr(frData.qConsulta.Recordset.Fields[0].Value+1);
  except
    edCod.Text:='1';
  end;
end;

procedure TfrRamoAtuacao.FormShow(Sender: TObject);
begin
  buscCod;
end;


end.
