unit FFabricaDePedidos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, uIPedido;

type
  TFrmFabricaDePedidos = class(TForm)
    pnlFabricaPedidos: TPanel;
    btnFaturar: TButton;
    btnUsuarioComPermissao: TButton;
    btnUsuarioSemPermissao: TButton;
    btnAprovarPedido: TButton;
    btnAdicionarSaldo: TButton;
    btnReprovarPedido: TButton;
    btnRemoverSaldo: TButton;
    btnEstornarPedido: TButton;
    btnRemoverEstoque: TButton;
    btnRetornarPedido: TButton;
    btnPagarPedido: TButton;
    btnAdicionarEstoque: TButton;
    btnSepararPedido: TButton;
    imgCheckPermissaoUsuario: TImage;
    imgUnCheckPermissaoUsuario: TImage;
    imgCheckPedidoAprovado: TImage;
    imgUncheckPedidoAprovado: TImage;
    imgCheckPedidoPossuiSaldo: TImage;
    imgUncheckPedidoPossuiSaldo: TImage;
    imgCheckPedidoPago: TImage;
    imgUncheckPedidoPago: TImage;
    imgCheckPedidoPossuiEstoque: TImage;
    imgUncheckPedidoPossuiEstoque: TImage;
    imgUncheckPedidoSeparado: TImage;
    imgCheckPedidoSeparado: TImage;
    imgUncheckPedidoFaturado: TImage;
    imgCheckPedidoFaturado: TImage;
    procedure FormCreate(Sender: TObject);
    procedure btnUsuarioSemPermissaoClick(Sender: TObject);
    procedure btnUsuarioComPermissaoClick(Sender: TObject);
    procedure btnAprovarPedidoClick(Sender: TObject);
    procedure btnReprovarPedidoClick(Sender: TObject);
    procedure btnAdicionarSaldoClick(Sender: TObject);
    procedure btnRemoverSaldoClick(Sender: TObject);
    procedure btnPagarPedidoClick(Sender: TObject);
    procedure btnEstornarPedidoClick(Sender: TObject);
    procedure btnAdicionarEstoqueClick(Sender: TObject);
    procedure btnRemoverEstoqueClick(Sender: TObject);
    procedure btnSepararPedidoClick(Sender: TObject);
    procedure btnRetornarPedidoClick(Sender: TObject);
  private
    { Private declarations }
    FPedido: IPedido;

    procedure AfterDefinirPermissaoUsuario;
    procedure AfterDefinirPedidoAprovado;
    procedure AfterDefinirPedidoPossuiSaldo;
    procedure AfterDefinirPedidoPago;
    procedure AfterDefinirPedidoPossuiEstoque;
    procedure AfterDefinirPedidoSeparado;

  public
    { Public declarations }
  end;

var
  FrmFabricaDePedidos: TFrmFabricaDePedidos;

implementation

uses
  UPedido;

{$R *.dfm}

procedure TFrmFabricaDePedidos.AfterDefinirPedidoAprovado;
begin
  imgUncheckPedidoAprovado.Visible := False;
  imgCheckPedidoAprovado.Visible := False;
  if FPedido.TestarPedidoAprovado then
    imgCheckPedidoAprovado.Visible := True
  else
    imgUncheckPedidoAprovado.Visible := True;
end;

procedure TFrmFabricaDePedidos.AfterDefinirPedidoPago;
begin
  imgUncheckPedidoPago.Visible := False;
  imgCheckPedidoPago.Visible := False;
  if FPedido.TestarPedidoPago then
    imgCheckPedidoPago.Visible := True
  else
    imgUncheckPedidoPago.Visible := True;
end;

procedure TFrmFabricaDePedidos.AfterDefinirPedidoPossuiEstoque;
begin
  imgUncheckPedidoPossuiEstoque.Visible := False;
  imgCheckPedidoPossuiEstoque.Visible := False;
  if FPedido.TestarPedidoPossuiEstoque then
    imgCheckPedidoPossuiEstoque.Visible := True
  else
    imgUncheckPedidoPossuiEstoque.Visible := True;
end;

procedure TFrmFabricaDePedidos.AfterDefinirPedidoPossuiSaldo;
begin
  imgUncheckPedidoPossuiSaldo.Visible := False;
  imgCheckPedidoPossuiSaldo.Visible := False;
  if FPedido.TestarPedidoPossuiSaldo then
    imgCheckPedidoPossuiSaldo.Visible := True
  else
    imgUncheckPedidoPossuiSaldo.Visible := True;
end;

procedure TFrmFabricaDePedidos.AfterDefinirPedidoSeparado;
begin
  imgUncheckPedidoSeparado.Visible := False;
  imgCheckPedidoSeparado.Visible := False;
  if FPedido.TestarPedidoSeparado then
    imgCheckPedidoSeparado.Visible := True
  else
    imgUncheckPedidoSeparado.Visible := True;
end;

procedure TFrmFabricaDePedidos.AfterDefinirPermissaoUsuario;
begin
  imgUnCheckPermissaoUsuario.Visible := False;
  imgCheckPermissaoUsuario.Visible := False;
  if FPedido.TestarPermissaoUsuario then
    imgCheckPermissaoUsuario.Visible := True
  else
    imgUnCheckPermissaoUsuario.Visible := True;
end;

procedure TFrmFabricaDePedidos.btnAdicionarEstoqueClick(Sender: TObject);
begin
  FPedido.DefinirPedidoPossuiEstoque(True);
end;

procedure TFrmFabricaDePedidos.btnRemoverEstoqueClick(Sender: TObject);
begin
  FPedido.DefinirPedidoPossuiEstoque(False);
end;

procedure TFrmFabricaDePedidos.btnAdicionarSaldoClick(Sender: TObject);
begin
  FPedido.DefinirPedidoPossuiSaldo(True);
end;

procedure TFrmFabricaDePedidos.btnRemoverSaldoClick(Sender: TObject);
begin
  FPedido.DefinirPedidoPossuiSaldo(False);
end;

procedure TFrmFabricaDePedidos.btnAprovarPedidoClick(Sender: TObject);
begin
  FPedido.DefinirPedidoAprovado(True);
end;

procedure TFrmFabricaDePedidos.btnReprovarPedidoClick(Sender: TObject);
begin
  FPedido.DefinirPedidoAprovado(False);
end;

procedure TFrmFabricaDePedidos.btnSepararPedidoClick(Sender: TObject);
begin
  FPedido.DefinirPedidoSeparado(True);
end;

procedure TFrmFabricaDePedidos.btnRetornarPedidoClick(Sender: TObject);
begin
  FPedido.DefinirPedidoSeparado(False);
end;

procedure TFrmFabricaDePedidos.btnPagarPedidoClick(Sender: TObject);
begin
  FPedido.DefinirPedidoPago(True);
end;

procedure TFrmFabricaDePedidos.btnEstornarPedidoClick(Sender: TObject);
begin
  FPedido.DefinirPedidoPago(False);
end;

procedure TFrmFabricaDePedidos.btnUsuarioComPermissaoClick(Sender: TObject);
begin
  FPedido.DefinirPermissaoUsuario(True);
end;

procedure TFrmFabricaDePedidos.btnUsuarioSemPermissaoClick(Sender: TObject);
begin
  FPedido.DefinirPermissaoUsuario(False);
end;

procedure TFrmFabricaDePedidos.FormCreate(Sender: TObject);
begin
  FPedido := TPedido.New;
  FPedido.SetAfterDefinirPermissaoUsuario(
    AfterDefinirPermissaoUsuario
  );
  FPedido.SetAfterDefinirPedidoAprovado(
    AfterDefinirPedidoAprovado
  );
  FPedido.SetAfterDefinirPedidoPossuiSaldo(
    AfterDefinirPedidoPossuiSaldo
  );
  FPedido.SetAfterDefinirPedidoPago(
    AfterDefinirPedidoPago
  );
  FPedido.SetAfterDefinirPedidoPossuiEstoque(
    AfterDefinirPedidoPossuiEstoque
  );
  FPedido.SetAfterDefinirPedidoSeparado(
    AfterDefinirPedidoSeparado
  );
end;

end.
