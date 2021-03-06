unit login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ADODB, DB, Grids, DBGrids;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label3: TLabel;
    Button1: TButton;
    Button2: TButton;
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
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

uses main;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
 var user,password:string;
begin

      datasource1.DataSet:=ADOQuery1;

  if Edit1.Text='' then
  begin
    messageBox(self.Handle,'请输入用户名！','提示',mb_OK+MB_ICONWARNING);
    self.Edit1.SetFocus;
  end
  
  else if Edit2.Text='' then
  begin
    messageBox(self.Handle,'请输入密码！','提示',mb_OK+MB_ICONWARNING);
    self.Edit2.SetFocus;
  end 

  else
  begin
   //根据输入内容取数据
   ADOQuery1.Close;
   ADOQuery1.SQL.Clear;
   ADOQuery1.sql.add('select * from 表2 where 用户名 = :用户名 and 密码 = :密码');
   ADOQuery1.Parameters.ParamByName('用户名').Value := Edit1.Text;
   ADOQuery1.Parameters.ParamByName('密码').Value := Edit2.Text;
   ADOQuery1.open;

   //若能取出数据，说明用户名和密码正确，否则错误
   if ADOQuery1.RecordCount > 0 then
   begin
     form1.Hide;
     form2.Show;
   end
   else
   begin
   messageBox(self.Handle,'密码错误！','提示',mb_OK+MB_ICONHAND);
   self.Edit2.Text:='';
   self.Edit2.SetFocus;
   end;

  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  close;
end;



end.
