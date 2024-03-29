unit ULogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons;

type
  TFrmLogin = class(TForm)
    LblNome: TLabel;
    LblSenha: TLabel;
    EdtNome: TEdit;
    EdtSenha: TEdit;
    BtnOk: TBitBtn;
    BtnCancelar: TBitBtn;
    Image1: TImage;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnOkClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLogin: TFrmLogin;

implementation

uses UDM, UMenu, UMensagem;

{$R *.dfm}

procedure TFrmLogin.BtnCancelarClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFrmLogin.BtnOkClick(Sender: TObject);
var Login, Senha: String;
begin
  //Valida��o de login, pesquisa de login no banco de  dados.
  dm.cdsLogin.close;
  dm.cdsLogin.Open;
  //Se localizar o NOME e SENHA na tabela sendo igual nos Edt, passe
  if dm.cdsLogin.Locate('NOME',EdtNome.Text,[]) and dm.cdsLogin.Locate ('SENHA', EdtSenha.Text,[]) then
  begin
    //Trazendo variaveis USUARIO E TIPO
    dm.Usuario := EdtNome.Text;
    dm.Tipo := dm.cdsUsuarioTIPO.AsString;
    FrmMenu := TFrmMenu.Create(nil);
    FrmMenu.Show;
  end
  //Se n�o pare
  else
  begin
    msg.Erro('User incorrect','Please correct the user or password for continue');
    EdtNome.Clear;
    EdtSenha.Clear;
    EdtNome.SetFocus;
    Abort;
  end;
end;

procedure TFrmLogin.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_escape then
  begin
    Close
  end;
end;

procedure TFrmLogin.FormKeyPress(Sender: TObject; var Key: Char);
begin
  //Enter igual ao Tab
  if Key = #13 then
  begin
    Key:=#0;
    Perform(wm_NextDlgCtl,0,0);
  end;
end;

end.
