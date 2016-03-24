unit UFrmPais;

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
  cxContainer, dxLayoutcxEditAdapters, cxTextEdit, cxDBEdit, cxImage, cxSplitter;

type
  TFrmPais = class(TFrmMiniCatalogo)
    cxGridDatosColumn1: TcxGridDBColumn;
    cxColumnGridDatosColumn2: TcxGridDBColumn;
    cxColumnGridDatosColumn3: TcxGridDBColumn;
    cxtextCodigo: TcxDBTextEdit;
    dxLYCDatosItem1: TdxLayoutItem;
    cxtextPais: TcxDBTextEdit;
    dxLYCDatosItem2: TdxLayoutItem;
    imgPaisBandera: TcxDBImage;
    dxLYCDatosItem3: TdxLayoutItem;
    cxColumnImagen: TcxGridDBColumn;
    dxLYCDatosGroup1: TdxLayoutAutoCreatedGroup;
    procedure dxBButtonEditarClick(Sender: TObject);
    procedure dxButtonNuevoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure imgPaisBanderaDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPais: TFrmPais;

implementation

{$R *.dfm}

procedure TFrmPais.dxBButtonEditarClick(Sender: TObject);
begin
  inherited;
        if cxtextCodigo.CanFocus then
        cxtextCodigo.SetFocus;
end;

procedure TFrmPais.dxButtonNuevoClick(Sender: TObject);
begin
  inherited;
  if cxtextCodigo.CanFocus then
    cxtextCodigo.SetFocus;
end;

procedure TFrmPais.FormCreate(Sender: TObject);
begin
  inherited;
  QueryName := 'master_pais';
  PKField := 'IdPais';
  CampoMostrar :='Pais';
  campoImagen := 'ImagenP';
  //Validar Registros duplicados
  pCondiciones := '~(IdPais)&(Codigo)';
  pCampos := 'idPais,Codigo';
end;

procedure TFrmPais.imgPaisBanderaDblClick(Sender: TObject);
begin
  inherited;
  TcxImage(imgPaisBandera).LoadFromFile;
end;

End.

