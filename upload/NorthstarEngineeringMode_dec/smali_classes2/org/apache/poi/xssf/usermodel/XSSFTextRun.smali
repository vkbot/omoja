.class public Lorg/apache/poi/xssf/usermodel/XSSFTextRun;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final _p:Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;

.field private final _r:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;->_r:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;

    iput-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;->_p:Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;

    return-void
.end method


# virtual methods
.method public getCharacterSpacing()D
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;->getRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetSpc()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->xgetSpc()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextPoint;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parseLength(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextPoint;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFontColor()Ljava/awt/Color;
    .locals 5

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;->getRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetSolidFill()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->getSolidFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->isSetSrgbClr()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->getSrgbClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;->getVal()[B

    move-result-object p0

    array-length v0, p0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x3

    if-ne v0, v4, :cond_0

    new-instance v0, Ljava/awt/Color;

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    aget-byte p0, p0, v2

    and-int/lit16 p0, p0, 0xff

    invoke-direct {v0, v1, v3, p0}, Ljava/awt/Color;-><init>(III)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/awt/Color;

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    invoke-direct {v0, v3, v2, v4, p0}, Ljava/awt/Color;-><init>(IIII)V

    return-object v0

    :cond_1
    new-instance p0, Ljava/awt/Color;

    invoke-direct {p0, v1, v1, v1}, Ljava/awt/Color;-><init>(III)V

    return-object p0
.end method

.method public getFontFamily()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;->getRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->getLatin()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->getTypeface()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "Calibri"

    return-object p0
.end method

.method public getFontSize()D
    .locals 6

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;->getParentParagraph()Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->getParentShape()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->getTxBody()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getBodyPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->getNormAutofit()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNormalAutofit;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNormalAutofit;->getFontScale()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide v2, 0x40f86a0000000000L    # 100000.0

    div-double/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;->getRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetSz()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->getSz()I

    move-result p0

    int-to-double v2, p0

    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v2, v4

    goto :goto_1

    :cond_1
    const-wide/high16 v2, 0x4026000000000000L    # 11.0

    :goto_1
    mul-double/2addr v2, v0

    return-wide v2
.end method

.method public getParentParagraph()Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;->_p:Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;

    return-object p0
.end method

.method public getPitchAndFamily()B
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;->getRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->getLatin()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->getPitchFamily()B

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;->_r:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;->isSetRPr()Z

    move-result v0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;->_r:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;->getRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;->addNewRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;->_r:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;->getT()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTextCap()Lorg/apache/poi/xssf/usermodel/TextCap;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;->getRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetCap()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/apache/poi/xssf/usermodel/TextCap;->values()[Lorg/apache/poi/xssf/usermodel/TextCap;

    move-result-object v0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->getCap()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextCapsType$Enum;

    move-result-object p0

    invoke-virtual {p0}, Li5/h0;->intValue()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    aget-object p0, v0, p0

    return-object p0

    :cond_0
    sget-object p0, Lorg/apache/poi/xssf/usermodel/TextCap;->NONE:Lorg/apache/poi/xssf/usermodel/TextCap;

    return-object p0
.end method

.method public getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;->_r:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;

    return-object p0
.end method

.method public isBold()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;->getRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetB()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->getB()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isItalic()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;->getRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetI()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->getI()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isStrikethrough()Z
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;->getRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetStrike()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->getStrike()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextStrikeType$Enum;

    move-result-object p0

    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextStrikeType;->NO_STRIKE:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextStrikeType$Enum;

    if-eq p0, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isSubscript()Z
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;->getRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetBaseline()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->xgetBaseline()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parsePercent(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;)I

    move-result p0

    if-gez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isSuperscript()Z
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;->getRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetBaseline()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->xgetBaseline()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parsePercent(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;)I

    move-result p0

    if-lez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isUnderline()Z
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;->getRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetU()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->getU()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    move-result-object p0

    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType;->NONE:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    if-eq p0, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public setBaselineOffset(D)V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;->getRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object p0

    double-to-int p1, p1

    mul-int/lit16 p1, p1, 0x3e8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->setBaseline(Ljava/lang/Object;)V

    return-void
.end method

.method public setBold(Z)V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;->getRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->setB(Z)V

    return-void
.end method

.method public setCharacterSpacing(D)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;->getRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

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

.method public setFont(Ljava/lang/String;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;->setFontFamily(Ljava/lang/String;BBZ)V

    return-void
.end method

.method public setFontColor(Ljava/awt/Color;)V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;->getRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetSolidFill()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->getSolidFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->addNewSolidFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->isSetSrgbClr()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->getSrgbClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->addNewSrgbClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;

    move-result-object v0

    :goto_1
    const/4 v1, 0x3

    new-array v1, v1, [B

    invoke-virtual {p1}, Ljava/awt/Color;->getRed()I

    move-result v2

    int-to-byte v2, v2

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    invoke-virtual {p1}, Ljava/awt/Color;->getGreen()I

    move-result v2

    int-to-byte v2, v2

    const/4 v3, 0x1

    aput-byte v2, v1, v3

    invoke-virtual {p1}, Ljava/awt/Color;->getBlue()I

    move-result p1

    int-to-byte p1, p1

    const/4 v2, 0x2

    aput-byte p1, v1, v2

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;->setVal([B)V

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->isSetHslClr()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->unsetHslClr()V

    :cond_2
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->isSetPrstClr()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->unsetPrstClr()V

    :cond_3
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->isSetSchemeClr()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->unsetSchemeClr()V

    :cond_4
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->isSetScrgbClr()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->unsetScrgbClr()V

    :cond_5
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->isSetSysClr()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->unsetSysClr()V

    :cond_6
    return-void
.end method

.method public setFontFamily(Ljava/lang/String;BBZ)V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;->getRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object p0

    if-nez p1, :cond_2

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetLatin()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->unsetLatin()V

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetCs()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->unsetCs()V

    :cond_1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetSym()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->unsetSym()V

    goto :goto_2

    :cond_2
    if-eqz p4, :cond_4

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetSym()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->getSym()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object p0

    goto :goto_0

    :cond_3
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->addNewSym()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object p0

    :goto_0
    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->setTypeface(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetLatin()Z

    move-result p4

    if-eqz p4, :cond_5

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->getLatin()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object p0

    goto :goto_1

    :cond_5
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->addNewLatin()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object p0

    :goto_1
    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->setTypeface(Ljava/lang/String;)V

    const/4 p1, -0x1

    if-eq p2, p1, :cond_6

    invoke-interface {p0, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->setCharset(B)V

    :cond_6
    if-eq p3, p1, :cond_7

    invoke-interface {p0, p3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->setPitchFamily(B)V

    :cond_7
    :goto_2
    return-void
.end method

.method public setFontSize(D)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;->getRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object p0

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    cmpl-double v0, p1, v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetSz()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->unsetSz()V

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, p1, v0

    if-ltz v0, :cond_2

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double/2addr p1, v0

    double-to-int p1, p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->setSz(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Minimum font size is 1pt but was "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setItalic(Z)V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;->getRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->setI(Z)V

    return-void
.end method

.method public setStrikethrough(Z)V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;->getRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

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
    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;->setBaselineOffset(D)V

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
    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;->setBaselineOffset(D)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;->_r:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;->setT(Ljava/lang/String;)V

    return-void
.end method

.method public setUnderline(Z)V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;->getRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

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

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
