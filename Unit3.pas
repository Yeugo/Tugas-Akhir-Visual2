unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TForm3 = class(TForm)
    MainMenu1: TMainMenu;
    Menu1: TMenuItem;
    InputDataSiswa1: TMenuItem;
    InputDataKelas1: TMenuItem;
    InputDataWaliKelas1: TMenuItem;
    InputDataOrangTua1: TMenuItem;
    InputPoinSiswa1: TMenuItem;
    InputHubungan1: TMenuItem;
    Laporan1: TMenuItem;
    DataSiswa1: TMenuItem;
    procedure InputDataSiswa1Click(Sender: TObject);
    procedure InputDataKelas1Click(Sender: TObject);
    procedure InputDataWaliKelas1Click(Sender: TObject);
    procedure InputDataOrangTua1Click(Sender: TObject);
    procedure InputPoinSiswa1Click(Sender: TObject);
    procedure InputHubungan1Click(Sender: TObject);
    procedure DataSiswa1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses Unit1, Unit2, Unit4, Unit5, Unit6, Unit7, Unit9;

{$R *.dfm}

procedure TForm3.InputDataSiswa1Click(Sender: TObject);
begin
  if Form1=nil then
  Form1:=TForm1.Create(Application);
  Form1.Show;
end;

procedure TForm3.InputDataKelas1Click(Sender: TObject);
begin
  if Form2=nil then
  Form2:=TForm2.Create(Application);
  Form2.Show;
end;

procedure TForm3.InputDataWaliKelas1Click(Sender: TObject);
begin
  if Form4=nil then
  Form4:=TForm4.Create(Application);
  Form4.Show;
end;

procedure TForm3.InputDataOrangTua1Click(Sender: TObject);
begin
  if Form5=nil then
  Form5:=TForm5.Create(Application);
  Form5.Show;
end;

procedure TForm3.InputPoinSiswa1Click(Sender: TObject);
begin
  if Form6=nil then
  Form6:=TForm6.Create(Application);
  Form6.Show;
end;

procedure TForm3.InputHubungan1Click(Sender: TObject);
begin
   if Form7=nil then
  Form7:=TForm7.Create(Application);
  Form7.Show;
end;

procedure TForm3.DataSiswa1Click(Sender: TObject);
begin
  if Form9=nil then
  Form9:=TForm9.Create(Application);
  Form9.Show;
end;

end.
