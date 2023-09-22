unit uPedido;

interface

uses
  uIPedido;

type
  TPedido = class(TInterfacedObject, IPedido)
  private
    FPermissaoUsuario: Boolean;
    FPedidoAprovado: Boolean;
    FPedidoPossuiSaldo: Boolean;
    FPedidoPago: Boolean;
    FPedidoPossuiEstoque: Boolean;
    FPedidoSeparado: Boolean;

    FAfterDefinirPermissaoUsuario: TAfterEvent;
    FAfterDefinirPedidoAprovado: TAfterEvent;
    FAfterDefinirPedidoPossuiSaldo: TAfterEvent;
    FAfterDefinirPedidoPago: TAfterEvent;
    FAfterDefinirPedidoPossuiEstoque: TAfterEvent;
    FAfterDefinirPedidoSeparado: TAfterEvent;
  public
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

    class function New: IPedido;
    constructor Create;
    destructor Destroy; override;

    property AfterDefinirPermissaoUsuario: TAfterEvent read FAfterDefinirPermissaoUsuario write SetAfterDefinirPermissaoUsuario;
    property AfterDefinirPedidoAprovado: TAfterEvent read FAfterDefinirPedidoAprovado write SetAfterDefinirPedidoAprovado;
    property AfterDefinirPedidoPossuiSaldo: TAfterEvent read FAfterDefinirPedidoPossuiSaldo write SetAfterDefinirPedidoPossuiSaldo;
    property AfterDefinirPedidoPago: TAfterEvent read FAfterDefinirPedidoPago write SetAfterDefinirPedidoPago;
    property AfterDefinirPedidoPossuiEstoque: TAfterEvent read FAfterDefinirPedidoPossuiEstoque write SetAfterDefinirPedidoPossuiEstoque;
    property AfterDefinirPedidoSeparado: TAfterEvent read FAfterDefinirPedidoSeparado write SetAfterDefinirPedidoSeparado;
  end;

implementation

{ TPedido }

constructor TPedido.Create;
begin
  Self.FPermissaoUsuario := False;
  Self.FPedidoAprovado := False;
  Self.FPedidoPossuiSaldo := False;
  Self.FPedidoPago := False;
  Self.FPedidoPossuiEstoque := False;
  Self.FPedidoSeparado := False;
end;

function TPedido.DefinirPedidoAprovado(AAprovado: Boolean): IPedido;
begin
  Result := Self;
  FPedidoAprovado := AAprovado;
  if Assigned(AfterDefinirPedidoAprovado) then
    AfterDefinirPedidoAprovado;
end;

function TPedido.DefinirPedidoPago(APedidoPago: Boolean): IPedido;
begin
  Result := Self;
  FPedidoPago := APedidoPago;
  if Assigned(AfterDefinirPedidoPago) then
    AfterDefinirPedidoPago;
end;

function TPedido.DefinirPedidoPossuiEstoque(APossuiEstoque: Boolean): IPedido;
begin
  Result := Self;
  FPedidoPossuiEstoque := APossuiEstoque;
  if Assigned(AfterDefinirPedidoPossuiEstoque) then
    AfterDefinirPedidoPossuiEstoque;
end;

function TPedido.DefinirPedidoPossuiSaldo(APossuiSaldo: Boolean): IPedido;
begin
  Result := Self;
  FPedidoPossuiSaldo := APossuiSaldo;
  if Assigned(AfterDefinirPedidoPossuiSaldo) then
    AfterDefinirPedidoPossuiSaldo;
end;

function TPedido.DefinirPedidoSeparado(APedidoSeparado: Boolean): IPedido;
begin
  Result := Self;
  FPedidoSeparado := APedidoSeparado;
  if Assigned(AfterDefinirPedidoSeparado) then
    AfterDefinirPedidoSeparado;
end;

function TPedido.DefinirPermissaoUsuario(APermissao: Boolean): IPedido;
begin
  Result := Self;
  FPermissaoUsuario := APermissao;
  if Assigned(AfterDefinirPermissaoUsuario) then
    AfterDefinirPermissaoUsuario;
end;

destructor TPedido.Destroy;
begin

  inherited;
end;

class function TPedido.New: IPedido;
begin
  Result := Self.Create;
end;

procedure TPedido.SetAfterDefinirPedidoAprovado(const Value: TAfterEvent);
begin
  FAfterDefinirPedidoAprovado := Value;
end;

procedure TPedido.SetAfterDefinirPedidoPago(const Value: TAfterEvent);
begin
  FAfterDefinirPedidoPago := Value;
end;

procedure TPedido.SetAfterDefinirPedidoPossuiEstoque(const Value: TAfterEvent);
begin
  FAfterDefinirPedidoPossuiEstoque := Value;
end;

procedure TPedido.SetAfterDefinirPedidoPossuiSaldo(const Value: TAfterEvent);
begin
  FAfterDefinirPedidoPossuiSaldo := Value;
end;

procedure TPedido.SetAfterDefinirPedidoSeparado(const Value: TAfterEvent);
begin
  FAfterDefinirPedidoSeparado := Value;
end;

procedure TPedido.SetAfterDefinirPermissaoUsuario(const Value: TAfterEvent);
begin
  FAfterDefinirPermissaoUsuario := Value;
end;

function TPedido.TestarPedidoAprovado: Boolean;
begin
  Result := FPedidoAprovado;
end;

function TPedido.TestarPedidoPago: Boolean;
begin
  Result := FPedidoPago;
end;

function TPedido.TestarPedidoPossuiEstoque: Boolean;
begin
  Result := FPedidoPossuiEstoque;
end;

function TPedido.TestarPedidoPossuiSaldo: Boolean;
begin
  Result := FPedidoPossuiSaldo;
end;

function TPedido.TestarPedidoSeparado: Boolean;
begin
  Result := FPedidoSeparado;
end;

function TPedido.TestarPermissaoUsuario: Boolean;
begin
  Result := FPermissaoUsuario;
end;

end.
