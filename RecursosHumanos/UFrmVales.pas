unit UFrmVales;

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
  cxContainer, dxLayoutcxEditAdapters, cxDropDownEdit, cxDBEdit, cxMaskEdit,
  cxCalendar, cxTextEdit, cxSpinEdit, cxSplitter, DateUtils, UConection;

type
  TFrmVales = class(TFrmMiniCatalogo)
    cxColCodigo: TcxGridDBColumn;
    cxColNoVale: TcxGridDBColumn;
    cxColEstatus: TcxGridDBColumn;
    cxTextFolio: TcxDBTextEdit;
    lyFolio: TdxLayoutItem;
    cxTextNoVale: TcxDBTextEdit;
    lyNoVale: TdxLayoutItem;
    cxDateVale: TcxDBDateEdit;
    lyFechaVale: TdxLayoutItem;
    cbbEstatus: TcxDBComboBox;
    lyEstatus: TdxLayoutItem;
    btnAbrir: TdxBarLargeButton;
    btnCerrar: TdxBarLargeButton;
    btnGenerarAnual: TdxBarLargeButton;
    cxDateInicio: TcxDBDateEdit;
    lyInicio: TdxLayoutItem;
    cxDateTermino: TcxDBDateEdit;
    lyTermino: TdxLayoutItem;
    cxSpinNoSemana: TcxDBSpinEdit;
    lyNoSemana: TdxLayoutItem;
    cxLvlFolios: TcxGridLevel;
    cxGridFolios: TcxGridDBTableView;
    dxLYCDatosGroup1: TdxLayoutAutoCreatedGroup;
    dxLYCDatosGroup2: TdxLayoutAutoCreatedGroup;
    cxColNoSemana: TcxGridDBColumn;
    cxColInicio: TcxGridDBColumn;
    cxColTermino: TcxGridDBColumn;
    zFolios: TZQuery;
    dsFolios: TDataSource;
    cxColFecha: TcxGridDBColumn;
    cxColFolio: TcxGridDBColumn;
    cxColExpediente: TcxGridDBColumn;
    cxColTipo: TcxGridDBColumn;
    cxColestatus2: TcxGridDBColumn;
    cxColPago: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure dxButtonGuardarClick(Sender: TObject);
    procedure cxDateValePropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dxButtonActualizarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmVales: TFrmVales;

implementation

{$R *.dfm}

uses
  ufrmMaterialesxFolios;

procedure TFrmVales.cxDateValePropertiesChange(Sender: TObject);
begin
  inherited;
  cxSpinNoSemana.Value := WeekOfTheYear(cxDateVale.Date);
  cxDateInicio.date := StartOfTheWeek(cxDateVale.Date);
  cxDateTermino.Date := EndOfTheWeek(cxDateVale.Date);
end;

procedure TFrmVales.dxButtonActualizarClick(Sender: TObject);
var cursor: TCursor;
begin
  Cursor := Screen.Cursor;

  try
    sCreen.Cursor := crAppStart;
    inherited;

    if zFolios.Active then
      zFolios.Refresh
    else
      zFolios.Open;
  finally
    screen.Cursor := Cursor;
  end;

end;

procedure TFrmVales.dxButtonGuardarClick(Sender: TObject);
var cursor: TCursor;
begin
  Cursor := Screen.Cursor;

  try
    sCreen.Cursor := crAppStart;
    inherited;
    if assigned(frmMaterialesxfolios) then
    begin

      if FrmMaterialesxFolios.zDatos.Active then
      try
        FrmMaterialesxFolios.zDatos.afterScroll := Nil;
        FrmMaterialesxFolios.zDatos.Refresh;

        if zFolios.Active then
          zFolios.Refresh
        else
          zFolios.Open;
      finally
        FrmMaterialesxFolios.zDatos.afterScroll := FrmMaterialesxFolios.zDatosAfterScroll;
      end;
    end;
  finally
    screen.Cursor := Cursor;
  end;
end;

procedure TFrmVales.FormCreate(Sender: TObject);
begin
  inherited;
   QueryName := 'mt_vales';
   PKField := 'IdVale';
   CampoMostrar :='NoVale';
   //Validar Registros duplicados
   pCondiciones := '~(IdVale)&(NoVale)';
   pCampos := 'IdVale,NoVale';
end;

procedure TFrmVales.FormShow(Sender: TObject);
begin
  inherited;
  AsignarSQL(zFolios, 'mt_foliosxtecnicos', pReadOnly);
  FiltrarDataset(zFolios, 'IdPersonal,Desde,Hasta', ['-1', '-1', '-1']) ;

  if zFolios.Active then
    zFolios.Refresh
  else
    zFolios.Open;
end;

end.
