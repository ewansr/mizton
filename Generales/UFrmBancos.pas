unit UFrmBancos;

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
  cxDBLookupEdit, cxDBLookupComboBox, cxImage, cxDBEdit, cxTextEdit,UConection, UMsgBox,
  dxLayoutControlAdapters, Menus, StdCtrls, cxButtons,UFrmPais;

type
  TFrmBancos = class(TFrmMiniCatalogo)
    cxColumnCodigo: TcxGridDBColumn;
    cxColumnBanco: TcxGridDBColumn;
    cxColumnLogo: TcxGridDBColumn;
    cxColumnActivo: TcxGridDBColumn;
    cxtextCodigo: TcxDBTextEdit;
    dxLYCDatosItem1: TdxLayoutItem;
    cxtextBanco: TcxDBTextEdit;
    dxLYCDatosItem2: TdxLayoutItem;
    imgPaisBancos: TcxDBImage;
    dxLYCDatosItem3: TdxLayoutItem;
    zPais: TZQuery;
    dsPais: TDataSource;
    dxLYCDatosGroup1: TdxLayoutAutoCreatedGroup;
    cxtextRazonSocial: TcxDBTextEdit;
    dxLYCDatosItem6: TdxLayoutItem;
    cxGridDatosColumn1: TcxGridDBColumn;
    procedure dxButtonNuevoClick(Sender: TObject);
    procedure dxBButtonEditarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure imgPaisBancosDblClick(Sender: TObject);
    procedure btnMasClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmBancos: TFrmBancos;

implementation

{$R *.dfm}

procedure TFrmBancos.btnMasClick(Sender: TObject);
begin
  //inherited;
  try
    LlamarSubForm(TFrmPais,FrmPais, zPais, zDatosUpt, 'IdPais');
  finally

  end;
end;

procedure TFrmBancos.dxBButtonEditarClick(Sender: TObject);
begin
  inherited;
  if cxtextCodigo.CanFocus then
    cxtextCodigo.SetFocus;
end;

procedure TFrmBancos.dxButtonNuevoClick(Sender: TObject);
begin
  inherited;
  if cxtextCodigo.CanFocus then
    cxtextCodigo.SetFocus;
end;

procedure TFrmBancos.FormCreate(Sender: TObject);
begin
  inherited;
  QueryName := 'master_bancos';
  PKField := 'IdBancos';
  CampoMostrar :='Banco';
  campoImagen := 'Logo';
  //Validar Registros duplicados
  pCondiciones := '~(IdBancos)&(Codigo)';
  pCampos := 'IdBancos,Codigo';

end;

procedure TFrmBancos.FormShow(Sender: TObject);
var
  Cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := crAppStart;
      inherited;
      if not AsignarSQL(zPais, 'master_pais', pReadOnly) then
      raise Exception.Create(pErrorConsulta + '[' + 'master_pais' + ']');

      if not FiltrarDataset(zPais, 'IdPais', ['-1']) then
      raise Exception.Create(pErrorFiltrar + '[' + 'master_pais' + ']');

      if zPais.Active then
        zPais.Refresh
      else
        zPais.Open;
    finally
      Screen.Cursor := Cursor;
    end;
  except
    on e: exception do
      msgBox.ShowModal('Error.', pMensajeError + e.Message, cmtError, [cmbOK]);
  end;
end;

procedure TFrmBancos.imgPaisBancosDblClick(Sender: TObject);
begin
  inherited;
  TcxImage(imgPaisBancos).LoadFromFile;
end;

end.
