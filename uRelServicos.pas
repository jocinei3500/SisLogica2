unit uRelServicos;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, jpeg;

type
  TrelServico = class(TQuickRep)
    DetailBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel2: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel12: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel13: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel14: TQRLabel;
    QRLabel16: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel17: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel18: TQRLabel;
    QRDBText11: TQRDBText;
    QRLabel19: TQRLabel;
    QRDBText12: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText13: TQRDBText;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRDBText14: TQRDBText;
    QRLabel22: TQRLabel;
    QRDBText15: TQRDBText;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel6: TQRLabel;
    QRSysData3: TQRSysData;
    QRLabel9: TQRLabel;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRLabel10: TQRLabel;
    QRDBText18: TQRDBText;
    QRLabel11: TQRLabel;
    QRImage1: TQRImage;
    PageFooterBand1: TQRBand;
    QRDBText19: TQRDBText;
    QRLabel15: TQRLabel;
  private

  public

  end;

var
  relServico: TrelServico;

implementation

uses uData;

{$R *.DFM}

end.
