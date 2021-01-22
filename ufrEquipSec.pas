unit ufrEquipSec;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Mask, DBCtrls;

type
  TfrCadEquipSec = class(TForm)
    gbmain: TGroupBox;
    gbcad: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    edSetor: TEdit;
    dbcSetor: TDBLookupComboBox;
    gbCod: TGroupBox;
    Label1: TLabel;
    lbDtEmiss: TLabel;
    edCod: TEdit;
    edDataEmissao: TMaskEdit;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frCadEquipSec: TfrCadEquipSec;

implementation

uses uData;

{$R *.dfm}

end.
