unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, uCalcular;

type
  TFrmPrincipal = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    edtValor1: TEdit;
    edtValor2: TEdit;
    edtResultado: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtSubtrair: TButton;
    edtDividir: TButton;
    edtMultiplicacao: TButton;
    edtSomar: TButton;
    procedure edtSomarClick(Sender: TObject);
    procedure edtMultiplicacaoClick(Sender: TObject);
    procedure edtSubtrairClick(Sender: TObject);
    procedure edtDividirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

procedure TFrmPrincipal.edtDividirClick(Sender: TObject);
var
 Calcular: TCalcular;
begin
  try
   try
    Calcular := TCalcular.Create;
    edtResultado.Text := FloatToStr(Calcular.Dividir(StrToFloat(edtValor1.Text), StrToFloat(edtValor2.Text)));
   except
    on E: exception do ShowMessage('Erro ao calcular a Divisão.' + #13 + 'Erro Original: ' + E.Message);
   end;
  finally
   FreeAndNil(Calcular);
  end;
end;

procedure TFrmPrincipal.edtMultiplicacaoClick(Sender: TObject);
var
 Calcular: TCalcular;
begin
  try
   try
    Calcular := TCalcular.Create;
    edtResultado.Text := IntToStr(Calcular.Multiplicacao(StrToInt(edtValor1.Text), StrToInt(edtValor2.Text)));
   except
    on E: exception do ShowMessage('Erro ao calcular a Multiplicação.' + #13 + 'Erro Original: ' + E.Message);
   end;
  finally
   FreeAndNil(Calcular);
  end;
end;

procedure TFrmPrincipal.edtSomarClick(Sender: TObject);
var
 Calcular: TCalcular;
begin
  try
   try
    Calcular := TCalcular.Create;
    edtResultado.Text := IntToStr(Calcular.Somar(StrToInt(edtValor1.Text), StrToInt(edtValor2.Text)));
   except
    on E: exception do ShowMessage('Erro ao calcular a Soma.' + #13 + 'Erro Original: ' + E.Message);
   end;
  finally
   FreeAndNil(Calcular);
  end;
end;

procedure TFrmPrincipal.edtSubtrairClick(Sender: TObject);
var
 Calcular: TCalcular;
begin
  try
   try
    Calcular := TCalcular.Create;
    edtResultado.Text := IntToStr(Calcular.Subtrair(StrToInt(edtValor1.Text), StrToInt(edtValor2.Text)));
   except
    on E: exception do
          ShowMessage('Erro ao calcular a Subtração.' + #13 + 'Erro Original: ' + E.Message);
   end;
  finally
   FreeAndNil(Calcular);
  end;
end;

end.
