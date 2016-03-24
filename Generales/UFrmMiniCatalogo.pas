unit UFrmMiniCatalogo;

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
  cxGridExportLink, ShellAPI, cxSplitter;

type
  TFrmMiniCatalogo = class(TForm)
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
    cxGridDatos: TcxGridDBTableView;
    GridLevel1: TcxGridLevel;
    cxGridGral: TcxGrid;
    pnlDatos: TPanel;
    cxPageDatos: TcxPageControl;
    cxTsDatos: TcxTabSheet;
    dxLYCDatos: TdxLayoutControl;
    dxLyDatos: TdxLayoutGroup;
    dxbrManager1Bar1: TdxBar;
    zDatosUpt: TZQuery;
    dsDatosUpt: TDataSource;
    dxPopupGrid: TdxRibbonPopupMenu;
    dxButtonExportar: TdxBarLargeButton;
    dlgSave1: TSaveDialog;
    cxSplitter1: TcxSplitter;
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
  private
    { Private declarations }
    OldHeight: Integer;
    Procedure ActionButtons;
    procedure MostrarPanel;
    Procedure OcultarPanel;
  public
    QueryName: String;
    PKField: String;
    CampoMostrar: string; //Campo que desea mostrar al eliminar
    campoImagen: string; //Imagen de muestra que desea eliminar
    esLlamado: Boolean;
    pCondiciones: String;
    pCampos: string;
    pValores: String;
    { Public declarations }
  end;

var
  FrmMiniCatalogo: TFrmMiniCatalogo;

implementation

uses UMsgBox;

{$R *.dfm}

procedure TFrmMiniCatalogo.ActionButtons;
var Estado: Boolean;
begin
  Estado := (zDatosUpt.Active) and (zDatosUpt.State = dsBrowse);
  dxButtonActualizar.Enabled := Estado;
  dxButtonNuevo.Enabled := Estado;

  Estado := (zDatosUpt.Active) and (zDatosUPT.RecordCount > 0) and (zDatosUpt.State = dsBrowse);
  dxBButtonEditar.Enabled := Estado;
  dxBButtonEliminar.Enabled := Estado;
  dxBButtonBuscar.Enabled := Estado;

  Estado := (zDatosUpt.Active) and (zDatosUpt.State in [dsEdit, dsInsert]);
  dxButtonGuardar.Enabled := Estado;
  dxButtonCancelar.Enabled := Estado;
  cxGridGral.Enabled := Not Estado;
  dxLYCDatos.Enabled := Estado;

  If zDatosUpt.State = dsInsert then
    cxTsDatos.Caption := 'Inserción de nuevo registro.'
  else
    cxTsDatos.Caption := 'Edición de registro [' + zDatos.FieldByName(CampoMostrar).AsString + ']';

  if Estado then
    MostrarPanel
  else
    OcultarPanel;
end;

procedure TFrmMiniCatalogo.cxGridDatosCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  dxBButtonEditarClick(nil);
end;

procedure TFrmMiniCatalogo.cxGridDatosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_RETURN then
    dxBButtonEditarClick(nil);

  if key = VK_DELETE then
    dxBButtonEliminarClick(nil);

end;

procedure TFrmMiniCatalogo.dxBButtonBuscarClick(Sender: TObject);
begin
  cxGridDatos.FilterRow.Visible := Not cxGridDatos.FilterRow.Visible;
end;

procedure TFrmMiniCatalogo.dxBButtonEditarClick(Sender: TObject);
begin
  try
    try
      if (zDatos.Active) and (zDatos.RecordCount > 0) then
      begin
        if not FiltrarDataset(zDatosUpt, PKField, [zDatos.FieldByName(PKField).AsString]) then
          raise Exception.Create(pErrorFiltrar + '[' + QueryName + ']');

        if zDatosUpt.Active then
          zDatosUpt.Refresh
        else
          zDatosUpt.Open;

        zDatosUpt.edit;
        SelectNext(ActiveControl, True, True);
      end;
    finally
      ActionButtons;
    end;
  except
    on e: exception do
    begin
      //MessageDlg(pMensajeError + e.Message, mtError, [mbOK],0);
      MsgBox.ShowModal('Error', pMensajeError + e.Message, cmtError, [cmbOK]);
    end;
  end;
end;

procedure TFrmMiniCatalogo.dxBButtonEliminarClick(Sender: TObject);
var
  LocCampo: String;
  ModalRes: Integer;
begin
  try
    try
      if (zDatos.Active) and (zDatos.RecordCount > 0) then
      begin
        LocCampo := zDatos.FieldByName(CampoMostrar).AsString;
        //if MessageDlg('¿Estás seguro que deseas eliminar el registro ['+ LocCampo +']', mtConfirmation, [mbYes, mbNo], 0)= mrYes then
        ModalRes := MsgBox.ShowModal('Confirmación', '¿Estás seguro que deseas eliminar el registro ['+ LocCampo +']?', cmtConfirmation, [cMbDelete, cMbNo], imagenAStream(campoImagen,zDatos) );
        if ModalRes = mrYes then
        begin
          if not FiltrarDataset(zDatosUpt, PKField, [zDatos.FieldByName(PKField).AsString]) then
          raise Exception.Create(pErrorFiltrar + '[' + QueryName + ']');

          if zDatosUpt.Active then
            zDatosUpt.Refresh
          else
            zDatosUpt.Open;

          BorrarRegistro(zDatosUpt);
          //zDatosUpt.Delete;
          dxButtonActualizarClick(Nil);
        end;
      end;
    finally
      ActionButtons;
    end;
  except
    on e: exception do
    begin
      if e.message <> '***' then
        MsgBox.ShowModal('Error.', pMensajeError + e.Message, cmtError, [cmbOK]);
    end;
  end;
end;

procedure TFrmMiniCatalogo.dxButtonActualizarClick(Sender: TObject);
var
  Cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := crAppStart;
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
    end;
  end;
end;

procedure TFrmMiniCatalogo.dxButtonCancelarClick(Sender: TObject);
begin
  try
    try
      if (zDatosUpt.Active) and (zDatosUpt.State in [dsEdit, dsInsert]) then
      begin
        zDatosUpt.Cancel;
        OcultarPanel;
      end;
    finally
      ActionButtons;
    end;
  except
    on e: exception do
    begin
      //MessageDlg(pMensajeError + e.Message, mtError, [mbOK],0);
      MsgBox.ShowModal('Error.', pMensajeError + e.Message, cmtError, [cmbOK]);
    end;
  end;
end;

procedure TFrmMiniCatalogo.dxButtonExportarClick(Sender: TObject);
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
     if MsgBox.ShowModal('Confirmar exportación' ,'¿Desea abrir el documento exportado?', cmtConfirmation, [cMbOpen, cmbNo]) = mrYes then
        ShellExecute(Self.Handle, Nil, PChar(rutaArchivo), '', '', SW_SHOWNORMAL);
  end;
end;

procedure TFrmMiniCatalogo.dxButtonGuardarClick(Sender: TObject);
var
  tabla: string;
  I: Integer;
  CurControl: TWinControl;
  Lista: TStringList;
  Reactivado: Boolean;
begin
  try
    CurControl := ActiveControl;
    try
      Lista := TStringList.Create;
      SelectNext(ActiveControl, True, True);
      if (zDatosUpt.Active) and (zDatosUpt.State in [dsEdit, dsInsert]) then
      begin
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

        //Le paso una variable por referenciar llamada Reactivado, esta me debe retornar con un valor True o False
        //Siendo true, indicando que hubo una reactivación de este registro y así evitar hacer un post
        VerificarExiste(tabla, pCondiciones, pValores, Reactivado);

        if Reactivado then
        begin
          dxButtonCancelarClick(nil);
        end;

        if zDatosUpt.State in [dsEdit, dsInsert] then
          zDatosUpt.Post;

        dxButtonActualizarClick(nil);
        OcultarPanel;

        if esLlamado then
          Tag := 1112; //indicar que se guardó un registro
      end;
    finally
      Lista.Destroy;
      ActionButtons;
      if (CurControl <> nil) and (CurControl.CanFocus) then
        CurControl.SetFocus;
    end;
  except
    on e: eWarning do
    begin
      if e.message <> '***' then
        MsgBox.ShowModal('Validación.',e.Message, cmtWarning, [cmbOK]);
    end;

    on e: exception do
    begin
      //MessageDlg(pMensajeError + e.Message, mtError, [mbOK],0);
      MsgBox.ShowModal('Error.', pMensajeError + e.Message, cmtError, [cmbOK]);
      if zDatosUpt.Active and (zDatosUpt.State in [dsInsert, dsEdit]) then
        zDatos.Cancel;
    end;
  end;
end;

procedure TFrmMiniCatalogo.dxButtonNuevoClick(Sender: TObject);
begin
  try
    try
      if (zDatosUpt.Active) then
      begin
         if not FiltrarDataset(zDatosUpt, PKField, ['-9']) then
        raise Exception.Create(pErrorFiltrar + '[' + QueryName + ']');

        if zDatosUpt.Active then
          zDatosUpt.Refresh
        else
          zDatosUpt.Open;

        zDatosUpt.Append;

        SelectNext(ActiveControl, True, True);
      end;
    finally
      ActionButtons;
    end;
  except
    on e: exception do
    begin
      //MessageDlg(pMensajeError + e.Message, mtError, [mbOK],0);
      MsgBox.ShowModal('Error', pMensajeError + e.Message, cmtError, [cMbOK]);
    end;
  end;
end;

procedure TFrmMiniCatalogo.dxButtonSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmMiniCatalogo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if zDatosUpt.Active and (zDatosUpt.State in [dsInsert, dsEdit]) then
    zDatosUpt.Cancel;
end;

Procedure TFrmMiniCatalogo.FormShow(Sender: TObject);
var
  Cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    try
      esLlamado := Tag = 1111;
      OldHeight := pnlDatos.Height;
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

      pnlDatos.Height := 0;

      ActionButtons;

      if esLlamado then
        dxButtonNuevoClick(nil);
    finally
      AutoFocus(TForm(Self));
      Screen.Cursor := Cursor;
      AplicarTema(TForm(Self));
    end;
  except
    on e: exception do
    begin
      //MessageDlg(pMensajeError + e.Message, mtError, [mbOK],0);
      MsgBox.ShowModal('Error.',pMensajeError + e.Message, cmtError, [cmbOK]);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  end;
end;

procedure TFrmMiniCatalogo.MostrarPanel;

begin
//  while pnlDatos.Height <= OldHeight  do
//  begin
//    pnlDatos.Height := pnlDatos.Height + 5;
//  end;
  pnlDatos.Height := OldHeight;
end;

procedure TFrmMiniCatalogo.OcultarPanel;
begin
//  while pnlDatos.Height > 0  do
//  begin
//    pnlDatos.Height := pnlDatos.Height - 5;
//  end;
  pnlDatos.Height := 0;
end;

end.
