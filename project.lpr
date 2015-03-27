program project;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, UMain, UDBConnection, UListView, UMetaData, UAboutProgram;

{$R *.res}

begin
  RequireDerivedFormResource := True;
  Application.Initialize;
  Application.CreateForm(TMenuForm, MenuForm);
  Application.CreateForm(TMDDBConnection, MDDBConnection);
  Application.CreateForm(TAboutProgramForm, AboutProgramForm);
  //Application.CreateForm(TDirectoryForm, DirectoryForm);
  Application.Run;
end.

