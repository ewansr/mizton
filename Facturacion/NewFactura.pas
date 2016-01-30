unit NewFactura;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  cxGroupBox, Menus, StdCtrls, cxButtons, UConection, dxSkinscxPCPainter,
  dxLayoutControlAdapters, dxLayoutContainer, dxLayoutControl,
  dxLayoutcxEditAdapters, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBExtLookupComboBox, cxStyles, cxCustomData, DB, cxDBData,
  cxFilter, cxData, cxDataStorage, cxNavigator, cxGridViewLayoutContainer,
  cxGridLayoutView, cxGridCustomTableView, cxGridDBLayoutView, cxClasses,
  cxGridCustomView, cxGridCustomLayoutView, cxGrid, cxLabel, cxDBLabel,
  dxSkinsdxBarPainter, dxBar, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  cxGridLevel, cxGridTableView, cxGridDBTableView, cxDBLookupComboBox,
  cxSpinEdit, cxCurrencyEdit, UMsgBox, DBClient, midas, cxPC, dxDockControl,
 cxMemo, cxBarEditItem, dxDockPanel, cxButtonEdit, cxCheckBox, cxImage, cxDBEdit,
  frxClass, frxDBSet, frxPreview, frxExportPDF, frxDCtrl, {facturaElectronica, FacturaTipos,
  PacFinkok,} GeneradorCBB, {finkokwsTimbrado} pfacturaElectronica, cfdi, Pacfo, PFacturaElectronica_PAC,
  cxCalendar, dxGDIPlusClasses, Math, ActnList, ComCtrls, dxCore, cxDateUtils;

type

  TFrmNewFactura = class(TForm)
    dxDockSite1: TdxDockSite;
    dxDockPanel1: TdxDockPanel;
    cxViewRepo1: TcxGridViewRepository;
    cxGridClientes: TcxGridDBLayoutView;
    cxItmNombreEmpresa: TcxGridDBLayoutViewItem;
    cxItmRFC: TcxGridDBLayoutViewItem;
    cxItmRepresentante: TcxGridDBLayoutViewItem;
    cxItmTel: TcxGridDBLayoutViewItem;
    cxItmEmail: TcxGridDBLayoutViewItem;
    cxItmWeb: TcxGridDBLayoutViewItem;
    cxItmLogo: TcxGridDBLayoutViewItem;
    dxLyViewRepo1DBLayoutView1Group_Root: TdxLayoutGroup;
    cxgrdlytmGridClientesLayoutItem1: TcxGridLayoutItem;
    cxgrdlytmGridClientesLayoutItem2: TcxGridLayoutItem;
    cxgrdlytmGridClientesLayoutItem3: TcxGridLayoutItem;
    cxgrdlytmGridClientesLayoutItem4: TcxGridLayoutItem;
    cxgrdlytmGridClientesLayoutItem5: TcxGridLayoutItem;
    cxgrdlytmGridClientesLayoutItem6: TcxGridLayoutItem;
    cxgrdlytmGridClientesLayoutItem7: TcxGridLayoutItem;
    dxlytcrtdgrpGridClientesGroup1: TdxLayoutAutoCreatedGroup;
    cxGridClient: TcxGridDBTableView;
    cxColumnNombre: TcxGridDBColumn;
    cxColumnRFC: TcxGridDBColumn;
    cxColumnCodigo: TcxGridDBColumn;
    cxColumnRep: TcxGridDBColumn;
    dxBarManager1: TdxBarManager;
    zCliente: TZQuery;
    dsCliente: TDataSource;
    zConceptos: TZQuery;
    dsConceptos: TDataSource;
    dxPm1: TdxBarPopupMenu;
    BtnDescuentoConcepto: TdxBarButton;
    BtnDescuentoFactura: TdxBarButton;
    BtnQuitarTodo: TdxBarButton;
    cxGrd1: TcxGrid;
    cxGridConceptos: TcxGridDBTableView;
    cxgrdbclmnCantidad: TcxGridDBColumn;
    cxgrdbclmnConcepto: TcxGridDBColumn;
    cxgrdbclmnGrd1DBTableView1Column3: TcxGridDBColumn;
    cxgrdbclmnGrd1DBTableView1Column4: TcxGridDBColumn;
    level1: TcxGridLevel;
    lyConceptos: TdxLayoutControl;
    cxSpinCantidad: TcxSpinEdit;
    cbbConcepto: TcxLookupComboBox;
    cxCurrencyPrecio: TcxCurrencyEdit;
    btnMas: TcxButton;
    btn1: TcxButton;
    dxLyLayoutControl1Group_Root1: TdxLayoutGroup;
    lyCantidad: TdxLayoutItem;
    lyConcepto: TdxLayoutItem;
    lyImporte: TdxLayoutItem;
    lyBtnConceptos: TdxLayoutItem;
    dxlytmdxlytcntrl2Item5: TdxLayoutItem;
    lyClientes: TdxLayoutControl;
    cbbCliente: TcxDBExtLookupComboBox;
    Lbl5: TcxDBLabel;
    Lbl1: TcxDBLabel;
    Lbl2: TcxDBLabel;
    Lbl4: TcxDBLabel;
    Lbl3: TcxDBLabel;
    btn2: TcxButton;
    dxLyLayoutControl1Group_Root: TdxLayoutGroup;
    dxlytmdxlytcntrl1Item2: TdxLayoutItem;
    dxlytmdxlytcntrl1Item7: TdxLayoutItem;
    dxlytmdxlytcntrl1Item3: TdxLayoutItem;
    dxlytcrtdgrpdxlytcntrl1Group2: TdxLayoutAutoCreatedGroup;
    dxlytmdxlytcntrl1Item4: TdxLayoutItem;
    dxlytcrtdgrpdxlytcntrl1Group4: TdxLayoutAutoCreatedGroup;
    dxlytmdxlytcntrl1Item6: TdxLayoutItem;
    dxlytcrtdgrpdxlytcntrl1Group3: TdxLayoutAutoCreatedGroup;
    dxlytmdxlytcntrl1Item5: TdxLayoutItem;
    lyBtnClientes: TdxLayoutItem;
    cxGridGrd1DBTableView1: TcxGridDBTableView;
    cxColumnMotivo: TcxGridDBColumn;
    cxColumnDescuento: TcxGridDBColumn;
    level2: TcxGridLevel;
    cxGridDescImp: TcxGridDBTableView;
    cxColumnGridDescImpDescripcion: TcxGridDBColumn;
    cxColumnGridDescImpPorcentaje: TcxGridDBColumn;
    cxColumnGridDescImpSubtotal: TcxGridDBColumn;
    dxbrsprtr1: TdxBarSeparator;
    cxColumnGridDescImpIdServicio: TcxGridDBColumn;
    cxColumnGridDescImpTipo: TcxGridDBColumn;
    pnlDescuentos: TPanel;
    dxLyLayoutControl1Group_Root2: TdxLayoutGroup;
    dxlytcntrl3: TdxLayoutControl;
    pnl2: TPanel;
    btnOK: TcxButton;
    btnCancel: TcxButton;
    cxSpinPorcentaje: TcxSpinEdit;
    dxlytmdxlytcntrl3Item1: TdxLayoutItem;
    cxm1: TcxMemo;
    dxlytmdxlytcntrl3Item2: TdxLayoutItem;
    dxlytdckst1: TdxLayoutDockSite;
    cxColumnGridConceptosColumn1: TcxGridDBColumn;
    cxColumnGridConceptosColumn2: TcxGridDBColumn;
    pnl1: TPanel;
    dsImpuestos: TDataSource;
    dxbrManager1Bar: TdxBar;
    btnGuardar: TdxBarLargeButton;
    btnsalir: TdxBarLargeButton;
    btnGuadarTimbrar: TdxBarLargeButton;
    btnPreview: TdxBarLargeButton;
    img1: TcxDBImage;
    dxlytmdxlytcntrl1Item1: TdxLayoutItem;
    dxlytcrtdgrpdxlytcntrl1Group1: TdxLayoutAutoCreatedGroup;
    frxFactura1: TfrxReport;
    FrxDbDetalleFactura: TfrxDBDataset;
    FrxDbDatosFactura: TfrxDBDataset;
    zDatosFactura: TZQuery;
    zDetalleFactura: TZQuery;
    zImpuestosFactura: TZQuery;
    dsImpuesosFactura: TDataSource;
    dsDatosFactura: TDataSource;
    dsDetalleFactura: TDataSource;
    FrxDbImpuestos: TfrxDBDataset;
    dsEmpresa: TDataSource;
    frxDbEmpresa: TfrxDBDataset;
    zEstatusFactura: TZQuery;
    dxPanelPreview: TdxDockPanel;
    dxTabContenedor: TdxTabContainerDockSite;
    frxpvFactura: TfrxPreview;
    frxExportPDF: TfrxPDFExport;
    pnlBoton: TPanel;
    btnPrint: TcxButton;
    btnSave: TcxButton;
    zFormaPago: TZQuery;
    dsFormaPago: TDataSource;
    pnl3: TPanel;
    cxGrdIMp: TcxGrid;
    cxGridImp: TcxGridDBTableView;
    cxColumnGridImpColumn1: TcxGridDBColumn;
    cxColumnGridImpColumn2: TcxGridDBColumn;
    cxColumnGridImpColumn4: TcxGridDBColumn;
    levelIMp: TcxGridLevel;
    pnl4: TPanel;
    lySubtotales: TdxLayoutControl;
    cxCurrencySubtotal: TcxCurrencyEdit;
    dxLyLayoutControl1Group_Root3: TdxLayoutGroup;
    dxlytmdxlytcntrl4Item1: TdxLayoutItem;
    Panel1: TPanel;
    lyNeto: TdxLayoutControl;
    cxCurrencyNeto: TcxCurrencyEdit;
    dxLyNetoGroup_Root: TdxLayoutGroup;
    dxLayitemNeto: TdxLayoutItem;
    pnl5: TPanel;
    cxGbDefMetodoPago: TcxGroupBox;
    dxLayoutControl1: TdxLayoutControl;
    cbbFormaPago: TcxLookupComboBox;
    cxSpinParcialidad: TcxSpinEdit;
    cbbMetodoPago: TcxLookupComboBox;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    lyCombo2Fp: TdxLayoutItem;
    lyComboParcialidades: TdxLayoutItem;
    dxlytmLayoutControl1Item3: TdxLayoutItem;
    cxGbMetodoPago: TcxGroupBox;
    dxLayoutControl2: TdxLayoutControl;
    cxTextMetodoPago: TcxTextEdit;
    cxTextFormaPago: TcxTextEdit;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    btn3: TcxButton;
    dxlytmLayoutControl1Item1: TdxLayoutItem;
    pnl6: TPanel;
    btnFPago: TcxButton;
    dxlytmLayoutControl1Item2: TdxLayoutItem;
    btn5: TcxButton;
    dxlytcrtdgrpLayoutControl1Group1: TdxLayoutAutoCreatedGroup;
    cxTextParcialidades: TcxTextEdit;
    lyEditParcialidades: TdxLayoutItem;
    zMetodoPago: TZQuery;
    dsMetodoPago: TDataSource;
    zDescuentos: TZQuery;
    dsDescuentos: TDataSource;
    zDFAnsi: TZQuery;
    cxCurrencyDesc: TcxCurrencyEdit;
    dxlytmdxlytcntrl4Item2: TdxLayoutItem;
    cxCurrencySub: TcxCurrencyEdit;
    dxlytmdxlytcntrl4Item3: TdxLayoutItem;
    zMonedas: TZQuery;
    dsMonedas: TDataSource;
    cxTextMonedas: TcxTextEdit;
    dxlytmLayoutControl2Item2: TdxLayoutItem;
    cbbMonedas: TcxLookupComboBox;
    dxlytmLayoutControl1Item4: TdxLayoutItem;
    cxDateFecha: TcxDBDateEdit;
    dxLayitemClientesItem1: TdxLayoutItem;
    dxDockComentarios: TdxDockPanel;
    cxmComentarios: TcxMemo;
    dxlytmTimbre: TdxLayoutItem;
    imgTimbre: TcxImage;
    acList: TActionList;
    actEliminar: TAction;
    lyClientesGroup1: TdxLayoutAutoCreatedGroup;
    cxTextLeyendaParcialidad: TcxTextEdit;
    lyParcialidad: TdxLayoutItem;
    lyOriginalesGroup_Root: TdxLayoutGroup;
    lyOriginales: TdxLayoutControl;
    cxTextFolioOrig: TcxTextEdit;
    lyOriginalesItem3: TdxLayoutItem;
    cxCurrencyMontoOrig: TcxCurrencyEdit;
    lyOriginalesItem2: TdxLayoutItem;
    cxDateFechaOrig: TcxDateEdit;
    lyOriginalesItem1: TdxLayoutItem;
    cxCurrencyAcum: TcxCurrencyEdit;
    lyOriginalesItem4: TdxLayoutItem;
    procedure btnMasClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbbConceptoPropertiesEditValueChanged(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure dxPm1Popup(Sender: TObject);
    procedure BtnDescuentoConceptoClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure BtnQuitarTodoClick(Sender: TObject);
    procedure cxColumnGridConceptosColumn1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnsalirClick(Sender: TObject);
    procedure btnPreviewClick(Sender: TObject);
    procedure btnGuardarClick(Sender: TObject);
    procedure cbbClientePropertiesChange(Sender: TObject);
    procedure dxTabContenedorActiveChildChanged(Sender: TdxContainerDockSite;
      Child: TdxCustomDockControl);
    procedure btnSaveClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure cbbFormaPagoPropertiesChange(Sender: TObject);
    procedure btnFPagoClick(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure cxColumnGridImpColumn1PropertiesEditValueChanged(Sender: TObject);
    procedure btnGuadarTimbrarClick(Sender: TObject);
    procedure frxFactura1GetValue(const VarName: string; var Value: Variant);
    procedure btn2Click(Sender: TObject);
    procedure BtnDescuentoFacturaClick(Sender: TObject);
    procedure actEliminarExecute(Sender: TObject);
  private
    { Private declarations }
    IdFacturaActual: Integer;
    Dialog: TForm;
    procedure actualizarConceptos;
    procedure CargarImpuestos;
    procedure CalculaSubtotal;
    Procedure CalcularImpuestos;
    procedure CalcularNeto;
    procedure cargarDatosAnsi(Codificacion: String);
    procedure Controles(Habilitar: Boolean);
    Function ValidaPago(var cad: String): Boolean;
  public
    ModoInsert: Boolean;
    idFactura: Integer;
    SoloLectura: Boolean;
    ModoParcialidad: Boolean;
    IdPadre:Integer;
    FolioOrig, SerieOrig: string;
    FechaOrig: TDateTime;
    MontoOrig: Double;
    NoParcialidad: Integer;
    MontoAcum: Double;
    TotalParcialidades: Integer;
    idCliente: Integer;
    { Public declarations }
  end;

var
  FrmNewFactura: TFrmNewFactura;

  Emisor, Receptor: TPFContribuyente;
  Factura: TPFFacturaElectronica;
  Concepto: TPFConcepto;
  Conceptos: TPFConceptos;
  Impuestos: TPFImpuestos;

  Impuesto: TPFImpuesto;

  consecutivos:TPFFolio ;
  ProveedorTimbrado: TPFPac;
  Credenciales: TPFCredenciales;
  TimbreDeFactura: TPFTimbre;
  archivoFacturaXML: String;
  rutaImagenCBB: String;
  GeneradorCBB: TGeneradorCBB;
  CSD: TPFCSD;
//  Emisor, Receptor: TFEContribuyente;
//  Factura: TFacturaElectronica;
//  Concepto: TFEConcepto;
//  Conceptos: TFEConceptos;
//  Impuestos: TFEImpuestosTrasladados;
//
//  Impuesto: TFEImpuestoTrasladado;
//
//  consecutivos: TFEFolio ;
//  ProveedorTimbrado: TPACFinkOk;
//  Credenciales: TFEPACCredenciales;
//  TimbreDeFactura: TFETimbre;
//  archivoFacturaXML: String;
//  rutaImagenCBB: String;
//  GeneradorCBB: TGeneradorCBB;
//  CSD: TFacturaElectronica;


implementation

{$R *.dfm}

Uses
  UFrmServicio, UFrmInicio, Progreso, UHiloProgreso, UFrmCatalogoClientes, UFrmFacturas ;

procedure TFrmNewFactura.actEliminarExecute(Sender: TObject);
begin
  BtnQuitarTodoClick(nil);
end;

procedure TFrmNewFactura.actualizarConceptos;
begin
  zDetalleFactura.first;
  while not zDetalleFactura.Eof do
  begin
    if zConceptos.Locate('IdServicio', zDetalleFactura.FieldByName('IdServicio').AsInteger, [])  then
    begin
      zDetalleFactura.Edit;
      zDetalleFactura.FieldByName('IdServicio').AsInteger := zDetalleFactura.FieldByName('IdServicio').AsInteger;
      zDetalleFactura.FieldByName('Servicio').AsString := zConceptos.FieldByName('servicio').AsString;
      zDetalleFactura.FieldByName('Descripcion').AsString := zConceptos.FieldByName('Descripcion').AsString;
      zDetalleFactura.FieldByName('UnidadMedida').AsString := zConceptos.FieldByName('Unidad').AsString;
      zDetalleFactura.FieldByName('IdPrecio').asInteger := zConceptos.FieldByName('idMovimiento').asInteger;
      zDetalleFactura.FieldByName('PrecioUnitario').asFloat := zConceptos.FieldByName('Precio').asFloat;
      zDetalleFactura.FieldByName('Subtotal').asFloat := zConceptos.FieldByName('Precio').asFloat * zDetalleFactura.FieldByName('Cantidad').asFloat;
      zDetalleFactura.Post;
    end;
    zDetalleFactura.Next;
  end;
end;

procedure TFrmNewFactura.btn1Click(Sender: TObject);
begin
  try
    if ModoParcialidad and (MontoOrig < cxCurrencyPrecio.value) then
      raise eWarning.Create('El importe del pago parcial, no debe exceder al monto original de la factura.');

    try
      if zDetalleFactura.Active and not ModoParcialidad then
      begin
        if not zDetalleFactura.Locate('IdServicio', zConceptos.FieldByName('IdServicio').AsInteger,[]) then
        begin
          zDetalleFactura.Append;
          zDetalleFactura.FieldByName('idDetalleFactura').AsInteger := 0;
          zDetalleFactura.FieldByName('idFactura').AsInteger := 0;
          zDetalleFactura.FieldByName('IdServicio').AsInteger := zConceptos.FieldByName('IdServicio').AsInteger;
          zDetalleFactura.FieldByName('Servicio').AsString := zConceptos.FieldByName('servicio').AsString;
          zDetalleFactura.FieldByName('Cantidad').AsExtended := cxSpinCantidad.Value;
          zDetalleFactura.FieldByName('Descripcion').AsString := zConceptos.FieldByName('Descripcion').AsString;
          zDetalleFactura.FieldByName('UnidadMedida').AsString := zConceptos.FieldByName('Unidad').AsString;
          zDetalleFactura.FieldByName('IdPrecio').AsExtended := zConceptos.FieldByName('IdMovimiento').AsExtended;
          zDetalleFactura.FieldByName('PrecioUnitario').AsExtended := cxCurrencyPrecio.Value;
          zDetalleFactura.FieldByName('Subtotal').AsExtended := cxCurrencyPrecio.Value * zDetalleFactura.FieldByName('Cantidad').AsExtended;
          zDetalleFactura.Post;
        end
        else
        begin
          zDetalleFactura.edit;
          zDetalleFactura.FieldByName('Cantidad').AsExtended := cxSpinCantidad.Value  + zDetalleFactura.FieldByName('Cantidad').AsExtended;
          zDetalleFactura.FieldByName('IdPrecio').AsExtended := zConceptos.FieldByName('IdMovimiento').AsExtended;
          zDetalleFactura.FieldByName('PrecioUnitario').AsExtended := cxCurrencyPrecio.Value;
          zDetalleFactura.FieldByName('Subtotal').AsExtended := cxCurrencyPrecio.Value * zDetalleFactura.FieldByName('Cantidad').AsExtended;
          zDetalleFactura.Post;
        end;
      end
      else
        if ModoParcialidad then
        begin
          zDetalleFactura.Append;
          zDetalleFactura.FieldByName('idDetalleFactura').AsInteger := 0;
          zDetalleFactura.FieldByName('idFactura').AsInteger := 0;
          zDetalleFactura.FieldByName('IdServicio').Clear;
          zDetalleFactura.FieldByName('Servicio').AsString := cxTextLeyendaParcialidad.Text;
          zDetalleFactura.FieldByName('Cantidad').AsExtended := cxSpinCantidad.Value;
          zDetalleFactura.FieldByName('Descripcion').AsString := cxTextLeyendaParcialidad.Text;
          zDetalleFactura.FieldByName('UnidadMedida').AsString := 'N.A.';
          zDetalleFactura.FieldByName('IdPrecio').Clear;
          zDetalleFactura.FieldByName('PrecioUnitario').AsExtended := cxCurrencyPrecio.Value;
          zDetalleFactura.FieldByName('Subtotal').AsExtended := cxCurrencyPrecio.Value * zDetalleFactura.FieldByName('Cantidad').AsExtended;
          zDetalleFactura.Post;
        end;
    finally
      if ModoParcialidad then
        btn1.Enabled := zDetalleFactura.RecordCount = 0;
      CalculaSubtotal;
    end;
  except
    on e: eWarning do
    begin
      if e.message <> '***' then
        MsgBox.ShowModal('Validación.', e.Message, cmtWarning, [cmbOK]);
    end;

    on e: exception do
    begin
      MsgBox.ShowModal('Error.' ,pMensajeError + e.Message, cmtError, [cmbOK]);
    end;
  end;
end;

procedure TFrmNewFactura.btn2Click(Sender: TObject);
begin
  try
    Self.WindowState := wsMinimized;
    LlamarSubForm(TfrmCatalogoClientes, frmCatalogoClientes, zCliente , zCliente, 'IdProveedorCliente');
  finally
    Self.WindowState := wsMaximized;
  end;
end;

procedure TFrmNewFactura.btn3Click(Sender: TObject);
begin
  cxTextMetodoPago.Text := cbbMetodoPago.Text;
  cxTextFormaPago.Text := cbbFormaPago.Text;
  cxTextParcialidades.Text := cxSpinParcialidad.Text;
  cxTextMonedas.Text := zMonedas.FieldByName('Moneda').AsString;

  zDatosFactura.FieldByName('IdMoneda').AsInteger := zMonedas.FieldByName('IdMoneda').AsInteger;
  zDatosFactura.FieldByName('CodigoMoneda').AsString := zMonedas.FieldByName('Codigo').AsString;
  zDatosFactura.FieldByName('Moneda').AsString := zMonedas.FieldByName('Moneda').AsString;

  if ModoParcialidad then
  begin
    zDatosFactura.FieldByName('IdFormaPago').Clear;
    zDatosFactura.FieldByName('FormaPago').AsString := 'Parcialidad No. ' + intToStr(NoParcialidad) + ' de '  + inttoStr(TotalParcialidades);
    cxTextFormaPago.Text := zDatosFactura.FieldByName('FormaPago').AsString;
  end
  else
  begin
    zDatosFactura.FieldByName('IdFormaPago').AsInteger := zFormaPago.FieldByName('IdFormaPago').AsInteger;
    zDatosFactura.FieldByName('FormaPago').AsString := zFormaPago.FieldByName('FormaPago').AsString;
  end;

  zDatosFactura.FieldByName('IdMetodopago').AsString := zMetodoPago.FieldByName('idCOndicionPago').AsString;
  zDatosFactura.FieldByName('MetodoPago').AsString := zMetodoPago.FieldByName('CondicionPago').AsString;
  if zFormaPago.FieldByName('TipoPago').AsString = 'Parcial' then
  begin
    cxTextParcialidades.Text := cxSpinParcialidad.Text;
    zDatosFactura.FieldByName('NoParcialidades').AsInteger := cxSpinParcialidad.Value
  end
  else
  begin
    zDatosFactura.FieldByName('NoParcialidades').Clear;
    cxTextParcialidades.Text := ''
  end;
  cxGbMetodoPago.Visible := True;
  cxGbDefMetodoPago.Visible := False;
end;

procedure TFrmNewFactura.btnFPagoClick(Sender: TObject);
begin
  cxGbDefMetodoPago.Visible := True;
  cxGbMetodoPago.Visible := False;
end;

procedure TFrmNewFactura.btn5Click(Sender: TObject);
begin
  cxGbMetodoPago.Visible := True;
  cxGbDefMetodoPago.Visible := False;
end;

procedure TFrmNewFactura.btnCancelClick(Sender: TObject);
begin
  if zDescuentos.State in [dsInsert, dsEdit] then
    zDescuentos.Cancel;
end;

procedure TFrmNewFactura.BtnDescuentoConceptoClick(Sender: TObject);
begin
  try
    if zDescuentos.State in [dsInsert, dsEdit] then
      zDescuentos.Cancel;

    cxSpinPorcentaje.Value := 0;
    cxm1.Lines.Clear;
    CreateDialog(Dialog, TForm(Self), pnlDescuentos, 'Agregar descuento.');
  finally
    CalculaSubtotal;
    cxGridDescImp.DataController.Refresh;
  end;
end;

procedure TFrmNewFactura.BtnDescuentoFacturaClick(Sender: TObject);
begin
  try
    if zDescuentos.State in [dsInsert, dsEdit] then
      zDescuentos.Cancel;

    cxSpinPorcentaje.Value := 0;
    cxm1.Lines.Clear;
    CreateDialog(Dialog, TForm(Self), pnlDescuentos, 'Descuento a Factura.');
  finally
    CalculaSubtotal;
    cxGridDescImp.DataController.Refresh;
  end;
end;

procedure TFrmNewFactura.btnGuadarTimbrarClick(Sender: TObject);
var
  Cursor: TCursor;
  LocIdFactura, carpetaCFDI, carpetaReceptor, LocRFC, NoSerieEmisor: String;
  BlobSTream: Tstream;
  FileStream: TFileStream;
  FechaHoraEmision: TDateTime;
  pg: THiloProgreso;
  NoPasaValidacion: Boolean;
  Mensaje: String;
begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := crAppStart;
      btnGuardar.Click;

      NoPasaValidacion := ValidaPago(Mensaje);

      if NoPasaValidacion then
        raise eWarning.Create('Antes de proceder a timbrar es necesario llenar la siguiente información de pago: ' + Mensaje);

      FechaHoraEmision := Now;
      cargarDatosAnsi(pANSI);

      //Certificados y llaves de la empresa
      CSD.Certificado := dsEmpresa.DataSet.FieldByName('Certificado').AsString;
      CSD.Llave       := dsEmpresa.DataSet.FieldByName('llave').AsString;
      CSD.Clave       := dsEmpresa.DataSet.FieldByName('ClaveCSD').AsString;

      //Datos del Emisor
      Emisor.RFC                      := zDatosFactura.FieldByName('RFCEmpresa').AsString;
      Emisor.RazonSocial              := trim(zDatosFactura.FieldByName('Titulo').AsString);
      Emisor.Domicilio.Calle          := trim(zDatosFactura.FieldByName('Calle').AsString);
      Emisor.Domicilio.Numero         := zDatosFactura.FieldByName('noExt').AsString;
      Emisor.Domicilio.NumeroInterior := zDatosFactura.FieldByName('Noint').AsString;
      Emisor.Domicilio.CodigoPostal   := zDatosFactura.FieldByName('Cp').AsString;
      Emisor.Domicilio.Colonia        := trim(zDatosFactura.FieldByName('Colonia').AsString);
      Emisor.Domicilio.Municipio      := trim(zDatosFactura.FieldByName('ciudad').AsString);
      Emisor.Domicilio.Estado         := trim(zDatosFactura.FieldByName('Estado').AsString);
      Emisor.Domicilio.Pais           := trim(zDatosFactura.FieldByName('Pais').AsString);;
      Emisor.Domicilio.Localidad      := trim(zDatosFactura.FieldByName('ciudad').AsString);
      Emisor.ExpedidoEn               := Emisor.Domicilio;
      Emisor.RegimenFiscal            := trim(zDatosFactura.FieldByName('RegimenFiscal').AsString);

      //Datos del receptor
      Receptor.RFC                       := zDatosFactura.FieldByName('RFCreceptor').AsString;
      Receptor.RazonSocial               := trim(zDatosFactura.FieldByName('Receptor').AsString);
      Receptor.Domicilio.Calle           := trim(zDatosFactura.FieldByName('CalleRec').AsString);
      Receptor.Domicilio.Numero          := trim(zDatosFactura.FieldByName('noExtRec').AsString);
      Receptor.Domicilio.NumeroInterior  := trim(zDatosFactura.FieldByName('noExtRec').AsString);
      Receptor.Domicilio.CodigoPostal    := zDatosFactura.FieldByName('CpRec').AsString;
      Receptor.Domicilio.Colonia         := trim(zDatosFactura.FieldByName('ColoniaRec').AsString);
      Receptor.Domicilio.Municipio       := trim(zDatosFactura.FieldByName('ciudadRec').AsString);
      Receptor.Domicilio.Estado          := trim(zDatosFactura.FieldByName('EstadoRec').AsString);
      Receptor.Domicilio.Pais            := trim(zDatosFactura.FieldByName('PaisRec').AsString);;
      Receptor.Domicilio.Localidad       := trim(zDatosFactura.FieldByName('ciudadRec').AsString);

      //Información adicional de factura
      Factura := TPFFacturaElectronica.Create(Emisor, Receptor, trFactura);
      Factura.Propiedades.TipoDeComprobante := 'ingreso';

      if ModoParcialidad then
      begin
        factura.Propiedades.FolioFiscalOrig := FolioOrig;
        factura.Propiedades.FechaValida := 'Si';
        factura.Propiedades.FechaFolioFiscalOrig := FechaOrig;
        factura.Propiedades.SerieFolioFiscalOrig := SerieOrig;
        factura.Propiedades.MontoFolioFiscalOrig := MontoOrig
      end;

      //Forma de pago y metodo de pago
      Factura.Propiedades.FormaDePago      := zDatosFactura.FieldByName('FormaPago').asString;
      Factura.Propiedades.MetodoDePago     := zDatosFactura.FieldByName('MetodoPago').AsString;
      Factura.Folio.Folio                  := zDatosFactura.FieldByName('IdFactura').AsInteger ;
      Factura.Propiedades.Moneda           := zDatosFactura.FieldByName('CodigoMoneda').AsString;
      Factura.Propiedades.DescuentoImporte := Abs(cxCurrencyDesc.Value);

      //Conceptos que conforman la factura
      zDetalleFactura.First;
      while Not zDetalleFactura.Eof do
      begin
        Concepto.Cantidad       := zDetalleFactura.FieldByName('Cantidad').AsFloat;
        Concepto.Unidad         := zDetalleFactura.FieldByName('UnidadMedida').AsString;
        Concepto.Descripcion    := zDetalleFactura.FieldByName('Servicio').AsString;
        Concepto.PrecioUnitario := zDetalleFactura.FieldByName('PrecioUnitario').AsFloat;
        Factura.AgregarConceptos(Concepto);
        zDetalleFactura.Next;
      end;

      //impuestos
      zImpuestosFactura.First;
      while Not zImpuestosFactura.Eof do
      begin
        if zImpuestosFactura.FieldByName('Aplicar').AsString = 'True' then
        begin
          if zImpuestosFactura.FieldByName('Tipo').AsString = 'Trasladado' then
            Impuesto.Tipo := impTrasladado
          else
            Impuesto.Tipo := impRetenido;

          Impuesto.Impuesto := UpperCase(zImpuestosFactura.FieldByName('Descripcion').AsString);
          Impuesto.Tasa     := zImpuestosFactura.FieldByName('porcentaje').AsFloat;
          Impuesto.Importe  := zImpuestosFactura.FieldByName('SubTotal').AsFloat;
          Factura.AgregarImpuestos(Impuesto);
        end;
        zImpuestosFactura.Next;
      end;

      LocRFC := zDatosFactura.FieldByName('rfcReceptor').AsString;

      CarpetaCFDI :=  dsEmpresa.DataSet.FieldByName('ArchivosEmpresa').AsString;
      if Not(DirectoryExists(CarpetaCFDI)) then
        CreateDir(CarpetaCFDI);
      carpetaReceptor := CarpetaCFDI + '\' + LocRFC;
      if Not(DirectoryExists(carpetaReceptor)) then
      begin
        CreateDir(carpetaReceptor);
      end;

      archivoFacturaXML := carpetaReceptor + '\' + zDatosFactura.FieldByName('IdFactura').AsString + '-' + LocRFC + '.xml';
      rutaImagenCBB := carpetaReceptor + '\' + zDatosFactura.FieldByName('IdFactura').AsString + '-' + LOCRFC+ '.jpg';

      Factura.SellarXML(CSD);
      Factura.Generar;
      Factura.Guardar(carpetaReceptor + '\' + zDatosFactura.FieldByName('IdFactura').AsString + '-' + LocRFC + '_Copy.xml');

      ProveedorTimbrado := TPFPACFO.Create;
      Credenciales.RFC  := Emisor.RFC;
      ProveedorTimbrado.AsignarCredenciales(Credenciales);
      TimbreDeFactura   := ProveedorTimbrado.TimbrarXML(Factura.XML);
      Factura.AsignarTimbreFiscal(TimbreDeFactura);

      Factura.Guardar(archivoFacturaXML);
      generadorCBB := TGeneradorCBB.Create;
      Try
        generadorCBB.GenerarImagen(Emisor,
                                 Receptor,
                                 Factura.Total,
                                 TimbreDeFactura.UUID,
                                 rutaImagenCBB);
      Finally
        generadorCBB.Free;
      End;

      //Guardar en registro los datos faltantes
      if Not NoPasaValidacion then
        cargarDatosAnsi('UTF8');

      if Not (zDatosFactura.State = dsEdit) then
        zDatosFactura.Edit;

      if FileExists(csd.Certificado) then
        NoSerieEmisor := Copy(ExtractFileName(csd.Certificado), 0, LastDelimiter('.',ExtractFileName(csd.Certificado)) - 1);

      with zDatosFactura do
      begin
        FieldValues['FechaHoraEmision'] := FechaHoraEmision;
        FieldValues['FolioFiscal'] := TimbreDeFactura.UUID;
        FieldValues['SelloCFDI'] := TimbreDeFactura.SelloCFD;
        FieldValues['SelloSAT'] := TimbreDeFactura.SelloSAT;
        FieldValues['CadenaSAT'] := Factura.CadenaOriginal;
        FieldValues['XML'] := TimbreDeFactura.XML;
        FieldValues['SerieSAT'] := TimbreDeFactura.NoCertificadoSAT;
        FieldValues['SerieCSD'] := NoSerieEmisor;//Factura. ;
        FieldValues['NoCertificadoSAT'] := TimbreDeFactura.NoCertificadoSAT;
        FieldValues['FechaHoraCertificado'] := TimbreDeFactura.FechaTimbrado;//StrToTime(FormatDateTime('tt',));
      end;

      BlobSTream:=zDatosFactura.CreateBlobStream(zDatosFactura.FieldByName('Qr'),bmwrite);
      try
        FileStream := TFileStream.Create(rutaImagenCBB, fmOpenRead);
        try
          BlobStream.CopyFrom(FileStream, FileStream.Size);
        finally
          FileStream.Destroy;
        end;
      Finally
        BlobStream.Destroy;
      end;

      zDatosFactura.Post;

      //Agregar Estatus de timbrado
      with zEstatusFactura do
      begin
        Insert;
        FieldByName('idEstatus').AsInteger := 0;
        FieldByName('IdFactura').AsInteger := IdFacturaActual;
        FieldByName('Estatus').AsString := 'Timbrada';
        FieldByName('Fecha').AsDateTime := Now;
        Post;
      end;

      if zDatosFactura.Connection.InTransaction then
        zDatosFactura.Connection.Commit;

      Controles(False);
    finally

      zImpuestosFactura.Filtered := False;
      Screen.Cursor := Cursor;
    end;
  except
    on e: exception do
    begin
      if NoPasaValidacion then
      begin
        if Not NoPasaValidacion then
          cargarDatosAnsi('UTF8');
        MsgBox.ShowModal('Aviso', e.Message, cmtWarning, [cmbOK]);
      end
      else
      begin
        MsgBox.ShowModal('Error',pMensajeError + e.Message, cmtError, [cmbOK]);
        PostMessage(Self.Handle, WM_CLOSE, 0, 0);
      end;
    end;
  end;
end;

procedure TFrmNewFactura.btnGuardarClick(Sender: TObject);
var
  UltId: Integer;
  cursor: TCursor;
  Inserto: Boolean;
begin
  try
    cursor := Screen.Cursor;
    try
      Screen.Cursor := crAppStart;
      inserto := zDatosFactura.State = dsInsert;

      if ModoParcialidad then
      begin
        zDatosFactura.FieldByName('IdPadre').AsInteger := IdPadre;
        zDatosFactura.FieldByName('ParcialidadNo').AsInteger := NoParcialidad;
      end;

      zDatosFactura.FieldByName('TotalFactura').AsExtended := RoundTo(cxCurrencyNeto.Value, varGlobal.Elemento('Decimales').AsInteger*-1);
      zDatosFactura.FieldByName('Subtotal').AsExtended := RoundTo(cxCurrencySub.Value, varGlobal.Elemento('Decimales').AsInteger*-1);
      zDatosFactura.FieldByName('Descuentos').AsExtended := RoundTo(cxCurrencyDesc.Value, varGlobal.Elemento('Decimales').AsInteger*-1);
      zDatosFactura.FieldByName('Comentarios').AsString := cxmComentarios.Text;
      zDatosFactura.Post;


      //Si se insertó se toma el ultimo id insertado en caso contrario
      //Toma el Id activo
      if Inserto then
        UltId := UltimaPK
      else
        UltId := zDatosFactura.FieldByName('IdFactura').AsInteger;

      IdFacturaActual := UltId;

      //Insertar el estatus de la factura
      if zEstatusFactura.State in [dsEdit, dsInsert] then
      begin
        zEstatusFactura.FieldByName('Fecha').AsDateTime := Now;
        zEstatusFactura.FieldByName('IdFactura').AsInteger := UltId;
        zEstatusFactura.Post;
      end;

      //Grabar los hijos con el Id del registro master asignado en la base de datos
      zDetalleFactura.First;
      while not zDetalleFactura.Eof do
      begin
        zDetalleFactura.Edit;
        zDetalleFactura.FieldByName('IdFactura').AsInteger := UltId;
        zDetalleFactura.Post;
        zDetalleFactura.Next;
      end;

      //Grabar los hijos(Descuentos) con el respectivo Id de factura asignado
      zDescuentos.First;
      while not zDescuentos.Eof do
      begin
        zDescuentos.Edit;
        zDescuentos.FieldByName('IdFactura').AsInteger := UltId;
        zDescuentos.Post;
        zDescuentos.Next;
      end;

      zImpuestosFactura.First;
      while not zImpuestosFactura.Eof do
      begin
        zImpuestosFactura.Edit;
        zImpuestosFactura.FieldByName('IdFactura').AsInteger := UltId;
        zImpuestosFactura.Post;
        zImpuestosFactura.Next;
      end;

      If zDatosFactura.Connection.InTransaction then
        zDatosFactura.Connection.Commit;

      If not zDatosFactura.Connection.InTransaction then
        zDatosFactura.Connection.StartTransaction;

      //Reiniciar la edición para que el usuario continue haciendo cambios
      zDatosFactura.Edit;

    finally
      Screen.Cursor := Cursor;
    end;
  except
    on e: eWarning do
    begin
      if e.message <> '***' then
        MsgBox.ShowModal('Validación.', e.Message, cmtWarning, [cmbOK]);
    end;

    on e: exception do
    begin
      MsgBox.ShowModal('Error.' ,pMensajeError + e.Message, cmtError, [cmbOK]);
      if zDatosFactura.Active and (zDatosFactura.State in [dsInsert, dsEdit]) then
        zDatosFactura.Cancel;

      if zDatosFactura.Connection.InTransaction then
        zDatosFactura.Connection.Rollback;

      if zDetalleFactura.Connection.InTransaction then
        zDetalleFactura.Connection.Rollback;

      PostMessage(Self.Handle, Wm_CLose, 0,0 );
    end;
  end;
end;

procedure TFrmNewFactura.btnMasClick(Sender: TObject);
var
  Cursor: TCursor;
begin
  Cursor := Screen.Cursor;
  try
    btnGuardar.Click;
    Self.WindowState := wsMinimized;
    LlamarSubForm(TFrmServicio, FrmServicio, zConceptos , zConceptos, 'IdServicio');
  finally
    Self.WindowState := wsMaximized;
    actualizarConceptos;
  end;
end;

procedure TFrmNewFactura.btnOKClick(Sender: TObject);
begin
  try
    zDescuentos.Append;
    zDescuentos.FieldByName('IdServicio').AsInteger := zDetalleFactura.FieldByName('IdServicio').AsInteger;
    zDescuentos.FieldByName('IdFactura').AsInteger := 0;
    zDescuentos.FieldByName('Tipo').AsString := 'Descuento';
    zDescuentos.FieldByName('descripcion').AsString := cxm1.Text;
    zDescuentos.FieldByName('Porcentaje').AsFloat := cxSpinPorcentaje.Value;
    zDescuentos.FieldByName('Subtotal').AsFloat := (cxSpinPorcentaje.Value / 100) * zDetalleFactura.FieldByName('Subtotal').AsFloat;
    zDescuentos.Post;
  finally
    CalculaSubtotal;
  end;
end;

procedure TFrmNewFactura.btnPreviewClick(Sender: TObject);
begin
  try
    //Filtrar solo los impuesyos que aplican a esta factura
    zImpuestosFactura.Filtered := False;
    zImpuestosFactura.Filter := 'Aplicar = ' + QuotedStr('True');
    zImpuestosFactura.Filtered := True;

    frxFactura1.LoadFromFile(ExtractFilePath(Application.ExeName) + 'Reportes\ReporteFactura.fr3' ) ;
    frxFactura1.ShowReport(True);
    dxtabContenedor.ActiveChildIndex := 1;
  finally
    ;
  end;
end;

procedure TFrmNewFactura.btnPrintClick(Sender: TObject);
begin
  frxpvFactura.Print;
end;

procedure TFrmNewFactura.BtnQuitarTodoClick(Sender: TObject);
var
  locIdConcepto, i: Integer;
begin
  if MsgBox.ShowModal('Aviso.', 'Estás a punto de eliminar un concepto de la factura. ¿Deseas hacerlo?', cmtConfirmation, [cMbDelete, cMbNo]) = mrYes then
  begin
    try
      if Not Modoparcialidad then
      begin
        zDescuentos.Filtered := False;
        zDescuentos.Filter := 'IdServicio =' + zDetalleFactura.FieldByName('IdServicio').AsString;
        zDescuentos.Filtered := True;
        zDescuentos.First;
        while Not zDescuentos.Eof do
        begin
          zDescuentos.First;
          zDescuentos.Delete;
          zDescuentos.First;
        end;
      end;

      zDetalleFactura.Delete;
    finally
      zDescuentos.Filtered := False;
      if ModoParcialidad then
        btn1.Enabled := zDetalleFactura.RecordCount = 0;
      CalculaSubtotal;
    end;
  end;
end;

procedure TFrmNewFactura.btnsalirClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmNewFactura.btnSaveClick(Sender: TObject);
begin
  frxExportPDF.FileName := 'Factura ' + zDatosFactura.FieldByName('Titulo').AsString;
  frxpvFactura.Export(frxExportPDF);
end;

procedure TFrmNewFactura.CalcularImpuestos;
begin
  //Filtrar Todos los impuestos que aplican por  NETO
  try
    zImpuestosFactura.DisableControls;
    zImpuestosFactura.Filtered := False;
    zImpuestosFactura.Filter := 'AplicaSobre = ' + QuotedStr('NETO');
    zImpuestosFactura.Filtered := True;

    zImpuestosFactura.First;
    while Not zImpuestosFactura.Eof do
    begin
      zImpuestosFactura.Edit;
      zImpuestosFactura.FieldByName('Subtotal').AsExtended := RoundTo(cxCurrencySubtotal.Value * (zImpuestosFactura.FieldByName('porcentaje').AsExtended / 100), varGlobal.Elemento('Decimales').AsInteger*-1);;
      zImpuestosFactura.Post;
      zImpuestosFactura.Next;
    end;

  finally
    zImpuestosFactura.Filtered := False;
    zImpuestosFactura.EnableControls;
    CalcularNeto;
  end;
end;

procedure TFrmNewFactura.CalcularNeto;
var
  Retenciones, Trasladado: Extended;
begin
  try
    Retenciones := 0;
    Trasladado := 0;

    zImpuestosFactura.First;
    while not zImpuestosFactura.Eof do
    begin
      If (zImpuestosFactura.FieldByName('Aplicar').asString = 'True') and (zImpuestosFactura.FieldByName('Tipo').asString = 'Retenido') then
        Retenciones := Retenciones  + zImpuestosFactura.FieldByName('Subtotal').asFloat
      else if (zImpuestosFactura.FieldByName('Aplicar').asString = 'True') and (zImpuestosFactura.FieldByName('Tipo').asString = 'Trasladado') then
        Trasladado := Trasladado + zImpuestosFactura.FieldByName('Subtotal').asFloat;

      zImpuestosFactura.Next;
    end;
  finally
    cxCurrencyNeto.Value := cxCurrencySubtotal.Value + (Trasladado  - Retenciones);
  end;
end;

procedure TFrmNewFactura.CalculaSubtotal;
var
  SubTotal: Extended;
  Descuentos: Extended;
begin
  try
    SubTotal := 0;

    zDetalleFactura.First;
    while not zDetalleFactura.Eof do
    begin
      SubTotal := SubTotal + zDetalleFactura.FieldByName('Subtotal').AsFloat;
      zDetalleFactura.Next;
    end;
    cxCurrencySub.Value := SubTotal;

    Descuentos := 0;
    zDescuentos.First;
    while not zDescuentos.Eof do
    begin
      Descuentos := Descuentos - zDescuentos.FieldByName('Subtotal').AsFloat;
      zDescuentos.Next;
    end;
    cxCurrencyDesc.Value := Descuentos;
  finally
    cxCurrencySubtotal.Value := SubTotal + Descuentos;
    CalcularImpuestos;
  end;
end;

procedure TFrmNewFactura.cargarDatosAnsi(Codificacion: String);
var
  cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    try
      UDMConection.inicializaConAnsi;
      Screen.Cursor := crAppStart;

      if not AsignarSQL(zDatosFactura, 'factura_facturas', pUpdate, Codificacion) then
        raise exception.Create(pErrorConsulta + ' [factura_facturas]');

      if not AsignarSQL(zEstatusFactura, 'factura_estatusfactura', pUpdate, Codificacion) then
        raise exception.Create(pErrorConsulta + ' [factura_estatusfactura]');

      if not AsignarSQL(zDetalleFactura, 'factura_detallefacturas', pUpdate, Codificacion) then
        raise exception.Create(pErrorConsulta + ' [factura_facturas]');

      if not AsignarSQL(zDescuentos, 'factura_descuentoxfactura', pReadOnly, Codificacion) then
        raise exception.Create(pErrorConsulta + ' [factura_descuentoxfactura]');

      if not AsignarSQL(zImpuestosFactura, 'factura_impuestoxfactura', pReadOnly, Codificacion) then
        raise exception.Create(pErrorConsulta + ' [factura_impuestoxfactura]');

      if not FiltrarDataset(zDatosFactura, 'IdFactura', [IdFacturaActual]) then
        raise Exception.Create(pErrorFiltrar + ' [factura_facturas]');

      if zDatosFactura.Active then
        zDatosFactura.Refresh
      else
        zDatosFactura.Open;

      if not FiltrarDataset(zDescuentos, 'IdFactura', [IdFacturaActual]) then
        raise Exception.Create(pErrorFiltrar + ' [factura_descuentoxfactura]');

      if zDescuentos.Active then
        zDescuentos.Refresh
      else
        zDescuentos.Open;

      if not FiltrarDataset(zDetalleFactura, 'IdFactura', [IdFacturaActual]) then
        raise Exception.Create(pErrorFiltrar + ' [factura_facturas]');

      if zDetalleFactura.Active then
        zDetalleFactura.Refresh
      else
        zDetalleFactura.Open;

      if not FiltrarDataset(zEstatusFactura, 'IdFactura', [IdFacturaActual]) then
        raise Exception.Create(pErrorFiltrar + ' [factura_estatusfactura]');

      if zEstatusFactura.Active then
        zEstatusFactura.Refresh
      else
        zEstatusFactura.Open;

      if not FiltrarDataset(zImpuestosFactura, 'IdFactura', [IdFacturaActual]) then
        raise Exception.Create(pErrorFiltrar + ' [factura_impuestoxfactura]');

      if zImpuestosFactura.Active then
        zImpuestosFactura.Refresh
      else
        zImpuestosFactura.Open;
    finally
      screen.Cursor := Cursor;
    end;
  except
    raise;
  end;
end;

procedure TFrmNewFactura.CargarImpuestos;
begin
  if ModoInsert and  zImpuestosFactura.Active and (dsImpuestos.DataSet.active) then
  begin
    TZQuery(dsImpuestos.DataSet).First;
    while not TZQuery(dsImpuestos.DataSet).EOF do
    begin
      zImpuestosFactura.Append;
      zImpuestosFactura.FieldByName('Aplicar').asString := 'True';
      zImpuestosFactura.FieldByName('IdFactura').AsInteger := 0;
      zImpuestosFactura.FieldByName('IdImpuesto').AsInteger := TZQuery(dsImpuestos.DataSet).FieldByName('IdImpuesto').asInteger;
      zImpuestosFactura.FieldByName('Descripcion').AsString := TZQuery(dsImpuestos.DataSet).FieldByName('Impuesto').AsString; //+ ' (' + (TZQuery(dsImpuestos.DataSet).FieldByName('Valor').AsString) + ' %)';
      zImpuestosFactura.FieldByName('Alias').AsString := TZQuery(dsImpuestos.DataSet).FieldByName('Alias').AsString;
      zImpuestosFactura.FieldByName('porcentaje').AsFloat := TZQuery(dsImpuestos.DataSet).FieldByName('Valor').AsFloat;
      zImpuestosFactura.FieldByName('Subtotal').AsFloat := 0;
      zImpuestosFactura.FieldByName('tipo').asString := TZQuery(dsImpuestos.DataSet).FieldByName('Tipoimpuesto').asString;
      zImpuestosFactura.FieldByName('AplicaSobre').AsString := TZQuery(dsImpuestos.DataSet).FieldByName('AplicaSobre').AsString;
      zImpuestosFactura.Post;
      TZQuery(dsImpuestos.DataSet).Next;
    end;
  end
  else
  begin
    //Solo si la factura está creada se puede modificar editar a la configuracion mas actual y agregar los impuestos que falten
    TZQuery(dsImpuestos.DataSet).First;
    while not TZQuery(dsImpuestos.DataSet).EOF do
    begin
      if zImpuestosFactura.Locate('IdImpuesto', TZQuery(dsImpuestos.DataSet).FieldByName('IdImpuesto').asInteger, []) then
      begin
        zImpuestosFactura.Edit;
        zImpuestosFactura.FieldByName('IdImpuesto').AsInteger := TZQuery(dsImpuestos.DataSet).FieldByName('IdImpuesto').asInteger;
        zImpuestosFactura.FieldByName('Descripcion').AsString := TZQuery(dsImpuestos.DataSet).FieldByName('Impuesto').AsString; //+ ' (' + (TZQuery(dsImpuestos.DataSet).FieldByName('Valor').AsString) + ' %)';
        zImpuestosFactura.FieldByName('Alias').AsString := TZQuery(dsImpuestos.DataSet).FieldByName('Alias').AsString;
        zImpuestosFactura.FieldByName('porcentaje').AsFloat := TZQuery(dsImpuestos.DataSet).FieldByName('Valor').AsFloat;
        zImpuestosFactura.FieldByName('Subtotal').AsFloat := 0;
        zImpuestosFactura.FieldByName('tipo').asString := TZQuery(dsImpuestos.DataSet).FieldByName('Tipoimpuesto').asString;
        zImpuestosFactura.FieldByName('AplicaSobre').AsString := TZQuery(dsImpuestos.DataSet).FieldByName('AplicaSobre').AsString;
        zImpuestosFactura.Post;
      end;
//      else if (zDatosFactura.FieldByName('Estatus').AsString='Creada') then
//      begin
//        zImpuestosFactura.Append;
//        zImpuestosFactura.FieldByName('IdFactura').AsInteger := 0;
//        zImpuestosFactura.FieldByName('Aplicar').asString := 'False';
//        zImpuestosFactura.FieldByName('IdImpuesto').AsInteger := TZQuery(dsImpuestos.DataSet).FieldByName('IdImpuesto').asInteger;
//        zImpuestosFactura.FieldByName('Descripcion').AsString := TZQuery(dsImpuestos.DataSet).FieldByName('Impuesto').AsString; //+ ' (' + (TZQuery(dsImpuestos.DataSet).FieldByName('Valor').AsString) + ' %)';
//        zImpuestosFactura.FieldByName('porcentaje').AsFloat := TZQuery(dsImpuestos.DataSet).FieldByName('Valor').AsFloat;
//        zImpuestosFactura.FieldByName('Subtotal').AsFloat := 0;
//        zImpuestosFactura.FieldByName('tipo').asString := TZQuery(dsImpuestos.DataSet).FieldByName('Tipoimpuesto').asString;
//        zImpuestosFactura.FieldByName('AplicaSobre').AsString := TZQuery(dsImpuestos.DataSet).FieldByName('AplicaSobre').AsString;
//        zImpuestosFactura.Post;
//      end;
      TZQuery(dsImpuestos.DataSet).Next;
    end;
  end;
end;

procedure TFrmNewFactura.cbbClientePropertiesChange(Sender: TObject);
begin
  if zDatosFactura.Active and (zDatosFactura.State in [dsEdit,dsInsert]) then
  begin
    with zDatosFactura do
    begin
      FieldByName('idProveedorCliente').AsString := zCliente.FieldByName('IdProveedorCliente').AsString;
      FieldByName('Receptor').AsString := zCliente.FieldByName('nombreEmpresa').AsString;
      FieldByName('rfcReceptor').AsString := zCliente.FieldByName('RFC').AsString;
      FieldByName('telReceptor').AsString := zCliente.FieldByName('TelEmpresa').AsString;

      FieldByName('CalleRec').AsString := zCliente.FieldByName('Calle').AsString;
      FieldByName('ColoniaRec').AsString := zCliente.FieldByName('Colonia').AsString;
      FieldByName('NoExtRec').AsString := zCliente.FieldByName('No').AsString;
      FieldByName('CiudadRec').AsString := zCliente.FieldByName('Ciudad').AsString;
      FieldByName('EstadoRec').AsString := zCliente.FieldByName('Estado').AsString;
      FieldByName('PaisRec').AsString := zCliente.FieldByName('Pais').AsString;
      FieldByName('cpRec').AsString := zCliente.FieldByName('Cp').AsString;

      FieldByName('DireccionReceptor').AsString := 'Calle ' + zCliente.FieldByName('Calle').AsString +
                                                   ' No. ' + zCliente.FieldByName('No').AsString +
                                                   ' Col. ' + zCliente.FieldByName('Colonia').AsString + ' ' +
                                                   zCliente.FieldByName('Ciudad').AsString + ', ' +
                                                   zCliente.FieldByName('Estado').AsString;


    end;
  end;
end;

procedure TFrmNewFactura.cbbConceptoPropertiesEditValueChanged(Sender: TObject);
begin
  cxCurrencyPrecio.Value := zConceptos.FieldByName('Precio').AsExtended;
end;

procedure TFrmNewFactura.cbbFormaPagoPropertiesChange(Sender: TObject);
begin
  lyComboParcialidades.Visible := zFormaPago.FieldByName('TipoPago').AsString = 'Parcial';
end;

procedure TFrmNewFactura.Controles(Habilitar: Boolean);
begin
  lyConceptos.Enabled := Habilitar;
  lyClientes.Enabled := Habilitar;
  lySubtotales.Enabled := Habilitar;
  lyNeto.Enabled := Habilitar;
  btnGuardar.Enabled := Habilitar;
  btnGuadarTimbrar.Enabled := Habilitar;
  btnFPago.Enabled := Habilitar;
  BtnDescuentoConcepto.Enabled := Habilitar;
  BtnQuitarTodo.Enabled := Habilitar;
  BtnDescuentoFactura.Enabled := Habilitar;
  dxlytmTimbre.Visible := Not Habilitar;
  cxmComentarios.Enabled := Habilitar;
  with cxGridImp.OptionsData do
  begin
    Inserting := Habilitar;
    Editing := Habilitar;
    Deleting := Habilitar;
  end;
  with cxGridConceptos.OptionsData do
  begin
    Inserting := Habilitar;
    Editing := Habilitar;
    Deleting := Habilitar;
  end;
  with cxGridDescImp.OptionsData do
  begin
    Inserting := Habilitar;
    Editing := Habilitar;
    Deleting := Habilitar;
  end;

  if Not Habilitar then
    MsgBox.ShowModal('Aviso','Ahora esta factura no podrá modificarse por que ya se encuentra timbrada', cmtInformation, [cmbOK])//dxtabContenedor.Caption := 'Información de Factura  - Esta Factura no puede modificarse por que ya se encuentra timbrada'
  else
    dxtabContenedor.Caption := 'Información de Factura';
end;

procedure TFrmNewFactura.cxColumnGridConceptosColumn1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  //BtnQuitarTodoClick(nil)
end;

procedure TFrmNewFactura.cxColumnGridImpColumn1PropertiesEditValueChanged(
  Sender: TObject);
begin
  CalcularNeto;
end;

procedure TFrmNewFactura.dxPm1Popup(Sender: TObject);
var
  locElemento: string;
begin
 // locElemento := cdMemDetalle.FieldByName('Servicio').AsString;
end;

procedure TFrmNewFactura.dxTabContenedorActiveChildChanged(
  Sender: TdxContainerDockSite; Child: TdxCustomDockControl);
begin
  zImpuestosFactura.Filtered := dxtabContenedor.ActiveChildIndex = 1;
  if dxtabContenedor.ActiveChildIndex = 1 then
    btnPreviewClick(nil);
end;

procedure TFrmNewFactura.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dsImpuestos.dataset := nil;
  dsEmpresa.dataset := nil;
  if zDatosFactura.Connection.InTransaction then
    zDatosFactura.Connection.Rollback;

  if Assigned(FrmFacturas) then
    FrmFacturas.dxButtonActualizar.Click;

end;

procedure TFrmNewFactura.FormCreate(Sender: TObject);
begin
  SoloLectura := False;

  if not AsignarSQL(zCliente, 'master_proveedorcliente', pReadOnly) then
    raise exception.Create(pErrorConsulta + ' [master_proveedorcliente]');

  if not AsignarSQL(zConceptos, 'factura_servicios', pReadOnly) then
    raise exception.Create(pErrorConsulta + ' [factura_servicios]');

  if not AsignarSQL(zDatosFactura, 'factura_facturas', pUpdate) then
    raise exception.Create(pErrorConsulta + ' [factura_facturas]');

  if not AsignarSQL(zEstatusFactura, 'factura_estatusfactura', pUpdate) then
    raise exception.Create(pErrorConsulta + ' [factura_estatusfactura]');

  if not AsignarSQL(zDetalleFactura, 'factura_detallefacturas', pUpdate) then
    raise exception.Create(pErrorConsulta + ' [factura_facturas]');

  if not AsignarSQL(zFormaPago, 'factura_formapago', pReadOnly) then
    raise exception.Create(pErrorConsulta + ' [factura_formapago]');

  if not AsignarSQL(zMetodoPago, 'factura_condicionpago', pReadOnly) then
    raise exception.Create(pErrorConsulta + ' [factura_condicionpago]');

  if not AsignarSQL(zDescuentos, 'factura_descuentoxfactura', pReadOnly) then
    raise exception.Create(pErrorConsulta + ' [factura_descuentoxfactura]');

  if not AsignarSQL(zImpuestosFactura, 'factura_impuestoxfactura', pReadOnly) then
    raise exception.Create(pErrorConsulta + ' [factura_impuestoxfactura]');

  if not AsignarSQL(zMonedas, 'master_moneda', pReadOnly) then
    raise exception.Create(pErrorConsulta + ' [master_moneda]');

end;

procedure TFrmNewFactura.FormShow(Sender: TObject);
var
  Cursor: TCursor;
  LocIdFactura: String;
begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := crAppStart;
      dsEmpresa.Dataset := FrmInicio.zEmpresa;

      if not FiltrarDataset(zMonedas, 'Activo', ['Si']) then
        raise Exception.Create(pErrorFiltrar + ' [master_proveedorcliente]');

      if zMonedas.Active then
        zMonedas.Refresh
      else
        zMonedas.Open;

      if not FiltrarDataset(zCliente, 'Activo', ['Si']) then
        raise Exception.Create(pErrorFiltrar + ' [master_proveedorcliente]');

      if zCliente.Active then
        zCliente.Refresh
      else
        zCliente.Open;

      if not FiltrarDataset(zConceptos, 'Activo', ['Si']) then
        raise Exception.Create(pErrorFiltrar + ' [factura_servicios]');

      if zConceptos.Active then
        zConceptos.Refresh
      else
        zConceptos.Open;

      if not FiltrarDataset(zFormaPago, 'IdFormaPago', ['-1']) then
        raise Exception.Create(pErrorFiltrar + ' [factura_formapago]');

      if zFormaPago.Active then
        zFormaPago.Refresh
      else
        zFormaPago.Open;

      if not FiltrarDataset(zMetodoPago, 'IdCondicionPago', ['-1']) then
        raise Exception.Create(pErrorFiltrar + ' [factura_condicionpago]');

      if zMetodoPago.Active then
        zMetodoPago.Refresh
      else
        zMetodoPago.Open;

      if ModoInsert then
        LocidFactura := '-9'
      else
        LocIdFactura := inttoStr(idFactura);

      //Factura, cuerpo y detalles
      if not FiltrarDataset(zDatosFactura, 'IdFactura', [LocIdFactura]) then
        raise Exception.Create(pErrorFiltrar + ' [factura_facturas]');

      if zDatosFactura.Active then
        zDatosFactura.Refresh
      else
        zDatosFactura.Open;

      if not FiltrarDataset(zDescuentos, 'IdFactura', [LocIdFactura]) then
        raise Exception.Create(pErrorFiltrar + ' [factura_descuentoxfactura]');

      if zDescuentos.Active then
        zDescuentos.Refresh
      else
        zDescuentos.Open;

      if not FiltrarDataset(zDetalleFactura, 'IdFactura', [LocIdFactura]) then
        raise Exception.Create(pErrorFiltrar + ' [factura_facturas]');

      if zDetalleFactura.Active then
        zDetalleFactura.Refresh
      else
        zDetalleFactura.Open;

      if not FiltrarDataset(zEstatusFactura, 'IdFactura', [LocIdFactura]) then
        raise Exception.Create(pErrorFiltrar + ' [factura_estatusfactura]');

      if zEstatusFactura.Active then
        zEstatusFactura.Refresh
      else
        zEstatusFactura.Open;

      if not FiltrarDataset(zImpuestosFactura, 'IdFactura', [LocIdFactura]) then
        raise Exception.Create(pErrorFiltrar + ' [factura_impuestoxfactura]');

      if zImpuestosFactura.Active then
        zImpuestosFactura.Refresh
      else
        zImpuestosFactura.Open;
       //Fin Factura, cuerpo y detalles

      dsImpuestos.DataSet := FrmInicio.zImpuestos;
      case ModoInsert of
        True:
        begin
          //Iniciar la transaccion del encabezado de la factura
          UDMConection.conBD.StartTransaction;
          with zDatosFactura do
          begin
            Insert;
            FieldByName('IdFactura').AsInteger := 0;
            FieldByName('IdEmpresa').AsString := dsEmpresa.dataset.FieldByName('IdEmpresa').AsString;
            FieldByName('Titulo').AsString := dsEmpresa.dataset.FieldByName('RazonSocial').AsString;
            FieldByName('RFCEmpresa').AsString := dsEmpresa.dataset.FieldByName('RFC').AsString;
            FieldByName('RegimenFiscal').AsString := dsEmpresa.dataset.FieldByName('RegimenFiscal').AsString;
            FieldByName('Calle').AsString := dsEmpresa.dataset.FieldByName('Calle').AsString;
            FieldByName('Colonia').AsString := dsEmpresa.dataset.FieldByName('Colonia').AsString;
            FieldByName('NoInt').AsString := dsEmpresa.dataset.FieldByName('NoInt').AsString;
            FieldByName('NoExt').AsString := dsEmpresa.dataset.FieldByName('noEXT').AsString;
            FieldByName('CP').asinteger := dsEmpresa.dataset.FieldByName('Cp').asinteger;
            FieldByName('LugarExpedicion').AsString := dsEmpresa.dataset.FieldByName('Expedicion').asString;
            FieldByName('TelEmpresa').AsString := dsEmpresa.dataset.FieldByName('Telefono').asString;
            FieldByName('Ciudad').AsString := dsEmpresa.dataset.FieldByName('Ciudad').asString;
            FieldByName('Pais').AsString := dsEmpresa.dataset.FieldByName('Pais').asString;
            FieldByName('Estado').AsString := dsEmpresa.dataset.FieldByName('Estado').asString;
            FieldByName('FechaHoraCreacion').AsDateTime := Now;
          end;

          //Inicializar el estatus de la factura
          with zEstatusFactura do
          begin
            Insert;
            FieldByName('idEstatus').AsInteger := 0;
            FieldByName('IdFactura').AsInteger := 0;
            FieldByName('Estatus').AsString := 'Creada';
            FieldByName('Fecha').AsDateTime := Now;
          end;
        end;
        False:
        begin
          UDMConection.conBD.StartTransaction;
          zDatosFactura.Edit;
          zDetalleFactura.Edit;
          zDescuentos.Edit;

          if Not SoloLectura then
          begin
            with zDatosFactura do
            begin
              FieldByName('IdEmpresa').AsString := dsEmpresa.dataset.FieldByName('IdEmpresa').AsString;
              FieldByName('Titulo').AsString := dsEmpresa.dataset.FieldByName('RazonSocial').AsString;
              FieldByName('RFCEmpresa').AsString := dsEmpresa.dataset.FieldByName('RFC').AsString;
              FieldByName('RegimenFiscal').AsString := dsEmpresa.dataset.FieldByName('RegimenFiscal').AsString;
              FieldByName('Calle').AsString := dsEmpresa.dataset.FieldByName('Calle').AsString;
              FieldByName('Colonia').AsString := dsEmpresa.dataset.FieldByName('Colonia').AsString;
              FieldByName('NoInt').AsString := dsEmpresa.dataset.FieldByName('NoInt').AsString;
              FieldByName('NoExt').AsString := dsEmpresa.dataset.FieldByName('noEXT').AsString;
              FieldByName('CP').asinteger := dsEmpresa.dataset.FieldByName('Cp').asinteger;
              FieldByName('LugarExpedicion').AsString := dsEmpresa.dataset.FieldByName('Expedicion').asString;
              FieldByName('TelEmpresa').AsString := dsEmpresa.dataset.FieldByName('Telefono').asString;
              FieldByName('Ciudad').AsString := dsEmpresa.dataset.FieldByName('Ciudad').asString;
              FieldByName('Pais').AsString := dsEmpresa.dataset.FieldByName('Pais').asString;
              FieldByName('Estado').AsString := dsEmpresa.dataset.FieldByName('Estado').asString;

              FieldByName('idProveedorCliente').AsString := zCliente.FieldByName('IdProveedorCliente').AsString;
              FieldByName('Receptor').AsString := zCliente.FieldByName('nombreEmpresa').AsString;
              FieldByName('rfcReceptor').AsString := zCliente.FieldByName('RFC').AsString;
              FieldByName('telReceptor').AsString := zCliente.FieldByName('TelEmpresa').AsString;

              FieldByName('CalleRec').AsString := zCliente.FieldByName('Calle').AsString;
              FieldByName('ColoniaRec').AsString := zCliente.FieldByName('Colonia').AsString;
              FieldByName('NoExtRec').AsString := zCliente.FieldByName('No').AsString;
              FieldByName('CiudadRec').AsString := zCliente.FieldByName('Ciudad').AsString;
              FieldByName('EstadoRec').AsString := zCliente.FieldByName('Estado').AsString;
              FieldByName('PaisRec').AsString := zCliente.FieldByName('Pais').AsString;
              FieldByName('cpRec').AsString := zCliente.FieldByName('Cp').AsString;
              FieldByName('DireccionReceptor').AsString := 'Calle ' + zCliente.FieldByName('Calle').AsString +
                                                   ' No. ' + zCliente.FieldByName('No').AsString +
                                                   ' Col. ' + zCliente.FieldByName('Colonia').AsString + ' ' +
                                                   zCliente.FieldByName('Ciudad').AsString + ', ' +
                                                   zCliente.FieldByName('Estado').AsString;


            end;
            actualizarConceptos;
          end;

          cxTextMetodoPago.Text := zDatosFactura.FieldByName('MetodoPago').AsString;
          cxTextFormaPago.Text :=  zDatosFactura.FieldByName('FormaPago').AsString;
          cxTextParcialidades.Text := zDatosFactura.FieldByName('Noparcialidades').AsString;
          cxTextMonedas.Text := zDatosFactura.FieldByName('Moneda').AsString;
          cxmComentarios.Text := zDatosFactura.FieldByName('Comentarios').AsString;
        end
        Else  zDatosFactura.Cancel;
      end;

      if ModoParcialidad then
      begin
        lyParcialidad.Visible := ModoParcialidad;
        cxTextLeyendaParcialidad.Text := 'PAGO PARCIAL No. ' + intToStr(NoParcialidad) + ' de '  + inttoStr(TotalParcialidades);
        lyConcepto.Visible := Not ModoParcialidad;
        lyCantidad.Visible := Not ModoParcialidad;
        lyImporte.CaptionOptions.Text := 'Importe de pago parcial:';

        if not SoloLectura then
          cbbCliente.EditValue := IdCLiente;

        cxDateFechaOrig.Date := Fechaorig;
        cxTextFolioOrig.Text := FolioOrig;
        cxCurrencyAcum.Value := MontoAcum;
        cxCurrencyMontoOrig.Value := MontoOrig;
        lyOriginales.Visible := ModoParcialidad;
        cbbCliente.Enabled := Not ModoParcialidad;
        lyComboParcialidades.Visible := Not ModoParcialidad;
        lyEditParcialidades.Visible := not ModoParcialidad;
        self.Caption := 'Nuevo Pago Parcialidad';
        lyBtnConceptos.Visible := Not ModoParcialidad;
        lyBtnClientes.Visible := not ModoParcialidad;
        lyCombo2Fp.Visible := not ModoParcialidad;
      end;

      CargarImpuestos;
      CalculaSubtotal;

      cxGridDescImp.OptionsView.GroupByBox := False;
    finally
      Controles(Not SoloLectura);
      AutoFocus(TForm(Self));
      Screen.Cursor := Cursor;
    end;
  except
    on e: exception do
    begin
      MsgBox.ShowModal('Error.',pMensajeError + e.Message, cmtError, [cmbOK]);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  end;
end;

procedure TFrmNewFactura.frxFactura1GetValue(const VarName: string;
  var Value: Variant);
begin
  if VarName = 'CANTIDADTOTAL' then
    Value := UpperCase(CantidadALetra(strToFloatDef(zDatosFactura.FieldByName('TotalFactura').AsString,0), UpperCase(zDatosFactura.FieldByName('moneda').AsString), '/100 M.N.', 2));

  if VarName = 'SUBTOTAL' then
    Value := zDatosFactura.FieldByName('Subtotal').AsExtended - zDatosFactura.FieldByName('descuentos').AsExtended;

end;

Function TFrmNewFactura.ValidaPago(var cad: String): Boolean;
var
  Campos: String;
begin
  try
    Result := False;
    Campos := '';

    if zDatosFactura.FieldByName('MetodoPago').AsString = '' then
      Campos := Campos + ' "Método de pago"';

    if zDatosFactura.FieldByName('FormaPago').AsString = '' then
      Campos := Campos + ' "Forma de pago"';

    if zDatosFactura.FieldByName('Moneda').AsString = '' then
      Campos := Campos + ' "Moneda"';

     if Length(Trim(Campos)) <> 0 then
     begin
       Result := true;
       Cad := Campos;
       //raise eWarning.Create('Antes de proceder a timbrar es necesario llenar la siguiente información de pago: ' + Campos);
     end;

  Except
    raise;
  end;
end;

end.
