.class final Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/common/usermodel/fonts/FontInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xslf/usermodel/XSLFTextRun;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "XSLFFontInfo"
.end annotation


# instance fields
.field private final fontGroup:Lorg/apache/poi/common/usermodel/fonts/FontGroup;

.field final synthetic this$0:Lorg/apache/poi/xslf/usermodel/XSLFTextRun;


# direct methods
.method private constructor <init>(Lorg/apache/poi/xslf/usermodel/XSLFTextRun;Lorg/apache/poi/common/usermodel/fonts/FontGroup;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;->this$0:Lorg/apache/poi/xslf/usermodel/XSLFTextRun;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getRawText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/poi/common/usermodel/fonts/FontGroup;->getFontGroupFirst(Ljava/lang/String;)Lorg/apache/poi/common/usermodel/fonts/FontGroup;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;->fontGroup:Lorg/apache/poi/common/usermodel/fonts/FontGroup;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/poi/xslf/usermodel/XSLFTextRun;Lorg/apache/poi/common/usermodel/fonts/FontGroup;Lorg/apache/poi/xslf/usermodel/XSLFTextRun$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTextRun;Lorg/apache/poi/common/usermodel/fonts/FontGroup;)V

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;->lambda$getXmlObject$0(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;Ljava/util/function/Consumer;)V

    return-void
.end method

.method private getCTTextFont(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    sget-object v1, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$1;->$SwitchMap$org$apache$poi$common$usermodel$fonts$FontGroup:[I

    iget-object v2, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;->fontGroup:Lorg/apache/poi/common/usermodel/fonts/FontGroup;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x4

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    if-eq v1, v3, :cond_1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->getLatin()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object v1

    if-nez v1, :cond_4

    if-eqz p2, :cond_4

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->addNewLatin()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->getSym()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object v1

    if-nez v1, :cond_4

    if-eqz p2, :cond_4

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->addNewSym()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->getCs()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object v1

    if-nez v1, :cond_4

    if-eqz p2, :cond_4

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->addNewCs()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object v1

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->getEa()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object v1

    if-nez v1, :cond_4

    if-eqz p2, :cond_4

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->addNewEa()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object v1

    :cond_4
    :goto_0
    if-nez v1, :cond_5

    return-object v0

    :cond_5
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->getTypeface()Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    if-nez p1, :cond_6

    move-object p1, p2

    :cond_6
    const-string v2, "+mj-"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "+mn-"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    :cond_7
    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;->this$0:Lorg/apache/poi/xslf/usermodel/XSLFTextRun;

    invoke-static {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->access$200(Lorg/apache/poi/xslf/usermodel/XSLFTextRun;)Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getParentShape()Lorg/apache/poi/xslf/usermodel/XSLFTextShape;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getTheme()Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTheme;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeStyleSheet;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeStyleSheet;->getThemeElements()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBaseStyles;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBaseStyles;->getFontScheme()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontScheme;

    move-result-object p0

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontScheme;->getMajorFont()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontCollection;

    move-result-object p0

    goto :goto_1

    :cond_8
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontScheme;->getMinorFont()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontCollection;

    move-result-object p0

    :goto_1
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "ea"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontCollection;->getEa()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object p0

    :goto_2
    move-object v1, p0

    goto :goto_3

    :cond_9
    const-string v1, "cs"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontCollection;->getCs()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object p0

    goto :goto_2

    :cond_a
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontCollection;->getLatin()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object p0

    goto :goto_2

    :goto_3
    if-eqz v1, :cond_c

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->getTypeface()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_c

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->getTypeface()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_4

    :cond_b
    return-object v1

    :cond_c
    :goto_4
    return-object v0
.end method

.method private getXmlObject(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;->this$0:Lorg/apache/poi/xslf/usermodel/XSLFTextRun;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getRPr(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;->getCTTextFont(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;->this$0:Lorg/apache/poi/xslf/usermodel/XSLFTextRun;

    new-instance v0, Lorg/apache/poi/xslf/usermodel/l;

    invoke-direct {v0, p0}, Lorg/apache/poi/xslf/usermodel/l;-><init>(Ljava/lang/Object;)V

    invoke-static {p1, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->access$100(Lorg/apache/poi/xslf/usermodel/XSLFTextRun;Lorg/apache/poi/xslf/model/CharacterPropertyFetcher$CharPropFetcher;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    return-object p0
.end method

.method private synthetic lambda$getXmlObject$0(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;Ljava/util/function/Consumer;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;->getCTTextFont(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public copyFrom(Lorg/apache/poi/common/usermodel/fonts/FontInfo;)V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;->getXmlObject(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Lorg/apache/poi/common/usermodel/fonts/FontInfo;->getTypeface()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;->setTypeface(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/apache/poi/common/usermodel/fonts/FontInfo;->getCharset()Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;->setCharset(Lorg/apache/poi/common/usermodel/fonts/FontCharset;)V

    invoke-interface {p1}, Lorg/apache/poi/common/usermodel/fonts/FontInfo;->getPitch()Lorg/apache/poi/common/usermodel/fonts/FontPitch;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/poi/common/usermodel/fonts/FontInfo;->getFamily()Lorg/apache/poi/common/usermodel/fonts/FontFamily;

    move-result-object p1

    if-nez v1, :cond_1

    if-nez p1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->isSetPitchFamily()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->unsetPitchFamily()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;->setPitch(Lorg/apache/poi/common/usermodel/fonts/FontPitch;)V

    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;->setFamily(Lorg/apache/poi/common/usermodel/fonts/FontFamily;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public getCharset()Lorg/apache/poi/common/usermodel/fonts/FontCharset;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;->getXmlObject(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->isSetCharset()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->getCharset()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    invoke-static {p0}, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->valueOf(I)Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getFamily()Lorg/apache/poi/common/usermodel/fonts/FontFamily;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;->getXmlObject(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->isSetPitchFamily()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->getPitchFamily()B

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/common/usermodel/fonts/FontFamily;->valueOfPitchFamily(B)Lorg/apache/poi/common/usermodel/fonts/FontFamily;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getPitch()Lorg/apache/poi/common/usermodel/fonts/FontPitch;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;->getXmlObject(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->isSetPitchFamily()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->getPitchFamily()B

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/common/usermodel/fonts/FontPitch;->valueOfPitchFamily(B)Lorg/apache/poi/common/usermodel/fonts/FontPitch;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getTypeface()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;->getXmlObject(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->getTypeface()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public setCharset(Lorg/apache/poi/common/usermodel/fonts/FontCharset;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;->getXmlObject(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->getNativeId()I

    move-result p1

    int-to-byte p1, p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->setCharset(B)V

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->isSetCharset()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->unsetCharset()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setFamily(Lorg/apache/poi/common/usermodel/fonts/FontFamily;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;->getXmlObject(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object p0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->isSetPitchFamily()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->isSetPitchFamily()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->getPitchFamily()B

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/common/usermodel/fonts/FontPitch;->valueOfPitchFamily(B)Lorg/apache/poi/common/usermodel/fonts/FontPitch;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/apache/poi/common/usermodel/fonts/FontPitch;->VARIABLE:Lorg/apache/poi/common/usermodel/fonts/FontPitch;

    :goto_0
    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    sget-object p1, Lorg/apache/poi/common/usermodel/fonts/FontFamily;->FF_SWISS:Lorg/apache/poi/common/usermodel/fonts/FontFamily;

    :goto_1
    invoke-static {v0, p1}, Lorg/apache/poi/common/usermodel/fonts/FontPitch;->getNativeId(Lorg/apache/poi/common/usermodel/fonts/FontPitch;Lorg/apache/poi/common/usermodel/fonts/FontFamily;)B

    move-result p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->setPitchFamily(B)V

    :cond_3
    :goto_2
    return-void
.end method

.method public setPitch(Lorg/apache/poi/common/usermodel/fonts/FontPitch;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;->getXmlObject(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object p0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->isSetPitchFamily()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->isSetPitchFamily()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->getPitchFamily()B

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/common/usermodel/fonts/FontFamily;->valueOfPitchFamily(B)Lorg/apache/poi/common/usermodel/fonts/FontFamily;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/apache/poi/common/usermodel/fonts/FontFamily;->FF_SWISS:Lorg/apache/poi/common/usermodel/fonts/FontFamily;

    :goto_0
    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    sget-object p1, Lorg/apache/poi/common/usermodel/fonts/FontPitch;->VARIABLE:Lorg/apache/poi/common/usermodel/fonts/FontPitch;

    :goto_1
    invoke-static {p1, v0}, Lorg/apache/poi/common/usermodel/fonts/FontPitch;->getNativeId(Lorg/apache/poi/common/usermodel/fonts/FontPitch;Lorg/apache/poi/common/usermodel/fonts/FontFamily;)B

    move-result p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->setPitchFamily(B)V

    :cond_3
    :goto_2
    return-void
.end method

.method public setTypeface(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;->getXmlObject(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->setTypeface(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    iget-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;->this$0:Lorg/apache/poi/xslf/usermodel/XSLFTextRun;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getRPr(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;->this$0:Lorg/apache/poi/xslf/usermodel/XSLFTextRun;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getRawText()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/common/usermodel/fonts/FontGroup;->getFontGroupFirst(Ljava/lang/String;)Lorg/apache/poi/common/usermodel/fonts/FontGroup;

    move-result-object p0

    sget-object v0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$1;->$SwitchMap$org$apache$poi$common$usermodel$fonts$FontGroup:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_5

    const/4 v0, 0x3

    if-eq p0, v0, :cond_4

    const/4 v0, 0x4

    if-eq p0, v0, :cond_3

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetLatin()Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->unsetLatin()V

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetSym()Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->unsetSym()V

    goto :goto_0

    :cond_4
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetCs()Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->unsetCs()V

    goto :goto_0

    :cond_5
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetEa()Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->unsetEa()V

    :cond_6
    :goto_0
    return-void
.end method
