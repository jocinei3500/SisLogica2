unit uConsulta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TfrConsulta = class(TForm)
    DBGrid1: TDBGrid;
    edSql: TEdit;
    Label1: TLabel;
    Button1: TButton;
    edResult: TEdit;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frConsulta: TfrConsulta;

implementation

uses uMain, uData;

{$R *.dfm}

procedure TfrConsulta.Button1Click(Sender: TObject);
begin
  frdata.qConsulta.SQL.Clear;
  frdata.qConsulta.SQL.Add(edSql.Text);
  frData.qConsulta.Open;
  edResult.Text:=frData.qConsulta.Recordset.Fields[0].Value;
  
end;

end.
