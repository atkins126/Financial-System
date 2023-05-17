program SistemaFinanceiro;

uses
  Forms,
  UCadMovimentacao in '..\FORMS\UCadMovimentacao.pas' {FrmMovimento},
  UDM in '..\FORMS\UDM.pas' {DM: TDataModule},
  UMovimentacao in '..\FORMS\UMovimentacao.pas' {frmPesquisaMovimento},
  UMenu in '..\FORMS\UMenu.pas' {FrmMenu},
  UCadUsuario in '..\FORMS\UCadUsuario.pas' {FrmUsuario},
  UUsuarios in '..\FORMS\UUsuarios.pas' {FrmPesquisaUsuario},
  UInformacoes in '..\FORMS\UInformacoes.pas' {FrmInformacoes},
  UCalculadora in '..\FORMS\UCalculadora.pas' {FrmCalculadora},
  ULogin in '..\FORMS\ULogin.pas' {FrmLogin},
  UMensagem in '..\FORMS\UMensagem.pas' {msg},
  ULoginUsuario in '..\FORMS\ULoginUsuario.pas' {FrmLogin2};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFrmLogin, FrmLogin);
  Application.Run;
end.
