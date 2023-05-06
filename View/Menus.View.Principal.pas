unit Menus.View.Principal;

interface

uses
  System.SysUtils,
  System.Types,
  System.UITypes,
  System.Classes,
  System.Variants,
  FMX.Types,
  FMX.Controls,
  FMX.Forms,
  FMX.Graphics,
  FMX.Dialogs,
  FMX.Layouts;

type
  TfPrincipal = class(TForm)
    sidebar: TLayout;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fPrincipal: TfPrincipal;

implementation

{$R *.fmx}

uses
  Menus.Controller.ListBox.Factory;

procedure TfPrincipal.FormCreate(Sender: TObject);
begin
  TControllerListBoxFactory.New.Default(sidebar).Exibir;
  TControllerListBoxFactory.New.Principal(sidebar).Exibir;
end;

end.
