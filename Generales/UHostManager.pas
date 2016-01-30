unit UHostManager;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxLayoutContainer, dxLayoutControl,
  cxSplitter, dxGalleryControl, UConection, UnitRegistroWindows, cxClasses,
  dxGallery, cxContainer, cxEdit, ExtCtrls, cxImage, dxGDIPlusClasses, cxLabel,
  cxStyles, cxTextEdit, cxSpinEdit, cxVGrid, cxInplaceContainer,
  cxPropertiesStore, cxMemo, cxDropDownEdit, dxSkinsdxBarPainter, dxBar,
  cxCheckBox, dxRibbonSkins, dxSkinsdxRibbonPainter, dxRibbonCustomizationForm,
  dxRibbon;

type
  TFrmHostManager = class(TForm)
    dxGalleryHost: TdxGalleryControl;
    cxspltr1: TcxSplitter;
    dxGroupHost: TdxGalleryControlGroup;
    pnl1: TPanel;
    pnl2: TPanel;
    cxImage1: TcxImage;
    LblCon: TcxLabel;
    cxPropertiesStore1: TcxPropertiesStore;
    cxVGridMysql: TcxVerticalGrid;
    cxctgryrwVGrid1CategoryRow1: TcxCategoryRow;
    cRowU: TcxEditorRow;
    cRowPass: TcxEditorRow;
    cRowPort: TcxEditorRow;
    cRowDescripcion: TcxEditorRow;
    cRowBd: TcxEditorRow;
    dxBarManager1: TdxBarManager;
    dxbrManager1Bar: TdxBar;
    dxBtnNuevo: TdxBarLargeButton;
    dxBtnEditar: TdxBarLargeButton;
    dxBtnEliminar: TdxBarLargeButton;
    dxBtnDefault: TdxBarLargeButton;
    dxglrycntrltmGroupHostItem1: TdxGalleryControlItem;
    cxlkndflcntrlr1: TcxLookAndFeelController;
    cxmDescripcion: TcxMemo;
    Lbl1: TcxLabel;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxTabRibbon1Tab1: TdxRibbonTab;
    dxRibbon1: TdxRibbon;
    cxCheckDefault: TcxCheckBox;
    procedure dxGalleryHostItemClick(Sender: TObject;
      AItem: TdxGalleryControlItem);
    procedure dxBtnDefaultClick(Sender: TObject);
    procedure dxBtnNuevoClick(Sender: TObject);
    procedure dxBtnEditarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmHostManager: TFrmHostManager;

implementation

Uses UConfigMySQL, UMsgBox;

{$R *.dfm}

procedure TFrmHostManager.dxBtnDefaultClick(Sender: TObject);
var
  Lista: TStringList;
  i: Integer;
begin
  i := 0;
  Lista := LeerGrupos('\Settings');
  while i < Lista.Count do
  begin

    if LblCon.Caption = Lista[i] then
    begin
      SetRegistry('\Settings','\' + Lista[i] + '', 'Default', 'True');
      cxCheckDefault.Checked := StrToBool(VarRegistry('\Settings','\' + LblCon.Caption + '', 'Default'));
    end
    else
      SetRegistry('\Settings','\' + Lista[i] + '', 'Default', 'False');

    inc(i);
  end;
end;

procedure TFrmHostManager.dxBtnEditarClick(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmConfigMySQL, FrmConfigMySQL);
    FrmConfigMySQL.Host := LblCon.Caption;
    if FrmConfigMySQL.ShowModal = mrAbort then
      raise Exception.Create('***');
    FormShow(sender);
  except
    on e: exception do
     if e.Message <> '***' then
       MsgBox.ShowModal('Error',pMensajeError + e.Message, cmtError, [cmbOK]);
  end;
end;

procedure TFrmHostManager.dxBtnNuevoClick(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmConfigMySQL, FrmConfigMySQL);
    if FrmConfigMySQL.ShowModal = mrAbort then
      raise Exception.Create('***');
    FormShow(sender);
  except
    on e: exception do
     if e.Message <> '***' then
       MsgBox.ShowModal('Error',pMensajeError + e.Message, cmtError, [cmbOK]);
  end;
end;

procedure TFrmHostManager.dxButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmHostManager.dxGalleryHostItemClick(Sender: TObject;
  AItem: TdxGalleryControlItem);
begin
  LblCon.Caption := AItem.Caption;
  cRowU.Properties.Value := VarRegistry('\Settings','\' + LblCon.Caption + '', 'MysqlUser');
  cRowpass.Properties.Value := VarRegistry('\Settings','\' + LblCon.Caption + '', 'MysqlPass');
  cRowPort.Properties.Value := StrToInt(VarRegistry('\Settings','\' + LblCon.Caption + '', 'MysqlPort'));
  cRowDescripcion.Properties.Value := VarRegistry('\Settings','\' + LblCon.Caption + '', 'Description');
  cxmDescripcion.Text := VarRegistry('\Settings','\' + LblCon.Caption + '', 'Description');
  cRowBd.Properties.Value := VarRegistry('\Settings','\' + LblCon.Caption + '', 'Database');
  cxCheckDefault.Checked := StrToBool(VarRegistry('\Settings','\' + LblCon.Caption + '', 'Default'));
end;

procedure TFrmHostManager.FormShow(Sender: TObject);
var
  Lista: TStringList;
  Item: TdxGalleryItems;
  I: Integer;
begin
  try
    Lista := LeerGrupos('\Settings');
    Item := dxGalleryHost.Gallery.Groups.Groups[0].Items;
    Item.Clear;

    i := 0;
    while i < Lista.Count do
    begin
      with Item.Add do
      begin
        Caption := Lista[i];
        ImageIndex := 27;
        Description := Caption;
      end;
      inc(i);
    end;

    if Lista.Count > 0  then
      dxGalleryHostItemClick(Sender,dxGalleryHost.Gallery.Groups.Groups[0].Items.Items[0]);
  except
    ;
  end;
end;

end.
