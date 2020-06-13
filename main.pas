unit main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Memo2: TMemo;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    OpenDialog1: TOpenDialog;
    Button2: TButton;
    SaveDialog1: TSaveDialog;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
 aux : integer;
 PosIni : integer;
 Texto : WideString;
begin
   if OpenDialog1.Execute then
   begin
      memo1.Lines.LoadFromFile(OpenDialog1.FileName);
      memo2.Lines.Clear;
      Texto := memo1.Lines.Text;
      aux := pos(';',Texto);
      PosIni := 1;
      while aux > 0 do
      begin
         memo2.Lines.Add(Copy(Texto,PosIni,(aux - PosIni) + 1));
         Texto[aux] := '§';
         PosIni := aux + 1;
         aux := pos(';',Texto);
         Application.ProcessMessages;
      end;
      ShowMessage('Operação terminada !');
   end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
   if SaveDialog1.Execute then
   begin
      Memo2.Lines.SaveToFile(SaveDialog1.FileName);
      ShowMessage('Arquivo salvo !');
   end;
end;

end.
