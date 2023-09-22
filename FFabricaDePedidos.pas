unit FFabricaDePedidos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls;

type
  TFrmFabricaDePedidos = class(TForm)
    pnlFabricaPedidos: TPanel;
    btnFaturar: TButton;
    btnUsuarioSemPermissao: TButton;
    btnUsuarioComPermissao: TButton;
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
    imgCheckAprovado: TImage;
    imgUncheckAprovado: TImage;
    imgCheckSaldoPedido: TImage;
    imgUncheckSaldoPedido: TImage;
    imgCheckPedidoPago: TImage;
    imgUncheckPedidoPago: TImage;
    imgCheckEstoquePedido: TImage;
    imgUncheckEstoquePedido: TImage;
    imgUncheckPedidoSeparado: TImage;
    imgCheckPedidoSeparado: TImage;
    imgUncheckPedidoFaturado: TImage;
    imgCheckPedidoFaturado: TImage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFabricaDePedidos: TFrmFabricaDePedidos;

implementation

{$R *.dfm}

end.
