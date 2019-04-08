unit UDTM;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, ZConnection, ZDataset, ZSqlUpdate;

type

  { TDTM }

  TDTM = class(TDataModule)
    Connection: TZConnection;
    DSAtestadoDeAcompanhamento: TDataSource;
    DSAcompanhante: TDataSource;
    DSNotificacaodeReceita: TDataSource;
    DSReceituarioDeControleEspecial: TDataSource;
    DSAtestadoPaciente: TDataSource;
    DSPaciente: TDataSource;
    QAcompanhantebairro: TStringField;
    QAcompanhantecep: TLargeintField;
    QAcompanhantecidade: TStringField;
    QAcompanhantecontato: TStringField;
    QAcompanhantecpf: TLargeintField;
    QAcompanhanteendereco: TStringField;
    QAcompanhanteidAcompanhante: TLargeintField;
    QAcompanhanteidPaciente: TLongintField;
    QAcompanhantenomeAcompanhante: TStringField;
    QAcompanhanteRG: TStringField;
    QAcompanhanteuf: TStringField;
    QAtestadoDeAcompanhamentoAtestado: TStringField;
    QAtestadoDeAcompanhamentocid: TStringField;
    QAtestadoDeAcompanhamentodata: TDateField;
    QAtestadoDeAcompanhamentoidAcompanhante: TLongintField;
    QAtestadoDeAcompanhamentoidAtestado: TLargeintField;
    QAtestadoDeAcompanhamentoperiodo: TFloatField;
    QAtestadoPacienteatestado: TStringField;
    QAtestadoPacienteCID: TStringField;
    QAtestadoPacientedata: TDateField;
    QAtestadoPacienteidAtestadoPaciente: TLargeintField;
    QAtestadoPacienteidPaciente: TLongintField;
    QAtestadoPacienteperiodo: TFloatField;
    QAtestadoPacientetipo: TStringField;
    QNotificacaoDeReceitadose: TStringField;
    QNotificacaoDeReceitadosePorUnidadePosologica: TFloatField;
    QNotificacaoDeReceitaforma: TStringField;
    QNotificacaoDeReceitaidNotificacaoDeReceita: TLargeintField;
    QNotificacaoDeReceitaidPaciente: TLongintField;
    QNotificacaoDeReceitamedicamentoOuSubstancia: TStringField;
    QNotificacaoDeReceitanumero: TLongintField;
    QNotificacaoDeReceitaposologia: TStringField;
    QNotificacaoDeReceitaquantidade: TLongintField;
    QNotificacaoDeReceitaquantidadePosologia: TFloatField;
    QPaciente: TZQuery;
    QPacientebairro: TStringField;
    QPacienteCEP: TStringField;
    QPacientecidade: TStringField;
    QPacientecontato: TStringField;
    QPacienteCPF: TStringField;
    QPacientedataNascimento: TDateField;
    QPacienteendereco: TStringField;
    QPacienteestado: TStringField;
    QPacienteidPaciente: TLargeintField;
    QPacientenacionalidade: TStringField;
    QPacientenaturalidade: TStringField;
    QPacientenomePaciente: TStringField;
    QPacienteregistroGeral: TStringField;
    QPacientesexo: TStringField;
    QAtestadoPaciente: TZQuery;
    QReceituarioDeControleEspecialdata: TDateField;
    QReceituarioDeControleEspecialidPaciente: TLargeintField;
    QReceituarioDeControleEspecialidReceituario: TLargeintField;
    QReceituarioDeControleEspecialprescricao: TMemoField;
    UAtestadoPaciente: TZUpdateSQL;
    QReceituarioDeControleEspecial: TZQuery;
    QNotificacaoDeReceita: TZQuery;
    UNotificacaoDeReceita: TZUpdateSQL;
    QAcompanhante: TZQuery;
    UAcompanhante: TZUpdateSQL;
    QAtestadoDeAcompanhamento: TZQuery;
    UAtestadoDeAcompanhamento: TZUpdateSQL;
    UPaciente: TZUpdateSQL;
    UReceituarioDeControleEspecial: TZUpdateSQL;
    procedure DSPacienteDataChange(Sender: TObject; Field: TField);
  private

  public

  end;

var
  DTM: TDTM;

implementation

{$R *.lfm}

{ TDTM }

procedure TDTM.DSPacienteDataChange(Sender: TObject; Field: TField);
begin

end;

end.

