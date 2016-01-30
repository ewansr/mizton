unit UFrmCuentaBancaria;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmCatalogo, cxPC, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, DB, cxDBData, dxBarBuiltInMenu, dxRibbonSkins,
  dxSkinsdxRibbonPainter, dxRibbonCustomizationForm, dxSkinsdxBarPainter,
  dxSkinsdxDockControlPainter, cxContainer, dxLayoutcxEditAdapters, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  dxLayoutContainer, cxTextEdit, cxDBEdit, cxClasses, dxDockControl, dxBar,
  dxRibbon, ZAbstractRODataset, ZAbstractDataset, ZDataset, dxLayoutControl,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, dxDockPanel,uConection, dxLayoutControlAdapters,
  Menus, StdCtrls, cxButtons, UFrmBancos, UFrmCatalogoClientes,UMsgBox,
  dxScreenTip, dxCustomHint, cxHint;

type
  TFrmCuentaBancaria = class(TFrmCatalogo)
    cxtextCuenta: TcxDBTextEdit;
    dxLYCDatosItem1: TdxLayoutItem;
    cxtextClave: TcxDBTextEdit;
    dxLYCDatosItem2: TdxLayoutItem;
    cbbBanco: TcxDBLookupComboBox;
    dxLYCDatosItem3: TdxLayoutItem;
    cbbProveedor: TcxDBLookupComboBox;
    dxLYCDatosItem4: TdxLayoutItem;
    zBanco: TZQuery;
    zProveedor: TZQuery;
    dsProveedor: TDataSource;
    dsBanco: TDataSource;
    cxColumnCuenta: TcxGridDBColumn;
    cxColumnClabeInterbancaria: TcxGridDBColumn;
    cxColumnBanco: TcxGridDBColumn;
    cxColumnProveedorCliente: TcxGridDBColumn;
    cxColumnActivo: TcxGridDBColumn;
    cxButton1: TcxButton;
    dxLYCDatosItem5: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLYCDatosItem6: TdxLayoutItem;
    dxLYCDatosGroup1: TdxLayoutAutoCreatedGroup;
    dxLYCDatosGroup2: TdxLayoutAutoCreatedGroup;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCuentaBancaria: TFrmCuentaBancaria;

implementation

{$R *.dfm}

procedure TFrmCuentaBancaria.cxButton1Click(Sender: TObject);
begin
  try
    LlamarSubForm(TFrmBancos,FrmBancos, zBanco, zDatosUpt, 'IdBanco');
  finally

  end;

end;

procedure TFrmCuentaBancaria.cxButton2Click(Sender: TObject);
begin
  try
    LlamarSubForm(TFrmCatalogoClientes,FrmCatalogoClientes, zProveedor, zDatosUpt, 'IdProveedorCliente');
  finally

  end;
end;

procedure TFrmCuentaBancaria.FormCreate(Sender: TObject);
begin
  inherited;
  QueryName := 'master_cuenta';
  PKField := 'IdCuenta';
  CampoMostrar :='Cuenta';
  //Validar Registros duplicados
  pCondiciones := '~(IdCuenta)&(Cuenta|ClabeInterbancaria)';
  pCampos := 'IdCuenta,Cuenta,ClabeInterbancaria';
end;

procedure TFrmCuentaBancaria.FormShow(Sender: TObject);
var
  Cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := crAppStart;
      inherited;
      if not AsignarSQL(zBanco, 'master_bancos', pReadOnly) then
        raise Exception.Create(pErrorConsulta + '[' + 'master_bancos' + ']');

      if not FiltrarDataset(zBanco, 'IdBancos', ['-1']) then
        raise Exception.Create(pErrorFiltrar + '[' + 'master_bancos' + ']');

      if zBanco.Active then
        zBanco.Refresh
      else
        zBanco.Open;

      if not AsignarSQL(zProveedor, 'master_proveedorcliente', pReadOnly) then
        raise Exception.Create(pErrorConsulta + '[' + 'master_proveedorcliente' + ']');

      if not FiltrarDataset(zProveedor, 'IdProveedorCliente', ['-1']) then
        raise Exception.Create(pErrorFiltrar + '[' + 'master_proveedorcliente' + ']');

      if zProveedor.Active then
        zProveedor.Refresh
      else
        zProveedor.Open;
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
