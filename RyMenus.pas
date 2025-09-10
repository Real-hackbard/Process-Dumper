
unit RyMenus;
interface
uses Windows, SysUtils, Classes, Messages, Graphics, ImgList, Menus, Forms;
type
  TRyMenu = class(TObject)
  private
    ListMenus: TList;
    FFont: TFont;
    FGutterColor: TColor;
    FMenuColor: TColor;
    FSelectedColor: TColor;
    FVisible: Boolean;
    procedure SetFont(const Value: TFont);
    procedure SetSelectedColor(const Value: TColor);
    procedure SetVisible(Value: Boolean);
    procedure Refresh;
    procedure InitItem(Item : TMenuItem);
    procedure InitItems(Item : TMenuItem);
  protected
  public
    constructor Create;
    destructor Destroy; override;
    procedure Add(Menu: TMenu; Item: TMenuItem);
    procedure MeasureItem(Sender: TObject; ACanvas: TCanvas;
              var Width, Height: Integer);
    procedure AdvancedDrawItem(Sender: TObject; ACanvas: TCanvas;
              ARect: TRect; State: TOwnerDrawState);
    property MenuColor: TColor read FMenuColor write FMenuColor;
    property GutterColor: TColor read FGutterColor write FGutterColor;
    property SelectedColor: TColor read FSelectedColor write SetSelectedColor;
    property Font: TFont read FFont write SetFont; 
    property Visible: Boolean read FVisible write SetVisible;
  end;
var
  RyMenu: TRyMenu; 
implementation
var
  _DefSelColor: TColor = $00FFAEB0;
  BmpCheck: array[Boolean] of TBitmap; 
function Max(A, B: Integer): Integer;
begin
  if A < B then Result := B
  else Result := A
end;
constructor TRyMenu.Create;
begin
  FGutterColor := clBtnFace;
  FMenuColor := clWindow;
  FSelectedColor := _DefSelColor;
  FFont := TFont.Create;
  Font := Screen.MenuFont;
  FVisible:=false;
  ListMenus:=TList.Create;
end;
destructor TRyMenu.Destroy;
begin
  ListMenus.Free;
  FFont.Free;
  inherited;
end;
procedure TRyMenu.InitItem(Item : TMenuItem);
begin
  if FVisible then begin
    Item.OnAdvancedDrawItem := Self.AdvancedDrawItem;
    if not (Item.GetParentComponent is TMainMenu) then
      Item.OnMeasureItem := Self.MeasureItem;
  end else begin
    Item.OnAdvancedDrawItem :=nil;
    if not (Item.GetParentComponent is TMainMenu) then
      Item.OnMeasureItem := nil;
  end;
end;
procedure TRyMenu.InitItems(Item : TMenuItem);
var
  I: Word;
begin
    I := 0;
    while I < Item.Count do
    begin
      InitItem(Item[I]);
      if Item[I].Count > 0 then InitItems(Item[I]);
      Inc(I);
    end;
end;
procedure TRyMenu.Add(Menu: TMenu; Item: TMenuItem);
begin
  if Assigned(Menu) then
  begin
    InitItems(Menu.Items);
    ListMenus.Add(Menu);
    Menu.OwnerDraw := FVisible; 
  end;
  if Assigned(Item) then
  begin
    InitItem(Item);
    InitItems(Item);
  end;
end;
procedure TRyMenu.AdvancedDrawItem(Sender: TObject; ACanvas: TCanvas;
          ARect: TRect; State: TOwnerDrawState);
const
  _Flags: LongInt = DT_NOCLIP or DT_VCENTER or DT_END_ELLIPSIS or DT_SINGLELINE;
  _FlagsTopLevel: array[Boolean] of Longint = (DT_LEFT, DT_CENTER);
  _FlagsShortCut:  Longint = (DT_RIGHT);
  _RectEl: array[Boolean] of Byte = (0, 6);
var
  TopLevel: Boolean;
  Gutter: Word;
  ImageList: TCustomImageList;
begin
  with TMenuItem(Sender), ACanvas do
  begin
    TopLevel := GetParentComponent is TMainMenu;
    ImageList := GetImageList; 
    Font := FFont; 
    if Assigned(ImageList) then
      Gutter := ImageList.Width + 9 
    else
    if IsLine then
      Gutter := Max(TextHeight('W'), 18)
    else
      Gutter := ARect.Bottom - ARect.Top; 
    Pen.Color := clBlack;
    if (odSelected in State) then 
    begin
      Brush.Color := SelectedColor;
      Rectangle(Rect(ARect.Left, ARect.Top, ARect.Right, ARect.Bottom))
    end else
    if TopLevel then 
    begin
      if (odHotLight in State) then 
        Brush.Color := SelectedColor
      else Brush.Color := clBtnFace;
      FillRect(ARect);
    end else
      begin 
        Brush.Color := GutterColor; 
        FillRect(Rect(ARect.Left, ARect.Top, Gutter, ARect.Bottom));
        Brush.Color := MenuColor;
        FillRect(Rect(Gutter, ARect.Top, ARect.Right, ARect.Bottom));
      end;
    if Checked then
    begin 
      Brush.Color := SelectedColor;
      if Assigned(ImageList) and (ImageIndex > -1) then
         RoundRect(ARect.Left + 2, ARect.Top, Gutter - 2 - 1,
           ARect.Bottom, _RectEl[RadioItem], _RectEl[RadioItem])
      else 
        Draw((ARect.Left + 2 + Gutter - 1 - 2 - BmpCheck[RadioItem].Width) div 2,
          (ARect.Top + ARect.Bottom - BmpCheck[RadioItem].Height) div 2,
          BmpCheck[RadioItem])
    end;
    if Assigned(ImageList) and ((ImageIndex > -1) and (not TopLevel)) then
      ImageList.Draw(ACanvas, ARect.Left + 4,
        (ARect.Top + ARect.Bottom - ImageList.Height) div 2,
        ImageIndex, Enabled); 
    with Font do
    begin
      if (odDefault in State) then Style := [fsBold];
      if (odDisabled in State) then Color := clGray
      else Color := clBlack;
    end;
    Brush.Style := bsClear;
    if TopLevel then 
    else Inc(ARect.Left, Gutter + 5); 
    if IsLine then 
    begin
      MoveTo(ARect.Left, ARect.Top + (ARect.Bottom - ARect.Top) div 2);
      LineTo(ARect.Right, ARect.Top + (ARect.Bottom - ARect.Top) div 2);    
    end else
    begin 
      Windows.DrawText(Handle, PChar(Caption), Length(Caption), ARect,
        _Flags or _FlagsTopLevel[TopLevel]);
      if ShortCut <> 0 then 
      begin
        Dec(ARect.Right, 5);
        Windows.DrawText(Handle, PChar(ShortCutToText(ShortCut)),
          Length(ShortCutToText(ShortCut)), ARect,
          _Flags or _FlagsShortCut);
      end
    end
  end
end;
procedure TRyMenu.MeasureItem(Sender: TObject; ACanvas: TCanvas;
          var Width, Height: Integer);
var
  ImageList: TCustomImageList;
begin
  with TMenuItem(Sender) do
  begin
    ImageList := GetImageList;
    ACanvas.Font := FFont; 
    if Assigned(ImageList) then
    begin
      if IsLine then
        if ImageList.Height > 20 then 
           Height := 11 else Height := 5
      else
        with ACanvas do
        begin
          Width := ImageList.Width;
          if Width < 8 then Width := 16 else Width := Width + 8;
          Width := Width + TextWidth(Caption + ShortCutToText(ShortCut)) + 15;
          Height := Max(ACanvas.TextHeight('W'), ImageList.Height);
          if Height < 14 then Height := 18 else Height := Height + 4;
        end
    end else
      with ACanvas do
      begin
        Height := Max(TextHeight('W'), 18);
        if IsLine then
          if Height > 20 then 
             Height := 11 else Height := 5;
        Width :=  16 + 15 +
          TextWidth(Caption + ShortCutToText(ShortCut));
      end
  end
end;
procedure TRyMenu.SetFont(const Value: TFont);
begin
  FFont.Assign(Value);
end;
procedure InitBmp(Bmp: TBitmap; Radio: Boolean);
begin
  with Bmp, Canvas do
  begin
    Width := 14;
    Height := 14;
    Pen.Color := clBlack;
    Brush.Color := _DefSelColor;
    Rectangle(0, 0, Width, Height);
    Brush.Color := clBlack;
    if Radio then Ellipse(3, 3, Width - 1 - 2, Height - 1 - 2)
    else Rectangle(3, 3, Width - 1 - 2, Height - 1 - 2);
  end
end;
procedure TRyMenu.SetSelectedColor(const Value: TColor);
begin
  FSelectedColor := Value;
end;
procedure TRyMenu.SetVisible(Value: Boolean);
begin
  if Value<>FVisible then begin
    FVisible:=Value;
    Refresh;     
  end;  
end;
procedure TRyMenu.Refresh;
var
  i: Integer;
  me: TMenu;
begin
  for i:=0 to ListMenus.Count-1 do begin
    me:=ListMenus.Items[i];
    if Assigned(me) then begin
     InitItems(me.Items);
     me.OwnerDraw := FVisible;
    end; 
  end;
end;
initialization
  BmpCheck[False]:= TBitmap.Create;
  BmpCheck[True]:= TBitmap.Create;
  InitBmp(BmpCheck[False], False);
  InitBmp(BmpCheck[True], True);
  RyMenu := TRyMenu.Create;
finalization
  BmpCheck[False].Free;
  BmpCheck[True].Free;
  RyMenu.Free;
end.

