unit U_Menu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls, Grids, DBGrids;

type
  TfrmMenu = class(TForm)
    imgBaner: TImage;
    cmbEscolha: TComboBox;
    edtBusca: TEdit;
    imgNovo: TImage;
    imgFechar: TImage;
    dbgBusca: TDBGrid;
    procedure imgNovoClick(Sender: TObject);
    procedure imgFecharClick(Sender: TObject);
    procedure edtBuscaChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMenu: TfrmMenu;

implementation

uses U_Cad, U_DM;

{$R *.dfm}

procedure TfrmMenu.imgNovoClick(Sender: TObject);
begin
  DMLava.TBLava.Insert;
  frmCad.ShowModal;
end;

procedure TfrmMenu.imgFecharClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfrmMenu.edtBuscaChange(Sender: TObject);
begin
  if (edtBusca.Text <> '') then
  begin
  edtBusca.Color :=  clAqua;
  dbgBusca.Visible := True;
    if (cmbEscolha.ItemIndex = 0) then
    begin
    with DMLava.QryLava do
      begin
        Close;
        sql.Clear;
        sql.Add('Select * from dbo.TB_LavaRapido');
        sql.Add('where Nome like '+QuotedStr(edtBusca.Text + '%'));
        Open;
      end;
    end;
    if (cmbEscolha.ItemIndex = 1) then
    begin
    with DMLava.QryLava do
      begin
        Close;
        sql.Clear;
        sql.Add('Select * from dbo.TB_LavaRapido');
        sql.Add('where Placa like '+QuotedStr(edtBusca.Text + '%'));
        Open;
      end;
    end;
    if (cmbEscolha.ItemIndex = 2) then
    begin
    with DMLava.QryLava do
      begin
        Close;
        sql.Clear;
        sql.Add('Select * from dbo.TB_LavaRapido');
        sql.Add('where Telefone like '+QuotedStr(edtBusca.Text + '%'));
        Open;
      end;
    end;
    end;
    if (edtBusca.Text = '') then
    begin
      dbgBusca.Visible := False;
      edtBusca.Color := clWhite;
    end;
end;

end.
