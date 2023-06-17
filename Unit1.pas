unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection, ComCtrls;

type
  TForm1 = class(TForm)
    con1: TZConnection;
    zqry1: TZQuery;
    d1: TDataSource;
    b1: TButton;
    b3: TButton;
    b4: TButton;
    b5: TButton;
    b6: TButton;
    b2: TButton;
    l1: TLabel;
    l2: TLabel;
    l3: TLabel;
    l4: TLabel;
    l5: TLabel;
    l6: TLabel;
    l7: TLabel;
    l8: TLabel;
    l9: TLabel;
    l10: TLabel;
    l11: TLabel;
    l12: TLabel;
    l13: TLabel;
    l14: TLabel;
    e2: TEdit;
    e3: TEdit;
    e4: TEdit;
    e5: TEdit;
    e6: TEdit;
    e11: TEdit;
    e13: TEdit;
    e14: TEdit;
    dg1: TDBGrid;
    dtp1: TDateTimePicker;
    c1: TComboBox;
    c2: TComboBox;
    c3: TComboBox;
    c4: TComboBox;
    e1: TEdit;
    procedure b1Click(Sender: TObject);
    procedure b3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.b1Click(Sender: TObject);
begin
  e1.Clear;
  e2.Clear;
  e3.Clear;
  e4.Clear;
  e5.Clear;
  e6.Clear;
  e11.Clear;
  e13.Clear;
  e14.Clear;
end;

procedure TForm1.b3Click(Sender: TObject);
begin
  zqry1.SQL.Clear;
  zqry1.SQL.Add('insert into tb_siswa values(null, "'+e2.Text+'", "'+e3.Text+'", "'+e4.Text+'", "'+e5.Text+'", "'+e6.Text+'", "'+FormatDateTime('yyyy-mm-dd',dtp1.Date)+'", "'+c1.Text+'", "'+c2.Text+'", "'+c3.Text+'", "'+e11.Text+'", "'+e1.Text+'", "'+e13.Text+'", "'+e14.Text+'", "'+c4.Text+'")');
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from tb_siswa');
  zqry1.Open;
  Showmessage('DATA BERHASIL DI SIMPAN');
end;

end.
