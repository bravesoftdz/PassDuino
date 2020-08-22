//
//  PassDuino
//  Version 1.0 (August 2020)
//
//  Made by ERDesigns - Ernst Reidinga
//  as an open-source project
//
//  If you change code, add functions, fix bugs or anything else
//  please share them - so i can update the GIT and update the code
//  on the website so others can use it too :)
//
//  I used some open-source / public domain - code from Torry, and SourceForce.
//
//  If you like my work, and you like to support by donating please send a mail
//  and ill send my paypal address where you can send the donation.
//
//

unit untMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus,
  System.ImageList, Vcl.ImgList, Vcl.ComCtrls, Vcl.ToolWin;

type
  TPassDuinoListItem = class(TListItem)
  private
    FHotKey : TShortCut;
  public
    property HotKey: TShortCut read FHotKey write FHotKey;
  end;

  TfrmMain = class(TForm)
    StatusBar: TStatusBar;
    ToolBar1: TToolBar;
    lvPasswords: TListView;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    procedure lvPasswordsCreateItemClass(Sender: TCustomListView;
      var ItemClass: TListItemClass);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
    procedure WMHotKey(var Msg: TWMHotKey); message WM_HOTKEY;
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

uses untFunctions, untSettings;

//
//  Create ListItems with class TPassDuinoListItem
//
procedure TfrmMain.lvPasswordsCreateItemClass(Sender: TCustomListView;
  var ItemClass: TListItemClass);
begin
  ItemClass := TPassDuinoListItem;
end;

//
//  Respond to pressed hotkey
//
procedure TfrmMain.WMHotKey(var Msg: TWMHotKey);
var
  I : Integer;
begin
  with dmFunctions do
  begin
    for I := 0 to Length(HotKeys) -1 do
    if Msg.HotKey = HotKeys[I] then
    begin
      DoTypePassword(I);
      Break;
    end;
  end;
end;

//
//  Minimize the application to the Tray or close?
//
procedure TfrmMain.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if frmSettings.cbMinimizeTray.Checked then
  begin
    CanClose := False;
    Application.Minimize;
  end else
  begin
    dmFunctions.DisconnectPassDuino;
    CanClose := True;
  end;
end;

end.
