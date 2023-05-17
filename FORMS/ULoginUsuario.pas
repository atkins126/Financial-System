unit ULoginUsuario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons;

type
  TFrmLogin2 = class(TForm)
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
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnOkClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLogin2: TFrmLogin2;

implementation

uses UDM, UMenu, UUsuario;

{$R *.dfm}

procedure TFrmLogin2.BtnCancelarClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFrmLogin2.BtnOkClick(Sender: TObject);
var Login, Senha: String;
begin
  //Validação do login, pesquisa de login no banco de dados
  dm.cdsLogin.Close;
  dm.cdsLogin.Open;

  //Validar login e senha
  if dm.cdsLogin.Locate ('NOME',EdtNome.Text,[])and dm.cdsLogin.Locate('SENHA',edtSenha.Text,[]) then
  begin
    //Valida se o usuario não for administrador não podera ter acesso a essa aba
    if dm.cdsLoginNIVEL.AsInteger <> 1 then
    begin
      Application.MessageBox('Usuario invalido','Somente nivel administrador pode acessar essa pagina', MB_ICONINFORMATION+MB_OK);
      Abort;
    end;
    FrmUsuario := TFrmUsuario.create(nil);
    FrmUsuario.ShowModal;
    FrmLogin2.Close;
  end
  else
  begin
    Application.Messagebox('Usuario Incorreto','Usuario invalido', MB_ICONEXCLAMATION+MB_OK);
    edtNome.Clear;
    edtSenha.Clear;
    edtNome.SetFocus;
    Abort;
  end;

//  if dm.cdsLoginNIVEL.AsInteger <> 1 then
//    begin
//      Application.MessageBox('Usuario invalido','Somente nivel administrador pode acessar essa pagina', MB_ICONINFORMATION+MB_OK);
//      Exit;
//    end;

end;

procedure TFrmLogin2.FormKeyPress(Sender: TObject; var Key: Char);
begin
  //Enter igual ao Tab
  if Key = #13 then
  begin
    Key:=#0;
    Perform(wm_NextDlgCtl,0,0);
  end;
end;

end.
