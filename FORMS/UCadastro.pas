unit UCadastro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, Grids, DBGrids, Mask, DBCtrls, ExtCtrls, ComCtrls;

type
  TFrmCadastro = class(TForm)
    PgControl: TPageControl;
    TBCadastro: TTabSheet;
    Panel1: TPanel;
    lblNome: TLabel;
    lblEmail: TLabel;
    lblCPF: TLabel;
    lblCidade: TLabel;
    lblBairro: TLabel;
    Pesquisa: TLabel;
    btnNovo: TSpeedButton;
    btnSalvar: TSpeedButton;
    btnEditar: TSpeedButton;
    btnDeletar: TSpeedButton;
    btnCancelar: TSpeedButton;
    btnSair: TSpeedButton;
    Label1: TLabel;
    lblDataCad: TLabel;
    edtNome: TDBEdit;
    edtEmail: TDBEdit;
    edtCPF: TDBEdit;
    edtCidade: TDBEdit;
    edtBairro: TDBEdit;
    DBGrid1: TDBGrid;
    edtPesquisa: TEdit;
    DBEdit1: TDBEdit;
    edtDataCad: TDBEdit;
    TBConsulta: TTabSheet;
    pnlBottom: TPanel;
    pnlTop: TPanel;
    DBGrid2: TDBGrid;
    DBNavigator1: TDBNavigator;
    btnSair2: TButton;
    edtConsulta: TEdit;
    cbConsulta: TComboBox;
    procedure edtConsultaChange(Sender: TObject);
    procedure btnSair2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtEmailKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure tratabotao();
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastro: TFrmCadastro;

implementation

uses UDM;

{$R *.dfm}

procedure TFrmCadastro.btnCancelarClick(Sender: TObject);
begin
  tratabotao;

end;

procedure TFrmCadastro.btnNovoClick(Sender: TObject);
var proximo: Integer;
begin
  tratabotao;
end;

procedure TFrmCadastro.btnSair2Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmCadastro.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmCadastro.edtConsultaChange(Sender: TObject);
begin
//  if edtConsulta.Text = '' then
//  begin
//    dm.cdsCadastro.Close;
//    dm.sqlCadastro.CommandText := 'SELECT * FROM CADASTRO';
//    dm.cdsCadastro.Open;
//  end;
//
//  case cbConsulta.ItemIndex of
//  0:
//  begin
//    dm.cdsCadastro.Close;
//    dm.sqlCadastro.CommandText := 'SELECT * FROM CADASTRO WHERE ID LIKE ''%'+edtConsulta.Text+'%''';
//    dm.cdsCadastro.Open;
//  end;
//
//  1:
//  begin
//    dm.cdsCadastro.Close;
//    dm.sqlCadastro.CommandText := 'SELECT * FROM CADASTRO WHERE NOME LIKE ''%'+edtConsulta.Text+'%''';
//    dm.cdsCadastro.Open;
//  end;
//
//  2:
//  begin
//    dm.cdsCadastro.Close;
//    dm.sqlCadastro.CommandText := 'SELECT * FROM CADASTRO WHERE  EMAIL LIKE ''%'+edtConsulta.Text+'%''';
//    dm.cdsCadastro.Open;
//  end;
//
//  3:
//  begin
//    dm.cdsCadastro.Close;
//    dm.sqlCadastro.CommandText := 'SELECT * FROM CADASTRO WHERE CPF LIKE ''%'+edtConsulta.Text+'%''';
//    dm.cdsCadastro.Open;
//  end;
//
//  4:
//  begin
//    dm.cdsCadastro.Close;
//    dm.sqlCadastro.CommandText := 'SELECT * FROM CADASTRO WHERE CIDADE LIKE ''%'+edtConsulta.Text+'%''';
//    dm.cdsCadastro.Open;
//  end;
//
//  5:
//  begin
//    dm.cdsCadastro.Close;
//    dm.sqlCadastro.CommandText := 'SELECT * FROM CADASTRO WHERE BAIRRO LIKE ''%'+edtConsulta.Text+'%''';
//    dm.cdsCadastro.Open;
//  end;

  end;
//end;
//
//ID
//NOME
//EMAIL
//CPF
//CIDADE
//BAIRRO


procedure TFrmCadastro.edtEmailKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
//    btnSalvarClick(Sender);
  tratabotao
end;

procedure TFrmCadastro.FormCreate(Sender: TObject);
begin
  btnSalvar.Enabled := False;
  btnDeletar.Enabled := False;
  btnCancelar.Enabled := False;
end;

procedure TFrmCadastro.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
    Close;
end;

procedure TFrmCadastro.tratabotao;
begin
  btnNovo.Enabled := Not btnNovo.Enabled;
  btnSalvar.Enabled := Not btnNovo.Enabled;
  btnEditar.Enabled := Not btnEditar.Enabled;
  btnDeletar.Enabled := Not btnDeletar.Enabled;
  btnCancelar.Enabled := Not btnCancelar.Enabled;
end;

end.
