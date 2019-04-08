unit ucadPaciente;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ComCtrls, ExtCtrls,
  DBCtrls, DBGrids, StdCtrls, DBExtCtrls, DBDateTimePicker;

type

  { TfrmCadPaciente }

  TfrmCadPaciente = class(TForm)
    btnBuscar: TButton;
    DBComboBox1: TDBComboBox;
    DBComboBox2: TDBComboBox;
    DBComboBox3: TDBComboBox;
    DBDateEdit1: TDBDateEdit;
    DBDateEdit2: TDBDateEdit;
    DBEdCPF: TDBEdit;
    DBEdID: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdNomePaciente: TDBEdit;
    DBEdRegistroGeral: TDBEdit;
    DBGrid1: TDBGrid;
    DBLookupComboBox1: TDBLookupComboBox;
    DBMemo1: TDBMemo;
    DBNavigator1: TDBNavigator;
    DBNavigator2: TDBNavigator;
    edbusca: TEdit;
    GPaciente: TGroupBox;
    GroupBox1: TGroupBox;
    Greceituario: TGroupBox;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    PageControl1: TPageControl;
    Panel1: TPanel;
    RadioGroup1: TRadioGroup;
    tbAtestado: TTabSheet;
    tbCadastro: TTabSheet;
    tbConsulta: TTabSheet;
    procedure DBNavigator1Click(Sender: TObject; Button: TDBNavButtonType);
    procedure DBNavigator2Click(Sender: TObject; Button: TDBNavButtonType);
    procedure FormShow(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
  private

  public

  end;

var
  frmCadPaciente: TfrmCadPaciente;

implementation

uses
  UDTM;

{$R *.lfm}

{ TfrmCadPaciente }

procedure TfrmCadPaciente.DBNavigator1Click(Sender: TObject;
  Button: TDBNavButtonType);
begin
  case Button of
       nbInsert : Gpaciente.Enabled:= true;
       nbPost : Gpaciente.Enabled:= false;
       nbEdit : Gpaciente.Enabled:= true;
       nbCancel : Gpaciente.Enabled:= false;
       nbRefresh: GPaciente.Enabled:= false;

  end;
end;

procedure TfrmCadPaciente.DBNavigator2Click(Sender: TObject;
  Button: TDBNavButtonType);
begin
    case Button of
       nbInsert : GReceituario.Enabled:= true;
       nbPost : GReceituario.Enabled:= false;
       nbEdit : GReceituario.Enabled:= true;
       nbCancel : GReceituario.Enabled:= false;
       nbRefresh: GReceituario.Enabled:= false;

    end;
end;



procedure TfrmCadPaciente.FormShow(Sender: TObject);
begin
       GPaciente.Enabled := false;
end;

procedure TfrmCadPaciente.RadioGroup1Click(Sender: TObject);
begin

end;


{ TfrmCadPaciente }


end.

