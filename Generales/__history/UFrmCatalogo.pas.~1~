unit UFrmCatalogo;

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
  dxSkinsdxRibbonPainter, dxRibbonCustomizationForm, dxSkinsdxBarPainter, dxBar,
  cxClasses, dxRibbon, UConection, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, DB, cxDBData,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ExtCtrls, dxLayoutContainer, dxLayoutControl, dxBarBuiltInMenu, cxPC,
  cxGridExportLink, ShellAPI, dxDockControl, dxDockPanel,
  dxSkinsdxDockControlPainter, UMsgBox, dxScreenTip, dxCustomHint, cxHint;

type

  TFrmCatalogo = class(TForm)
    dxRibbon1Tab1: TdxRibbonTab;
    dxRibbon1: TdxRibbon;
    dxBarManager1: TdxBarManager;
    dxbrManager1Bar: TdxBar;
    dxButtonNuevo: TdxBarLargeButton;
    dxBButtonEditar: TdxBarButton;
    dxBButtonBuscar: TdxBarButton;
    dxBButtonEliminar: TdxBarButton;
    dxButtonGuardar: TdxBarLargeButton;
    dxButtonActualizar: TdxBarLargeButton;
    dxButtonCancelar: TdxBarLargeButton;
    dxButtonSalir: TdxBarLargeButton;
    dxButton2: TdxBarLargeButton;
    dsDatos: TDataSource;
    zDatos: TZQuery;
    dxbrManager1Bar1: TdxBar;
    zDatosUpt: TZQuery;
    dsDatosUpt: TDataSource;
    dxPopupGrid: TdxRibbonPopupMenu;
    dxButtonExportar: TdxBarLargeButton;
    dlgSave1: TSaveDialog;
    dxDockSite1: TdxDockSite;
    dxDockGrid: TdxDockPanel;
    dxlytdckst1: TdxLayoutDockSite;
    dxDockDatos: TdxDockPanel;
    dxlytdckst2: TdxLayoutDockSite;
    cxGridGral: TcxGrid;
    cxGridDatos: TcxGridDBTableView;
    GridLevel1: TcxGridLevel;
    cxPageDatos: TcxPageControl;
    cxTsDatos: TcxTabSheet;
    dxLYCDatos: TdxLayoutControl;
    dxLyDatos: TdxLayoutGroup;
    dxDockingManager1: TdxDockingManager;
    dxButtonOpcional: TdxBarLargeButton;
    dxButtonDetalle: TdxBarLargeButton;
    cxHintStyleController: TcxHintStyleController;
    procedure FormShow(Sender: TObject);
    procedure dxButtonSalirClick(Sender: TObject);
    procedure dxButtonNuevoClick(Sender: TObject);
    procedure dxBButtonEditarClick(Sender: TObject);
    procedure dxBButtonEliminarClick(Sender: TObject);
    procedure dxButtonGuardarClick(Sender: TObject);
    procedure dxButtonCancelarClick(Sender: TObject);
    procedure dxButtonActualizarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxBButtonBuscarClick(Sender: TObject);
    procedure cxGridDatosCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGridDatosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxButtonExportarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure dxButtonDetalleClick(Sender: TObject);
  private
    { Private declarations }
    OldHeight: Integer;
    HuboError: Boolean;

  public
    QueryName: String;
    PKField: String;
    CampoMostrar: string;
    CampoImagen: String;
    esLlamado: Boolean;
    pCondiciones: String;
    pCampos: string;
    pValores: String;

    Procedure ActionButtons;virtual;
    procedure MostrarPanel;
    Procedure OcultarPanel;
    constructor CreateByParam(Modal: Boolean);
    { Public declarations }
  end;

var
  FrmCatalogo: TFrmCatalogo;

implementation

{$R *.dfm}

procedure TFrmCatalogo.ActionButtons;
var Estado: Boolean;
begin
  Estado := (zDatosUpt.Active) and (zDatosUpt.State = dsBrowse);
  dxButtonActualizar.Enabled := Estado;
  dxButtonNuevo.Enabled := Estado;

  Estado := (zDatosUpt.Active) and (zDatos.RecordCount > 0) and (zDatosUpt.State = dsBrowse);
  dxBButtonEditar.Enabled := Estado;
  dxButtonOpcional.Enabled := Estado;
  dxBButtonEliminar.Enabled := Estado;
  dxBButtonBuscar.Enabled := Estado;

  If (zDatosUpt.Active) and (zDatos.RecordCount > 0) and (zDatosUpt.State = dsBrowse) then
    dsDatosUpt.DataSet := zDatos
  else if (zDatosUpt.Active) and (zDatos.RecordCount > 0) and (zDatosUpt.State in [dsEdit, dsInsert]) then
    dsDatosUpt.DataSet := zDatosUpt;

  Estado := (zDatosUpt.Active) and (zDatosUpt.State in [dsEdit, dsInsert]);
  dxButtonGuardar.Enabled := Estado;
  dxButtonCancelar.Enabled := Estado;
  cxGridGral.Enabled := Not Estado;
  //dxLYCDatos.Enabled := Estado;

  If zDatosUpt.State = dsInsert then
    dxDockDatos.Caption := 'Inserción de nuevo registro.'
  else if zDatosUpt.State = dsEdit then
    dxDockDatos.Caption := 'Edición de registro [' + zDatos.FieldByName(CampoMostrar).AsString + ']'
  else
    dxDockDatos.Caption := 'Información adicional.';


  dxDockDatos.AllowFloating := False;
  dxDockDatos.AutoHide := Not (zDatosUpt.State in [dsInsert, dsEdit]);

  //dxButtonDetalleClick(nil);
end;



constructor TFrmCatalogo.CreateByParam(Modal: Boolean);
begin
  if Not Modal then
  begin
    self.FormStyle := fsNormal;
    self.Visible := False;
  end;
end;

procedure TFrmCatalogo.cxGridDatosCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  dxBButtonEditarClick(nil);
end;

procedure TFrmCatalogo.cxGridDatosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_RETURN then
    dxBButtonEditarClick(nil);

  if key = VK_DELETE then
    dxBButtonEliminarClick(nil);
end;

procedure TFrmCatalogo.dxBButtonBuscarClick(Sender: TObject);
begin
  cxGridDatos.FilterRow.Visible := Not cxGridDatos.FilterRow.Visible;
end;

procedure TFrmCatalogo.dxBButtonEditarClick(Sender: TObject);
var
  Cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := crAppStart;
      if (zDatos.Active) and (zDatos.RecordCount > 0) then
      begin
        if not FiltrarDataset(zDatosUpt, PKField, [zDatos.FieldByName(PKField).AsString]) then
          raise Exception.Create(pErrorFiltrar + '[' + QueryName + ']');

        if zDatosUpt.Active then
          zDatosUpt.Refresh
        else
          zDatosUpt.Open;

        if zDatosUpt.Connection.InTransaction then
          zDatosUpt.Connection.Rollback;

        zDatosUpt.Connection.StartTransaction;
        zDatosUpt.edit;
      end;
    finally
      ActionButtons;
      Screen.Cursor := Cursor;
    end;
  except
    on e: exception do
    begin
      //MessageDlg(pMensajeError + e.Message, mtError, [mbOK],0);
      MsgBox.ShowModal('Error.',pMensajeError + e.Message, cmtError, [cmbOK]);
      if zDatosUpt.Connection.InTransaction then
        zDatosUpt.Connection.Rollback;
    end;
  end;
end;

procedure TFrmCatalogo.dxBButtonEliminarClick(Sender: TObject);
var
  LocCampo: String;
begin
  try
    try
      if (zDatos.Active) and (zDatos.RecordCount > 0) then
      begin
        LocCampo := zDatos.FieldByName(CampoMostrar).AsString;
        //if MessageDlg('¿Estás seguro que deseas eliminar el registro ['+ LocCampo +']', mtConfirmation, [mbYes, mbNo], 0)= mrYes then
        if MsgBox.ShowModal('Confirmación.','¿Estás seguro que deseas eliminar el registro ['+ LocCampo +']', cmtConfirmation, [cmbYes, cmbNo], imagenAStream(campoImagen,zDatos))= mrYes then
        begin
          if not FiltrarDataset(zDatosUpt, PKField, [zDatos.FieldByName(PKField).AsString]) then
          raise Exception.Create(pErrorFiltrar + '[' + QueryName + ']');

          if zDatosUpt.Active then
            zDatosUpt.Refresh
          else
            zDatosUpt.Open;

          if zDatosUpt.Connection.InTransaction then
            zDatosUpt.Connection.Rollback;

          zDatosUpt.Connection.StartTransaction;

          BorrarRegistro(zDatosUpt);

          zDatosUpt.Connection.Commit;
          dxButtonActualizarClick(Nil);
        end;
      end;
    finally
      ActionButtons;
    end;
  except
    on e: exception do
    begin
      //MessageDlg(pMensajeError + e.Message, mtError, [mbOK],0);
      MsgBox.ShowModal('Error.', pMensajeError + e.Message, cmtError, [cmbOK]);

      if zDatosUpt.Connection.InTransaction then
        zDatosUpt.Connection.Rollback;
    end;
  end;
end;

procedure TFrmCatalogo.dxButtonActualizarClick(Sender: TObject);
var
  Cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := crAppStart;

      zDatosUpt.Cancel;
      zDatos.Cancel;
      if zDatosUpt.Connection.InTransaction then
        zDatosUpt.Connection.Rollback;

      if (zDatos.Active) then
        zDatos.Refresh
      else
        zDatos.Open;
    finally
      ActionButtons;
      Screen.Cursor := Cursor;
    end;
  except
    on e: exception do
    begin
      //MessageDlg(pMensajeError + e.Message, mtError, [mbOK],0);
      MsgBox.ShowModal('Error.', pMensajeError + e.Message, cmtError, [cmbOK]);
      if zDatosUpt.Connection.InTransaction then
        zDatosUpt.Connection.Rollback;
    end;
  end;
end;

procedure TFrmCatalogo.dxButtonCancelarClick(Sender: TObject);
begin
  try
    try
      if (zDatosUpt.Active) and (zDatosUpt.State in [dsEdit, dsInsert]) then
      begin
        zDatosUpt.Cancel;
        if zDatosUpt.Connection.InTransaction then
          zDatosUpt.Connection.Rollback;

        //OcultarPanel;
      end;
    finally
      ActionButtons;
    end;
  except
    on e: exception do
    begin
      //MessageDlg(pMensajeError + e.Message, mtError, [mbOK],0);
      MsgBox.ShowModal('Error.', pMensajeError + e.Message, cmtError, [cmbOK]);
      if zDatosUpt.Connection.InTransaction then
        zDatosUpt.Connection.Rollback;
    end;
  end;
end;

procedure TFrmCatalogo.dxButtonDetalleClick(Sender: TObject);
begin
  dxDockDatos.AllowFloating := False;
  dxDockDatos.AutoHide := Not (dxDockDatos.Autohide);

  if dxDockDatos.AutoHide then
    dxButtonDetalle.Caption := 'Ver Información Adicional'
  else
    dxButtonDetalle.Caption := 'Ocultar Información Adicional';
end;

procedure TFrmCatalogo.dxButtonExportarClick(Sender: TObject);
var
  rutaArchivo: string;
  Excel, Sheet: Variant;
begin
  dlgSave1.FileName := '';
  if dlgSave1.Execute then
  begin
    rutaArchivo := dlgSave1.FileName + '.xls';
    ExportGridToExcel(rutaArchivo, cxGridGral);
//    Excel := CreateOleObject('Excel.Application');
//    Excel.workbooks.Open(rutaArchivo);
//
//    Excel.Range['A1'].Select;
//    Excel.Selection.EntireRow.Insert;
//    Excel.Selection.EntireRow.Insert;
//    Excel.Selection.EntireRow.Insert;
//    Excel.Range['A1'].Select;
//    Excel.ActiveCell.FormulaR1C1 := 'NOMBRE DE LA EMPRESA';

    //Excel.ActiveCell.Font
//    Excel.ActiveWorkBook.Save;

     //if MessageDlg('¿Desea abrir el documento exportado?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     if MsgBox.ShowModal('Confirmación.','¿Desea abrir el documento exportado?', cmtConfirmation, [cMbOpen, cmbNo]) = mrYes then
        ShellExecute(Self.Handle, Nil, PChar(rutaArchivo), '', '', SW_SHOWNORMAL);
  end;
end;

procedure TFrmCatalogo.dxButtonGuardarClick(Sender: TObject);
var
  i: Integer;
  Tabla: string;
  Lista: TStringList;
  CurControl: TWinControl;
  FocusError, Reactivado: Boolean;
begin
  try
    Reactivado := false;
    FocusError := False;
    CurControl := ActiveControl;
    try
      SelectNext(ActiveControl, True, True);
      if (zDatosUpt.Active) and (zDatosUpt.State in [dsEdit, dsInsert]) then
      begin
        Lista := TStringList.Create;
        if zDatosUpt.state = dsInsert then
          zDatosUpt.FieldByName(PKField).AsInteger := 0;


        Tabla := String(TZQuery(zDatosUpt).Properties.Objects[0]);
        Lista.Delimiter := ',';
        Lista.DelimitedText := pCampos;

        i := 0;
        pValores := '';
        While i < Lista.Count do
        begin
          if i = (Lista.Count -1) then
            pValores := pValores + '#' +zDatosUpt.FieldByName(Lista[i]).AsString + '#'
          else
            pValores := pValores + '#' +zDatosUpt.FieldByName(Lista[i]).AsString + '#,';
          Inc(i);
        end;

        FocusError := VerificarExiste(tabla, pCondiciones, pValores, Reactivado) > 0;

        if Reactivado then
        begin
          if zDatosUpt.Connection.InTransaction then
            zDatosUpt.Connection.Commit;
          dxButtonCancelarClick(nil);
        end;

        if zDatosUpt.State in [dsEdit, dsInsert] then
          zDatosUpt.Post;

        if zDatosUpt.Connection.InTransaction then
          zDatosUpt.Connection.Commit;

        dxButtonActualizarClick(nil);
        OcultarPanel;

        if esLlamado then
          Tag := 1112; //indicar que se guardó un registro
      end;
    finally
      Lista.Destroy;
      ActionButtons;
      if FocusError and (CurControl <> nil) and (CurControl.CanFocus) then
        CurControl.SetFocus;
    end;
  except
    on e: eWarning do
    begin
      if e.message <> '***' then
        MsgBox.ShowModal('Validación.', e.Message, cmtWarning, [cmbOK]);
    end;

    on e: exception do
    begin
      //MessageDlg(pMensajeError + e.Message, mtError, [mbOK],0);
      MsgBox.ShowModal('Error.' ,pMensajeError + e.Message, cmtError, [cmbOK]);
      if zDatosUpt.Active and (zDatosUpt.State in [dsInsert, dsEdit]) then
        zDatos.Cancel;

      if zDatosUpt.Connection.InTransaction then
        zDatosUpt.Connection.Rollback;
    end;
  end;
end;

procedure TFrmCatalogo.dxButtonNuevoClick(Sender: TObject);
var
  Cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := crAppStart;
      if (zDatosUpt.Active) then
      begin
         if not FiltrarDataset(zDatosUpt, PKField, ['-9']) then
        raise Exception.Create(pErrorFiltrar + '[' + QueryName + ']');

        if zDatosUpt.Active then
          zDatosUpt.Refresh
        else
          zDatosUpt.Open;

        if zDatosUpt.Connection.InTransaction then
          zDatosUpt.Connection.Rollback;

        zDatosUpt.Connection.StartTransaction;
        zDatosUpt.Append;
      end;
    finally
      ActionButtons;
      Screen.Cursor := Cursor;
    end;
  except
    on e: exception do
    begin
//      MessageDlg(pMensajeError + e.Message, mtError, [mbOK],0);
      msgBox.ShowModal('Error.', pMensajeError + e.Message, cmtError, [cmbOK]);
      if zDatosUpt.Connection.InTransaction then
        zDatosUpt.Connection.Rollback;
    end;
  end;
end;

procedure TFrmCatalogo.dxButtonSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmCatalogo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if zDatosUpt.Active and (zDatosUpt.State in [dsInsert, dsEdit]) then
    zDatosUpt.Cancel;

  if zDatosUpt.Connection.InTransaction then
    zDatosUpt.Connection.Rollback;

  Action := caFree;
end;

procedure TFrmCatalogo.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if Not HuboError then
    CanClose := (MsgBox.ShowModal('Confirmación.','¿Estas seguro que deseas cerrar la ventana ' + Self.Caption + '?', cmtConfirmation, [cmbYes, cMbNo]) = mrYes);
end;

procedure TFrmCatalogo.FormShow(Sender: TObject);
var
  Cursor: TCursor;
begin
  try
    HuboError := False;
    Cursor := Screen.Cursor;
    try
      //OldHeight := pnlDatos.Height;
      esLlamado := Tag = 1111;
      Screen.Cursor := crAppStart;

      if not AsignarSQL(zDatos, QueryName, pReadOnly) then
        raise Exception.Create(pErrorConsulta + '[' + QueryName + ']');

      if not FiltrarDataset(zDatos, PKField, ['-1']) then
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

      //pnlDatos.Height := 0;
      ActionButtons;
      cxPageDatos.ActivePageIndex := 1;

      if esLlamado then
        dxButtonNuevoClick(nil);
        //cxHintStyleController.HintStyle
      //TdxScreenTipLinks(cxHintStyleController.HintStyle)
    finally
      AutoFocus(TForm(self));
      dxDockDatos.AutoHide := True;
      Screen.Cursor := Cursor;
      AplicarTema(TForm(Self));
    end;
  except
    on e: exception do
    begin
      HuboError := True;
      //MessageDlg(pMensajeError + e.Message, mtError, [mbOK],0);
      MsgBox.ShowModal('Error.',pMensajeError + e.Message, cmtError, [cmbOK]);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  end;
end;

procedure TFrmCatalogo.MostrarPanel;
var i,j: Integer;
begin
  //dxDockDatos.Show;
  dxDockDatos.AllowFloating := False;
  dxDockDatos.AutoHide := True;
  //dxDockDatos.Enabled := True;
//  i := 0;
//  while i < cxTsDatos.PageControl.PageCount do
//  begin
//    j := 0;
//    While j < cxTsDatos.PageControl.Pages[i].ComponentCount do
//    begin
//      cxTsDatos.PageControl.Pages[i].Components[i].
//      inc(j);
//    end;
//    inc(i);
//  end;
end;

procedure TFrmCatalogo.OcultarPanel;
var i: Integer;
begin
  dxDockDatos.AutoHide := True;
  dxDockDatos.Caption := 'Información detallada [Solo lectura].';
  dxDockDatos.AllowFloating := True;
end;
end.
