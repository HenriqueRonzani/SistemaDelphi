unit U_clientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Data.DB, Vcl.WinXPickers,
  Vcl.Grids, Vcl.DBGrids;

type
  Tfrm_cad_clientes = class(TForm)
    PageControl1: TPageControl;
    tb_cadastro: TTabSheet;
    tb_consulta: TTabSheet;
    txt_nome: TDBEdit;
    txt_id: TDBEdit;
    txt_endereco: TDBEdit;
    txt_bairro: TDBEdit;
    Image1: TImage;
    txt_cidade: TDBEdit;
    txt_cep: TDBEdit;
    txt_cfp: TDBEdit;
    txt_telefone: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    txt_date: TDBEdit;
    Label5: TLabel;
    txt_email: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    txt_cad: TDBEdit;
    Label12: TLabel;
    btn_inserir: TButton;
    btn_editar: TButton;
    btn_excluir: TButton;
    btn_salvar: TButton;
    btn_cancelar: TButton;
    comb_uf: TDBComboBox;
    btn_fechar: TButton;
    comb_sit: TDBComboBox;
    Image2: TImage;
    btn_loc: TButton;
    btn_cadastro: TButton;
    DBGrid1: TDBGrid;
    btn_pesquisar: TButton;
    btn_imprimir: TButton;
    btn_buscatudo: TButton;
    lb_buscar: TLabel;
    txt_buscar: TEdit;
    data1: TDatePicker;
    rg_opcoes: TRadioGroup;
    procedure btn_inserirClick(Sender: TObject);
    procedure btn_editarClick(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
    procedure btn_excluirClick(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
    procedure btn_fecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn_locClick(Sender: TObject);
    procedure btn_cadastroClick(Sender: TObject);
  private
    { Private declarations }
    procedure ConfigBotoes;
  public
    { Public declarations }
  end;

var
  frm_cad_clientes: Tfrm_cad_clientes;

implementation

{$R *.dfm}

uses U_data;

{ Tfrm_cad_clientes }

procedure Tfrm_cad_clientes.btn_cadastroClick(Sender: TObject);
begin
pagecontrol1.TabIndex:=0;
tb_consulta.TabVisible:= false;
tb_cadastro.TabVisible:= true;
end;

procedure Tfrm_cad_clientes.btn_cancelarClick(Sender: TObject);
begin
dm.tb_clientes.Cancel;
ConfigBotoes;
end;

procedure Tfrm_cad_clientes.btn_editarClick(Sender: TObject);
begin
dm.tb_clientes.Edit;
ConfigBotoes;
end;

procedure Tfrm_cad_clientes.btn_excluirClick(Sender: TObject);
begin
case application.MessageBox('Você deseja excluir cadastro?','Excluisão de Cadastro',mb_yesno+mb_iconquestion) of

  IDYES:
  begin
    dm.tb_clientes.Delete;
    showmessage('Cadastro foi excluído com sucesso');
  end;
  IDNO: exit;
end;
ConfigBotoes;
end;


procedure Tfrm_cad_clientes.btn_fecharClick(Sender: TObject);
begin
if dm.tb_clientes.State in [dsInsert,dsEdit] then
  begin
    showmessage('Salve ou cancele antes de fechar');
  end else

    begin
      close;
    end;
end;

procedure Tfrm_cad_clientes.btn_inserirClick(Sender: TObject);
begin
dm.tb_clientes.Active:=true;
dm.tb_clientes.Insert;

ConfigBotoes;

dm.tb_clientesdata_cad.Value:= date;
txt_nome.SetFocus;

end;

procedure Tfrm_cad_clientes.btn_locClick(Sender: TObject);
begin
pagecontrol1.TabIndex:=1;
tb_consulta.TabVisible:= true;
tb_cadastro.TabVisible:= false;
end;

procedure Tfrm_cad_clientes.btn_salvarClick(Sender: TObject);
begin
dm.tb_clientes.Post;
showmessage('Cadastro salvo com sucesso!');
ConfigBotoes;
end;

procedure Tfrm_cad_clientes.ConfigBotoes;
begin
btn_inserir.enabled:= dm.tb_clientes.State in [dsbrowse];
btn_editar.enabled:= dm.tb_clientes.State in [dsbrowse];
btn_excluir.enabled:= dm.tb_clientes.State in [dsbrowse];

btn_salvar.enabled:= dm.tb_clientes.State in [dsinsert,dsedit];
btn_cancelar.enabled:= dm.tb_clientes.State in [dsinsert,dsedit];
end;

procedure Tfrm_cad_clientes.FormCreate(Sender: TObject);
begin
pagecontrol1.TabIndex:=0;
tb_consulta.TabVisible:=false;
btn_salvar.enabled:=false;
end;

end.
