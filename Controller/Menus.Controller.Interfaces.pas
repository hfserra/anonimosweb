unit Menus.Controller.Interfaces;

interface

uses
  System.Classes, FMX.Types;

type
  iControllerListBoxItensDefault = interface;
  iControllerListBoxDefault = interface;

  iControllerListBoxItemForm = interface
    ['{42630612-7BC9-42B5-915D-FA8F63B97BD1}']
    function Show : TFMXObject;
  end;

  iControllerListBoxMenu = interface
    ['{3EE9DC0C-A95C-4052-A382-A9FD23DC096E}']
    procedure Exibir;
  end;

  iControllerListBoxItensFactory = interface
    ['{68190072-A620-428A-920F-4EBF4E9F24C8}']
    function Default : iControllerListBoxItensDefault;
    function Produto : iControllerListBoxItemForm;
    function Cliente : iControllerListBoxItemForm;
  end;

  iControllerListBoxFactory = interface
    ['{97F3CC2A-F176-4F69-BA14-5C6450D1732F}']
    function Default(Container : TComponent) : iControllerListBoxDefault;
    function Principal(Container : TComponent) : iControllerListBoxMenu;
  end;

  iControllerListBoxItensDefault = interface
    ['{B7EF40C0-9AC3-417A-8AA5-5A3F4386D774}']
    function Name(Value : String) : iControllerListBoxItensDefault;
    function Text(Value : String) : iControllerListBoxItensDefault;
    function StyleLookup(Value : String) : iControllerListBoxItensDefault;
    function onClick(Value : TNotifyEvent) : iControllerListBoxItensDefault;
    function Item : TFMXObject;
  end;

  iControllerListBoxDefault = interface
    ['{88DC0F3D-44E7-4CF9-9166-A1740207D533}']
    function Name(Value : String) : iControllerListBoxDefault;
    function Align(Value : TAlignLayout) : iControllerListBoxDefault;
    function ItemHeight(Value : Integer) : iControllerListBoxDefault;
    function AddItem(Value : TFMXObject) : iControllerListBoxDefault;
    function Lista : TFMXObject;
    procedure Exibir;
  end;

implementation

end.
