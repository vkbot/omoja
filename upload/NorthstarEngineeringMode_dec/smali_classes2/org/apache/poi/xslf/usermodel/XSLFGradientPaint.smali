.class public Lorg/apache/poi/xslf/usermodel/XSLFGradientPaint;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint;


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# instance fields
.field final cs:[Lorg/apache/poi/sl/usermodel/ColorStyle;

.field final fractions:[F

.field private final gradFill:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;Lorg/apache/poi/xslf/usermodel/XSLFTheme;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFGradientPaint;->gradFill:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;->getGsLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStopList;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p1, v1, [Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;->getGsLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStopList;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStopList;->getGsArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;

    move-result-object p1

    :goto_0
    new-instance v0, Lorg/apache/poi/extractor/f;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Lorg/apache/poi/extractor/f;-><init>(I)V

    invoke-static {p1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    array-length v0, p1

    new-array v0, v0, [Lorg/apache/poi/sl/usermodel/ColorStyle;

    iput-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFGradientPaint;->cs:[Lorg/apache/poi/sl/usermodel/ColorStyle;

    array-length v0, p1

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFGradientPaint;->fractions:[F

    array-length v0, p1

    move v2, v1

    :goto_1
    if-ge v1, v0, :cond_2

    aget-object v3, p1, v1

    if-nez p2, :cond_1

    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;->isSetSchemeClr()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;->getSchemeClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;

    move-result-object v4

    goto :goto_2

    :cond_1
    move-object v4, p2

    :goto_2
    iget-object v5, p0, Lorg/apache/poi/xslf/usermodel/XSLFGradientPaint;->cs:[Lorg/apache/poi/sl/usermodel/ColorStyle;

    new-instance v6, Lorg/apache/poi/xslf/usermodel/XSLFColor;

    invoke-direct {v6, v3, p3, v4, p4}, Lorg/apache/poi/xslf/usermodel/XSLFColor;-><init>(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xslf/usermodel/XSLFTheme;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    invoke-virtual {v6}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->getColorStyle()Lorg/apache/poi/sl/usermodel/ColorStyle;

    move-result-object v4

    aput-object v4, v5, v2

    iget-object v4, p0, Lorg/apache/poi/xslf/usermodel/XSLFGradientPaint;->fractions:[F

    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;->xgetPos()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPositiveFixedPercentage;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parsePercent(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPositiveFixedPercentage;)I

    move-result v3

    int-to-float v3, v3

    const v5, 0x47c35000    # 100000.0f

    div-float/2addr v3, v5

    aput v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static synthetic a(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;)I
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFGradientPaint;->lambda$new$0(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;)I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$new$0(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;)I
    .locals 0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;->xgetPos()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPositiveFixedPercentage;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parsePercent(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPositiveFixedPercentage;)I

    move-result p0

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;->xgetPos()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPositiveFixedPercentage;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parsePercent(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPositiveFixedPercentage;)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method public getFillToInsets()Lorg/apache/poi/sl/usermodel/Insets2D;
    .locals 14

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFGradientPaint;->gradFill:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;->isSetPath()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFGradientPaint;->gradFill:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;->getPath()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPathShadeProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPathShadeProperties;->isSetFillToRect()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFGradientPaint;->gradFill:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;->getPath()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPathShadeProperties;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPathShadeProperties;->getFillToRect()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRelativeRect;

    move-result-object p0

    new-instance v9, Lorg/apache/poi/sl/usermodel/Insets2D;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRelativeRect;->xgetT()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parsePercent(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;)I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x40f86a0000000000L    # 100000.0

    div-double v4, v0, v2

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRelativeRect;->xgetL()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parsePercent(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;)I

    move-result v0

    int-to-double v0, v0

    div-double v6, v0, v2

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRelativeRect;->xgetB()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parsePercent(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;)I

    move-result v0

    int-to-double v0, v0

    div-double v10, v0, v2

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRelativeRect;->xgetR()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parsePercent(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;)I

    move-result p0

    int-to-double v0, p0

    div-double v12, v0, v2

    move-object v0, v9

    move-wide v1, v4

    move-wide v3, v6

    move-wide v5, v10

    move-wide v7, v12

    invoke-direct/range {v0 .. v8}, Lorg/apache/poi/sl/usermodel/Insets2D;-><init>(DDDD)V

    return-object v9

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getGradientAngle()D
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFGradientPaint;->gradFill:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;->isSetLin()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFGradientPaint;->gradFill:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;->getLin()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLinearShadeProperties;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLinearShadeProperties;->getAng()I

    move-result p0

    int-to-double v0, p0

    const-wide v2, 0x40ed4c0000000000L    # 60000.0

    div-double/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getGradientColors()[Lorg/apache/poi/sl/usermodel/ColorStyle;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFGradientPaint;->cs:[Lorg/apache/poi/sl/usermodel/ColorStyle;

    return-object p0
.end method

.method public getGradientFractions()[F
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFGradientPaint;->fractions:[F

    return-object p0
.end method

.method public getGradientType()Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint$GradientType;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFGradientPaint;->gradFill:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;->isSetLin()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint$GradientType;->linear:Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint$GradientType;

    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFGradientPaint;->gradFill:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;->isSetPath()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFGradientPaint;->gradFill:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;->getPath()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPathShadeProperties;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPathShadeProperties;->getPath()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathShadeType$Enum;

    move-result-object p0

    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathShadeType;->CIRCLE:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathShadeType$Enum;

    if-ne p0, v0, :cond_1

    sget-object p0, Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint$GradientType;->circular:Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint$GradientType;

    return-object p0

    :cond_1
    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathShadeType;->SHAPE:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathShadeType$Enum;

    if-ne p0, v0, :cond_2

    sget-object p0, Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint$GradientType;->shape:Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint$GradientType;

    return-object p0

    :cond_2
    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathShadeType;->RECT:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathShadeType$Enum;

    if-ne p0, v0, :cond_3

    sget-object p0, Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint$GradientType;->rectangular:Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint$GradientType;

    return-object p0

    :cond_3
    sget-object p0, Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint$GradientType;->linear:Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint$GradientType;

    return-object p0
.end method

.method public isRotatedWithShape()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFGradientPaint;->gradFill:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;->getRotWithShape()Z

    move-result p0

    return p0
.end method
