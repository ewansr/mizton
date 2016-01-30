unit UConsultasSQL;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxSplitter,
  ExtCtrls, AdvMemo, AdvmSQLS, dxSkinsdxBarPainter, dxRibbonSkins,
  dxSkinsdxRibbonPainter, dxRibbonCustomizationForm, dxRibbon, dxBar,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, cxContainer, cxTextEdit,
  cxDBEdit, cxLabel, UConection, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox;

type
  TFrmConsultasSQL = class(TForm)
    cxGridSQL: TcxGridDBTableView;
    cxLvl1: TcxGridLevel;
    CxGrdConsultas: TcxGrid;
    cxspltr1: TcxSplitter;
    cxColNombre: TcxGridDBColumn;
    cxColTipo: TcxGridDBColumn;
    pnlSQL: TPanel;
    AdvStyleMemo: TAdvSQLMemoStyler;
    advmSQL: TAdvMemo;
    dsSQL: TDataSource;
    advSourceMemo: TAdvMemoSource;
    dxBarManager1: TdxBarManager;
    dxrbnSQLTab1: TdxRibbonTab;
    dxrbnSQL: TdxRibbon;
    dxbrManager1Bar: TdxBar;
    dxButtonNuevo: TdxBarLargeButton;
    dxButtonGuardar: TdxBarLargeButton;
    dxButtonCancelar: TdxBarLargeButton;
    dxButtonEditar: TdxBarLargeButton;
    dxButtonEliminar: TdxBarLargeButton;
    dxButtonSalir: TdxBarLargeButton;
    zExec: TZQuery;
    cxDBTextEdit1: TcxDBTextEdit;
    cxLbl1: TcxLabel;
    dxButtonSintaxis: TdxBarLargeButton;
    dxPopup1: TdxRibbonPopupMenu;
    cxlbl2: TcxLabel;
    cbbTipo: TcxDBComboBox;
    zTablas: TZQuery;
    zCampos: TZQuery;
    dsCampos: TDataSource;
    dsTablas: TDataSource;
    cxlbl3: TcxLabel;
    cxlbl4: TcxLabel;
    cbbCampos: TcxDBLookupComboBox;
    cbbTabla: TcxDBLookupComboBox;
    dxButtonActualizar: TdxBarLargeButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxButtonEditarClick(Sender: TObject);
    procedure dxButtonSalirClick(Sender: TObject);
    procedure dxButtonGuardarClick(Sender: TObject);
    procedure dxButtonCancelarClick(Sender: TObject);
    procedure dxButtonEliminarClick(Sender: TObject);
    procedure dxButtonNuevoClick(Sender: TObject);
    procedure dxButtonSintaxisClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbbTipoExit(Sender: TObject);
    procedure cbbTablaExit(Sender: TObject);
    procedure dxButtonActualizarClick(Sender: TObject);
  private
    { Private declarations }
    Procedure AfterScroll(DataSet: TDataSet);
    procedure ActionButtons;
  public
    { Public declarations }
  end;

var
  FrmConsultasSQL: TFrmConsultasSQL;

implementation

{$R *.dfm}


{ TFrmConsultasSQL }

procedure TFrmConsultasSQL.ActionButtons;
var
  Estado: Boolean;
begin
  Estado := dsSQL.DataSet.Active and (dsSQL.DataSet.RecordCount > 0) and (dsSQL.DataSet.State in [dsBrowse]);
  dxButtonEditar.Enabled := Estado;
  dxButtonEliminar.Enabled := Estado;

  Estado := dsSQL.DataSet.Active and (dsSQL.DataSet.State in [dsBrowse]);
  dxButtonNuevo.Enabled := Estado;
  CxGrdConsultas.Enabled := Estado;
  dxButtonActualizar.Enabled := Estado;

  Estado := dsSQL.DataSet.Active and (dsSQL.DataSet.State in [dsEdit, dsInsert]);
  dxButtonGuardar.Enabled := Estado;
  dxButtonCancelar.Enabled := Estado;
  advmSQL.ReadOnly := not Estado;


end;

procedure TFrmConsultasSQL.AfterScroll(DataSet: TDataSet);
begin
  advSourceMemo.Lines.Text := dsSQL.DataSet.FieldByName('SQL').AsString;

  zExec.Active := False;
  zExec.Connection := UDMConection.conBD;
  zExec.SQL.Text := DsSQL.DataSet.FieldByName('SQL').AsString;

end;

procedure TFrmConsultasSQL.cbbTablaExit(Sender: TObject);
begin
  try
    if zCampos.Active then
      zCampos.Refresh
    else
      zCampos.Open;
  Except
    on e: Exception do
    begin
      MessageDlg(pMensajeError +  e.Message , mtError, [mbOK], 0)
    end;
  end;
end;

procedure TFrmConsultasSQL.cbbTipoExit(Sender: TObject);
begin
  try
    if zTablas.Active then
      zTablas.Refresh
    else
      zTablas.Open;

    cbbTabla.DataBinding.DataField := 'NombreTabla';
    cbbTabla.Properties.ListFieldNames := 'tables_in_' + UDMConection.conBD.Database;
    cbbTabla.Properties.KeyFieldNames := 'tables_in_' + UDMConection.conBD.Database;
  Except
    on e: Exception do
    begin
      MessageDlg(pMensajeError +  e.Message , mtError, [mbOK], 0)
    end;
  end;
end;

procedure TFrmConsultasSQL.dxButtonActualizarClick(Sender: TObject);
var
  Cursor: TCursor;
begin
  Cursor := Screen.Cursor;
  try
    Screen.Cursor := crAppStart;

    if dsSQL.DataSet.Active then
      dsSQL.DataSet.Refresh
    else
      dsSQL.DataSet.Open;
  finally
    Screen.Cursor := Cursor;
    ActionButtons;
  end;
end;

procedure TFrmConsultasSQL.dxButtonCancelarClick(Sender: TObject);
begin
  try
    if dsSQL.DataSet.State in [dsEdit, dsInsert] then
    begin
     TZQuery(dsSQL.DataSet).Cancel;
    end;
  finally
   ActionButtons;
  end;
end;

procedure TFrmConsultasSQL.dxButtonEditarClick(Sender: TObject);
begin
  try
    if dsSQL.DataSet.RecordCount > 0 then
    begin
      advmSQL.ReadOnly := False;
      advmSQL.SetFocus;
    end;
    dsSQL.DataSet.Edit;
  finally
    ActionButtons;
  end;
end;

procedure TFrmConsultasSQL.dxButtonEliminarClick(Sender: TObject);
begin
  try
    if MessageDlg('¿Estás seguro que deseas eliminar ' +  dsSQL.DataSet.FieldByName('NombreConsulta').AsString + '?', mtConfirmation, [mbYes,MbNo], 0) = mrYes then
      TZQuery(dsSQL.DataSet).Delete;
  finally
    ActionButtons;
  end;
end;

procedure TFrmConsultasSQL.dxButtonGuardarClick(Sender: TObject);
begin
 try
   if dsSQL.DataSet.State in [dsEdit, dsInsert] then
   begin
     TZQuery(dsSQL.DataSet).FieldByName('SQL').AsString := advSourceMemo.Lines.Text;
     TZQuery(dsSQL.DataSet).Post;
   end;
 finally
   ActionButtons;
 end;
end;

procedure TFrmConsultasSQL.dxButtonNuevoClick(Sender: TObject);
begin
  try
    if dsSQL.DataSet.State = dsBrowse then
      TZQuery(dsSQL.DataSet).Append;
  finally
    ActionButtons;
  end;
end;

Procedure TFrmConsultasSQL.dxButtonSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmConsultasSQL.dxButtonSintaxisClick(Sender: TObject);
begin
  try
    zExec.Open;
    MessageDlg('La sintaxis analizada de tu consulta SQL es correcta.', mtInformation, [mbOK], 0);
  except
    on e: Exception do
      MessageDlg(e.Message, mtWarning, [mbOK], 0);
  end;
end;

procedure TFrmConsultasSQL.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if dsSQL.DataSet.State in [dsEdit, dsInsert] then
    dxButtonCancelarClick(nil);

  dsSQL.DataSet.AfterScroll := nil;
end;

procedure TFrmConsultasSQL.FormShow(Sender: TObject);
begin
  dsSQL.DataSet.AfterScroll := AfterScroll;
  ActionButtons;
end;

end.
