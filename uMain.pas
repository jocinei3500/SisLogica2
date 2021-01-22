unit uMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Menus, ComCtrls, ToolWin, ImgList, StdCtrls, jpeg;

type
  TfrMain = class(TForm)
    ppCadastro: TPopupMenu;
    ppAnalise: TPopupMenu;
    ppRelatorio: TPopupMenu;
    ppConsulta: TPopupMenu;
    ToolBar1: TToolBar;
    btCadastro: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    OrdemdeServio1: TMenuItem;
    Compras1: TMenuItem;
    Empresas1: TMenuItem;
    Fornecedores1: TMenuItem;
    Servios1: TMenuItem;
    ConsultaPersonalise1: TMenuItem;
    imON: TImageList;
    imOFF: TImageList;
    Label2: TLabel;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    Image2: TImage;
    Panel1: TPanel;
    Label1: TLabel;
    lbClose: TLabel;
    Panel2: TPanel;
    lbRelogio: TLabel;
    Timer1: TTimer;
    Image1: TImage;
    CadastrodeEmpresas1: TMenuItem;
    RamodeAtuao1: TMenuItem;
    Setor1: TMenuItem;
    ppAjuda: TPopupMenu;
    Oramentos1: TMenuItem;
    Vendas1: TMenuItem;
    Propostas1: TMenuItem;
    Dvidas1: TMenuItem;
    Desenhos1: TMenuItem;
    ppCaixa: TPopupMenu;
    Empresas2: TMenuItem;
    ServiosRealizados1: TMenuItem;
    Funcionrios1: TMenuItem;
    Empresas3: TMenuItem;
    ServiosRealizados2: TMenuItem;
    Empresa1: TMenuItem;
    Pessoal1: TMenuItem;
    Bancos1: TMenuItem;
    SobreoSistema1: TMenuItem;
    utorialdoSistema1: TMenuItem;
    ConhecendooSistema1: TMenuItem;
    Equipamentos: TMenuItem;
    Primrios1: TMenuItem;
    Secundrios1: TMenuItem;
    procedure OrdemdeServio1Click(Sender: TObject);
    procedure ConsultaPersonalise1Click(Sender: TObject);
    procedure lbCloseClick(Sender: TObject);
    procedure lbCloseMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure lbCloseMouseLeave(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure CadastrodeEmpresas1Click(Sender: TObject);
    procedure RamodeAtuao1Click(Sender: TObject);
    procedure Servios1Click(Sender: TObject);
    procedure Setor1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Primrios1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frMain: TfrMain;

implementation

uses unotasTerceiros, uConsulta, uCadEmpresas, uRamoAtuacao, uData,
  frCadServico, uRelEmpresas, UfrCadSetor, ufrcadEquip;

{$R *.dfm}

procedure TfrMain.OrdemdeServio1Click(Sender: TObject);
begin
  frNotasTerceiros.Position:=poScreencenter;
  frNotasTerceiros.ShowModal;


end;

procedure TfrMain.ConsultaPersonalise1Click(Sender: TObject);
begin
  application.CreateForm(tfrConsulta,frconsulta);
  frConsulta.ShowModal;

end;

procedure TfrMain.lbCloseClick(Sender: TObject);
begin
close;


end;

procedure TfrMain.lbCloseMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  lbClose.Font.Color:=clWhite;
end;

procedure TfrMain.lbCloseMouseLeave(Sender: TObject);
begin
  lbClose.Font.Color:=$00B1B1B1;
end;

procedure TfrMain.FormShow(Sender: TObject);
begin
  //POSICIONA A LABEL LBCLOSE

    lbClose.Left:=1240;lbClose.Top:=10;
 // >>>>>>>>>>>>>>>>>>>>>>>>>>>>>

 
end;

procedure TfrMain.Timer1Timer(Sender: TObject);
  begin
  lbRelogio.Caption:=formatDateTime('hh:mm:ss',now());
end;

procedure TfrMain.CadastrodeEmpresas1Click(Sender: TObject);
begin
  application.CreateForm(tfrcadempresas,frcadempresas);
  frCadEmpresas.ShoW;
end;

procedure TfrMain.RamodeAtuao1Click(Sender: TObject);
begin
  application.CreateForm(tfrRamoAtuacao,frRamoAtuacao);
  frRamoAtuacao.Showmodal;
end;

procedure TfrMain.Servios1Click(Sender: TObject);
begin                       
  application.CreateForm(tfrmCadServico,frmCadServico);
  frmCadServico.ShowModal;
end;

procedure TfrMain.Setor1Click(Sender: TObject);
begin
  application.CreateForm(tfrcadSetor,frcadsetor);
  frcadSetor.showModal;
end;

procedure TfrMain.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (ssCtrl in Shift) and (chr(Key) in ['C', 'c']) then
  ppCadastro.Popup(1,130)
else if (ssCtrl in Shift) and (chr(Key) in ['A', 'a']) then
  ppAnalise.Popup(90,130)
else if (ssCtrl in Shift) and (chr(Key) in ['R', 'r']) then
  ppRelatorio.Popup(185,130)
else if (ssCtrl in Shift) and (chr(Key) in ['S', 's']) then
  ppConsulta.Popup(280,130)
else if (ssCtrl in Shift) and (chr(Key) in ['X', 'x']) then
  ppCaixa.Popup(375,130)
else if (ssCtrl in Shift) and (chr(Key) in ['J', 'j']) then
  ppAjuda.Popup(470,130)


end;

procedure TfrMain.Primrios1Click(Sender: TObject);
begin
  application.CreateForm(TfrcadEquip,frcadEquip);
  frcadEquip.showmodal;
end;

end.
