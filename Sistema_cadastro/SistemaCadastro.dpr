program SistemaCadastro;

uses
  Vcl.Forms,
  U_principal in 'fonts\U_principal.pas' {frm_principal},
  U_data in 'fonts\U_data.pas' {dm: TDataModule},
  U_clientes in 'U_clientes.pas' {frm_cad_clientes};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrm_principal, frm_principal);
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(Tfrm_cad_clientes, frm_cad_clientes);
  Application.Run;
end.
