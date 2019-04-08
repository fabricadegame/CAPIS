unit UCAPIS;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Menus;

type

  { TForm1 }

  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    MenuFile: TMenuItem;
    MAcompanhante: TMenuItem;
    MAtendimento: TMenuItem;
    MConsulta: TMenuItem;
    MAtestado: TMenuItem;
    MPaciente: TMenuItem;
    MSair: TMenuItem;
    MSobre: TMenuItem;
    MCadastro: TMenuItem;
    MBackup: TMenuItem;
    procedure MBackupClick(Sender: TObject);
    procedure MenuFileClick(Sender: TObject);
    procedure MPacienteClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

uses
  ucadPaciente;

{$R *.lfm}

{ TForm1 }

procedure TForm1.MenuFileClick(Sender: TObject);
begin

end;

procedure TForm1.MPacienteClick(Sender: TObject);
begin

end;

procedure TForm1.MBackupClick(Sender: TObject);
begin

end;

end.

