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
  cxCalendar, cxTextEdit, cxSpinEdit, cxSplitter, DateUtils, UConection,
  ZSqlUpdate, dxRibbonRadialMenu;

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
    cxStyleRepository1: TcxStyleRepository;
    cxstylPendiente: TcxStyle;
    cxstylAutorizada: TcxStyle;
    cxColEstatusCobro: TcxGridDBColumn;
    btnPendiente: TdxBarLargeButton;
    btnAutorizado: TdxBarLargeButton;
    dxPopupFolio: TdxRibbonPopupMenu;
    zUptEstatusCobro: TZQuery;
    cxColId: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure dxButtonGuardarClick(Sender: TObject);
    procedure cxDateValePropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dxButtonActualizarClick(Sender: TObject);
    procedure cxGridFoliosStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      var AStyle: TcxStyle);
    procedure btnPendienteClick(Sender: TObject);
    procedure btnAutorizadoClick(Sender: TObject);
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

procedure TFrmVales.btnAutorizadoClick(Sender: TObject);
var
  Cursor: TCursor;
  idx: integer;
  LstFolios : String;
begin
  Cursor := Screen.Cursor;
  try
    Screen.Cursor := crAppStart;

    zUptEstatusCobro.Params.ParamByName('IdFolio').AsString := zFolios.FieldByName('idFolio').AsString;
    zUptEstatusCobro.Params.ParamByName('EstatusCobro').asString := 'Pendiente';

    if not zUptEstatusCobro.Connection.Ping then
      zUptEstatusCobro.Connection.Reconnect;

    zUptEstatusCobro.ExecSQL;
    
    if zFolios.Active then
      zFolios.Refresh
    else
      zFolios.Open;
  finally
    screen.Cursor := Cursor;
  end;
end;

procedure TFrmVales.btnPendienteClick(Sender: TObject);
var
  Cursor: TCursor;
  idx: integer;
  LstFolios : String;
begin
  Cursor := Screen.Cursor;
  try
    Screen.Cursor := crAppStart;

    //for idx := 0 to cxGridFolios.Controller.SelectedRowCount - 1 do
    //begin
//      LstFolios := LstFolios + VarToStr(cxGridFolios.Controller.SelectedRows[idx].Values[cxColId.Index]);
//      cxGridFolios.ViewData.GridView.Controller.SelectedRecordCount;
    //end;
    
    zUptEstatusCobro.Params.ParamByName('IdFolio').AsString := zFolios.FieldByName('IdFolio').AsString;
    zUptEstatusCobro.Params.ParamByName('EstatusCobro').asString := 'Autorizado';

    if not zUptEstatusCobro.Connection.Ping then
      zUptEstatusCobro.Connection.Reconnect;

    zUptEstatusCobro.ExecSQL;   

    if zFolios.Active then
      zFolios.Refresh
    else
      zFolios.Open;
  finally
    screen.Cursor := Cursor;
  end;
end;

procedure TFrmVales.cxDateValePropertiesChange(Sender: TObject);
begin
  inherited;
  cxSpinNoSemana.Value := WeekOfTheYear(cxDateVale.Date);
  cxDateInicio.date := StartOfTheWeek(cxDateVale.Date);
  cxDateTermino.Date := EndOfTheWeek(cxDateVale.Date);
end;

procedure TFrmVales.cxGridFoliosStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
begin
  if VarTostr(ARecord.values[cxColEstatusCobro.Index]) = 'Pendiente' then
    AStyle := cxstylPendiente
  else
    AStyle := cxstylAutorizada;
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

        dxButtonActualizarClick(nil);
//        if zFolios.Active then
//          zFolios.Refresh
//        else
//          zFolios.Open;
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
