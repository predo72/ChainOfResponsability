program Project1;

uses
  Vcl.Forms,
  FFabricaDePedidos in 'FFabricaDePedidos.pas' {FrmFabricaDePedidos},
  uIPedido in 'uIPedido.pas',
  uPedido in 'uPedido.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmFabricaDePedidos, FrmFabricaDePedidos);
  Application.Run;
end.
