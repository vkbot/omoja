.class public Lorg/apache/poi/xdgf/usermodel/section/CharacterSection;
.super Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;
.source "SourceFile"


# instance fields
.field _characterCells:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/xdgf/usermodel/XDGFCell;",
            ">;"
        }
    .end annotation
.end field

.field _fontColor:Ljava/awt/Color;

.field _fontSize:Ljava/lang/Double;


# direct methods
.method public constructor <init>(La3/n;Lorg/apache/poi/xdgf/usermodel/XDGFSheet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;-><init>(La3/n;Lorg/apache/poi/xdgf/usermodel/XDGFSheet;)V

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lorg/apache/poi/xdgf/usermodel/section/CharacterSection;->_characterCells:Ljava/util/Map;

    invoke-interface {p1}, La3/n;->getRowArray()La3/m;

    move-result-object p1

    invoke-interface {p1}, La3/m;->getCellArray()[La3/a;

    move-result-object p1

    array-length p2, p1

    if-gtz p2, :cond_1

    iget-object p1, p0, Lorg/apache/poi/xdgf/usermodel/section/CharacterSection;->_characterCells:Ljava/util/Map;

    const-string p2, "Size"

    invoke-static {p1, p2}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->maybeGetDouble(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xdgf/usermodel/section/CharacterSection;->_fontSize:Ljava/lang/Double;

    iget-object p1, p0, Lorg/apache/poi/xdgf/usermodel/section/CharacterSection;->_characterCells:Ljava/util/Map;

    const-string p2, "Color"

    invoke-static {p1, p2}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->maybeGetString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/awt/Color;->decode(Ljava/lang/String;)Ljava/awt/Color;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xdgf/usermodel/section/CharacterSection;->_fontColor:Ljava/awt/Color;

    :cond_0
    return-void

    :cond_1
    const/4 p0, 0x0

    aget-object p0, p1, p0

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public getFontColor()Ljava/awt/Color;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/section/CharacterSection;->_fontColor:Ljava/awt/Color;

    return-object p0
.end method

.method public getFontSize()Ljava/lang/Double;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/section/CharacterSection;->_fontSize:Ljava/lang/Double;

    return-object p0
.end method

.method public setupMaster(Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;)V
    .locals 0

    return-void
.end method
