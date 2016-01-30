unit UFrmFacturas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxRibbonSkins, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  dxSkinsdxRibbonPainter, dxRibbonCustomizationForm, dxSkinsdxBarPainter,
  dxSkinsdxNavBarPainter, dxNavBar, dxBar, cxClasses, dxRibbon, cxPC,
  dxSkinsdxDockControlPainter, dxDockControl, dxDockPanel, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, DB, cxDBData, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  dxNavBarCollns, dxNavBarBase, ExtCtrls, dxBarBuiltInMenu, cxContainer, Menus,
  StdCtrls, cxButtons, cxTextEdit, cxMaskEdit, cxSpinEdit, cxLabel,
  cxSchedulerStorage, cxSchedulerCustomControls, cxSchedulerDateNavigator,
  cxDateNavigator, UConection, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  UMsgBox, cxGridExportLink, ShellApi, frxClass, frxDBSet, frxPreview,
  frxExportPDF, pfacturaElectronica, PacFo, FolderDialog, idSmtp, IdMessage, IdAttachmentFile,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase, IdIOHandler,
  IdIOHandlerSocket, IdIOHandlerStack, IdSSL, IdSSLOpenSSL, wsFO,  IdAttachment,
  IdSSLOpenSSLHeaders, DateUtils

;

type
  TFrmFacturas = class(TForm)
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    dxBarManager1: TdxBarManager;
    dxbrManager1Bar: TdxBar;
    dxbrManager1Bar1: TdxBar;
    dxButtonNuevo: TdxBarLargeButton;
    dxBButtonEditar: TdxBarButton;
    dxBButtonBuscar: TdxBarButton;
    dxBButtonEliminar: TdxBarButton;
    dxButtonGuardar: TdxBarLargeButton;
    dxButtonActualizar: TdxBarLargeButton;
    dxButtonCancelar: TdxBarLargeButton;
    dxButtonSalir: TdxBarLargeButton;
    dxButton2: TdxBarLargeButton;
    dxButtonExportar: TdxBarLargeButton;
    dxDockManager1: TdxDockingManager;
    dxBarManager1Bar1: TdxBar;
    dxButtonEne: TdxBarLargeButton;
    dxButtonFeb: TdxBarLargeButton;
    dxButtonMar: TdxBarLargeButton;
    dxButtonAbr: TdxBarLargeButton;
    dxButtonMay: TdxBarLargeButton;
    dxButtonJun: TdxBarLargeButton;
    dxButtonJul: TdxBarLargeButton;
    dxButtonAgo: TdxBarLargeButton;
    dxButtonSep: TdxBarLargeButton;
    dxButtonOct: TdxBarLargeButton;
    dxButtonNov: TdxBarLargeButton;
    dxButtonDic: TdxBarLargeButton;
    dxBarManager1Bar2: TdxBar;
    dxButtonTimbrar: TdxBarLargeButton;
    dxButtonCancelarTimbre: TdxBarLargeButton;
    dxbrOpcionesFactura: TdxBar;
    dxBButtonMCancelado: TdxBarButton;
    dxBButtonMTimbrada: TdxBarButton;
    dxBButtonMCreada: TdxBarButton;
    dxButtonMPagda: TdxBarLargeButton;
    dxButtonMPendiente: TdxBarLargeButton;
    dxButtonExportarXML: TdxBarLargeButton;
    dxButtonExportarPDF: TdxBarLargeButton;
    dxButtonPrevisualizar: TdxBarLargeButton;
    cxPagePrincipal: TcxPageControl;
    cxTabPrincipal: TcxTabSheet;
    cxTabPreview: TcxTabSheet;
    dxDockSite1: TdxDockSite;
    dxLayoutDockSite2: TdxLayoutDockSite;
    dxLayoutDockSite1: TdxLayoutDockSite;
    dxDockPanel1: TdxDockPanel;
    cxGridFact: TcxGrid;
    cxGridFacturas: TcxGridDBTableView;
    GridLevel1: TcxGridLevel;
    dxDockFiltro: TdxDockPanel;
    dxNavBar1: TdxNavBar;
    dxGroupFacturas: TdxNavBarGroup;
    dxGroupFiltro: TdxNavBarGroup;
    dxItemCreadas: TdxNavBarItem;
    dxItemTimbradas: TdxNavBarItem;
    dxItemCancelada: TdxNavBarItem;
    dxNavBar1Item1: TdxNavBarItem;
    dxnvbrgrpcntrlGroupFiltroControl: TdxNavBarGroupControl;
    pnl1: TPanel;
    btnAplicarFiltro: TcxButton;
    cxPageFiltro: TcxPageControl;
    cxTabAnio: TcxTabSheet;
    cxSpinAnio: TcxSpinEdit;
    cxLblAnio: TcxLabel;
    cxTabMes: TcxTabSheet;
    dxbrdckcntrl1: TdxBarDockControl;
    cxTabFechas: TcxTabSheet;
    cxDateNavigator1: TcxDateNavigator;
    zFacturas: TZQuery;
    cxColNombreCliente: TcxGridDBColumn;
    cxColRfcCliente: TcxGridDBColumn;
    cxColMetodoPago: TcxGridDBColumn;
    cxColFormaPago: TcxGridDBColumn;
    cxColParcialidades: TcxGridDBColumn;
    cxColTotalFactura: TcxGridDBColumn;
    cxColHora: TcxGridDBColumn;
    cxColEstatus: TcxGridDBColumn;
    cxColFecha: TcxGridDBColumn;
    dsFacturas: TDataSource;
    dlgSave1: TSaveDialog;
    dsEmpresa: TDataSource;
    zImpuestosFactura: TZQuery;
    zDatosFactura: TZQuery;
    zDetalleFactura: TZQuery;
    zEstatusFactura: TZQuery;
    zDescuentos: TZQuery;
    pnlBoton: TPanel;
    btnPrint: TcxButton;
    btnSave: TcxButton;
    frxpvFactura: TfrxPreview;
    frxExportPDF: TfrxPDFExport;
    dxDockParcialidades: TdxDockPanel;
    dxTabContFact: TdxTabContainerDockSite;
    FrxDbImpuestos: TfrxDBDataset;
    FrxDbDetalleFactura: TfrxDBDataset;
    frxDbEmpresa: TfrxDBDataset;
    frxFactura1: TfrxReport;
    FolderDlg1: TFolderDialog;
    dxItemTodos: TdxNavBarItem;
    IdSMTP1: TIdSMTP;
    IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL;
    btnTimbres: TdxBarLargeButton;
    btnEnviarCorreo: TdxBarLargeButton;
    cxColumnGridFacturasColumn1: TcxGridDBColumn;
    FrxDbDatosFactura: TfrxDBDataset;
    dxPmFacturas: TdxBarPopupMenu;
    zFacturasParciales: TZQuery;
    dsFacturasParciales: TDataSource;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    dxBarDockControl1: TdxBarDockControl;
    dxbrManager1Bar2: TdxBar;
    btnInsert: TdxBarLargeButton;
    btnEdit: TdxBarLargeButton;
    btnDelete: TdxBarLargeButton;
    btnRefresh: TdxBarLargeButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxButtonNuevoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dxBButtonEditarClick(Sender: TObject);
    procedure dxBButtonBuscarClick(Sender: TObject);
    procedure dxButtonActualizarClick(Sender: TObject);
    procedure dxButtonPrevisualizarClick(Sender: TObject);
    procedure dxButtonExportarXMLClick(Sender: TObject);
    procedure dxButtonExportarClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure dxButtonExportarPDFClick(Sender: TObject);
    procedure zFacturasAfterScroll(DataSet: TDataSet);
    procedure dxButtonCancelarTimbreClick(Sender: TObject);
    procedure frxFactura1GetValue(const VarName: string; var Value: Variant);
    procedure btnTimbresClick(Sender: TObject);
    procedure btnEnviarCorreoClick(Sender: TObject);
    procedure btnAplicarFiltroClick(Sender: TObject);
    procedure cxDateNavigator1SelectionChanged(Sender: TObject; const AStart,
      AFinish: TDateTime);
    procedure dxBButtonEliminarClick(Sender: TObject);
    procedure cxGridFacturasCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnInsertClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure dxTabContFactActiveChildChanged(Sender: TdxContainerDockSite;
      Child: TdxCustomDockControl);
  private
    aInicio, aTermino: TDate;
    CredencialesPAC: TPFCredenciales;
    procedure ResultadoDeCancelacion(Resultado: Integer);
    Function EnviarMensaje(sUsuario, sClave, sServidor, sAdjunto, sAsunto, sDestino, sMensaje: String; iPort:Integer): String;
    { Private declarations }
  public

    { Public declarations }

  end;

var
  FrmFacturas: TFrmFacturas;

implementation

Uses
  NewFactura, UFrmInicio, UFrmEnviarCorreo;

{$R *.dfm}

procedure TFrmFacturas.btnAplicarFiltroClick(Sender: TObject);
var
  Meses: string;
  Cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := crAppStart;

      if cxPageFiltro.ActivePage = cxTabAnio then
      begin
        if not FiltrarDataset(zFacturas, 'IdEmpresa,Anio', [varGlobal.Elemento('IdEmpresa').AsString, VarToStr(cxSpinAnio.Value)]) then
          raise Exception.Create(pErrorFiltrar + ' [Factura_facturas]');
      end
      else if cxPageFiltro.ActivePage = cxTabMes then
      begin
        Meses := '';
        if dxButtonEne.Down then
          Meses := Meses + IntToStr(dxButtonEne.Tag) + ',';
        if dxButtonFeb.Down then
          Meses := Meses + IntToStr(dxButtonFeb.Tag) + ',';
        if dxButtonMar.Down then
          Meses := Meses + IntToStr(dxButtonMar.Tag) + ',';
        if dxButtonAbr.Down then
          Meses := Meses + IntToStr(dxButtonAbr.Tag) + ',';
        if dxButtonMay.Down then
          Meses := Meses + IntToStr(dxButtonMay.Tag) + ',';
        if dxButtonJun.Down then
          Meses := Meses + IntToStr(dxButtonJun.Tag) + ',';
        if dxButtonJul.Down then
          Meses := Meses + IntToStr(dxButtonJul.Tag) + ',';
        if dxButtonAgo.Down then
          Meses := Meses + IntToStr(dxButtonAgo.Tag) + ',';
        if dxButtonSep.Down then
          Meses := Meses + IntToStr(dxButtonSep.Tag) + ',';
        if dxButtonOct.Down then
          Meses := Meses + IntToStr(dxButtonOct.Tag) + ',';
        if dxButtonNov.Down then
          Meses := Meses + IntToStr(dxButtonNov.Tag) + ',';
        if dxButtonDic.Down then
          Meses := Meses + IntToStr(dxButtonDic.Tag);

        if not FiltrarDataset(zFacturas, 'IdEmpresa,Meses', [varGlobal.Elemento('IdEmpresa').AsString, Meses]) then
          raise Exception.Create(pErrorFiltrar + ' [Factura_facturas]');
      end
      else if cxPageFiltro.ActivePage = cxTabFechas then
      begin
        if not FiltrarDataset(zFacturas, 'IdEmpresa,Desde,Hasta', [varGlobal.Elemento('IdEmpresa').AsString, fechaSQL(aInicio), fechaSQL(aTermino)]) then
          raise Exception.Create(pErrorFiltrar + ' [Factura_facturas]');
      end;

      if zFacturas.Active then
        zFacturas.Refresh
      else
        zFacturas.Open;
    finally
      Screen.Cursor := Cursor;
    end;
  except
    raise;
  end;
end;

procedure TFrmFacturas.btnEditClick(Sender: TObject);
begin
  dxBButtonEditar.Click;
end;

procedure TFrmFacturas.btnEnviarCorreoClick(Sender: TObject);
var
  Carpeta, NombrePersonal: string;
  archivoTXT: TextFile;
begin
  Carpeta := ExtractFilePath(Application.ExeName) + 'Temp';
  if Not(DirectoryExists(Carpeta)) then
  begin
    CreateDir(Carpeta);
  end;

  NombrePersonal :=zFacturas.FieldByName('RFCReceptor').AsString + '_' + zFacturas.FieldByName('IdFactura').AsString;
  try
    AssignFile(archivoTXT, Carpeta + '\' + NombrePersonal +'.xml');
    Rewrite(archivoTXT);
    Writeln(archivoTXT, zFacturas.FieldByName('xml').AsString);
  finally
    Closefile(archivoTXT);
  end;
  application.CreateForm(TFrmEnviarCorreo, FrmEnviarCorreo);
  FrmEnviarCorreo.RutaArchivoAdjunto :=  Carpeta + '\' + NombrePersonal +'.xml';
  FrmEnviarCorreo.ShowModal;
end;

procedure TFrmFacturas.btnInsertClick(Sender: TObject);
begin
  dxButtonNuevo.Click;
end;

procedure TFrmFacturas.btnPrintClick(Sender: TObject);
begin
  frxpvFactura.Print;
end;

procedure TFrmFacturas.btnSaveClick(Sender: TObject);
begin
  frxExportPDF.FileName := 'Factura ' + zDatosFactura.FieldByName('Titulo').AsString;
  frxpvFactura.Export(frxExportPDF);
end;

procedure TFrmFacturas.btnTimbresClick(Sender: TObject);
var
  PacT: TPFPACFO;
begin
  try
    PacT := TPFPACFO.Create;
  finally
    ShowMessage(inttostr(PacT.noTimbresXML('http://demo-facturacion.finkok.com/servicios/soap/utilities.wsdl', 'jfs.fadul@gmail.com', 'Fatima_21#', Now-10,Now+10, 'AAD990814BP7')));
  end;
end;

procedure TFrmFacturas.cxDateNavigator1SelectionChanged(Sender: TObject;
  const AStart, AFinish: TDateTime);
begin
  aInicio := AStart;
  aTermino := AFinish;
end;

procedure TFrmFacturas.cxGridFacturasCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  dxBButtonEditarClick(Nil);
end;

procedure TFrmFacturas.dxBButtonBuscarClick(Sender: TObject);
begin
  cxgridFacturas.FilterRow.Visible := Not cxgridFacturas.FilterRow.Visible;
end;

procedure TFrmFacturas.dxBButtonEditarClick(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmNewFactura, FrmNewFactura);
    FrmNewFactura.idFactura := zFacturas.FieldByName('IdFactura').AsInteger;
    FrmNewFactura.SoloLectura := (zFacturas.FieldByName('Estatus').AsString = 'Timbrada') or (zFacturas.FieldByName('Estatus').AsString = 'Cancelada');
    if dxTabContFact.ActiveChildIndex = 1 then
    begin
      FrmNewFactura.ModoParcialidad := True;
      FrmNewFactura.idFactura := zFacturasParciales.FieldByName('IdFactura').AsInteger;
      FrmNewFactura.IdPadre := zFacturas.FieldByName('IdFactura').AsInteger;
      FrmNewFactura.FolioOrig := zFacturas.FieldByName('FolioFiscal').AsString;
      FrmNewFactura.SerieOrig := zFacturas.FieldByName('SerieSAT').AsString;
      FrmNewFactura.FechaOrig := zFacturas.FieldByName('FechaHoraEmision').AsDateTime;
      FrmNewFactura.MontoOrig := zFacturas.FieldByName('TotalFactura').AsFloat;
      FrmNewFactura.TotalParcialidades := zFacturas.FieldByName('NoParcialidades').AsInteger;
      FrmNewFactura.NoParcialidad := zFacturasParciales.FieldByName('ParcialidadNo').AsInteger;
      FrmNewFactura.SoloLectura := (zFacturasParciales.FieldByName('Estatus').AsString = 'Timbrada') or (zFacturasParciales.FieldByName('Estatus').AsString = 'Cancelada');
    end;
    FrmNewFactura.ModoInsert := False;
    FrmNewFactura.Show;
  finally
    ;
  end;
end;

procedure TFrmFacturas.dxBButtonEliminarClick(Sender: TObject);
var
  Cursor: TCursor;
  LocIdFactura: String;
begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := crAppStart;
      LocIdFactura := zFacturas.FieldByName('IdFactura').AsString;
      If MsgBox.ShowModal('Confirmación', '¿Está seguro que desea eliminar la factura?', cmtConfirmation, [cMbDelete, cMbNo]) = mryes then
      begin

        if not FiltrarDataset(zDatosFactura, 'IdFactura', [LocIdFactura]) then
          raise Exception.Create(pErrorFiltrar + ' [factura_facturas]');

        if zDatosFactura.Active then
          zDatosFactura.Refresh
        else
          zDatosFactura.Open;

        BorrarRegistro(zDatosFactura);
        dxButtonActualizar.Click;
      end;
    finally
      Screen.Cursor := Cursor;
    end;
  except
    on e: exception do
    begin
      MsgBox.ShowModal('Error.',pMensajeError + e.Message, cmtError, [cmbOK]);
    end;
  end;
end;

procedure TFrmFacturas.dxButtonActualizarClick(Sender: TObject);
var
  Cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := crAppStart;
      if zFacturas.Active then
        zFacturas.Refresh
      else
       zFacturas.Open;
    finally
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

procedure TFrmFacturas.dxButtonCancelarTimbreClick(Sender: TObject);
var
  LocUUID: String;
  RespuestaPAC: TStringList;
  Archivo: TextFile;
  sLinea: String;
  Stream: TStringList;
begin
  if MsgBox.ShowModal('Confirmar cancelación', '¿Estás seguro que deseas cancelar el timbre [' + zFacturas.FieldByName('FolioFiscal').AsString + ']?', cmtConfirmation, [cMbYes, cMbNo]) = mrYes then
  try
    if not FiltrarDataset(zEstatusFactura, 'IdFactura', ['-9']) then
      raise Exception.Create(pErrorFiltrar + ' [factura_estatusfactura]');

    if zEstatusFactura.Active then
      zEstatusFactura.Refresh
    else
      zEstatusFactura.Open;

    LocUUiD := zFacturas.FieldByName('FolioFiscal').AsString;

    CSD.Certificado := dsEmpresa.DataSet.FieldByName('Certificado').AsString;
    CSD.Llave       := dsEmpresa.DataSet.FieldByName('llave').AsString;
    CSD.Clave       := dsEmpresa.DataSet.FieldByName('ClaveCSD').AsString;

    CredencialesPAC.RFC   := zFacturas.FieldByName('RFCEmpresa').AsString;

    if not FileExists(CredencialesPAC.RFC+'.key.pem') then
      ShellExecute(0, nil, 'openssl', PChar('pkcs8 -inform DER -in "' + CSD.Llave + '" -passin pass:' + CSD.Clave + ' -out '+CredencialesPAC.RFC+'.key.pem'), nil, SW_HIDE);

    if not FileExists(CredencialesPAC.RFC+'.cer.pem') then
      ShellExecute(0, nil, 'openssl', PChar('x509 -inform DER -in "' + CSD.Certificado + '" -out '+CredencialesPAC.RFC+'.cer.pem'), nil, SW_HIDE);

    Try
      Stream := TStringList.Create;
      sLinea := '';
      AssignFile(Archivo, CredencialesPAC.RFC+'.cer.pem');
      Reset(Archivo);

      while not Eof(Archivo) do
      begin
        ReadLn(Archivo, sLinea);
        Stream.Add(sLinea);
      end;
      CredencialesPAC.CertificadoB64 := Stream.Text;
    Finally
      CloseFile(Archivo);
      Stream.Free;
    End;

    Try
      Stream := TStringList.Create;
      sLinea := '';
      AssignFile(Archivo, CredencialesPAC.RFC+'.key.pem');
      Reset(Archivo);

      while not Eof(Archivo) do
      begin
        ReadLn(Archivo, sLinea);
        Stream.Add(sLinea);
      end;
      CredencialesPAC.LlaveB64 := Stream.Text;
    Finally
      CloseFile(Archivo);
      Stream.Free;
    End;
    try
      ProveedorTimbrado := TPFPACFO.Create;
      ProveedorTimbrado.AsignarCredenciales(CredencialesPAC);
      RespuestaPAC := ProveedorTimbrado.CancelarXML(LocUUID);
      ResultadoDeCancelacion(StrToInt(RespuestaPAC[0]));

      //Agregar Estatus de timbrado
      if (StrToInt(RespuestaPAC[0])= 1) or (StrToInt(RespuestaPAC[0])= 0) then
      begin
        with zEstatusFactura do
        begin
          Insert;
          FieldByName('idEstatus').AsInteger := 0;
          FieldByName('IdFactura').AsInteger := zFacturas.FieldByName('IdFactura').AsInteger;
          FieldByName('Estatus').AsString := 'Cancelada';
          FieldByName('Fecha').AsDateTime := Now;
          Post;
        end;
      end;
    finally
      ProveedorTimbrado.Free;
    end;
  Finally
    dxButtonActualizar.Click;
  End;
end;

procedure TFrmFacturas.dxButtonExportarClick(Sender: TObject);
var
  rutaArchivo: string;
  Excel, Sheet: Variant;
begin
  dlgSave1.FileName := '';
  if dlgSave1.Execute then
  begin
    rutaArchivo := dlgSave1.FileName + '.xls';
    ExportGridToExcel(rutaArchivo, cxgridFact);

     if MsgBox.ShowModal('Confirmar exportación' ,'¿Desea abrir el documento exportado?', cmtConfirmation, [cMbOpen, cmbNo]) = mrYes then
        ShellExecute(Self.Handle, Nil, PChar(rutaArchivo), '', '', SW_SHOWNORMAL);
  end;
end;

procedure TFrmFacturas.dxButtonExportarPDFClick(Sender: TObject);
begin
  dxButtonPrevisualizar.Click;
  btnSave.Click;
end;

procedure TFrmFacturas.dxButtonExportarXMLClick(Sender: TObject);
var
  i: integer;
  archivoTXT: TextFile;
  NombrePersonal: String;
begin
  if Not zFacturas.FieldByName('xml').IsNull then
  begin
    i := 0;
    if FolderDlg1.Execute then
    begin
      NombrePersonal :=zFacturas.FieldByName('RFCReceptor').AsString + '_' + zFacturas.FieldByName('IdFactura').AsString;
      try
        AssignFile(archivoTxt, FolderDlg1.directory + '\' + NombrePersonal +'.xml');
        Rewrite(archivoTXT);
        Writeln(archivoTXT, zFacturas.FieldByName('xml').AsString);
      finally
         Closefile(archivoTXT);
      end;
      ShellExecute(0, 'explore', nil, nil,pchar(FolderDlg1.directory), SW_SHOW);
    end;
  end
  else
    MsgBox.ShowModal('No se pudo exportat' ,'No se pudo exportar el archivo XML debido a que esta factura aun no ha sido timbrada', cmtInformation, [cmbOK])
end;

procedure TFrmFacturas.dxButtonNuevoClick(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmNewFactura, FrmNewFactura);
    if dxTabContFact.ActiveChildIndex = 1 then
    begin
      FrmNewFactura.ModoParcialidad := True;
      FrmNewFactura.IdPadre := zFacturas.FieldByName('IdFactura').AsInteger;
      FrmNewFactura.FolioOrig := zFacturas.FieldByName('FolioFiscal').AsString;
      FrmNewFactura.SerieOrig := zFacturas.FieldByName('SerieSAT').AsString;
      FrmNewFactura.FechaOrig := zFacturas.FieldByName('FechaHoraEmision').AsDateTime;
      FrmNewFactura.MontoOrig := zFacturas.FieldByName('TotalFactura').AsFloat;
      FrmNewFactura.TotalParcialidades := zFacturas.FieldByName('NoParcialidades').AsInteger;
      FrmNewFactura.idCliente := zFacturas.FieldByName('IdProveedorCliente').AsInteger;
      FrmNewFactura.NoParcialidad := zFacturasParciales.RecordCount+1;
    end;
    FrmNewFactura.ModoInsert := True;
    FrmNewFactura.ShowModal;
  finally
    //dxButtonActualizar.click;
  end;
end;

procedure TFrmFacturas.dxButtonPrevisualizarClick(Sender: TObject);
var
  Cursor: TCursor;
  LocIdFactura: String;
begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := crAppStart;
      LocIdFactura := zFacturas.FieldByName('IdFactura').AsString;

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

      zImpuestosFactura.Filtered := False;
      zImpuestosFactura.Filter := 'Aplicar = ' + QuotedStr('True');
      zImpuestosFactura.Filtered := True;
      frxFactura1.LoadFromFile(ExtractFilePath(Application.ExeName) + 'Reportes\ReporteFactura.fr3' ) ;
      frxFactura1.ShowReport(True);
      cxpagePrincipal.ActivePage := cxTabPreview;
    finally
      Screen.Cursor := Cursor;
    end;
  except
    on e: exception do
    begin
      MsgBox.ShowModal('Error.',pMensajeError + e.Message, cmtError, [cmbOK]);
    end;
  end;
end;

procedure TFrmFacturas.dxTabContFactActiveChildChanged(
  Sender: TdxContainerDockSite; Child: TdxCustomDockControl);
var
  Cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    try
      screen.Cursor := crAppStart;
      if dxTabContFact.ActiveChildIndex = 1 then
      begin
        if not FiltrarDataset(zFacturasParciales, 'IdEmpresa,IdPadre,Anio', [varGlobal.Elemento('IdEmpresa').AsString, zFacturas.FieldByName('IdFactura').asString,VarToStr(cxSpinAnio.Value)]) then
          raise Exception.Create(pErrorFiltrar + ' [factura_formapago]');

        if zFacturasParciales.Active then
          zFacturasParciales.Refresh
        else
          zFacturasParciales.Open;
      end;
    finally
      screen.Cursor := Cursor;
    end;
  except
    raise;
  end;
end;

function TFrmFacturas.EnviarMensaje(sUsuario, sClave, sServidor, sAdjunto, sAsunto, sDestino, sMensaje: String; iPort:Integer): String;
var
  SMTP: TIdSMTP;
  Mensaje: TIdMessage;
  Adjunto: TIdAttachmentFile;
  IOHSOSSL :TIdSSLIOHandlerSocketOpenSSL;
begin
  IdSSLOpenSSLHeaders.Load;

  Result := 'Mensaje enviado correctamente.';

  IOHSOSSL := TIdSSLIOHandlerSocketOpenSSL.Create;
  IOHSOSSL.Destination := sServidor+':'+IntToStr(iPort);
  IOHSOSSL.Host := sServidor;
  //IOHSOSSL.MaxLineAction :=  ;
  IOHSOSSL.Port := iPort;
  IOHSOSSL.SSLOptions.Method := sslvTLSv1;
  IOHSOSSL.SSLOptions.VerifyMode := [];
  IOHSOSSL.SSLOptions.VerifyDepth := 0;

  SMTP := TIdSMTP.Create( nil );
  SMTP.IOHandler := IOHSOSSL;
  SMTP.Username := sUsuario;
  SMTP.Password := sClave;
  SMTP.Host := sServidor;
  SMTP.Port := iPort;
  SMTP.AuthType := satDefault;
  SMTP.UseTLS := utUseRequireTLS;

  Mensaje := TIdMessage.Create( nil );
  Mensaje.Clear;
  Mensaje.From.Name := sDestino;
  Mensaje.From.Address := sDestino;
  Mensaje.Subject := sAsunto;
  Mensaje.Body.Text := sMensaje;
  Mensaje.Recipients.Add;
  Mensaje.Recipients.Items[0].Address := sDestino;

  if sAdjunto <>'' then
  begin
    if FileExists( sAdjunto ) then
      Adjunto := TIdAttachmentFile.Create( Mensaje.MessageParts, sAdjunto);
  end
  else
    Adjunto := nil;

  try
    SMTP.Connect;
  except
    Result := 'Error al conectar con el servidor.';
  end;

  // Si ha conectado enviamos el mensaje y desconectamos
  if SMTP.Connected then
  begin
    try
      //SMTP.SendCmd(‘STARTTLS’, 220);
      SMTP.Send( Mensaje );
    except
      Result := 'Fallo en el envio de email';
    end;

    try
      SMTP.Disconnect;
    except
      Result := 'Error al desconectar del servidor.';
    end;
  end;

  // Liberamos los objetos creados
  if Adjunto <> nil then
    FreeAndNil( Adjunto );

  FreeAndNil( Mensaje );
  FreeAndNil( SMTP );
end;

procedure TFrmFacturas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dsEmpresa.dataset := nil;
  Action := Cafree;
end;

procedure TFrmFacturas.FormCreate(Sender: TObject);
begin
  AplicarTema(TForm(Self));

  if not AsignarSQL(zDatosFactura, 'factura_facturas', pUpdate) then
    raise exception.Create(pErrorConsulta + ' [factura_facturas]');

  if not AsignarSQL(zEstatusFactura, 'factura_estatusfactura', pUpdate) then
    raise exception.Create(pErrorConsulta + ' [factura_estatusfactura]');

  if not AsignarSQL(zDetalleFactura, 'factura_detallefacturas', pUpdate) then
    raise exception.Create(pErrorConsulta + ' [factura_facturas]');

  if not AsignarSQL(zDescuentos, 'factura_descuentoxfactura', pReadOnly) then
    raise exception.Create(pErrorConsulta + ' [factura_descuentoxfactura]');

  if not AsignarSQL(zImpuestosFactura, 'factura_impuestoxfactura', pReadOnly) then
    raise exception.Create(pErrorConsulta + ' [factura_impuestoxfactura]');

  if not AsignarSQL(zFacturasParciales, 'factura_facturas', pReadOnly) then
    raise exception.Create(pErrorConsulta + ' [factura_facturas]');
end;

procedure TFrmFacturas.FormShow(Sender: TObject);
var
  Cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := crAppStart;
      dsEmpresa.Dataset := FrmInicio.zEmpresa;
      cxSpinAnio.Value := YearOf(Now);

      if not AsignarSQL(zFacturas, 'factura_facturas', pReadOnly) then
        raise Exception.Create(pErrorConsulta + '[' + 'factura_facturas' + ']');

      if not FiltrarDataset(zFacturas, 'IdEmpresa,NoParcialidades,Anio', [varGlobal.Elemento('IdEmpresa').AsString, 'no',VarToStr(cxSpinAnio.Value)]) then
        raise Exception.Create(pErrorFiltrar + ' [factura_formapago]');

      if zFacturas.Active then
        zFacturas.Refresh
      else
        zFacturas.Open;

      cxPagePrincipal.ActivePage := cxtabPrincipal;

    finally
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

procedure TFrmFacturas.frxFactura1GetValue(const VarName: string;
  var Value: Variant);
begin
  if VarName = 'CANTIDADTOTAL' then
    Value := UpperCase(CantidadALetra(strToFloatDef(zDatosFactura.FieldByName('TotalFactura').AsString,0), UpperCase(zDatosFactura.FieldByName('moneda').AsString), '/100 M.N.', 2));

  if VarName = 'SUBTOTAL' then
    Value := zDatosFactura.FieldByName('Subtotal').AsExtended - zDatosFactura.FieldByName('descuentos').AsExtended;

end;

procedure TFrmFacturas.ResultadoDeCancelacion(Resultado: Integer);
begin
  if Resultado = 1 then
  begin
    MsgBox.ShowModal('Información','La factura fue cancelada.', cmtInformation, [cmbOK]);
  end;
  if Resultado = 2 then
  begin
     MsgBox.ShowModal('Información','La factura ya se encuentra cancelada.', cmtInformation, [cmbOK]);
  end;
  if Resultado = 3 then
  begin
    MsgBox.ShowModal('Información','Esta factura no existe en la base de datos del SAT.', cmtInformation, [cmbOK]);
  end;
  if Resultado = 0 then
  begin
    MsgBox.ShowModal('Información','Error no definido.', cmtInformation, [cmbOK]);
  end;
end;

procedure TFrmFacturas.zFacturasAfterScroll(DataSet: TDataSet);
begin
  dxDockParcialidades.Visible := Not zFacturas.FieldByName('NoParcialidades').IsNull;
  dxButtonTimbrar.Enabled := (zFacturas.FieldByName('estatus').AsString = 'Creada');
  dxButtonCancelarTimbre.Enabled := (zFacturas.FieldByName('estatus').AsString = 'Timbrada');
  if (zFacturas.FieldByName('estatus').AsString = 'Timbrada') or (zFacturas.FieldByName('estatus').AsString = 'Cancelada')  then
  begin
    dxBButtonEditar.Caption := 'Ver';
    dxBButtonEliminar.Enabled := False;
  end
  else
  begin
    dxBButtonEditar.Caption := 'Editar';
    dxBButtonEliminar.Enabled := True;
  end;

    
end;

end.



