.class public Lorg/apache/poi/xddf/usermodel/chart/XDDFValueAxis;
.super Lorg/apache/poi/xddf/usermodel/chart/XDDFChartAxis;
.source "SourceFile"


# instance fields
.field private ctValAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;Lorg/apache/poi/xddf/usermodel/chart/AxisPosition;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartAxis;-><init>()V

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xddf/usermodel/chart/XDDFValueAxis;->initializeAxis(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;Lorg/apache/poi/xddf/usermodel/chart/AxisPosition;)V

    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartAxis;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFValueAxis;->ctValAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;

    return-void
.end method

.method private initializeAxis(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;Lorg/apache/poi/xddf/usermodel/chart/AxisPosition;)V
    .locals 2

    invoke-virtual {p0, p1}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartAxis;->getNextAxId(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;)J

    move-result-wide v0

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->addNewValAx()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFValueAxis;->ctValAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;->addNewAxId()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    move-result-object p1

    invoke-interface {p1, v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;->setVal(J)V

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFValueAxis;->ctValAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;->addNewAxPos()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxPos;

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFValueAxis;->ctValAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;->addNewScaling()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScaling;

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFValueAxis;->ctValAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;->addNewCrossBetween()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCrossBetween;

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFValueAxis;->ctValAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;->addNewCrosses()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCrosses;

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFValueAxis;->ctValAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;->addNewCrossAx()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFValueAxis;->ctValAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;->addNewTickLblPos()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTickLblPos;

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFValueAxis;->ctValAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;->addNewDelete()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFValueAxis;->ctValAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;->addNewMajorTickMark()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTickMark;

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFValueAxis;->ctValAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;->addNewMinorTickMark()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTickMark;

    invoke-virtual {p0, p2}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartAxis;->setPosition(Lorg/apache/poi/xddf/usermodel/chart/AxisPosition;)V

    sget-object p1, Lorg/apache/poi/xddf/usermodel/chart/AxisOrientation;->MIN_MAX:Lorg/apache/poi/xddf/usermodel/chart/AxisOrientation;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartAxis;->setOrientation(Lorg/apache/poi/xddf/usermodel/chart/AxisOrientation;)V

    sget-object p1, Lorg/apache/poi/xddf/usermodel/chart/AxisCrossBetween;->MIDPOINT_CATEGORY:Lorg/apache/poi/xddf/usermodel/chart/AxisCrossBetween;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xddf/usermodel/chart/XDDFValueAxis;->setCrossBetween(Lorg/apache/poi/xddf/usermodel/chart/AxisCrossBetween;)V

    sget-object p1, Lorg/apache/poi/xddf/usermodel/chart/AxisCrosses;->AUTO_ZERO:Lorg/apache/poi/xddf/usermodel/chart/AxisCrosses;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartAxis;->setCrosses(Lorg/apache/poi/xddf/usermodel/chart/AxisCrosses;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartAxis;->setVisible(Z)V

    sget-object p1, Lorg/apache/poi/xddf/usermodel/chart/AxisTickMark;->CROSS:Lorg/apache/poi/xddf/usermodel/chart/AxisTickMark;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartAxis;->setMajorTickMark(Lorg/apache/poi/xddf/usermodel/chart/AxisTickMark;)V

    sget-object p1, Lorg/apache/poi/xddf/usermodel/chart/AxisTickMark;->NONE:Lorg/apache/poi/xddf/usermodel/chart/AxisTickMark;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartAxis;->setMinorTickMark(Lorg/apache/poi/xddf/usermodel/chart/AxisTickMark;)V

    sget-object p1, Lorg/apache/poi/xddf/usermodel/chart/AxisTickLabelPosition;->NEXT_TO:Lorg/apache/poi/xddf/usermodel/chart/AxisTickLabelPosition;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartAxis;->setTickLabelPosition(Lorg/apache/poi/xddf/usermodel/chart/AxisTickLabelPosition;)V

    return-void
.end method


# virtual methods
.method public crossAxis(Lorg/apache/poi/xddf/usermodel/chart/XDDFChartAxis;)V
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFValueAxis;->ctValAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;->getCrossAx()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartAxis;->getId()J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;->setVal(J)V

    return-void
.end method

.method public getCTAxId()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFValueAxis;->ctValAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;->getAxId()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    move-result-object p0

    return-object p0
.end method

.method public getCTAxPos()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxPos;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFValueAxis;->ctValAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;->getAxPos()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxPos;

    move-result-object p0

    return-object p0
.end method

.method public getCTCrosses()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCrosses;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFValueAxis;->ctValAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;->getCrosses()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCrosses;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFValueAxis;->ctValAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;->addNewCrosses()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCrosses;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public getCTNumFmt()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumFmt;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFValueAxis;->ctValAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;->isSetNumFmt()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFValueAxis;->ctValAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;->getNumFmt()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumFmt;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFValueAxis;->ctValAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;->addNewNumFmt()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumFmt;

    move-result-object p0

    return-object p0
.end method

.method public getCTScaling()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScaling;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFValueAxis;->ctValAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;->getScaling()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScaling;

    move-result-object p0

    return-object p0
.end method

.method public getCTTickLblPos()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTickLblPos;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFValueAxis;->ctValAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;->getTickLblPos()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTickLblPos;

    move-result-object p0

    return-object p0
.end method

.method public getCrossBetween()Lorg/apache/poi/xddf/usermodel/chart/AxisCrossBetween;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFValueAxis;->ctValAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;->getCrossBetween()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCrossBetween;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCrossBetween;->getVal()Lorg/openxmlformats/schemas/drawingml/x2006/chart/STCrossBetween$Enum;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/xddf/usermodel/chart/AxisCrossBetween;->valueOf(Lorg/openxmlformats/schemas/drawingml/x2006/chart/STCrossBetween$Enum;)Lorg/apache/poi/xddf/usermodel/chart/AxisCrossBetween;

    move-result-object p0

    return-object p0
.end method

.method public getDelete()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFValueAxis;->ctValAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;->getDelete()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;

    move-result-object p0

    return-object p0
.end method

.method public getMajorCTTickMark()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTickMark;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFValueAxis;->ctValAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;->getMajorTickMark()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTickMark;

    move-result-object p0

    return-object p0
.end method

.method public getMajorUnit()D
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFValueAxis;->ctValAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;->isSetMajorUnit()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFValueAxis;->ctValAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;->getMajorUnit()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxisUnit;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxisUnit;->getVal()D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0
.end method

.method public getMinorCTTickMark()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTickMark;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFValueAxis;->ctValAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;->getMinorTickMark()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTickMark;

    move-result-object p0

    return-object p0
.end method

.method public getMinorUnit()D
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFValueAxis;->ctValAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;->isSetMinorUnit()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFValueAxis;->ctValAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;->getMinorUnit()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxisUnit;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxisUnit;->getVal()D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0
.end method

.method public getOrAddMajorGridProperties()Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFValueAxis;->ctValAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;->isSetMajorGridlines()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFValueAxis;->ctValAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;->getMajorGridlines()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartLines;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFValueAxis;->ctValAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;->addNewMajorGridlines()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartLines;

    move-result-object v0

    :goto_0
    new-instance v1, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;

    invoke-virtual {p0, v0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartAxis;->getOrAddLinesProperties(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartLines;)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;)V

    return-object v1
.end method

.method public getOrAddMinorGridProperties()Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFValueAxis;->ctValAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;->isSetMinorGridlines()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFValueAxis;->ctValAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;->getMinorGridlines()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartLines;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFValueAxis;->ctValAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;->addNewMinorGridlines()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartLines;

    move-result-object v0

    :goto_0
    new-instance v1, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;

    invoke-virtual {p0, v0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartAxis;->getOrAddLinesProperties(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartLines;)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;)V

    return-object v1
.end method

.method public getOrAddShapeProperties()Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFValueAxis;->ctValAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;->isSetSpPr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFValueAxis;->ctValAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;->getSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFValueAxis;->ctValAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;->addNewSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object p0

    :goto_0
    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;)V

    return-object v0
.end method

.method public getOrAddTextProperties()Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFValueAxis;->ctValAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;->isSetTxPr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFValueAxis;->ctValAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;->getTxPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFValueAxis;->ctValAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;->addNewTxPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    move-result-object v0

    :goto_0
    new-instance v1, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;

    invoke-virtual {p0, v0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartAxis;->getOrAddTextProperties(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    return-object v1
.end method

.method public hasNumberFormat()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFValueAxis;->ctValAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;->isSetNumFmt()Z

    move-result p0

    return p0
.end method

.method public isSetMajorUnit()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFValueAxis;->ctValAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;->isSetMajorUnit()Z

    move-result p0

    return p0
.end method

.method public isSetMinorUnit()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFValueAxis;->ctValAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;->isSetMinorUnit()Z

    move-result p0

    return p0
.end method

.method public setCrossBetween(Lorg/apache/poi/xddf/usermodel/chart/AxisCrossBetween;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFValueAxis;->ctValAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;->getCrossBetween()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCrossBetween;

    move-result-object p0

    iget-object p1, p1, Lorg/apache/poi/xddf/usermodel/chart/AxisCrossBetween;->underlying:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STCrossBetween$Enum;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCrossBetween;->setVal(Lorg/openxmlformats/schemas/drawingml/x2006/chart/STCrossBetween$Enum;)V

    return-void
.end method

.method public setMajorUnit(D)V
    .locals 1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFValueAxis;->ctValAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;->isSetMajorUnit()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFValueAxis;->ctValAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;->unsetMajorUnit()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFValueAxis;->ctValAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;->isSetMajorUnit()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFValueAxis;->ctValAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;->getMajorUnit()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxisUnit;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxisUnit;->setVal(D)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFValueAxis;->ctValAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;->addNewMajorUnit()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxisUnit;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxisUnit;->setVal(D)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setMinorUnit(D)V
    .locals 1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFValueAxis;->ctValAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;->isSetMinorUnit()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFValueAxis;->ctValAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;->unsetMinorUnit()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFValueAxis;->ctValAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;->isSetMinorUnit()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFValueAxis;->ctValAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;->getMinorUnit()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxisUnit;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxisUnit;->setVal(D)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFValueAxis;->ctValAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;->addNewMinorUnit()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxisUnit;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxisUnit;->setVal(D)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFValueAxis;->ctValAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;->isSetTitle()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFValueAxis;->ctValAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;->addNewTitle()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTitle;

    :cond_0
    new-instance v0, Lorg/apache/poi/xddf/usermodel/chart/XDDFTitle;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFValueAxis;->ctValAx:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;->getTitle()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTitle;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFTitle;-><init>(Lorg/apache/poi/xddf/usermodel/text/TextContainer;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTitle;)V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFTitle;->setOverlay(Ljava/lang/Boolean;)V

    invoke-virtual {v0, p1}, Lorg/apache/poi/xddf/usermodel/chart/XDDFTitle;->setText(Ljava/lang/String;)V

    return-void
.end method
