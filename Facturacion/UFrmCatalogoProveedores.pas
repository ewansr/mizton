unit UFrmCatalogoProveedores;

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
  dxSkinsdxDockControlPainter, cxClasses, dxDockControl, dxBar, dxRibbon,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, dxLayoutContainer,
  dxLayoutControl, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, dxDockPanel, cxContainer,
  dxLayoutcxEditAdapters, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxSpinEdit, cxDBEdit, cxImage, cxTextEdit, cxMaskEdit,
  cxCalendar, UConection, UMsgBox, dxLayoutControlAdapters, Menus, StdCtrls,
  cxButtons,UFrmPais, UFrmEstado, UFrmCiudad;

type
  TFrmCatalogoProveedores = class(TFrmCatalogo)
    cxDomicilio: TcxTabSheet;
    cxContactoRepresentante: TcxTabSheet;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    cxdbdtdtFecha: TcxDBDateEdit;
    dxLYCDatosItem1: TdxLayoutItem;
    cxtextCodigo: TcxDBTextEdit;
    dxLYCDatosItem2: TdxLayoutItem;
    cxMaskRFC: TcxDBMaskEdit;
    dxLYCDatosItem3: TdxLayoutItem;
    cxtextProveedor: TcxDBTextEdit;
    dxLYCDatosItem4: TdxLayoutItem;
    cxMaskTel: TcxDBMaskEdit;
    dxLYCDatosItem5: TdxLayoutItem;
    cxtextCorreo: TcxDBTextEdit;
    dxLYCDatosItem6: TdxLayoutItem;
    cxtextURL: TcxDBTextEdit;
    dxLYCDatosItem7: TdxLayoutItem;
    imgLogo: TcxDBImage;
    dxLYCDatosItem8: TdxLayoutItem;
    cxtextCalle: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxtextColonia: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxSpinCP: TcxDBSpinEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxtextNumero: TcxDBTextEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    cbbPais: TcxDBLookupComboBox;
    dxLayoutControl1Item5: TdxLayoutItem;
    cbbEstado: TcxDBLookupComboBox;
    dxLayoutControl1Item6: TdxLayoutItem;
    cbbCiudad: TcxDBLookupComboBox;
    dxLayoutControl1Item7: TdxLayoutItem;
    cxtextNombre: TcxDBTextEdit;
    dxLayoutControl2Item1: TdxLayoutItem;
    cxtextPaterno: TcxDBTextEdit;
    dxLayoutControl2Item2: TdxLayoutItem;
    cxtextMaterno: TcxDBTextEdit;
    dxLayoutControl2Item3: TdxLayoutItem;
    cxMaskTele: TcxDBMaskEdit;
    dxLayoutControl2Item4: TdxLayoutItem;
    cxColumnCodigo: TcxGridDBColumn;
    cxColumnProveedor: TcxGridDBColumn;
    cxColumnRFC: TcxGridDBColumn;
    cxColumnFecha: TcxGridDBColumn;
    cxColumnRepresentante: TcxGridDBColumn;
    cxColumnTelRepresentante: TcxGridDBColumn;
    zqryPais: TZQuery;
    zqryEstado: TZQuery;
    zqryCiudad: TZQuery;
    dsPais: TDataSource;
    dsEstado: TDataSource;
    dsCiudad: TDataSource;
    dxLayoutControl1Group1: TdxLayoutAutoCreatedGroup;
    cxDBMaskEdit1: TcxDBMaskEdit;
    RFcxDBMaskEdit1: TdxLayoutItem;
    dxLYCDatosGroup1: TdxLayoutAutoCreatedGroup;
    btnMasP: TcxButton;
    dxLayoutControl1Item8: TdxLayoutItem;
    btnMasE: TcxButton;
    dxLayoutControl1Item9: TdxLayoutItem;
    btnMasC: TcxButton;
    dxLayoutControl1Item10: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutAutoCreatedGroup;
    dxLayoutControl1Group3: TdxLayoutAutoCreatedGroup;
    dxLayoutControl1Group4: TdxLayoutAutoCreatedGroup;
    procedure cbbEstadoPropertiesChange(Sender: TObject);
    procedure cbbPaisPropertiesChange(Sender: TObject);
    procedure dxButtonGuardarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure imgLogoClick(Sender: TObject);
    procedure dxButtonNuevoClick(Sender: TObject);
    procedure dxBButtonEditarClick(Sender: TObject);
    procedure btnMasPClick(Sender: TObject);
    procedure btnMasEClick(Sender: TObject);
    procedure btnMasCClick(Sender: TObject);
    procedure cbbPaisPropertiesCloseUp(Sender: TObject);
    procedure cbbPaisPropertiesEditValueChanged(Sender: TObject);
    procedure cbbEstadoPropertiesCloseUp(Sender: TObject);
    procedure cbbEstadoPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCatalogoProveedores: TFrmCatalogoProveedores;

implementation

{$R *.dfm}

procedure TFrmCatalogoProveedores.btnMasCClick(Sender: TObject);
begin
  try
    LlamarSubForm(TFrmCiudad,FrmCiudad, zqryCiudad, zDatosUpt, 'IdCiudad');
  finally

  end;
end;

procedure TFrmCatalogoProveedores.btnMasEClick(Sender: TObject);
begin
  try
    LlamarSubForm(TFrmEstado,FrmEstado, zqryEstado, zDatosUpt, 'IdEstado');
  finally

  end;
end;

procedure TFrmCatalogoProveedores.btnMasPClick(Sender: TObject);
begin
  try
    LlamarSubForm(TFrmPais,FrmPais, zqryPais, zDatosUpt, 'IdPais');
  finally

  end;
end;

procedure TFrmCatalogoProveedores.cbbEstadoPropertiesChange(Sender: TObject);
begin
   cbbEstadoPropertiesCloseUp(nil);
end;

procedure TFrmCatalogoProveedores.cbbEstadoPropertiesCloseUp(Sender: TObject);
var
  Cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := crAppStart;
      zqryEstado.Active :=False;
      zqryCiudad.Active :=False;
      if not AsignarSQL(zqryEstado, 'master_estado', pReadOnly) then
        raise Exception.Create(pErrorConsulta + '[' + 'master_estado' + ']');

      if not FiltrarDataset(zqryEstado, 'IdPais', [VarToStr(cbbPais.EditValue)]) then
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

procedure TFrmCatalogoProveedores.cbbEstadoPropertiesEditValueChanged(
  Sender: TObject);
begin
cbbEstadoPropertiesCloseUp(nil);
end;

procedure TFrmCatalogoProveedores.cbbPaisPropertiesChange(Sender: TObject);
var
  Cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := crAppStart;
      zqryEstado.Active :=False;
      zqryCiudad.Active :=False;
      if not AsignarSQL(zqryEstado, 'master_estado', pReadOnly) then
        raise Exception.Create(pErrorConsulta + '[' + 'master_estado' + ']');

      if not FiltrarDataset(zqryEstado, 'IdPais', [VarToStr(cbbPais.EditValue)]) then
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

procedure TFrmCatalogoProveedores.cbbPaisPropertiesCloseUp(Sender: TObject);

begin
  cbbEstadoPropertiesCloseUp(nil);
end;

procedure TFrmCatalogoProveedores.cbbPaisPropertiesEditValueChanged(
  Sender: TObject);
begin
  cbbPaisPropertiesCloseUp(nil);
end;

procedure TFrmCatalogoProveedores.dxBButtonEditarClick(Sender: TObject);
begin
  inherited;
  if cxdbdtdtFecha.CanFocus then
    cxdbdtdtFecha.SetFocus;
end;

procedure TFrmCatalogoProveedores.dxButtonGuardarClick(Sender: TObject);
begin
  zDatosUpt.FieldByName('Tipo').AsString := 'PROVEEDOR';
  inherited;
end;

procedure TFrmCatalogoProveedores.dxButtonNuevoClick(Sender: TObject);
begin
  cxPageDatos.ActivePage := cxTsDatos;
  inherited;
    cxdbdtdtFecha.Date:= now;
    zDatosUpt.FieldByName('FechaRegistro').AsDateTime :=now;
   if cxdbdtdtFecha.CanFocus then
    cxdbdtdtFecha.SetFocus;
end;

procedure TFrmCatalogoProveedores.FormCreate(Sender: TObject);
begin
  inherited;
  QueryName := 'master_proveedorcliente';
  PKField := 'IdProveedorCliente';
  CampoMostrar := 'NombreEmpresa';
  CampoImagen := 'Logo';
  pCondiciones := '~(IdProveedorCliente)&(Codigo|RFC|NombreEmpresa)';
  pCampos := 'IdProveedorCliente,Codigo,RFC,NombreEmpresa';
end;

procedure TFrmCatalogoProveedores.FormShow(Sender: TObject);
var
  Cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := crAppStart;
      //inherited;
      if not AsignarSQL(zDatos, QueryName, pReadOnly) then
        raise Exception.Create(pErrorConsulta + '[' + QueryName + ']');

      if not FiltrarDataset(zDatos,'IdProveedorCliente,Tipo', [-1,'PROVEEDOR']) then
        raise Exception.Create(pErrorFiltrar + '[' + QueryName + ']');

      {if not FiltrarDataset(zDatos,'Tipo', ['PROVEEDOR']) then
        raise Exception.Create(pErrorFiltrar + '[' + QueryName + ']');}

      if zDatos.Active then
        zDatos.Refresh
      else
        zDatos.Open;

      if not AsignarSQL(zDatosUpt, QueryName, pUpdate) then
        raise Exception.Create(pErrorConsulta + '[' + QueryName + ']');

      if not FiltrarDataset(zDatosUpt, PKField, ['-9']) then
        raise Exception.Create(pErrorFiltrar + '[' + QueryName + ']');

      if zDatosUpt.Active then
        zDatosUpt.Refresh
      else
        zDatosUpt.Open;

        zqryPais.Active :=False;
      if not AsignarSQL(zqryPais, 'master_pais', pReadOnly) then
        raise Exception.Create(pErrorConsulta + '[' + 'master_pais' + ']');

      if not FiltrarDataset(zqryPais, 'IdPais', ['-1']) then
        raise Exception.Create(pErrorFiltrar + '[' + 'master_pais' + ']');

      if zqryPais.Active then
        zqryPais.Refresh
      else
        zqryPais.Open;

      ActionButtons;

      if esLlamado then
        dxButtonNuevoClick(nil);
    finally
      Screen.Cursor := Cursor;
      AutoFocus(TForm(self));
      dxDockDatos.AutoHide := True;
      Screen.Cursor := Cursor;
      AplicarTema(TForm(Self));
    end;
  except
    on e: exception do
    begin
      MsgBox.ShowModal('Error.', pMensajeError + e.Message, cmtError, [cmbOK]);
    end;
  end;
end;

procedure TFrmCatalogoProveedores.imgLogoClick(Sender: TObject);
begin
TcxImage(imgLogo).LoadFromFile;
end;

end.
