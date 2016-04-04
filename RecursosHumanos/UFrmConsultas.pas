unit UFrmConsultas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  dxSkinscxPCPainter, ComCtrls, dxCore, cxDateUtils, dxLayoutcxEditAdapters,
  cxTextEdit, StdCtrls, cxRadioGroup, dxLayoutContainer, cxMaskEdit,
  cxDropDownEdit, cxCalendar, dxLayoutControl, cxGroupBox, ExtCtrls, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxCheckBox, cxSplitter, Menus,
  cxButtons, cxCustomPivotGrid, cxDBPivotGrid, ZAbstractRODataset, uconection,
  ZAbstractDataset, ZDataset, cxExport, UMsgBox, ShellApi, cxGridExportLink,
  comObj, cxExportPivotGridLink, DateUtils;

type
  TFrmConsultas = class(TForm)
    pnlFiltros: TPanel;
    cxGboxFecha: TcxGroupBox;
    dxLayControl1Group_Root: TdxLayoutGroup;
    dxLayControl1: TdxLayoutControl;
    cxDateDesde: TcxDateEdit;
    lyDesde: TdxLayoutItem;
    cxDateHasta: TcxDateEdit;
    lyHasta: TdxLayoutItem;
    rbFecha: TcxRadioButton;
    rbFolio: TcxRadioButton;
    cxGboxFolio: TcxGroupBox;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    cxTextFolio: TcxTextEdit;
    lyFolio: TdxLayoutItem;
    rbTelefono: TcxRadioButton;
    cxGroupBox1: TcxGroupBox;
    dxLayoutControl2: TdxLayoutControl;
    cxTextTelefono: TcxTextEdit;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    cxTextExpediente: TcxTextEdit;
    lyExpediente: TdxLayoutItem;
    cxCheckExpediente: TcxCheckBox;
    lyExpedienteChk: TdxLayoutItem;
    cxCheckOrign: TcxCheckBox;
    lyOrigen: TdxLayoutItem;
    cxSplitter1: TcxSplitter;
    btnReporte: TcxButton;
    cxPivotFolios: TcxDBPivotGrid;
    cxPGFieldFolio: TcxDBPivotGridField;
    cxPGFieldTelefono: TcxDBPivotGridField;
    cxPGFieldPagoTecnico: TcxDBPivotGridField;
    cxPGFieldFecha: TcxDBPivotGridField;
    cxPGFieldEstatus: TcxDBPivotGridField;
    cxPGFieldTipo: TcxDBPivotGridField;
    cxPGFieldTipoInstalacion: TcxDBPivotGridField;
    cxPGFieldCostoEmpresa: TcxDBPivotGridField;
    zDatos: TZQuery;
    dsDatos: TDataSource;
    cxPGFieldExpediente: TcxDBPivotGridField;
    btnImprimir: TcxButton;
    dlgSave1: TSaveDialog;
    procedure FormShow(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnReporteClick(Sender: TObject);
    procedure cxCheckOrignPropertiesChange(Sender: TObject);
    procedure cxCheckExpedientePropertiesChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsultas: TFrmConsultas;

implementation

{$R *.dfm}

procedure TFrmConsultas.btnImprimirClick(Sender: TObject);
var
  rutaArchivo: string;
  Excel, Sheet: Variant;
begin
  try


    dlgSave1.FileName := '';
    if dlgSave1.Execute then
    begin

      rutaArchivo := dlgSave1.FileName + '.xls';
      cxExportPivotGridToExcel(rutaArchivo, cxpivotFolios);

      Excel := CreateOleObject('Excel.Application');
      Excel.workbooks.Open(rutaArchivo);

      Excel.Range['A1'].Select;
      Excel.Selection.EntireRow.Insert;
      Excel.Selection.EntireRow.Insert;
      Excel.Selection.EntireRow.Insert;
      Excel.Range['A1'].Select;
      Excel.ActiveCell.FormulaR1C1 := 'CONCENTRADO DEL # AL #';

      Excel.ActiveWorkBook.Save;

       if MsgBox.ShowModal('Aviso', '�Desea abrir el documento exportado?', cmtConfirmation, [cmbOpen, cmbNo]) = mrYes then
          ShellExecute(Self.Handle, Nil, PChar(rutaArchivo), '', '', SW_SHOWNORMAL);
    end;
  Except
    on e: exception do
      MsgBox.ShowModal('Error', e.message, cmtError, [cmbok]);
  end;
end;

procedure TFrmConsultas.btnReporteClick(Sender: TObject);
var
  Inicio: String;
  Termino: String;
  Expediente: String;
begin
  if cxCheckOrign.Checked then
  begin
    Inicio := '-1';
    Termino := '-1';
  end
  else
  begin
    Inicio := fechaSQL(cxDateDesde.date);
    Termino := fechaSQL(cxDateHasta.date);
  end;

  if  cxCheckExpediente.Checked then
    Expediente := cxTextExpediente.Text
  else
    Expediente := '-1';

  FiltrarDataset(zDatos, 'IdFolio,Expediente,Desde,Hasta', ['-1',Expediente,Inicio,Termino]);



  if zDatos.Active then
    zDatos.Refresh
  else
    zDatos.Open;
end;

procedure TFrmConsultas.cxCheckExpedientePropertiesChange(Sender: TObject);
begin
  lyExpediente.Enabled :=  cxCheckExpediente.Checked;
end;

procedure TFrmConsultas.cxCheckOrignPropertiesChange(Sender: TObject);
begin
  lyDesde.Enabled := Not cxCheckOrign.Checked;
  lyHasta.Enabled := Not cxCheckOrign.Checked;

end;

procedure TFrmConsultas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := Cafree;
end;

procedure TFrmConsultas.FormShow(Sender: TObject);
begin
  AsignarSQL(zDatos, 'mt_foliosxtecnicos', pReadOnly);
  FiltrarDataset(zDatos, 'IdFolio', ['-1']);

  cxDatedesde.date := StartOfTheWeek(Now);
  cxDateHasta.date := EndOfTheWeek(now);
end;

end.
