unit UMsgBox;

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
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, cxLabel,
  cxImage, Menus, StdCtrls, cxButtons, ImgList, cxTextEdit, cxMemo, cxDBEdit,
  UConection, dxGDIPlusClasses;

type

  TMsgBox = class(TForm)
    pnlBotones: TPanel;
    pnlContenido: TPanel;
    btnYes: TcxButton;
    btnNo: TcxButton;
    btnCancel: TcxButton;
    btnAbor: TcxButton;
    btnSave: TcxButton;
    btnClose: TcxButton;
    cxImageList1: TcxImageList;
    cxlblmensaje: TcxLabel;
    cxm1: TcxMemo;
    btn1: TcxButton;
    cxImageIconos: TcxImageList;
    LblInfo: TcxLabel;
    img1: TcxImage;
    btnOK: TcxButton;
    btnEliminar: TcxButton;
    btnOpen: TcxButton;
    btnReconfig: TcxButton;
    btnReactivar: TcxButton;
    procedure FormShow(Sender: TObject);
    procedure btnYesClick(Sender: TObject);
    procedure btnEliminarClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure btnNoClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnAborClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnReconfigClick(Sender: TObject);
    procedure btnReactivarClick(Sender: TObject);
  private
    ModalRes: integer;
    const
      mWidth: Integer = 394;
      mHeight: Integer = 146;
    Procedure QuitaBotones;
    { Private declarations }
  public
    function ShowModal: Integer; overload;
    function ShowModal(Encabezado: String; Informacion: String; TipoMensaje: TMsgDlgType; Botones: TMsgDlgButtons; HelpCtx: Longint = 0; BotonDefault: Byte = 0): Integer; overload;
    function ShowModal(Encabezado: String; Informacion: String; TipoMensaje: Integer; Botones: Array of Integer; Imagen: TdxSmartImage = nil): Integer; overload;

    { Public declarations }
  end;

var
  MsgBox: TMsgBox;

//Valores Constantes para Iconos personalizados
const
  cmtConection: Integer = -1000;
  cmtInformation: Integer = -2000;
  cmtWarning: Integer = -3000;
  cmtError: Integer = -4000;
  cmtConfirmation: Integer = -5000;

//Valores constantes para botones personalizados
  cMbOK: Integer = -100;
  cMbOpen: integer = -108;
  cMbSave: Integer = -101;
  cMbDelete: Integer = -102;
  cMbClose: Integer = -103;
  cMbCancel: Integer = -104;
  cMbYes: Integer = -105;
  cMbNo: Integer = -106;
  cMbAbort: Integer = -107;
  cMbReconfig: Integer = -109;
  cMbReactivate: Integer = -110;



implementation

{$R *.dfm}

procedure TMsgBox.btnAborClick(Sender: TObject);
begin
  ModalRes := mrAbort;
end;

procedure TMsgBox.btnCancelClick(Sender: TObject);
begin
  ModalRes := mrCancel;
end;

procedure TMsgBox.btnCloseClick(Sender: TObject);
begin
  ModalRes := mrClose;
end;

procedure TMsgBox.btnEliminarClick(Sender: TObject);
begin
  ModalRes := mrYes;
end;

procedure TMsgBox.btnNoClick(Sender: TObject);
begin
  ModalRes := mrNo;
end;

procedure TMsgBox.btnOKClick(Sender: TObject);
begin
  ModalRes := mrOk;
end;

procedure TMsgBox.btnReactivarClick(Sender: TObject);
begin
  ModalRes := mrYes;
end;

procedure TMsgBox.btnReconfigClick(Sender: TObject);
begin
  ModalRes := mrYes;
end;

procedure TMsgBox.btnSaveClick(Sender: TObject);
begin
  ModalRes := mrYes;
end;

procedure TMsgBox.btnYesClick(Sender: TObject);
begin
  ModalRes := mrYes;
end;

procedure TMsgBox.FormShow(Sender: TObject);
begin
  AplicarTema(TForm(Self));
end;


function TMsgBox.ShowModal(Encabezado, Informacion: String;
  TipoMensaje: TMsgDlgType; Botones: TMsgDlgButtons; HelpCtx: Integer;
  BotonDefault: Byte): Integer;
var
  altotexto: Integer;
  lineas: Integer;
begin
  Self.Width := mWidth;
  Self.Height := mHeight;
  Caption := Encabezado;
  cxlblmensaje.Caption := Informacion;
  cxm1.Lines.Clear;
  cxm1.Lines.Add(cxlblmensaje.Caption);
  lineas := cxm1.Lines.Count;
  altotexto := (Lineas) * 18;
  cxlblmensaje.Height := altotexto;
  if altotexto > pnlContenido.Height then
    Height := Height + altotexto - (pnlContenido.Height - 20); //105 pertenece a lo ocupado por los demas componentes

  ShowModal;
end;

function TMsgBox.ShowModal: Integer;
begin
  inherited;
end;

procedure TMsgBox.QuitaBotones;
begin
//      -100: btnOK.Visible := True;
//      -101: btnSave.Visible := True;
//      -102: btnEliminar.Visible := True;
//      -103: btnClose.Visible := True;
//      -105: btnYes.Visible := True;
//      -104: btnCancel.Visible := True;
//      -106: btnNo.Visible := True;
//      -107: btnAbor.Visible := True;

  //Aqui el orden si importa.
  btnClose.Visible := False;
  btnEliminar.Visible := false;
  btnopen.Visible := false;
  btnAbor.Visible := false;
  btnCancel.Visible := false;

  btnNo.Visible := false;
  btnYes.Visible := false;
  btnOK.Visible := false;
  btnReconfig.Visible := False;
  btnSave.Visible := false;
  btnReactivar.Visible := False;
end;

function TMsgBox.ShowModal(Encabezado, Informacion: String;
  TipoMensaje: Integer; Botones: Array of Integer; Imagen: TdxSmartImage = nil): Integer;
var
  altotexto, altoImagen: Integer;
  lineas, i: Integer;
begin
  QuitaBotones;

  img1.Properties.ReadOnly := False;
  //Asignar el tamano por default
  Self.Width := mWidth;
  Self.Height := mHeight;

  //Configuración del form y mensajes
  Caption := Encabezado;
  cxlblmensaje.Caption := Informacion;

  //Calcular nuevo tamano de acuerdo al texto ingresado
  cxm1.Lines.Clear;
  cxm1.Lines.Add(cxlblmensaje.Caption);
  lineas := cxm1.Lines.Count;
  altotexto := (Lineas) * 18;
  cxlblmensaje.Height := altotexto;

  if Imagen <> nil then
  begin
    Height := Height + 180;
    img1.Picture.Assign(Imagen);
    img1.Properties.ReadOnly := True;
    img1.Visible := True;
  end
  else
    img1.Visible := False;

  if altotexto > pnlContenido.Height then
    Height := Height + altotexto - (pnlContenido.Height - 20); //105 pertenece a lo ocupado por los demas componentes

  for i := low(Botones) to high(botones) do
  begin
    case Botones[i] of
      -108: btnOpen.Visible := True;
      -101: btnSave.Visible := True;
      -102: btnEliminar.Visible := True;
      -100: btnOK.Visible := True;
      -105: btnYes.Visible := True;
      -106: btnNo.Visible := True;
      -103: btnClose.Visible := True;
      -104: btnCancel.Visible := True;
      -107: btnAbor.Visible := True;
      -109: btnReconfig.Visible := True;
      -110: btnReactivar.Visible := True;
    end;
  end;

  case TipoMensaje of
    -1000: //Conexión
    begin
      btn1.OptionsImage.ImageIndex  := 2;
      LblInfo.Caption := Encabezado
    end;
    -2000:
    begin  //Informacion
      btn1.OptionsImage.ImageIndex  := 0;
      LblInfo.Caption := 'Información.'
    end;
    -3000: //Aviso
    begin
      btn1.OptionsImage.ImageIndex  := 5;
      LblInfo.Caption := 'Aviso.'
    end;
    -4000:
    begin  //Error
      btn1.OptionsImage.ImageIndex  := 6;
      LblInfo.Caption := 'Error.'
    end;
    -5000:
    begin  //Confirmación
      btn1.OptionsImage.ImageIndex  := 1;
      LblInfo.Caption := 'Confirmar acción.'
    end;
  end;

  ShowModal;
  Result := ModalRes;
end;

end.
