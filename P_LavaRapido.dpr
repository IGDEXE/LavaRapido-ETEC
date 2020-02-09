program P_LavaRapido;

uses
  Forms,
  U_Menu in 'U_Menu.pas' {frmMenu},
  U_DM in 'U_DM.pas' {DMLava: TDataModule},
  U_Cad in 'U_Cad.pas' {frmCad};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmMenu, frmMenu);
  Application.CreateForm(TDMLava, DMLava);
  Application.CreateForm(TfrmCad, frmCad);
  Application.Run;
end.
