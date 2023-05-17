unit UPrincila;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    edtResultado: TEdit;
    btn7: TButton;
    btn6: TButton;
    btn3: TButton;
    btn8: TButton;
    btn5: TButton;
    btn2: TButton;
    btn9: TButton;
    btn4: TButton;
    btn1: TButton;
    btnLimpar: TButton;
    btn0: TButton;
    btnIgual: TButton;
    btnDivisao: TButton;
    btnx: TButton;
    btnMenos: TButton;
    btnSoma: TButton;
    procedure btnIgualClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btn7Click(Sender: TObject);
    procedure btnDivisaoClick(Sender: TObject);
    procedure btnxClick(Sender: TObject);
    procedure btnMenosClick(Sender: TObject);
    procedure btnSomaClick(Sender: TObject);
    procedure Calcular;
  private
    { Private declarations }

    FOperacao: Char;
    FTotal:   Double;
    FUltimoNumero: Double;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btn7Click(Sender: TObject);
begin
  if FUltimoNumero = 0 then
   begin
    edtResultado.Text := TButton(Sender).Caption;
   end
  else
    edtResultado.Text := edtResultado.Text + TButton(Sender).Caption;
    FUltimoNumero := StrToFloat(edtResultado.Text);
end;

procedure TForm1.btnDivisaoClick(Sender: TObject);
begin
  FOperacao := '/';
  Calcular;
end;

procedure TForm1.btnIgualClick(Sender: TObject);
begin
  Calcular
end;

procedure TForm1.btnLimparClick(Sender: TObject);
begin
  FUltimoNumero := 0;
  edtResultado.Text := '0';
  FOperacao := '+';
  FTotal := 0;
end;

procedure TForm1.btnMenosClick(Sender: TObject);
begin
  FOperacao := '-';
  Calcular;
end;

procedure TForm1.btnSomaClick(Sender: TObject);
begin
  FOperacao := '+';
  Calcular
end;

procedure TForm1.btnxClick(Sender: TObject);
begin
  FOperacao := '*';
  Calcular
end;

procedure TForm1.Calcular;
begin
  case FOperacao of
   '+':  FTotal := FTotal + StrToFloat(edtResultado.Text);
   '-':  FTotal := FTotal - StrToFloat(edtResultado.Text);
   '*':  FTotal := FTotal * StrToFloat(edtResultado.Text);
   '/':  FTotal := FTotal / StrToFloat(edtResultado.Text);
  end;

  edtResultado.Text := FloatToStr(FTotal);
  FUltimoNumero := 0;
  end;

procedure TForm1.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
    Close;
end;


end.
