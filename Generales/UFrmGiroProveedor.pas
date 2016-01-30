unit UFrmGiroProveedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmMiniCatalogo, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxRibbonSkins, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinsdxRibbonPainter, dxRibbonCustomizationForm, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, DB, cxDBData, dxBarBuiltInMenu, dxSkinsdxBarPainter, dxBar,
  dxRibbon, ZAbstractRODataset, ZAbstractDataset, ZDataset, dxLayoutContainer,
  dxLayoutControl, cxPC, ExtCtrls, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxContainer, dxLayoutcxEditAdapters, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

type
  TFrmGiroProveedor = class(TFrmMiniCatalogo)
    cbbGiro: TcxDBLookupComboBox;
    dxLYCDatosItem2: TdxLayoutItem;
    cbbProveedorC: TcxDBLookupComboBox;
    dxLYCDatosItem1: TdxLayoutItem;
    cxColumnGiro: TcxGridDBColumn;
    cxColumnProveedorC: TcxGridDBColumn;
    zGiro: TZQuery;
    zProveedor: TZQuery;
    dsProveedor: TDataSource;
    dsGiro: TDataSource;
    procedure dxButtonNuevoClick(Sender: TObject);
    procedure dxBButtonEditarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmGiroProveedor: TFrmGiroProveedor;

implementation

{$R *.dfm}

procedure TFrmGiroProveedor.dxBButtonEditarClick(Sender: TObject);
begin
  inherited;
if cbbGiro.CanFocus then
    cbbGiro.SetFocus;
end;

procedure TFrmGiroProveedor.dxButtonNuevoClick(Sender: TObject);
begin
  inherited;
if cbbGiro.CanFocus then
    cbbGiro.SetFocus;
end;

procedure TFrmGiroProveedor.FormCreate(Sender: TObject);
begin
  inherited;
    QueryName := 'master_giroproveedor';
   PKField := 'IdGiroProveedor';
    CampoMostrar :='Giro';
end;

procedure TFrmGiroProveedor.FormShow(Sender: TObject);
begin
  inherited;


    zProveedor.Active:=False;
    zProveedor.SQL.Text:= 'Select Concat(NomRepresentante," ", APRepresentante ," ", AMRepresentante) as NombreCompletoRepresentante From master_proveedorcliente';
    zProveedor.Open;

    zGiro.Active:=False;
    zGiro.SQL.Text:= 'select * from master_giro';
    zGiro.Open;
end;

end.
