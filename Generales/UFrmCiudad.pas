unit UFrmCiudad;

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
  cxContainer, dxLayoutcxEditAdapters, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit, cxDBEdit,UConection,
  dxLayoutControlAdapters, Menus, StdCtrls, cxButtons,UmsgBox;

type
  TFrmCiudad = class(TFrmMiniCatalogo)
    cxColumnCodigo: TcxGridDBColumn;
    cxColumnCiudad: TcxGridDBColumn;
    cxColumnEstado: TcxGridDBColumn;
    cxColumnActivo: TcxGridDBColumn;
    cxtextCodigo: TcxDBTextEdit;
    dxLYCDatosItem1: TdxLayoutItem;
    cxtextCiudad: TcxDBTextEdit;
    dxLYCDatosItem2: TdxLayoutItem;
    cbbEstado: TcxDBLookupComboBox;
    dxLYCDatosItem3: TdxLayoutItem;
    zqryEstado: TZQuery;
    dsEstado: TDataSource;
    dxlytmLYCDatosItem4: TdxLayoutItem;
    btnMas: TcxButton;
    dxLYCDatosGroup1: TdxLayoutAutoCreatedGroup;
    procedure dxButtonNuevoClick(Sender: TObject);
    procedure dxBButtonEditarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnMasClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCiudad: TFrmCiudad;

implementation

Uses
  UFrmEstado;
{$R *.dfm}

procedure TFrmCiudad.btnMasClick(Sender: TObject);
begin
  try
    LlamarSubForm(TfrmEstado,FrmEstado, zqryEstado, zDatosUpt,'IdEstado');
  finally
  end;
end;

procedure TFrmCiudad.dxBButtonEditarClick(Sender: TObject);
begin
  inherited;
  if cxtextCodigo.CanFocus then
    cxtextCodigo.SetFocus;
end;

procedure TFrmCiudad.dxButtonNuevoClick(Sender: TObject);
begin
  inherited;
  if cxtextCodigo.CanFocus then
    cxtextCodigo.SetFocus;
end;

procedure TFrmCiudad.FormCreate(Sender: TObject);
begin
  inherited;
    QueryName := 'master_ciudad';
    PKField := 'IdCiudad';
    CampoMostrar :='Ciudad';
    //Validar Registros duplicados
     pCondiciones := '~(IdCiudad)&(Codigo)';
     pCampos := 'IdCiudad,Codigo';
end;

procedure TFrmCiudad.FormShow(Sender: TObject);
var
  Cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := crAppStart;
      inherited;
      if not AsignarSQL(zqryEstado, 'master_estado', pReadOnly) then
        raise Exception.Create(pErrorConsulta + '[' + 'master_estado' + ']');

      if not FiltrarDataset(zqryEstado, 'IdEstado', ['-1']) then
        raise Exception.Create(pErrorFiltrar + '[' + 'master_estado' + ']');

      if zqryEstado.Active then
        zqryEstado.Refresh
      else
        zqryEstado.Open;
    finally
      Screen.Cursor := Cursor;
    end;
  except
    on e: exception do
    begin
      MsgBox.ShowModal('Error.', pMensajeError + e.Message, cmtError, [cmbOK]);
    end;
  end;

end;

end.
