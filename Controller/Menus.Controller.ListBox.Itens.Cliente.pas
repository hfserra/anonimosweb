unit Menus.Controller.ListBox.Itens.Cliente;

interface

uses
  Menus.Controller.Interfaces, FMX.Types;

type
  TControllerListBoxItensCliente = class(TInterfacedObject, iControllerListBoxItemForm)
  private
  public
    constructor Create;
    destructor Destroy; override;
    class function New : iControllerListBoxItemForm;
    function Show : TFMXObject;
  end;

implementation

{ TControllerListBoxItensCliente }

uses Menus.Controller.ListBox.Itens.Factory;

constructor TControllerListBoxItensCliente.Create;
begin

end;

destructor TControllerListBoxItensCliente.Destroy;
begin

  inherited;
end;

class function TControllerListBoxItensCliente.New: iControllerListBoxItemForm;
begin
  Result := Self.Create;
end;

function TControllerListBoxItensCliente.Show: TFMXObject;
begin
  Result := TControllerListBoxItensFactory.New
               .Default
               .Name('btnCliente')
               .Text('Clientes')
               .Item;
end;

end.
