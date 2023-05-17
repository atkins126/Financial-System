unit UDM;

interface

uses
  SysUtils, Classes, DBXpress, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TDM = class(TDataModule)
    Conexao: TSQLConnection;
    sqlMovimento: TSQLDataSet;
    dspMovimento: TDataSetProvider;
    cdsMovimento: TClientDataSet;
    dtsMovimento: TDataSource;
    sqlMovimentoIDMOVIMENTO: TIntegerField;
    sqlMovimentoCADASTRO: TDateField;
    sqlMovimentoUSUARIO: TStringField;
    sqlMovimentoTIPO: TStringField;
    sqlMovimentoVALOR: TFMTBCDField;
    cdsMovimentoIDMOVIMENTO: TIntegerField;
    cdsMovimentoCADASTRO: TDateField;
    cdsMovimentoUSUARIO: TStringField;
    cdsMovimentoTIPO: TStringField;
    cdsMovimentoVALOR: TFMTBCDField;
    dtsPesquisaMov: TDataSource;
    cdsPesquisaMov: TClientDataSet;
    dspPesquisaMov: TDataSetProvider;
    sqlPesquisaMov: TSQLDataSet;
    sqlPesquisaMovIDMOVIMENTO: TIntegerField;
    sqlPesquisaMovCADASTRO: TDateField;
    sqlPesquisaMovUSUARIO: TStringField;
    sqlPesquisaMovTIPO: TStringField;
    sqlPesquisaMovVALOR: TFMTBCDField;
    cdsPesquisaMovIDMOVIMENTO: TIntegerField;
    cdsPesquisaMovCADASTRO: TDateField;
    cdsPesquisaMovUSUARIO: TStringField;
    cdsPesquisaMovTIPO: TStringField;
    cdsPesquisaMovVALOR: TFMTBCDField;
    sqlUsuario: TSQLDataSet;
    dspUsuario: TDataSetProvider;
    cdsUsuario: TClientDataSet;
    dtsUsuario: TDataSource;
    cdsUsuarioIDUSUARIO: TIntegerField;
    cdsUsuarioNOME: TStringField;
    cdsUsuarioSENHA: TStringField;
    cdsUsuarioTIPO: TStringField;
    cdsUsuarioCADASTRO: TDateField;
    dtsLogin: TDataSource;
    cdsLogin: TClientDataSet;
    dspLogin: TDataSetProvider;
    sqlLogin: TSQLDataSet;
    cdsLoginIDUSUARIO: TIntegerField;
    cdsLoginNOME: TStringField;
    cdsLoginSENHA: TStringField;
    cdsLoginTIPO: TStringField;
    cdsLoginCADASTRO: TDateField;
    cdsLoginNIVEL: TIntegerField;
    sqlPesquisaUsu: TSQLDataSet;
    dspPesquisaUsu: TDataSetProvider;
    cdsPesquisaUsu: TClientDataSet;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    DateField1: TDateField;
    dtsPesquisaUsu: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
    Usuario,Tipo: String;
  end;

var
  DM: TDM;

implementation

{$R *.dfm}

end.
