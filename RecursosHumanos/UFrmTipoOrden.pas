unit UFrmTipoOrden;

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
  cxNavigator, DB, cxDBData, dxBarBuiltInMenu, dxSkinsdxBarPainter,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, dxBar, dxRibbon,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, cxSplitter, dxLayoutContainer,
  dxLayoutControl, cxPC, ExtCtrls, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, cxContainer, dxLayoutcxEditAdapters, cxDBEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit;

type
  TFrmTipoOrden = class(TFrmMiniCatalogo)
    cxColTipoInstalacion: TcxGridDBColumn;
    cxColTipoOrden: TcxGridDBColumn;
    cbbTipo: TcxDBComboBox;
    lyTipo: TdxLayoutItem;
    cxTextTipoOrden: TcxDBTextEdit;
    lyTipoOrden: TdxLayoutItem;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTipoOrden: TFrmTipoOrden;

implementation

{$R *.dfm}

procedure TFrmTipoOrden.FormCreate(Sender: TObject);
begin
  inherited;
  QueryName := 'mt_tipoorden';
  PKField := 'Idtipo';
  CampoMostrar := 'tipoorden';

  pCondiciones := '~(IdTipo)&(TipoOrden)';
  pCampos := 'IdTipo,TipoOrden';
end;

end.
