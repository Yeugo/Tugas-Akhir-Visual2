unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection;

type
  TForm5 = class(TForm)
    l1: TLabel;
    l2: TLabel;
    l3: TLabel;
    e1: TEdit;
    b1: TButton;
    b2: TButton;
    b3: TButton;
    b4: TButton;
    b5: TButton;
    con1: TZConnection;
    zqry1: TZQuery;
    d1: TDataSource;
    l4: TLabel;
    l5: TLabel;
    l6: TLabel;
    l7: TLabel;
    l8: TLabel;
    c1: TComboBox;
    e2: TEdit;
    e3: TEdit;
    e4: TEdit;
    e5: TEdit;
    l9: TLabel;
    c2: TComboBox;
    e6: TEdit;
    dg1: TDBGrid;
    c3: TComboBox;
    procedure b1Click(Sender: TObject);
    procedure b2Click(Sender: TObject);
    procedure dg1CellClick(Column: TColumn);
    procedure b4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;
  var id : string;

implementation

{$R *.dfm}

procedure TForm5.b1Click(Sender: TObject);
begin
  zqry1.SQL.Clear;
  zqry1.SQL.Add('insert into tb_ortu values(null,"'+e1.Text+'","'+e2.Text+'","'+c1.Text+'","'+e3.Text+'","'+e4.Text+'","'+e5.Text+'","'+e6.Text+'","'+c2.Text+'", "'+c3.Text+'")');
  zqry1.ExecSQL ;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from tb_ortu');
  zqry1.Open;
  Showmessage('DATA BERHASIL DI SIMPAN');
end;

procedure TForm5.b2Click(Sender: TObject);
begin
  zqry1.SQL.Clear;
  zqry1.SQL.Add('update tb_ortu set nik="'+e1.Text+'", nama="'+e2.Text+'", pendidikan="'+c1.Text+'", pekerjaan="'+e3.Text+'", telp="'+e4.Text+'", alamat="'+e5.Text+'", agama="'+e6.Text+'", jenis_kelamin="'+c2.Text+'", status="'+c3.Text+'" where ortu_id="'+id+'"');
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from tb_ortu');
  zqry1.Open;
  Showmessage('DATA BERHASIL DI EDIT');
end;

procedure TForm5.dg1CellClick(Column: TColumn);
begin
  id:=zqry1.Fields[0].AsString;
  e1.Text:=zqry1.Fields[1].AsString;
  e2.Text:=zqry1.Fields[2].AsString;
  c1.Text:=zqry1.Fields[3].AsString;
  e3.Text:=zqry1.Fields[4].AsString;
  e4.Text:=zqry1.Fields[5].AsString;
  e5.Text:=zqry1.Fields[6].AsString;
  e6.Text:=zqry1.Fields[7].AsString;
  c2.Text:=zqry1.Fields[8].AsString;
  c3.Text:=zqry1.Fields[9].AsString;
end;

procedure TForm5.b4Click(Sender: TObject);
begin
  e1.Clear;
  e2.Clear;
  c1.Clear;
  e3.Clear;
  e4.Clear;
  e5.Clear;
  e6.Clear;
  c2.Clear;
  c3.Clear;
end;

end.
