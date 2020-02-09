unit U_Cad;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, jpeg, ExtCtrls;

type
  TfrmCad = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    dbcMensalidade: TDBComboBox;
    dbcPago: TDBComboBox;
    Label10: TLabel;
    Label11: TLabel;
    imgNext: TImage;
    imgFechar: TImage;
    procedure imgNextClick(Sender: TObject);
    procedure imgFecharClick(Sender: TObject);
    procedure DBEdit2Click(Sender: TObject);
    procedure DBEdit3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCad: TfrmCad;

implementation

uses U_DM;

{$R *.dfm}

procedure TfrmCad.imgNextClick(Sender: TObject);
begin
  DMLava.TBLava.Post;
  frmCad.Close;
end;

procedure TfrmCad.imgFecharClick(Sender: TObject);
begin
  frmCad.Close;
end;

procedure TfrmCad.DBEdit2Click(Sender: TObject);
begin
  DBEdit2.Text := DateToStr(Date);
end;

procedure TfrmCad.DBEdit3Click(Sender: TObject);
begin
  DBEdit3.Text := TimeToStr(Time);
end;

end.
