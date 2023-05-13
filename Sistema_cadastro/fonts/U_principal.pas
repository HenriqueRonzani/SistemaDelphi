unit U_principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Menus, Vcl.ComCtrls;

type
  Tfrm_principal = class(TForm)
    StatusBar1: TStatusBar;
    MainMenu1: TMainMenu;
    pnl_topo: TPanel;
    Timer1: TTimer;
    Arquivo1: TMenuItem;
    Abrir1: TMenuItem;
    Fechar1: TMenuItem;
    Salvar1: TMenuItem;
    Cadastro1: TMenuItem;
    Clientes1: TMenuItem;
    procedure Timer1Timer(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_principal: Tfrm_principal;

implementation

{$R *.dfm}

uses U_data, U_clientes;

procedure Tfrm_principal.Clientes1Click(Sender: TObject);
begin
frm_cad_clientes.showmodal;
end;

procedure Tfrm_principal.Timer1Timer(Sender: TObject);
begin
statusbar1.Panels[2].Text:= uppercase(FormatDateTime('dddd," "dd "de" mmmm "de" yyyy',now));
statusbar1.Panels[3].Text:= FormatDateTime('hh:mm:ss',now);
end;

end.
