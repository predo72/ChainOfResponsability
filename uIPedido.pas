unit uIPedido;

interface

type
  TAfterEvent = procedure of object;

  IPedido = interface
    ['{CB21756B-F167-4635-A327-13E09A49FCEF}']
    procedure SetAfterDefinirPedidoAprovado(const Value: TAfterEvent);
    procedure SetAfterDefinirPedidoPago(const Value: TAfterEvent);
    procedure SetAfterDefinirPedidoPossuiEstoque(const Value: TAfterEvent);
    procedure SetAfterDefinirPedidoPossuiSaldo(const Value: TAfterEvent);
    procedure SetAfterDefinirPedidoSeparado(const Value: TAfterEvent);
    procedure SetAfterDefinirPermissaoUsuario(const Value: TAfterEvent);

    function DefinirPermissaoUsuario(APermissao: Boolean): IPedido;
    function DefinirPedidoAprovado(AAprovado: Boolean): IPedido;
    function DefinirPedidoPossuiSaldo(APossuiSaldo: Boolean): IPedido;
    function DefinirPedidoPago(APedidoPago: Boolean): IPedido;
    function DefinirPedidoPossuiEstoque(APossuiEstoque: Boolean): IPedido;
    function DefinirPedidoSeparado(APedidoSeparado: Boolean): IPedido;

    function TestarPermissaoUsuario: Boolean;
    function TestarPedidoAprovado: Boolean;
    function TestarPedidoPossuiSaldo: Boolean;
    function TestarPedidoPago: Boolean;
    function TestarPedidoPossuiEstoque: Boolean;
    function TestarPedidoSeparado: Boolean;
  end;

implementation

end.
