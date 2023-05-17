unit UMovimentacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DBCtrls, Mask, Grids, DBGrids;

type
  TfrmPesquisaMovimento = class(TForm)
    PnlTopo: TPanel;
    PnlRodape: TPanel;
    BtnTransferir: TBitBtn;
    BtnPesquisa: TBitBtn;
    BtnImprimir: TBitBtn;
    BtnSair: TBitBtn;
    DBNavigator1: TDBNavigator;
    EdtDescricao: TEdit;
    MKInicio: TMaskEdit;
    MKFim: TMaskEdit;
    LblChave: TLabel;
    LblDescricao: TLabel;
    LblInicio: TLabel;
    LblFim: TLabel;
    DBGrid1: TDBGrid;
    CBChave: TComboBox;
    LblQtde: TLabel;
    LblEntrada: TLabel;
    LblSaida: TLabel;
    LblCaixa: TLabel;
    pnlTitulo: TPanel;
    lblTitulo: TLabel;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure BtnTransferirClick(Sender: TObject);
    procedure BtnPesquisaClick(Sender: TObject);
    procedure CBChaveChange(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Codigo:Integer;
  end;

var
  frmPesquisaMovimento: TfrmPesquisaMovimento;
  Entrada, Saida, Caixa:Real;

implementation

uses UDM, DB;

{$R *.dfm}

procedure TfrmPesquisaMovimento.BtnPesquisaClick(Sender: TObject);
begin
  //Consulta com o botão
  dm.cdsPesquisaMov.close;
  dm.sqlPesquisaMov.CommandText := 'SELECT * FROM MOVIMENTO';
  dm.cdsPesquisaMov.Open;

  //Opções de pesquisa por código
  case CBChave.ItemIndex of
    0:
    begin
      if EdtDescricao.Text = '' then
      begin
        Application.MessageBox('Campo está em branco!', 'Erro', MB_ICONINFORMATION+MB_OK);
        Exit;
      end;

      dm.cdsPesquisaMov.Close;
      dm.sqlPesquisaMov.CommandText := 'SELECT * FROM MOVIMENTO WHERE IDMOVIMENTO = '''+EdtDescricao.Text+'''';
      dm.cdsPesquisaMov.Open;
    end;

    //Opção de pesquisa por TIPO
    1:
    begin
      if EdtDescricao.Text = '' then
      begin
        Application.MessageBox('Campo está em branco', 'Erro', MB_ICONINFORMATION+MB_OK);
        Exit;
      end;

      dm.cdsPesquisaMov.Close;
      dm.sqlPesquisaMov.CommandText := 'SELECT * FROM MOVIMENTO WHERE TIPO = '''+EdtDescricao.Text+'''';
      //showMessage(dm.sqlPesquisaMov.CommandText); Mensagem para visualziar o Select
      dm.cdsPesquisaMov.Open;
    end;

    //Opção de pesquisa por DATA
    2:
    begin
      if MKInicio.Text = '' then
      begin
        Application.MessageBox('O campo está em branco', 'Erro', MB_ICONINFORMATION+MB_OK);
        Exit;
      end;

      dm.cdsPesquisaMov.Close;
      dm.sqlPesquisaMov.CommandText := 'SELECT * FROM MOVIMENTO WHERE CADASTRO = '''+MKInicio.Text+'''';
      ShowMessage(dm.sqlPesquisaMov.CommandText);
      dm.cdsPesquisaMov.Open;
    end;

    //Opção de pesquisa por periodos
    3:
    begin
      if MKFim.Text = '' then
      begin
        Application.MessageBox('O campo está em branco', 'Erro', MB_ICONINFORMATION+MB_OK);
        Exit;
      end;

      dm.cdsPesquisaMov.Close;
      dm.sqlPesquisaMov.CommandText := 'SELECT * FROM MOVIMENTO WHERE CADASTRO BETWEEN '''+MKInicio.Text+''' AND '''+MKFim.Text+'''';
      Showmessage(dm.sqlPesquisaMov.CommandText);
      dm.cdsPesquisaMov.Open;
    end;
                                          ////CADCLIENTE where  '+CboxConsulta.Text+' = '''+EdtConsulta.Text+'''';
      //Selecionar todo os campos
    4:
    begin
      dm.cdsPesquisaMov.Close;
      dm.sqlPesquisaMov.CommandText := 'SELECT * FROM MOVIMENTO ORDER BY IDMOVIMENTO';
      dm.cdsPesquisaMov.Open;
    end;
  end;

  //Mostra a quantidade de registro
  LblQtde.Caption:='Localizados:' +#13+ InttoStr(dm.cdsPesquisaMov.RecordCount);

  //Soma a Entrada
  dm.cdsPesquisaMov.First;
  while not dm.cdsPesquisaMov.Eof do
  begin
    if dm.cdsPesquisaMovTIPO.AsString ='ENTRADA' then
    begin
      Entrada := Entrada + dm.cdsPesquisaMovVALOR.AsFloat;
    end;

    DM.cdsPesquisaMov.Next;
  end;
  LblEntrada.Caption :='Valores de entrada: ' +#13+ formatfloat('R$ ##,##0.00',entrada);

  //Soma a Saida
  dm.cdsPesquisaMov.First;  //vai pro inicio da tabela (primeiro registro)
  while not dm.cdsPesquisaMov.Eof do  //Enquanto não for o final da tabela
  begin
    if dm.cdsPesquisaMovTIPO.AsString ='SAIDA' then //Se o campo TIPO da tabela cdsPesquisaMov for igual a 'SAIDA'  então...
    begin
      Saida := Saida + dm.cdsPesquisaMovVALOR.AsFloat;
    end;

    dm.cdsPesquisaMov.Next;
  end;
  LblSaida.Caption := 'Valores de saida: ' +#13+ formatfloat ('R$ ##,#0.00', saida);

  //Quantia no caixa
  Caixa := Entrada - Saida;
  lblCaixa.Caption:= 'Caixa: ' +#13+ formatfloat('R$ ##,#0.00', Caixa);

  //Se não for encontrado nada.
  if dm.cdsPesquisaMov.IsEmpty then
  begin
    Application.MessageBox('Não existe o registro informado','Erro', MB_ICONINFORMATION+MB_OKCANCEL);
  end;


end;

procedure TfrmPesquisaMovimento.BtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmPesquisaMovimento.BtnTransferirClick(Sender: TObject);
begin
  //Faz a variavel receber o registro selecionado
  if dm.cdsPesquisaMov.RecordCount > 0 then
  begin
    Codigo:= dm.cdsPesquisaMovIDMOVIMENTO.AsInteger;
  end;

end;

procedure TfrmPesquisaMovimento.CBChaveChange(Sender: TObject);
begin
  //Habilita e desabilita componentes
  case CBChave.ItemIndex of
  0:Begin
    //Pesquisa por código
    EdtDescricao.Visible:= true;
    LblDescricao.Caption := 'Digite o código';
    LblDescricao.Visible := true;
    LblInicio.Visible := false;
    MKInicio.Visible := false;
    LblFim.Visible := False;
    MKFim.Visible := False;
    EdtDescricao.SetFocus;
    EdtDescricao.Clear;
  end;

   1:Begin
    //Pesquisa por descrição
    EdtDescricao.Visible:= true;
    LblDescricao.Caption := 'Digite o tipo:';
    LblDescricao.Visible:= true;
    LblInicio.Visible := false;
    MKinicio.Visible := false;
    LblFim.Visible := false;
    MkFim.Visible := false;
    EdtDescricao.SetFocus;
    EdtDescricao.Clear;
   end;

    2:Begin
    //Pesquisa por DATA
    EdtDescricao.Visible := false;
    LblDescricao.Visible := false;
    LblInicio.Caption := 'Digite a data:';
    LblInicio.Visible := true;
    MKinicio.Visible := true;
    LblFim.Visible := false;
    MkFim.Visible := false;
    MkInicio.SetFocus;
    MKinicio.Clear;
    end;

    3:Begin
    //Pesquisa por periodo
    EdtDescricao.Visible := false;
    LblDescricao.Visible := true;
    LblDescricao.Caption := 'DIGITE O PERIODO';
    LblInicio.Visible := true;
    LblInicio.Caption := 'Inicio:';
    MKInicio.Visible := true;
    LblFim.Visible := true;
    LblFim.Caption := 'Fim:';
    MkFim.Visible := true;
    MkInicio.SetFocus;
    MKinicio.Clear;
    MKfim.Clear;
    end;

    4: Begin
    //Pesquisa por todos os campos
    EdtDescricao.Visible := false;
    LblDescricao.Visible := true;
    LblDescricao.Caption := 'MOSTRANDO TODOS OS USUARIOS';
    LblInicio.Visible := false;
    MkInicio.Visible := false;
    LblFim.Visible := false;
    MkFim.Visible := false;
    DM.sqlMovimento.CommandText := 'SELECT * FROM MOVIMENTO';
    DM.cdsMovimento.Open;


    end;

  end;
end;

procedure TfrmPesquisaMovimento.DBGrid1DblClick(Sender: TObject);
begin
  //Faz a função do botão transferir
  BtnTransferir.Click;
end;

procedure TfrmPesquisaMovimento.FormKeyPress(Sender: TObject; var Key: Char);
begin
  //ENTER igual a TAB
  if Key = #13 then
  begin
    Key:=#0;
    Perform(wm_nextDlgCtl,0,0);
  end;

  if Key = #27 then
    Close;
end;

end.



      //Para funcionalidade do enter ou tab
//procedure TFormCadastraSocios.DBEditCodigoSocioKeyPress(Sender: TObject;
//  var Key: Char);
//begin
//  if (Key = #13) then
//  begin
//    Key := #0;
//    SelectNext((Sender as TwinControl),True,True);
//  end;
//end;
