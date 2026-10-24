.class public Lorg/apache/poi/ooxml/util/POIXMLUnits;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseLength(Lorg/openxmlformats/schemas/drawingml/x2006/main/STCoordinate32;)J
    .locals 2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 1
    invoke-static {p0, v0, v1}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parseLengthInner(Li5/i0;D)J

    move-result-wide v0

    return-wide v0
.end method

.method public static parseLength(Lorg/openxmlformats/schemas/drawingml/x2006/main/STCoordinate;)J
    .locals 2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 2
    invoke-static {p0, v0, v1}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parseLengthInner(Li5/i0;D)J

    move-result-wide v0

    return-wide v0
.end method

.method public static parseLength(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextPoint;)J
    .locals 2

    const-wide v0, 0x405fc00000000000L    # 127.0

    .line 3
    invoke-static {p0, v0, v1}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parseLengthInner(Li5/i0;D)J

    move-result-wide v0

    return-wide v0
.end method

.method public static parseLength(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTwipsMeasure;)J
    .locals 2

    const-wide v0, 0x4083d80000000000L    # 635.0

    .line 4
    invoke-static {p0, v0, v1}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parseLengthInner(Li5/i0;D)J

    move-result-wide v0

    return-wide v0
.end method

.method public static parseLength(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHpsMeasure;)J
    .locals 2

    const-wide v0, 0x40d8ce0000000000L    # 25400.0

    .line 6
    invoke-static {p0, v0, v1}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parseLengthInner(Li5/i0;D)J

    move-result-wide v0

    return-wide v0
.end method

.method public static parseLength(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMeasurementOrPercent;)J
    .locals 2

    .line 8
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMeasurementOrPercent;->getStringValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    const-wide v0, 0x4083d80000000000L    # 635.0

    .line 9
    invoke-static {p0, v0, v1}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parseLengthInner(Li5/i0;D)J

    move-result-wide v0

    return-wide v0
.end method

.method public static parseLength(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STSignedHpsMeasure;)J
    .locals 2

    const-wide v0, 0x40d8ce0000000000L    # 25400.0

    .line 7
    invoke-static {p0, v0, v1}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parseLengthInner(Li5/i0;D)J

    move-result-wide v0

    return-wide v0
.end method

.method public static parseLength(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STSignedTwipsMeasure;)J
    .locals 2

    const-wide v0, 0x4083d80000000000L    # 635.0

    .line 5
    invoke-static {p0, v0, v1}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parseLengthInner(Li5/i0;D)J

    move-result-wide v0

    return-wide v0
.end method

.method private static parseLengthInner(Li5/i0;D)J
    .locals 7

    invoke-interface {p0}, Li5/i0;->getStringValue()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "(mm|cm|in|pt|pc|pi)"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    const-string v2, "mm"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    const-wide v3, 0x400451eb80000000L    # 2.5399999618530273

    const-wide v5, 0x412be7c000000000L    # 914400.0

    if-eqz v2, :cond_0

    const-wide/high16 p0, 0x4024000000000000L    # 10.0

    div-double/2addr v0, p0

    :goto_0
    div-double/2addr v0, v3

    :goto_1
    mul-double/2addr v0, v5

    :goto_2
    double-to-long p0, v0

    goto :goto_4

    :cond_0
    const-string v2, "cm"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "in"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    const-string/jumbo v2, "pc"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string/jumbo v2, "pi"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    const-string/jumbo v2, "pt"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-wide p0, 0x40c8ce0000000000L    # 12700.0

    mul-double/2addr v0, p0

    goto :goto_2

    :cond_4
    mul-double/2addr v0, p1

    goto :goto_2

    :cond_5
    :goto_3
    const-wide p0, 0x3fc53f7ce0000000L    # 0.16599999368190765

    mul-double/2addr v0, p0

    goto :goto_1

    :goto_4
    return-wide p0
.end method

.method public static parseOnOff(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 3
    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;->getStringValue()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "true"

    .line 4
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "on"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "x"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "1"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static parseOnOff(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1
    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;->isSetVal()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 2
    :cond_1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;->xgetVal()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parseOnOff(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;)Z

    move-result p0

    return p0
.end method

.method public static parsePercent(Lorg/openxmlformats/schemas/drawingml/x2006/chart/STDepthPercent;)I
    .locals 1

    const/16 v0, 0x3e8

    .line 11
    invoke-static {p0, v0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parsePercentInner(Li5/i0;I)I

    move-result p0

    return p0
.end method

.method public static parsePercent(Lorg/openxmlformats/schemas/drawingml/x2006/chart/STGapAmount;)I
    .locals 1

    const/16 v0, 0x3e8

    .line 9
    invoke-static {p0, v0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parsePercentInner(Li5/i0;I)I

    move-result p0

    return p0
.end method

.method public static parsePercent(Lorg/openxmlformats/schemas/drawingml/x2006/chart/STHPercent;)I
    .locals 1

    const/16 v0, 0x3e8

    .line 12
    invoke-static {p0, v0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parsePercentInner(Li5/i0;I)I

    move-result p0

    return p0
.end method

.method public static parsePercent(Lorg/openxmlformats/schemas/drawingml/x2006/chart/STHoleSize;)I
    .locals 1

    const/4 v0, 0x1

    .line 13
    invoke-static {p0, v0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parsePercentInner(Li5/i0;I)I

    move-result p0

    return p0
.end method

.method public static parsePercent(Lorg/openxmlformats/schemas/drawingml/x2006/chart/STOverlap;)I
    .locals 1

    const/16 v0, 0x3e8

    .line 10
    invoke-static {p0, v0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parsePercentInner(Li5/i0;I)I

    move-result p0

    return p0
.end method

.method public static parsePercent(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;)I
    .locals 1

    const/4 v0, 0x1

    .line 3
    invoke-static {p0, v0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parsePercentInner(Li5/i0;I)I

    move-result p0

    return p0
.end method

.method public static parsePercent(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPositiveFixedPercentage;)I
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-static {p0, v0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parsePercentInner(Li5/i0;I)I

    move-result p0

    return p0
.end method

.method public static parsePercent(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPositivePercentage;)I
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parsePercentInner(Li5/i0;I)I

    move-result p0

    return p0
.end method

.method public static parsePercent(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextBulletSizePercent;)I
    .locals 1

    const/4 v0, 0x1

    .line 4
    invoke-static {p0, v0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parsePercentInner(Li5/i0;I)I

    move-result p0

    return p0
.end method

.method public static parsePercent(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextFontScalePercentOrPercentString;)I
    .locals 1

    const/4 v0, 0x1

    .line 6
    invoke-static {p0, v0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parsePercentInner(Li5/i0;I)I

    move-result p0

    return p0
.end method

.method public static parsePercent(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextSpacingPercentOrPercentString;)I
    .locals 1

    const/4 v0, 0x1

    .line 5
    invoke-static {p0, v0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parsePercentInner(Li5/i0;I)I

    move-result p0

    return p0
.end method

.method public static parsePercent(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumberOrPercent;)I
    .locals 1

    const/16 v0, 0x3e8

    .line 7
    invoke-static {p0, v0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parsePercentInner(Li5/i0;I)I

    move-result p0

    return p0
.end method

.method public static parsePercent(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextScale;)I
    .locals 1

    const/16 v0, 0x3e8

    .line 8
    invoke-static {p0, v0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parsePercentInner(Li5/i0;I)I

    move-result p0

    return p0
.end method

.method private static parsePercentInner(Li5/i0;I)I
    .locals 1

    invoke-interface {p0}, Li5/i0;->getStringValue()Ljava/lang/String;

    move-result-object p0

    const-string v0, "%"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    mul-int/lit16 p0, p0, 0x3e8

    return p0

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    mul-int/2addr p0, p1

    return p0
.end method
