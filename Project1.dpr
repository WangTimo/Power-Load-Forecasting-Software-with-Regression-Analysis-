program Project1;

uses
  Forms,
  login in 'login.pas' {Form1},
  main in 'main.pas' {Form2},
  input in 'input.pas' {Form3},
  forecast in 'forecast.pas' {Form4},
  Build_model in 'Build_model.pas' {Form5},
  about in 'about.pas' {Form6};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  Application.Run;
end.




