unit UMensagem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, jpeg, JvExExtCtrls, JvExtComponent,
  JvPanel, frxpngimage;

type
  Tmsg = class(TForm)
    pnlPrincipal: TPanel;
    pnlImg: TPanel;
    pnlBotoes: TPanel;
    imgAviso: TImage;
    imgCheck: TImage;
    btnSim: TBitBtn;
    btnOk: TBitBtn;
    btnNao: TBitBtn;
    pnlMemo: TPanel;
    lblTitulo: TLabel;
    memoMSG: TJvPanel;
    imgX: TImage;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Aviso(Titulo, Mensagem : String);
    procedure Correto(Titulo, Mensagem : String);
    procedure Erro(Titulo, Mensagem : String);

//    function SimNao(Titulo, Mensgem : String): Boolean;
  end;

var
  msg: Tmsg;

implementation

{$R *.dfm}

{ TfrmMSG }

procedure Tmsg.Aviso(Titulo, Mensagem: String);
begin
  msg := Tmsg.create(nil);
  with msg do
  begin
    btnNao.Visible    := False;
    btnSim.Visible    := False;
    imgX.Visible      := False;
    imgCheck.Visible  := False;
    memoMSG.Caption   := Mensagem;
    lblTitulo.Caption := Titulo;
    ShowModal;
  end;
  FreeAndNil(msg);
end;

procedure Tmsg.Correto(Titulo, Mensagem: String);
begin
  msg := Tmsg.Create(nil);
  with msg do
  begin
    btnNao.Visible   := False;
    btnSim.Visible   := False;
    imgX.Visible     := False;
    imgAviso.Visible := False;
    lblTitulo.Caption := Titulo;
    memoMSG.Caption := Mensagem;
    ShowModal;
  end;
  FreeAndNil(msg);
end;

procedure Tmsg.Erro(Titulo, Mensagem: String);
begin
  msg := Tmsg.Create(nil);
  with msg do
  begin
  btnNao.Visible := False;
  btnSim.Visible := False;
  imgCheck.Visible := False;
  imgAviso.Visible := False;
  lblTitulo.Caption := Titulo;
  memoMSG.Caption := Mensagem;
  ShowModal;
  end;
  FreeAndNil(msg);
end;

end.
