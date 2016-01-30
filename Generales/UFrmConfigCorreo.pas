unit UFrmConfigCorreo;

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
  cxContainer, cxEdit, dxLayoutcxEditAdapters, cxLabel, cxMaskEdit, cxSpinEdit,
  cxTextEdit, dxSkinsdxBarPainter, Menus, StdCtrls, cxButtons, cxClasses, dxBar,
  ExtCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, UConection, UMsgBox;

type
  TFrmConfigCorreo = class(TForm)
    ly1: TdxLayoutControl;
    dxLyLayoutControl1Group_Root: TdxLayoutGroup;
    LblEmpresa: TcxLabel;
    dxlytmly1Item1: TdxLayoutItem;
    cxTextCorreo: TcxTextEdit;
    dxlytmly1Item2: TdxLayoutItem;
    cxTextContrasena: TcxTextEdit;
    dxlytmly1Item3: TdxLayoutItem;
    cxTextSMTP: TcxTextEdit;
    dxlytmly1Item4: TdxLayoutItem;
    cxSpinPuerto: TcxSpinEdit;
    dxlytmly1Item5: TdxLayoutItem;
    dxlytcrtdgrply1Group1: TdxLayoutAutoCreatedGroup;
    pnl1: TPanel;
    dxBarManager1: TdxBarManager;
    btn1: TcxButton;
    btn2: TcxButton;
    zCorreo: TZQuery;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConfigCorreo: TFrmConfigCorreo;

implementation

{$R *.dfm}

procedure TFrmConfigCorreo.btn1Click(Sender: TObject);
begin
  zCorreo.FieldByName('IdEmpresa').AsInteger := varGlobal.Elemento('IdEmpresa').AsInteger;
  zCorreo.FieldByName('Correo').AsString := cxTextCorreo.Text;
  zCorreo.FieldByName('Contrasena').AsString := encriptar(cxTextContrasena.Text,10);
  zCorreo.FieldByName('SMTP').AsString := cxTextSMTP.Text;
  zCorreo.FieldByName('Puerto').asInteger := cxSpinPuerto.Value;
  zCorreo.Post;
  Close;
end;

procedure TFrmConfigCorreo.btn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmConfigCorreo.FormCreate(Sender: TObject);
begin
  if not AsignarSQL(zCorreo, 'master_configuracioncorreo', pReadOnly) then
    raise exception.Create(pErrorConsulta + ' [master_configuracioncorreo]');
end;

procedure TFrmConfigCorreo.FormShow(Sender: TObject);
var
  Cursor: TCursor;
  LocIdEmpresa: String;
begin
  try
    Cursor := Screen.Cursor;
    try
      lblEmpresa.Caption := varGlobal.Elemento('NombreEmpresa').AsString;
      LocIdEmpresa := varGlobal.Elemento('IdEmpresa').AsString;
      if not FiltrarDataset(zCorreo, 'IdEmpresa', [LocIdEmpresa]) then
        raise Exception.Create(pErrorFiltrar + ' [master_configuracioncorreo]');

      if zCorreo.Active then
        zCorreo.Refresh
      else
        zCorreo.Open;

      if zCorreo.Recordcount > 0 then
      begin
        cxTextCorreo.Text := zCorreo.FieldByName('Correo').AsString;
        cxTextContrasena.Text := desencriptar(zCorreo.FieldByName('Contrasena').AsString,10);
        cxTextSMTP.Text := zCorreo.FieldByName('SMTP').AsString;
        cxSpinPuerto.Value := zCorreo.FieldByName('Puerto').asInteger;
        zCorreo.Edit;
      end
      else
        zCorreo.Insert;
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

end.
