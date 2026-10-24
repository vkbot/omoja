.class public abstract Lorg/apache/poi/xddf/usermodel/chart/XDDFChartAxis;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xddf/usermodel/HasShapeProperties;


# static fields
.field private static final MAX_LOG_BASE:D = 1000.0

.field private static final MIN_LOG_BASE:D = 2.0


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract crossAxis(Lorg/apache/poi/xddf/usermodel/chart/XDDFChartAxis;)V
.end method

.method public abstract getCTAxId()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;
.end method

.method public abstract getCTAxPos()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxPos;
.end method

.method public abstract getCTCrosses()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCrosses;
.end method

.method public abstract getCTNumFmt()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumFmt;
.end method

.method public abstract getCTScaling()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScaling;
.end method

.method public abstract getCTTickLblPos()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTickLblPos;
.end method

.method public getCrosses()Lorg/apache/poi/xddf/usermodel/chart/AxisCrosses;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartAxis;->getCTCrosses()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCrosses;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCrosses;->getVal()Lorg/openxmlformats/schemas/drawingml/x2006/chart/STCrosses$Enum;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/xddf/usermodel/chart/AxisCrosses;->valueOf(Lorg/openxmlformats/schemas/drawingml/x2006/chart/STCrosses$Enum;)Lorg/apache/poi/xddf/usermodel/chart/AxisCrosses;

    move-result-object p0

    return-object p0
.end method

.method public abstract getDelete()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;
.end method

.method public getId()J
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartAxis;->getCTAxId()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;->getVal()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLogBase()D
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartAxis;->getCTScaling()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScaling;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScaling;->isSetLogBase()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScaling;->getLogBase()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLogBase;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLogBase;->getVal()D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0
.end method

.method public abstract getMajorCTTickMark()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTickMark;
.end method

.method public getMajorTickMark()Lorg/apache/poi/xddf/usermodel/chart/AxisTickMark;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartAxis;->getMajorCTTickMark()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTickMark;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTickMark;->getVal()Lorg/openxmlformats/schemas/drawingml/x2006/chart/STTickMark$Enum;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/xddf/usermodel/chart/AxisTickMark;->valueOf(Lorg/openxmlformats/schemas/drawingml/x2006/chart/STTickMark$Enum;)Lorg/apache/poi/xddf/usermodel/chart/AxisTickMark;

    move-result-object p0

    return-object p0
.end method

.method public abstract getMajorUnit()D
.end method

.method public getMaximum()D
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartAxis;->getCTScaling()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScaling;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScaling;->isSetMax()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScaling;->getMax()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDouble;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDouble;->getVal()D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0
.end method

.method public getMinimum()D
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartAxis;->getCTScaling()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScaling;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScaling;->isSetMin()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScaling;->getMin()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDouble;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDouble;->getVal()D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0
.end method

.method public abstract getMinorCTTickMark()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTickMark;
.end method

.method public getMinorTickMark()Lorg/apache/poi/xddf/usermodel/chart/AxisTickMark;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartAxis;->getMinorCTTickMark()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTickMark;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTickMark;->getVal()Lorg/openxmlformats/schemas/drawingml/x2006/chart/STTickMark$Enum;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/xddf/usermodel/chart/AxisTickMark;->valueOf(Lorg/openxmlformats/schemas/drawingml/x2006/chart/STTickMark$Enum;)Lorg/apache/poi/xddf/usermodel/chart/AxisTickMark;

    move-result-object p0

    return-object p0
.end method

.method public abstract getMinorUnit()D
.end method

.method public getNextAxId(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;)J
    .locals 4

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->sizeOfValAxArray()I

    move-result p0

    int-to-long v0, p0

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->sizeOfCatAxArray()I

    move-result p0

    int-to-long v2, p0

    add-long/2addr v0, v2

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->sizeOfDateAxArray()I

    move-result p0

    int-to-long v2, p0

    add-long/2addr v0, v2

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->sizeOfSerAxArray()I

    move-result p0

    int-to-long p0, p0

    add-long/2addr v0, p0

    return-wide v0
.end method

.method public getNumberFormat()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartAxis;->hasNumberFormat()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartAxis;->getCTNumFmt()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumFmt;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumFmt;->getFormatCode()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getOrAddLinesProperties(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartLines;)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;
    .locals 0

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartLines;->isSetSpPr()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartLines;->getSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartLines;->addNewSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public abstract getOrAddMajorGridProperties()Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;
.end method

.method public abstract getOrAddMinorGridProperties()Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;
.end method

.method public abstract getOrAddTextProperties()Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;
.end method

.method public getOrAddTextProperties(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;
    .locals 0

    .line 1
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getBodyPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    move-result-object p0

    if-nez p0, :cond_0

    .line 2
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->addNewBodyPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    .line 3
    :cond_0
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->sizeOfPArray()I

    move-result p0

    if-lez p0, :cond_1

    const/4 p0, 0x0

    .line 4
    invoke-interface {p1, p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getPArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    move-result-object p0

    goto :goto_0

    .line 5
    :cond_1
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->addNewP()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    move-result-object p0

    .line 6
    :goto_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    goto :goto_1

    .line 8
    :cond_2
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    .line 9
    :goto_1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetDefRPr()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 10
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getDefRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object p0

    goto :goto_2

    .line 11
    :cond_3
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->addNewDefRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method public getOrientation()Lorg/apache/poi/xddf/usermodel/chart/AxisOrientation;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartAxis;->getCTScaling()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScaling;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScaling;->getOrientation()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTOrientation;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTOrientation;->getVal()Lorg/openxmlformats/schemas/drawingml/x2006/chart/STOrientation$Enum;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/xddf/usermodel/chart/AxisOrientation;->valueOf(Lorg/openxmlformats/schemas/drawingml/x2006/chart/STOrientation$Enum;)Lorg/apache/poi/xddf/usermodel/chart/AxisOrientation;

    move-result-object p0

    return-object p0
.end method

.method public getPosition()Lorg/apache/poi/xddf/usermodel/chart/AxisPosition;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartAxis;->getCTAxPos()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxPos;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxPos;->getVal()Lorg/openxmlformats/schemas/drawingml/x2006/chart/STAxPos$Enum;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/xddf/usermodel/chart/AxisPosition;->valueOf(Lorg/openxmlformats/schemas/drawingml/x2006/chart/STAxPos$Enum;)Lorg/apache/poi/xddf/usermodel/chart/AxisPosition;

    move-result-object p0

    return-object p0
.end method

.method public getTickLabelPosition()Lorg/apache/poi/xddf/usermodel/chart/AxisTickLabelPosition;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartAxis;->getCTTickLblPos()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTickLblPos;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTickLblPos;->getVal()Lorg/openxmlformats/schemas/drawingml/x2006/chart/STTickLblPos$Enum;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/xddf/usermodel/chart/AxisTickLabelPosition;->valueOf(Lorg/openxmlformats/schemas/drawingml/x2006/chart/STTickLblPos$Enum;)Lorg/apache/poi/xddf/usermodel/chart/AxisTickLabelPosition;

    move-result-object p0

    return-object p0
.end method

.method public abstract hasNumberFormat()Z
.end method

.method public isSetLogBase()Z
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartAxis;->getCTScaling()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScaling;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScaling;->isSetLogBase()Z

    move-result p0

    return p0
.end method

.method public abstract isSetMajorUnit()Z
.end method

.method public isSetMaximum()Z
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartAxis;->getCTScaling()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScaling;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScaling;->isSetMax()Z

    move-result p0

    return p0
.end method

.method public isSetMinimum()Z
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartAxis;->getCTScaling()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScaling;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScaling;->isSetMin()Z

    move-result p0

    return p0
.end method

.method public abstract isSetMinorUnit()Z
.end method

.method public isVisible()Z
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartAxis;->getDelete()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;->getVal()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public setCrosses(Lorg/apache/poi/xddf/usermodel/chart/AxisCrosses;)V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartAxis;->getCTCrosses()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCrosses;

    move-result-object p0

    iget-object p1, p1, Lorg/apache/poi/xddf/usermodel/chart/AxisCrosses;->underlying:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STCrosses$Enum;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCrosses;->setVal(Lorg/openxmlformats/schemas/drawingml/x2006/chart/STCrosses$Enum;)V

    return-void
.end method

.method public setLogBase(D)V
    .locals 2

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    cmpg-double v0, p1, v0

    if-ltz v0, :cond_1

    const-wide v0, 0x408f400000000000L    # 1000.0

    cmpg-double v0, v0, p1

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartAxis;->getCTScaling()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScaling;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScaling;->isSetLogBase()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScaling;->getLogBase()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLogBase;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLogBase;->setVal(D)V

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScaling;->addNewLogBase()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLogBase;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLogBase;->setVal(D)V

    :goto_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Axis log base must be between 2 and 1000 (inclusive), got: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMajorTickMark(Lorg/apache/poi/xddf/usermodel/chart/AxisTickMark;)V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartAxis;->getMajorCTTickMark()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTickMark;

    move-result-object p0

    iget-object p1, p1, Lorg/apache/poi/xddf/usermodel/chart/AxisTickMark;->underlying:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STTickMark$Enum;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTickMark;->setVal(Lorg/openxmlformats/schemas/drawingml/x2006/chart/STTickMark$Enum;)V

    return-void
.end method

.method public abstract setMajorUnit(D)V
.end method

.method public setMaximum(D)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartAxis;->getCTScaling()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScaling;

    move-result-object p0

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScaling;->isSetMax()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScaling;->unsetMax()V

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScaling;->isSetMax()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScaling;->getMax()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDouble;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDouble;->setVal(D)V

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScaling;->addNewMax()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDouble;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDouble;->setVal(D)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setMinimum(D)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartAxis;->getCTScaling()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScaling;

    move-result-object p0

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScaling;->isSetMin()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScaling;->unsetMin()V

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScaling;->isSetMin()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScaling;->getMin()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDouble;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDouble;->setVal(D)V

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScaling;->addNewMin()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDouble;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDouble;->setVal(D)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setMinorTickMark(Lorg/apache/poi/xddf/usermodel/chart/AxisTickMark;)V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartAxis;->getMinorCTTickMark()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTickMark;

    move-result-object p0

    iget-object p1, p1, Lorg/apache/poi/xddf/usermodel/chart/AxisTickMark;->underlying:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STTickMark$Enum;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTickMark;->setVal(Lorg/openxmlformats/schemas/drawingml/x2006/chart/STTickMark$Enum;)V

    return-void
.end method

.method public abstract setMinorUnit(D)V
.end method

.method public setNumberFormat(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartAxis;->getCTNumFmt()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumFmt;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumFmt;->setFormatCode(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartAxis;->getCTNumFmt()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumFmt;

    move-result-object p0

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumFmt;->setSourceLinked(Z)V

    return-void
.end method

.method public setOrientation(Lorg/apache/poi/xddf/usermodel/chart/AxisOrientation;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartAxis;->getCTScaling()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScaling;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScaling;->isSetOrientation()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScaling;->getOrientation()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTOrientation;

    move-result-object p0

    iget-object p1, p1, Lorg/apache/poi/xddf/usermodel/chart/AxisOrientation;->underlying:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STOrientation$Enum;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTOrientation;->setVal(Lorg/openxmlformats/schemas/drawingml/x2006/chart/STOrientation$Enum;)V

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScaling;->addNewOrientation()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTOrientation;

    move-result-object p0

    iget-object p1, p1, Lorg/apache/poi/xddf/usermodel/chart/AxisOrientation;->underlying:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STOrientation$Enum;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTOrientation;->setVal(Lorg/openxmlformats/schemas/drawingml/x2006/chart/STOrientation$Enum;)V

    :goto_0
    return-void
.end method

.method public setPosition(Lorg/apache/poi/xddf/usermodel/chart/AxisPosition;)V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartAxis;->getCTAxPos()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxPos;

    move-result-object p0

    iget-object p1, p1, Lorg/apache/poi/xddf/usermodel/chart/AxisPosition;->underlying:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STAxPos$Enum;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxPos;->setVal(Lorg/openxmlformats/schemas/drawingml/x2006/chart/STAxPos$Enum;)V

    return-void
.end method

.method public setTickLabelPosition(Lorg/apache/poi/xddf/usermodel/chart/AxisTickLabelPosition;)V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartAxis;->getCTTickLblPos()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTickLblPos;

    move-result-object p0

    iget-object p1, p1, Lorg/apache/poi/xddf/usermodel/chart/AxisTickLabelPosition;->underlying:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STTickLblPos$Enum;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTickLblPos;->setVal(Lorg/openxmlformats/schemas/drawingml/x2006/chart/STTickLblPos$Enum;)V

    return-void
.end method

.method public abstract setTitle(Ljava/lang/String;)V
.end method

.method public setVisible(Z)V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartAxis;->getDelete()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;

    move-result-object p0

    xor-int/lit8 p1, p1, 0x1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;->setVal(Z)V

    return-void
.end method
