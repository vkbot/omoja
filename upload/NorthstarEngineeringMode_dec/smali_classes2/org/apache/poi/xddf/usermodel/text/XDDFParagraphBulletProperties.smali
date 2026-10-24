.class public Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    return-void
.end method


# virtual methods
.method public clearAll()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuAutoNum()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuAutoNum()V

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuBlip()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuBlip()V

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuChar()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuChar()V

    :cond_2
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuNone()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuNone()V

    :cond_3
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuClr()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuClr()V

    :cond_4
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuClrTx()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuClrTx()V

    :cond_5
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuFont()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuFont()V

    :cond_6
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuFontTx()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuFontTx()V

    :cond_7
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuSzPct()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuSzPct()V

    :cond_8
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuSzPts()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuSzPts()V

    :cond_9
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuSzTx()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuSzTx()V

    :cond_a
    return-void
.end method

.method public getBulletColor()Lorg/apache/poi/xddf/usermodel/XDDFColor;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuClr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getBuClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/xddf/usermodel/XDDFColor;->forColorContainer(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;)Lorg/apache/poi/xddf/usermodel/XDDFColor;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getBulletFont()Lorg/apache/poi/xddf/usermodel/text/XDDFFont;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuFont()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/xddf/usermodel/text/XDDFFont;

    sget-object v1, Lorg/apache/poi/common/usermodel/fonts/FontGroup;->SYMBOL:Lorg/apache/poi/common/usermodel/fonts/FontGroup;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getBuFont()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFFont;-><init>(Lorg/apache/poi/common/usermodel/fonts/FontGroup;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getBulletSize()Lorg/apache/poi/xddf/usermodel/text/XDDFBulletSize;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuSzPct()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/xddf/usermodel/text/XDDFBulletSizePercent;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getBuSzPct()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBulletSizePercent;

    move-result-object p0

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xddf/usermodel/text/XDDFBulletSizePercent;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBulletSizePercent;Ljava/lang/Double;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuSzPts()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/apache/poi/xddf/usermodel/text/XDDFBulletSizePoints;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getBuSzPts()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBulletSizePoint;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFBulletSizePoints;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBulletSizePoint;)V

    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuSzTx()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lorg/apache/poi/xddf/usermodel/text/XDDFBulletSizeFollowText;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getBuSzTx()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBulletSizeFollowText;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFBulletSizeFollowText;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBulletSizeFollowText;)V

    return-object v0

    :cond_2
    return-object v1
.end method

.method public getBulletStyle()Lorg/apache/poi/xddf/usermodel/text/XDDFBulletStyle;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuAutoNum()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/xddf/usermodel/text/XDDFBulletStyleAutoNumbered;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getBuAutoNum()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextAutonumberBullet;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFBulletStyleAutoNumbered;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextAutonumberBullet;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuBlip()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/apache/poi/xddf/usermodel/text/XDDFBulletStylePicture;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getBuBlip()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBlipBullet;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFBulletStylePicture;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBlipBullet;)V

    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuChar()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lorg/apache/poi/xddf/usermodel/text/XDDFBulletStyleCharacter;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getBuChar()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharBullet;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFBulletStyleCharacter;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharBullet;)V

    return-object v0

    :cond_2
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuNone()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lorg/apache/poi/xddf/usermodel/text/XDDFBulletStyleNone;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getBuNone()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNoBullet;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFBulletStyleNone;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNoBullet;)V

    return-object v0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    return-object p0
.end method

.method public setBulletColor(Lorg/apache/poi/xddf/usermodel/XDDFColor;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuClrTx()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuClrTx()V

    :cond_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuClr()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuClr()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/XDDFColor;->getColorContainer()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->setBuClr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setBulletColorFollowText()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuClr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuClr()V

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuClrTx()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->addNewBuClrTx()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBulletColorFollowText;

    :goto_0
    return-void
.end method

.method public setBulletFont(Lorg/apache/poi/xddf/usermodel/text/XDDFFont;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuFontTx()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuFontTx()V

    :cond_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuFont()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuFont()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFFont;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->setBuFont(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setBulletFontFollowText()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuFont()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuFont()V

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuFontTx()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->addNewBuFontTx()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBulletTypefaceFollowText;

    :goto_0
    return-void
.end method

.method public setBulletSize(Lorg/apache/poi/xddf/usermodel/text/XDDFBulletSize;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuSzPct()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuSzPct()V

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuSzPts()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuSzPts()V

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuSzTx()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuSzTx()V

    :cond_2
    if-eqz p1, :cond_5

    instance-of v0, p1, Lorg/apache/poi/xddf/usermodel/text/XDDFBulletSizeFollowText;

    if-eqz v0, :cond_3

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    check-cast p1, Lorg/apache/poi/xddf/usermodel/text/XDDFBulletSizeFollowText;

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFBulletSizeFollowText;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBulletSizeFollowText;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->setBuSzTx(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBulletSizeFollowText;)V

    goto :goto_0

    :cond_3
    instance-of v0, p1, Lorg/apache/poi/xddf/usermodel/text/XDDFBulletSizePercent;

    if-eqz v0, :cond_4

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    check-cast p1, Lorg/apache/poi/xddf/usermodel/text/XDDFBulletSizePercent;

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFBulletSizePercent;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBulletSizePercent;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->setBuSzPct(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBulletSizePercent;)V

    goto :goto_0

    :cond_4
    instance-of v0, p1, Lorg/apache/poi/xddf/usermodel/text/XDDFBulletSizePoints;

    if-eqz v0, :cond_5

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    check-cast p1, Lorg/apache/poi/xddf/usermodel/text/XDDFBulletSizePoints;

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFBulletSizePoints;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBulletSizePoint;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->setBuSzPts(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBulletSizePoint;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public setBulletStyle(Lorg/apache/poi/xddf/usermodel/text/XDDFBulletStyle;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuAutoNum()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuAutoNum()V

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuBlip()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuBlip()V

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuChar()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuChar()V

    :cond_2
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuNone()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuNone()V

    :cond_3
    if-eqz p1, :cond_7

    instance-of v0, p1, Lorg/apache/poi/xddf/usermodel/text/XDDFBulletStyleAutoNumbered;

    if-eqz v0, :cond_4

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    check-cast p1, Lorg/apache/poi/xddf/usermodel/text/XDDFBulletStyleAutoNumbered;

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFBulletStyleAutoNumbered;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextAutonumberBullet;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->setBuAutoNum(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextAutonumberBullet;)V

    goto :goto_0

    :cond_4
    instance-of v0, p1, Lorg/apache/poi/xddf/usermodel/text/XDDFBulletStyleCharacter;

    if-eqz v0, :cond_5

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    check-cast p1, Lorg/apache/poi/xddf/usermodel/text/XDDFBulletStyleCharacter;

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFBulletStyleCharacter;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharBullet;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->setBuChar(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharBullet;)V

    goto :goto_0

    :cond_5
    instance-of v0, p1, Lorg/apache/poi/xddf/usermodel/text/XDDFBulletStyleNone;

    if-eqz v0, :cond_6

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    check-cast p1, Lorg/apache/poi/xddf/usermodel/text/XDDFBulletStyleNone;

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFBulletStyleNone;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNoBullet;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->setBuNone(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNoBullet;)V

    goto :goto_0

    :cond_6
    instance-of v0, p1, Lorg/apache/poi/xddf/usermodel/text/XDDFBulletStylePicture;

    if-eqz v0, :cond_7

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    check-cast p1, Lorg/apache/poi/xddf/usermodel/text/XDDFBulletStylePicture;

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFBulletStylePicture;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBlipBullet;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->setBuBlip(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBlipBullet;)V

    :cond_7
    :goto_0
    return-void
.end method
