.class public Lorg/apache/poi/xslf/usermodel/XSLFTextRun;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/TextRun;
.implements Lorg/apache/poi/sl/usermodel/HighlightColorSupport;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;
    }
.end annotation


# static fields
.field private static final LOG:La5/d;


# instance fields
.field private final _p:Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

.field private final _r:Lorg/apache/xmlbeans/XmlObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->LOG:La5/d;

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->_r:Lorg/apache/xmlbeans/XmlObject;

    iput-object p2, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->_p:Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    instance-of p0, p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;

    if-nez p0, :cond_1

    instance-of p0, p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;

    if-nez p0, :cond_1

    instance-of p0, p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/apache/poi/openxml4j/exceptions/OpenXML4JRuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "unsupported text run of type "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/exceptions/OpenXML4JRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic a(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->lambda$isSuperscript$5(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic access$100(Lorg/apache/poi/xslf/usermodel/XSLFTextRun;Lorg/apache/poi/xslf/model/CharacterPropertyFetcher$CharPropFetcher;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->fetchCharacterProperty(Lorg/apache/poi/xslf/model/CharacterPropertyFetcher$CharPropFetcher;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200(Lorg/apache/poi/xslf/usermodel/XSLFTextRun;)Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->_p:Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    return-object p0
.end method

.method public static synthetic b(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->lambda$isBold$8(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic c(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->lambda$getFontSize$2(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic d(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->lambda$isStrikethrough$4(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic e(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->lambda$isItalic$9(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic f(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->lambda$getTextCap$7(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;Ljava/util/function/Consumer;)V

    return-void
.end method

.method private fetchCharacterProperty(Lorg/apache/poi/xslf/model/CharacterPropertyFetcher$CharPropFetcher;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/poi/xslf/model/CharacterPropertyFetcher$CharPropFetcher<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->_p:Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getParentShape()Lorg/apache/poi/xslf/usermodel/XSLFTextShape;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;

    invoke-direct {v1, p0, p1}, Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTextRun;Lorg/apache/poi/xslf/model/CharacterPropertyFetcher$CharPropFetcher;)V

    invoke-virtual {v1, v0}, Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;->fetchProperty(Lorg/apache/poi/xslf/usermodel/XSLFShape;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static fetchFontColor(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;Ljava/util/function/Consumer;Lorg/apache/poi/xslf/usermodel/XSLFShape;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;",
            "Ljava/util/function/Consumer<",
            "Lorg/apache/poi/sl/usermodel/PaintStyle;",
            ">;",
            "Lorg/apache/poi/xslf/usermodel/XSLFShape;",
            "Z)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSpStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeStyle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeStyle;->getFontRef()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontReference;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeStyle;->getFontRef()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontReference;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontReference;->getSchemeClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;

    move-result-object v0

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    invoke-static {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate;->getFillDelegate(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;

    move-result-object v2

    invoke-virtual {p2}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getTheme()Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    move-result-object v5

    move-object v1, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->selectPaint(Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;Lorg/apache/poi/openxml4j/opc/PackagePart;Lorg/apache/poi/xslf/usermodel/XSLFTheme;Z)Lorg/apache/poi/sl/usermodel/PaintStyle;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private static fetchHighlightColor(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;Ljava/util/function/Consumer;Lorg/apache/poi/xslf/usermodel/XSLFShape;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;",
            "Ljava/util/function/Consumer<",
            "Lorg/apache/poi/sl/usermodel/PaintStyle;",
            ">;",
            "Lorg/apache/poi/xslf/usermodel/XSLFShape;",
            "Z)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->getHighlight()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;->getSrgbClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;->getVal()[B

    move-result-object p0

    new-instance p2, Ljava/awt/Color;

    const/4 p3, 0x0

    aget-byte p3, p0, p3

    and-int/lit16 p3, p3, 0xff

    const/4 v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x2

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    invoke-direct {p2, p3, v0, p0}, Ljava/awt/Color;-><init>(III)V

    invoke-static {p2}, Lorg/apache/poi/sl/draw/DrawPaint;->createSolidPaint(Ljava/awt/Color;)Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic g(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->lambda$isSubscript$6(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic h(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->lambda$isUnderlined$10(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic i(Lorg/apache/poi/xslf/usermodel/XSLFShape;ZLorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->lambda$getFontColor$0(Lorg/apache/poi/xslf/usermodel/XSLFShape;ZLorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic j(Lorg/apache/poi/xslf/usermodel/XSLFShape;ZLorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->lambda$getHighlightColor$1(Lorg/apache/poi/xslf/usermodel/XSLFShape;ZLorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic k(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->lambda$getCharacterSpacing$3(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static synthetic lambda$getCharacterSpacing$3(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;Ljava/util/function/Consumer;)V
    .locals 2

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetSpc()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->xgetSpc()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextPoint;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parseLength(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextPoint;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$getFontColor$0(Lorg/apache/poi/xslf/usermodel/XSLFShape;ZLorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p2, p3, p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->fetchFontColor(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;Ljava/util/function/Consumer;Lorg/apache/poi/xslf/usermodel/XSLFShape;Z)V

    return-void
.end method

.method private static synthetic lambda$getFontSize$2(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;Ljava/util/function/Consumer;)V
    .locals 4

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetSz()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->getSz()I

    move-result p0

    int-to-double v0, p0

    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$getHighlightColor$1(Lorg/apache/poi/xslf/usermodel/XSLFShape;ZLorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p2, p3, p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->fetchHighlightColor(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;Ljava/util/function/Consumer;Lorg/apache/poi/xslf/usermodel/XSLFShape;Z)V

    return-void
.end method

.method private static synthetic lambda$getTextCap$7(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;Ljava/util/function/Consumer;)V
    .locals 1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetCap()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/apache/poi/sl/usermodel/TextRun$TextCap;->values()[Lorg/apache/poi/sl/usermodel/TextRun$TextCap;

    move-result-object v0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->getCap()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextCapsType$Enum;

    move-result-object p0

    invoke-virtual {p0}, Li5/h0;->intValue()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    aget-object p0, v0, p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$isBold$8(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;Ljava/util/function/Consumer;)V
    .locals 1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetB()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->getB()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$isItalic$9(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;Ljava/util/function/Consumer;)V
    .locals 1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetI()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->getI()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$isStrikethrough$4(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;Ljava/util/function/Consumer;)V
    .locals 1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetStrike()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->getStrike()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextStrikeType$Enum;

    move-result-object p0

    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextStrikeType;->NO_STRIKE:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextStrikeType$Enum;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private static synthetic lambda$isSubscript$6(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;Ljava/util/function/Consumer;)V
    .locals 1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetBaseline()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->xgetBaseline()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parsePercent(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;)I

    move-result p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private static synthetic lambda$isSuperscript$5(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;Ljava/util/function/Consumer;)V
    .locals 1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetBaseline()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->xgetBaseline()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parsePercent(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private static synthetic lambda$isUnderlined$10(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;Ljava/util/function/Consumer;)V
    .locals 1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetU()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->getU()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    move-result-object p0

    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType;->NONE:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public copy(Lorg/apache/poi/xslf/usermodel/XSLFTextRun;)V
    .locals 2

    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getFontFamily()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getFontFamily()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->setFontFamily(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getFontColor()Lorg/apache/poi/sl/usermodel/PaintStyle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getFontColor()Lorg/apache/poi/sl/usermodel/PaintStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->setFontColor(Lorg/apache/poi/sl/usermodel/PaintStyle;)V

    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getFontSize()Ljava/lang/Double;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getFontSize()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->setFontSize(Ljava/lang/Double;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getFontSize()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->setFontSize(Ljava/lang/Double;)V

    :cond_3
    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->isBold()Z

    move-result v0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->isBold()Z

    move-result v1

    if-eq v0, v1, :cond_4

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->setBold(Z)V

    :cond_4
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->isItalic()Z

    move-result v0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->isItalic()Z

    move-result v1

    if-eq v0, v1, :cond_5

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->setItalic(Z)V

    :cond_5
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->isUnderlined()Z

    move-result v0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->isUnderlined()Z

    move-result v1

    if-eq v0, v1, :cond_6

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->setUnderlined(Z)V

    :cond_6
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->isStrikethrough()Z

    move-result v0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->isStrikethrough()Z

    move-result v1

    if-eq v0, v1, :cond_7

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->setStrikethrough(Z)V

    :cond_7
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getHyperlink()Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getHyperlink()Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->copy(Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;)V

    :cond_8
    return-void
.end method

.method public bridge synthetic createHyperlink()Lorg/apache/poi/sl/usermodel/Hyperlink;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->createHyperlink()Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;

    move-result-object p0

    return-object p0
.end method

.method public createHyperlink()Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;
    .locals 2

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getHyperlink()Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getRPr(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v0

    .line 4
    new-instance v1, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->addNewHlinkClick()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->_p:Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getParentShape()Lorg/apache/poi/xslf/usermodel/XSLFTextShape;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    return-object v1
.end method

.method public getCharacterSpacing()D
    .locals 2

    new-instance v0, Landroidx/constraintlayout/core/state/d;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/state/d;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->fetchCharacterProperty(Lorg/apache/poi/xslf/model/CharacterPropertyFetcher$CharPropFetcher;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getFieldType()Lorg/apache/poi/sl/usermodel/TextRun$FieldType;
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->_r:Lorg/apache/xmlbeans/XmlObject;

    instance-of v0, p0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;

    const-string v0, "slidenum"

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;->getType()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lorg/apache/poi/sl/usermodel/TextRun$FieldType;->SLIDE_NUMBER:Lorg/apache/poi/sl/usermodel/TextRun$FieldType;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getFontColor()Lorg/apache/poi/sl/usermodel/PaintStyle;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getParagraph()Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getParentShape()Lorg/apache/poi/xslf/usermodel/XSLFTextShape;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getPlaceholder()Lorg/apache/poi/sl/usermodel/Placeholder;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Lorg/apache/poi/xslf/usermodel/j;

    invoke-direct {v2, v0, v1}, Lorg/apache/poi/xslf/usermodel/j;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTextShape;Z)V

    invoke-direct {p0, v2}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->fetchCharacterProperty(Lorg/apache/poi/xslf/model/CharacterPropertyFetcher$CharPropFetcher;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/sl/usermodel/PaintStyle;

    return-object p0
.end method

.method public getFontFamily()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getRawText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/common/usermodel/fonts/FontGroup;->getFontGroupFirst(Ljava/lang/String;)Lorg/apache/poi/common/usermodel/fonts/FontGroup;

    move-result-object v0

    .line 2
    new-instance v1, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTextRun;Lorg/apache/poi/common/usermodel/fonts/FontGroup;Lorg/apache/poi/xslf/usermodel/XSLFTextRun$1;)V

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;->getTypeface()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFontFamily(Lorg/apache/poi/common/usermodel/fonts/FontGroup;)Ljava/lang/String;
    .locals 2

    .line 3
    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTextRun;Lorg/apache/poi/common/usermodel/fonts/FontGroup;Lorg/apache/poi/xslf/usermodel/XSLFTextRun$1;)V

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;->getTypeface()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFontInfo(Lorg/apache/poi/common/usermodel/fonts/FontGroup;)Lorg/apache/poi/common/usermodel/fonts/FontInfo;
    .locals 2

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTextRun;Lorg/apache/poi/common/usermodel/fonts/FontGroup;Lorg/apache/poi/xslf/usermodel/XSLFTextRun$1;)V

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;->getTypeface()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public getFontSize()Ljava/lang/Double;
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getParagraph()Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getParentShape()Lorg/apache/poi/xslf/usermodel/XSLFTextShape;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getTextBodyPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->getNormAutofit()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNormalAutofit;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNormalAutofit;->isSetFontScale()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNormalAutofit;->xgetFontScale()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextFontScalePercentOrPercentString;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parsePercent(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextFontScalePercentOrPercentString;)I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x40f86a0000000000L    # 100000.0

    div-double/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    :goto_0
    new-instance v2, Lorg/apache/poi/xslf/usermodel/i;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lorg/apache/poi/xslf/usermodel/i;-><init>(I)V

    invoke-direct {p0, v2}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->fetchCharacterProperty(Lorg/apache/poi/xslf/model/CharacterPropertyFetcher$CharPropFetcher;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    mul-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public getHighlightColor()Lorg/apache/poi/sl/usermodel/PaintStyle;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getParagraph()Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getParentShape()Lorg/apache/poi/xslf/usermodel/XSLFTextShape;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getPlaceholder()Lorg/apache/poi/sl/usermodel/Placeholder;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Lorg/apache/poi/xslf/usermodel/k;

    invoke-direct {v2, v0, v1}, Lorg/apache/poi/xslf/usermodel/k;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTextShape;Z)V

    invoke-direct {p0, v2}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->fetchCharacterProperty(Lorg/apache/poi/xslf/model/CharacterPropertyFetcher$CharPropFetcher;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/sl/usermodel/PaintStyle;

    return-object p0
.end method

.method public bridge synthetic getHyperlink()Lorg/apache/poi/sl/usermodel/Hyperlink;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getHyperlink()Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;

    move-result-object p0

    return-object p0
.end method

.method public getHyperlink()Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;
    .locals 2

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getRPr(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->getHlinkClick()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 4
    :cond_1
    new-instance v1, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->_p:Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getParentShape()Lorg/apache/poi/xslf/usermodel/XSLFTextShape;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    return-object v1
.end method

.method public bridge synthetic getParagraph()Lorg/apache/poi/sl/usermodel/TextParagraph;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getParagraph()Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    move-result-object p0

    return-object p0
.end method

.method public getParagraph()Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->_p:Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    return-object p0
.end method

.method public getPitchAndFamily()B
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getRawText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/common/usermodel/fonts/FontGroup;->getFontGroupFirst(Ljava/lang/String;)Lorg/apache/poi/common/usermodel/fonts/FontGroup;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTextRun;Lorg/apache/poi/common/usermodel/fonts/FontGroup;Lorg/apache/poi/xslf/usermodel/XSLFTextRun$1;)V

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;->getPitch()Lorg/apache/poi/common/usermodel/fonts/FontPitch;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lorg/apache/poi/common/usermodel/fonts/FontPitch;->VARIABLE:Lorg/apache/poi/common/usermodel/fonts/FontPitch;

    :cond_0
    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;->getFamily()Lorg/apache/poi/common/usermodel/fonts/FontFamily;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/apache/poi/common/usermodel/fonts/FontFamily;->FF_SWISS:Lorg/apache/poi/common/usermodel/fonts/FontFamily;

    :cond_1
    invoke-static {p0, v0}, Lorg/apache/poi/common/usermodel/fonts/FontPitch;->getNativeId(Lorg/apache/poi/common/usermodel/fonts/FontPitch;Lorg/apache/poi/common/usermodel/fonts/FontFamily;)B

    move-result p0

    return p0
.end method

.method public getRPr(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;
    .locals 2
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->_r:Lorg/apache/xmlbeans/XmlObject;

    instance-of v1, v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;->isSetRPr()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;->getRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p1, :cond_5

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;->addNewRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v1, v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;

    if-eqz v1, :cond_3

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;->isSetRPr()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;->getRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object p0

    return-object p0

    :cond_2
    if-eqz p1, :cond_5

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;->addNewRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object p0

    return-object p0

    :cond_3
    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;->isSetRPr()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;->getRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object p0

    return-object p0

    :cond_4
    if-eqz p1, :cond_5

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;->addNewRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object p0

    return-object p0

    :cond_5
    iget-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->_p:Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->_p:Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetDefRPr()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->_p:Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getDefRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object p0

    return-object p0

    :cond_6
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRawText()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->_r:Lorg/apache/xmlbeans/XmlObject;

    instance-of v0, p0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;->getT()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;

    if-eqz v0, :cond_1

    const-string p0, "\n"

    return-object p0

    :cond_1
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;->getT()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTextCap()Lorg/apache/poi/sl/usermodel/TextRun$TextCap;
    .locals 2

    new-instance v0, Lorg/apache/poi/hssf/record/m1;

    const/16 v1, 0x1c

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/m1;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->fetchCharacterProperty(Lorg/apache/poi/xslf/model/CharacterPropertyFetcher$CharPropFetcher;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/sl/usermodel/TextRun$TextCap;

    if-nez p0, :cond_0

    sget-object p0, Lorg/apache/poi/sl/usermodel/TextRun$TextCap;->NONE:Lorg/apache/poi/sl/usermodel/TextRun$TextCap;

    :cond_0
    return-object p0
.end method

.method public getXmlObject()Lorg/apache/xmlbeans/XmlObject;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->_r:Lorg/apache/xmlbeans/XmlObject;

    return-object p0
.end method

.method public isBold()Z
    .locals 2

    new-instance v0, Landroidx/constraintlayout/core/state/d;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/state/d;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->fetchCharacterProperty(Lorg/apache/poi/xslf/model/CharacterPropertyFetcher$CharPropFetcher;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isItalic()Z
    .locals 2

    new-instance v0, Lorg/apache/poi/xslf/usermodel/i;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/apache/poi/xslf/usermodel/i;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->fetchCharacterProperty(Lorg/apache/poi/xslf/model/CharacterPropertyFetcher$CharPropFetcher;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isStrikethrough()Z
    .locals 2

    new-instance v0, Lmega/widget/recyclerview/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmega/widget/recyclerview/b;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->fetchCharacterProperty(Lorg/apache/poi/xslf/model/CharacterPropertyFetcher$CharPropFetcher;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isSubscript()Z
    .locals 2

    new-instance v0, Lorg/apache/poi/xslf/usermodel/i;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/apache/poi/xslf/usermodel/i;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->fetchCharacterProperty(Lorg/apache/poi/xslf/model/CharacterPropertyFetcher$CharPropFetcher;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSuperscript()Z
    .locals 2

    new-instance v0, Lorg/apache/poi/hssf/record/m1;

    const/16 v1, 0x1b

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/m1;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->fetchCharacterProperty(Lorg/apache/poi/xslf/model/CharacterPropertyFetcher$CharPropFetcher;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isUnderlined()Z
    .locals 2

    new-instance v0, Lorg/apache/poi/hssf/record/m1;

    const/16 v1, 0x1d

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/m1;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->fetchCharacterProperty(Lorg/apache/poi/xslf/model/CharacterPropertyFetcher$CharPropFetcher;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setBaselineOffset(D)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getRPr(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object p0

    double-to-int p1, p1

    mul-int/lit16 p1, p1, 0x3e8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->setBaseline(Ljava/lang/Object;)V

    return-void
.end method

.method public setBold(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getRPr(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->setB(Z)V

    return-void
.end method

.method public setCharacterSpacing(D)V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getRPr(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object p0

    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetSpc()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->unsetSpc()V

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double/2addr p1, v0

    double-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->setSpc(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setFontColor(Ljava/awt/Color;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/apache/poi/sl/draw/DrawPaint;->createSolidPaint(Ljava/awt/Color;)Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->setFontColor(Lorg/apache/poi/sl/usermodel/PaintStyle;)V

    return-void
.end method

.method public setFontColor(Lorg/apache/poi/sl/usermodel/PaintStyle;)V
    .locals 4

    .line 2
    instance-of v0, p1, Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;

    if-nez v0, :cond_0

    sget-object p0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->LOG:La5/d;

    .line 3
    invoke-interface {p0}, La5/d;->g()La5/b;

    move-result-object p0

    const-string p1, "Currently only SolidPaint is supported!"

    invoke-interface {p0, p1}, La5/b;->f(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    check-cast p1, Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;

    .line 5
    invoke-interface {p1}, Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;->getSolidColor()Lorg/apache/poi/sl/usermodel/ColorStyle;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/poi/sl/draw/DrawPaint;->applyColorTransform(Lorg/apache/poi/sl/usermodel/ColorStyle;)Ljava/awt/Color;

    move-result-object p1

    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getRPr(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v0

    .line 7
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetSolidFill()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->getSolidFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->addNewSolidFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;

    move-result-object v0

    .line 8
    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getParagraph()Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getParentShape()Lorg/apache/poi/xslf/usermodel/XSLFTextShape;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object p0

    .line 9
    new-instance v1, Lorg/apache/poi/xslf/usermodel/XSLFColor;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getTheme()Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    move-result-object v2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->getSchemeClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3, p0}, Lorg/apache/poi/xslf/usermodel/XSLFColor;-><init>(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xslf/usermodel/XSLFTheme;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    .line 10
    invoke-virtual {v1, p1}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->setColor(Ljava/awt/Color;)V

    return-void
.end method

.method public setFontFamily(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getRawText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/common/usermodel/fonts/FontGroup;->getFontGroupFirst(Ljava/lang/String;)Lorg/apache/poi/common/usermodel/fonts/FontGroup;

    move-result-object v0

    .line 2
    new-instance v1, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTextRun;Lorg/apache/poi/common/usermodel/fonts/FontGroup;Lorg/apache/poi/xslf/usermodel/XSLFTextRun$1;)V

    invoke-virtual {v1, p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;->setTypeface(Ljava/lang/String;)V

    return-void
.end method

.method public setFontFamily(Ljava/lang/String;Lorg/apache/poi/common/usermodel/fonts/FontGroup;)V
    .locals 2

    .line 3
    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTextRun;Lorg/apache/poi/common/usermodel/fonts/FontGroup;Lorg/apache/poi/xslf/usermodel/XSLFTextRun$1;)V

    invoke-virtual {v0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;->setTypeface(Ljava/lang/String;)V

    return-void
.end method

.method public setFontInfo(Lorg/apache/poi/common/usermodel/fonts/FontInfo;Lorg/apache/poi/common/usermodel/fonts/FontGroup;)V
    .locals 2

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTextRun;Lorg/apache/poi/common/usermodel/fonts/FontGroup;Lorg/apache/poi/xslf/usermodel/XSLFTextRun$1;)V

    invoke-virtual {v0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;->copyFrom(Lorg/apache/poi/common/usermodel/fonts/FontInfo;)V

    return-void
.end method

.method public setFontSize(Ljava/lang/Double;)V
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getRPr(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object p0

    if-nez p1, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetSz()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->unsetSz()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_2

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    mul-double/2addr v2, v0

    double-to-int p1, v2

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->setSz(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Minimum font size is 1pt but was "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setHighlightColor(Ljava/awt/Color;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/apache/poi/sl/draw/DrawPaint;->createSolidPaint(Ljava/awt/Color;)Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->setHighlightColor(Lorg/apache/poi/sl/usermodel/PaintStyle;)V

    return-void
.end method

.method public setHighlightColor(Lorg/apache/poi/sl/usermodel/PaintStyle;)V
    .locals 5

    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 2
    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getRPr(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object p0

    .line 3
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetHighlight()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->unsetHighlight()V

    :cond_0
    return-void

    .line 5
    :cond_1
    instance-of v1, p1, Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;

    if-eqz v1, :cond_3

    .line 6
    check-cast p1, Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;

    .line 7
    invoke-interface {p1}, Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;->getSolidColor()Lorg/apache/poi/sl/usermodel/ColorStyle;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/poi/sl/draw/DrawPaint;->applyColorTransform(Lorg/apache/poi/sl/usermodel/ColorStyle;)Ljava/awt/Color;

    move-result-object p1

    .line 8
    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getRPr(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object p0

    .line 9
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetHighlight()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->getHighlight()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->addNewHighlight()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;

    move-result-object p0

    .line 10
    :goto_0
    sget-object v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;

    const/4 v2, 0x3

    new-array v2, v2, [B

    .line 11
    invoke-virtual {p1}, Ljava/awt/Color;->getRed()I

    move-result v3

    int-to-byte v3, v3

    const/4 v4, 0x0

    aput-byte v3, v2, v4

    invoke-virtual {p1}, Ljava/awt/Color;->getGreen()I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    invoke-virtual {p1}, Ljava/awt/Color;->getBlue()I

    move-result p1

    int-to-byte p1, p1

    const/4 v0, 0x2

    aput-byte p1, v2, v0

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;->setVal([B)V

    .line 12
    invoke-interface {p0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;->setSrgbClr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;)V

    return-void

    .line 13
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Currently only SolidPaint is supported!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setItalic(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getRPr(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->setI(Z)V

    return-void
.end method

.method public setStrikethrough(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getRPr(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object p0

    if-eqz p1, :cond_0

    sget-object p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextStrikeType;->SNG_STRIKE:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextStrikeType$Enum;

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextStrikeType;->NO_STRIKE:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextStrikeType$Enum;

    :goto_0
    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->setStrike(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextStrikeType$Enum;)V

    return-void
.end method

.method public setSubscript(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const-wide/high16 v0, -0x3fc7000000000000L    # -25.0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->setBaselineOffset(D)V

    return-void
.end method

.method public setSuperscript(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->setBaselineOffset(D)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->_r:Lorg/apache/xmlbeans/XmlObject;

    instance-of v0, p0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;->setT(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;

    if-nez v0, :cond_1

    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;->setT(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setUnderlined(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getRPr(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object p0

    if-eqz p1, :cond_0

    sget-object p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType;->SNG:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType;->NONE:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    :goto_0
    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->setU(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getRawText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
