unit U_DM;

interface

uses
  SysUtils, Classes, DBTables, DB;

type
  TDMLava = class(TDataModule)
    DSCadastrar: TDataSource;
    DSConsultar: TDataSource;
    TBLava: TTable;
    QryLava: TQuery;
    TBLavaCodLava: TIntegerField;
    TBLavaNome: TStringField;
    TBLavaData: TStringField;
    TBLavaHora: TStringField;
    TBLavaPlaca: TStringField;
    TBLavaMensalidade: TStringField;
    TBLavaLavagem: TStringField;
    TBLavaTelefone: TStringField;
    TBLavaPago: TStringField;
    TBLavaValor: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMLava: TDMLava;

implementation

{$R *.dfm}

end.
