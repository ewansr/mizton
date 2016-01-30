unit UFrmCatalogoClientes;

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
  dxSkinsdxRibbonPainter, dxRibbonCustomizationForm, dxSkinsdxBarPainter, dxBar,
  dxRibbon, ZAbstractRODataset, ZAbstractDataset, ZDataset, cxClasses,
  dxLayoutContainer, dxLayoutControl, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  dxDockPanel, dxDockControl, dxSkinsdxDockControlPainter, cxContainer,
  dxLayoutcxEditAdapters, cxDBEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxImage, UConection, cxSpinEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox,UMsgBox, dxLayoutControlAdapters, Menus, StdCtrls,UfrmPais, UfrmEstado, UfrmCiudad,
  cxButtons, dxScreenTip, dxCustomHint, cxHint;

type
  TfrmCatalogoClientes = class(TFrmCatalogo)
    cxDateRegistro: TcxDBDateEdit;
    dxlytmLYCDatosItem1: TdxLayoutItem;
    cxDBTextCliente: TcxDBTextEdit;
    dxlytmLYCDatosItem11: TdxLayoutItem;
    cxDBTextCodigo: TcxDBTextEdit;
    dxlytmLYCDatosItem12: TdxLayoutItem;
    cxTabDomicilio: TcxTabSheet;
    cxDbMaskRFC: TcxDBMaskEdit;
    dxlytmLYCDatosItem13: TdxLayoutItem;
    dxLYCDatosGroup1: TdxLayoutAutoCreatedGroup;
    imgLogo: TcxDBImage;
    dxlytmLYCDatosItem14: TdxLayoutItem;
    cxTabContacto: TcxTabSheet;
    dxLyLayoutControl1Group_Root: TdxLayoutGroup;
    dxLYC1: TdxLayoutControl;
    cxDBTextCalle: TcxDBTextEdit;
    dxlytmLYC1Item1: TdxLayoutItem;
    cxDBTextColonia: TcxDBTextEdit;
    dxlytmLYC1Item11: TdxLayoutItem;
    cxSpinCP: TcxDBSpinEdit;
    dxlytmLYC1Item12: TdxLayoutItem;
    cxDBTextNo: TcxDBTextEdit;
    dxlytmLYC1Item13: TdxLayoutItem;
    dxLYC1Group1: TdxLayoutAutoCreatedGroup;
    cbbPais: TcxDBLookupComboBox;
    dxlytmLYC1Item14: TdxLayoutItem;
    cbbEstado: TcxDBLookupComboBox;
    dxlytmLYC1Item15: TdxLayoutItem;
    cbbCiudad: TcxDBLookupComboBox;
    dxlytmLYC1Item16: TdxLayoutItem;
    cxColumnCodigo: TcxGridDBColumn;
    cxColumnNombre: TcxGridDBColumn;
    cxColumnRFC: TcxGridDBColumn;
    cxColumnFecha: TcxGridDBColumn;
    cxColumnTelEmpresa: TcxGridDBColumn;
    dxLayControlContactoGroup_Root: TdxLayoutGroup;
    dxLayControlContacto: TdxLayoutControl;
    cxTextNombreRepresentante: TcxDBTextEdit;
    dxLayitemLayControlContactoItem1: TdxLayoutItem;
    cxTextApRepresentante: TcxDBTextEdit;
    dxLayitemLayControlContactoItem11: TdxLayoutItem;
    cxTextAMRepresentante: TcxDBTextEdit;
    dxLayitemLayControlContactoItem12: TdxLayoutItem;
    cxMaskTelefonoRepresentante: TcxDBMaskEdit;
    dxLayitemLayControlContactoItem13: TdxLayoutItem;
    cxMaskTelEmpresa: TcxDBMaskEdit;
    dxLayitemLYCDatosItem1: TdxLayoutItem;
    cxTextEmail: TcxDBTextEdit;
    dxLayitemLYCDatosItem11: TdxLayoutItem;
    cxTextWeb: TcxDBTextEdit;
    dxLayitemLYCDatosItem12: TdxLayoutItem;
    cxTsGiro: TcxTabSheet;
    zEstado: TZQuery;
    zPais: TZQuery;
    zCiudad: TZQuery;
    dsPais: TDataSource;
    dsEstado: TDataSource;
    dsCiudad: TDataSource;
    cxColRepresentante: TcxGridDBColumn;
    cxColTelefonoRep: TcxGridDBColumn;
    btnMasP: TcxButton;
    dxLYC1Item1: TdxLayoutItem;
    btnMasE: TcxButton;
    dxLYC1Item2: TdxLayoutItem;
    btnMasC: TcxButton;
    dxLYC1Item3: TdxLayoutItem;
    dxLYC1Group2: TdxLayoutAutoCreatedGroup;
    dxLYC1Group3: TdxLayoutAutoCreatedGroup;
    dxLYC1Group4: TdxLayoutAutoCreatedGroup;
    zPaise: TZQuery;
    dsPaise: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure dxButtonGuardarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure imgLogoDblClick(Sender: TObject);
    procedure dxButtonNuevoClick(Sender: TObject);
    procedure dxBButtonEditarClick(Sender: TObject);
    procedure btnMasPClick(Sender: TObject);
    procedure btnMasEClick(Sender: TObject);
    procedure btnMasCClick(Sender: TObject);
    procedure cbbPaisPropertiesCloseUp(Sender: TObject);
    procedure cbbEstadoPropertiesCloseUp(Sender: TObject);
    procedure cbbEstadoPropertiesEditValueChanged(Sender: TObject);
    procedure cbbPaisPropertiesEditValueChanged(Sender: TObject);
    procedure cbbPaisPropertiesChange(Sender: TObject);
    procedure cbbEstadoPropertiesChange(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  frmCatalogoClientes: TfrmCatalogoClientes;

implementation

{$R *.dfm}


procedure TfrmCatalogoClientes.btnMasPClick(Sender: TObject);
begin
  try
    LlamarSubForm(TFrmPais,FrmPais, zPais, zDatosUpt, 'IdPais');
  finally

  end;
end;
procedure TfrmCatalogoClientes.cbbEstadoPropertiesChange(Sender: TObject);
begin
  cbbEstadoPropertiesCloseUp(nil);
end;

procedure TfrmCatalogoClientes.cbbEstadoPropertiesCloseUp(Sender: TObject);
var
  Cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := crAppStart;
      zCiudad.Active :=False;
      if not AsignarSQL(zCiudad, 'master_ciudad', pReadOnly) then
        raise Exception.Create(pErrorConsulta + '[' + 'master_ciudad' + ']');

      if not FiltrarDataset(zCiudad, 'IdEstado', [VarToStr(cbbEstado.EditValue)]) then
        raise Exception.Create(pErrorFiltrar + '[' + 'master_ciudad' + ']');

      if zCiudad.Active then
        zCiudad.Refresh
      else
        zCiudad.Open;

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

procedure TfrmCatalogoClientes.cbbEstadoPropertiesEditValueChanged(
  Sender: TObject);
begin
  cbbEstadoPropertiesCloseUp(nil);
end;

procedure TfrmCatalogoClientes.btnMasEClick(Sender: TObject);
begin
  try
    LlamarSubForm(TFrmEstado,FrmEstado, zEstado, zDatosUpt, 'IdEstado');
  finally

  end;
end;

procedure TfrmCatalogoClientes.cbbPaisPropertiesChange(Sender: TObject);
begin
  cbbEstadoPropertiesCloseUp(nil);
end;

procedure TfrmCatalogoClientes.cbbPaisPropertiesCloseUp(Sender: TObject);
var
  Cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := crAppStart;
      zEstado.Active :=False;
      zCiudad.Active :=False;
      if not AsignarSQL(zEstado, 'master_estado', pReadOnly) then
        raise Exception.Create(pErrorConsulta + '[' + 'master_estado' + ']');

      if not FiltrarDataset(zEstado, 'IdPais', [VarToStr(cbbPais.EditValue)]) then
        raise Exception.Create(pErrorFiltrar + '[' + 'master_estado' + ']');

      if zEstado.Active then
        zEstado.Refresh
      else
        zEstado.Open;

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

procedure TfrmCatalogoClientes.cbbPaisPropertiesEditValueChanged(
  Sender: TObject);
begin
  cbbPaisPropertiesCloseUp(nil);
end;

procedure TfrmCatalogoClientes.btnMasCClick(Sender: TObject);
begin
  try
    LlamarSubForm(TFrmCiudad,FrmCiudad, zCiudad, zDatosUpt, 'IdCiudad');
  finally

  end;
end;

procedure TfrmCatalogoClientes.dxBButtonEditarClick(Sender: TObject);
begin
  inherited;
  if cxDateRegistro.CanFocus then
    cxDateRegistro.SetFocus;
end;

procedure TfrmCatalogoClientes.dxButtonGuardarClick(Sender: TObject);
begin
  zDatosUpt.FieldByName('Tipo').AsString := 'CLIENTE';
  inherited;
end;

procedure TfrmCatalogoClientes.dxButtonNuevoClick(Sender: TObject);
begin
  cxPageDatos.ActivePage := cxTsDatos;
  inherited;
    cxDateRegistro.Date:= now;
    zDatosUpt.FieldByName('FechaRegistro').AsDateTime :=now;
  if cxDateRegistro.CanFocus then
    cxDateRegistro.SetFocus;
end;

procedure TfrmCatalogoClientes.FormCreate(Sender: TObject);
begin
  inherited;
  QueryName := 'master_proveedorcliente';
  PKField := 'IdProveedorCliente';
  CampoMostrar := 'NombreEmpresa';
  CampoImagen := 'Logo';
  pCondiciones := '~(IdProveedorCliente)&(Codigo|RFC|NombreEmpresa)';
  pCampos := 'IdProveedorCliente,Codigo,RFC,NombreEmpresa';
end;

procedure TfrmCatalogoClientes.FormShow(Sender: TObject);
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

      if not FiltrarDataset(zDatos, 'IdProveedorCliente,Tipo', [-1,'CLIENTE']) then
        raise Exception.Create(pErrorFiltrar + '[' + QueryName + ']');

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

      zPais.Active :=False;
      if not AsignarSQL(zPais, 'master_pais', pReadOnly) then
        raise Exception.Create(pErrorConsulta + '[' + 'master_pais' + ']');

      if not FiltrarDataset(zPais, 'IdPais', ['-1']) then
        raise Exception.Create(pErrorFiltrar + '[' + 'master_pais' + ']');

      if zPais.Active then
        zPais.Refresh
      else
        zPais.Open;

      if esLlamado then
        dxButtonNuevoClick(nil);
    finally
      ActionButtons;
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

procedure TfrmCatalogoClientes.imgLogoDblClick(Sender: TObject);
begin
  TcxImage(imgLogo).LoadFromFile;
end;

end.
