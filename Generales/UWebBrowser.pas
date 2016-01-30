unit UWebBrowser;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OleCtrls, SHDocVw;

type
  tHackWb = class(TWebBrowser);
  TFrmWebBrowser = class(TForm)
    wb1: TWebBrowser;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }

  public
    UrlStr: string;
    constructor CreateByParam(Owner: TComponent; URL: WideString);
    { Public declarations }
  end;

var
  FrmWebBrowser: TFrmWebBrowser;

implementation

{$R *.dfm}

constructor TFrmWebBrowser.CreateByParam(Owner: TComponent; URL: WideString);
begin
  UrlStr := URL;
  inherited Create(Owner);
end;

procedure TFrmWebBrowser.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := caFree;
end;

procedure TFrmWebBrowser.FormShow(Sender: TObject);
begin
  tHackWb(wb1).Navigate(UrlStr);
end;

end.
