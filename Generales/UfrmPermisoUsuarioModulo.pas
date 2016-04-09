unit UfrmPermisoUsuarioModulo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, DB, cxDBData, Menus, StdCtrls,
  cxButtons, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, ExtCtrls, cxContainer, cxListBox,
  uConection, ZAbstractRODataset, ZAbstractDataset, ZDataset, cxDropDownEdit, ActnList,
  ComCtrls, cxListView, umsgBox, dxSkinsdxBarPainter, dxBar, cxLabel;

type
  TActionObj = class
    Id: integer;
    Name: String;
    Caption: String;
  end;


  TFrmPermisousuarioModulo = class(TForm)
    pnlOpciones: TPanel;
    cxGridPermisos: TcxGridDBTableView;
    cxLvl1: TcxGridLevel;
    CxGrdPermisos: TcxGrid;
    btnAgregar: TcxButton;
    btnQuitar: TcxButton;
    cxColForm: TcxGridDBColumn;
    cxColCaption: TcxGridDBColumn;
    cxColInsertar: TcxGridDBColumn;
    cxColEditar: TcxGridDBColumn;
    cxColEliminar: TcxGridDBColumn;
    zPermisos: TZQuery;
    dsPermisos: TDataSource;
    lstModulos: TcxListView;
    dxBarManager1: TdxBarManager;
    dxbrManager1Bar: TdxBar;
    btnGuardar: TdxBarLargeButton;
    btnCancelar: TdxBarLargeButton;
    pnl1: TPanel;
    LblLeyenda: TcxLabel;
    procedure FormShow(Sender: TObject);
    procedure btnAgregarClick(Sender: TObject);
    procedure btnQuitarClick(Sender: TObject);
    procedure btnGuardarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    IdPerfil: String;
    NombrePerfil: String;
    { Public declarations }
  end;

var
  FrmPermisousuarioModulo: TFrmPermisousuarioModulo;

implementation

uses
  UFrmInicio;

{$R *.dfm}

procedure TFrmPermisousuarioModulo.btnAgregarClick(Sender: TObject);
begin
  if lstModulos.SelCount > 0 then
  begin

    if not zPermisos.Locate('NombreForm', TActionObj(lstModulos.Items.Item[lstModulos.ItemIndex].Data).Name, [loCaseInsensitive]) then
    begin
      zPermisos.Append;
      zPermisos.FieldByName('IdModulo').AsInteger := 0;
      zPermisos.FieldByName('NombreForm').AsString := TActionObj(lstModulos.Items.Item[lstModulos.ItemIndex].Data).Name;
      zPermisos.FieldByName('Caption').AsString := TActionObj(lstModulos.Items.Item[lstModulos.ItemIndex].Data).Caption;
      zPermisos.FieldByName('Acceder').AsString := 'Si';
      zPermisos.FieldByName('Insertar').AsString := 'Si';
      zPermisos.FieldByName('Editar').AsString := 'Si';
      zPermisos.FieldByName('Eliminar').AsString := 'Si';
      zPermisos.FieldByName('IdPerfil').AsString := IdPerfil;
      zPermisos.Post;
    end;
  end;
end;

procedure TFrmPermisousuarioModulo.btnCancelarClick(Sender: TObject);
begin
 if zPermisos.Connection.InTransaction then
   zPermisos.Connection.Rollback;

 Close;
end;

procedure TFrmPermisousuarioModulo.btnGuardarClick(Sender: TObject);
begin
  if zPermisos.Eof then
    zPermisos.First
  else
    zPermisos.Next;

  if zPermisos.Connection.InTransaction then
    zPermisos.Connection.Commit;

  zPermisos.Connection.StartTransaction;
end;

procedure TFrmPermisousuarioModulo.btnQuitarClick(Sender: TObject);
begin
  if zPermisos.Active and (zPermisos.RecordCount > 0) then
    zPermisos.Delete;
end;

procedure TFrmPermisousuarioModulo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if zPermisos.Connection.InTransaction then
   zPermisos.Connection.Rollback;
end;

procedure TFrmPermisousuarioModulo.FormShow(Sender: TObject);
var
  i: integer;
  al: TActionList;
  ao: TActionObj;
begin
  AsignarSQL(zPermisos, 'master_modulos', pUpdate);
  FiltrarDataset(zPermisos, 'IdPerfil', [IDperfil]);
  zPermisos.Open;

  if assigned(FrmInicio.acListMenu) then
  begin
    al := FrmInicio.acListMenu;

    for i := 0 to al.ActionCount -1 do
    begin
      ao := TActionObj.Create;
      ao.Name := al.Actions[i].Name;
      ao.Caption := TAction(al.Actions[i]).Caption ;
      LstModulos.AddItem(ao.Caption,ao);
      lstModulos.Items.Item[lstModulos.Items.Count-1].ImageIndex := TAction(al.Actions[i]).ImageIndex;
    end;
  end;

  LblLeyenda.Caption := 'Listado de permisos para [' + NombrePerfil + ']';
  zPermisos.Connection.StartTransaction;
end;

end.
