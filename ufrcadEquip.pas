unit ufrcadEquip;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, DBCtrls, Mask;

type
  TfrcadEquip = class(TForm)
    gbmain: TGroupBox;
    gbcad: TGroupBox;
    Label2: TLabel;
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
    Panel1: TPanel;
    lbCaption: TLabel;
    lbClose: TLabel;
    lbDtEmiss: TLabel;
    edDataEmissao: TMaskEdit;
    Label3: TLabel;
    dbcSetor: TDBLookupComboBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frcadEquip: TfrcadEquip;

implementation

uses uData;

{$R *.dfm}

end.
