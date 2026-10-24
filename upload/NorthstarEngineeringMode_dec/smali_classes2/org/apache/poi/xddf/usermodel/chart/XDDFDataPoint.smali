.class public Lorg/apache/poi/xddf/usermodel/chart/XDDFDataPoint;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final point:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDPt;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDPt;)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataPoint;->point:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDPt;

    return-void
.end method

.method private getMarker()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTMarker;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataPoint;->point:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDPt;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDPt;->isSetMarker()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataPoint;->point:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDPt;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDPt;->getMarker()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTMarker;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataPoint;->point:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDPt;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDPt;->addNewMarker()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTMarker;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getExplosion()Ljava/lang/Long;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataPoint;->point:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDPt;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDPt;->isSetExplosion()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataPoint;->point:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDPt;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDPt;->getExplosion()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;->getVal()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getIndex()J
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataPoint;->point:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDPt;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDPt;->getIdx()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;->getVal()J

    move-result-wide v0

    return-wide v0
.end method

.method public getInvertIfNegative()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataPoint;->point:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDPt;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDPt;->isSetInvertIfNegative()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataPoint;->point:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDPt;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDPt;->getInvertIfNegative()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;->getVal()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getShapeProperties()Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataPoint;->point:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDPt;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDPt;->isSetSpPr()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataPoint;->point:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDPt;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDPt;->getSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public setExplosion(Ljava/lang/Long;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataPoint;->point:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDPt;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDPt;->isSetExplosion()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataPoint;->point:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDPt;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDPt;->unsetExplosion()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataPoint;->point:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDPt;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDPt;->isSetExplosion()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataPoint;->point:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDPt;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDPt;->getExplosion()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;->setVal(J)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataPoint;->point:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDPt;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDPt;->addNewExplosion()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;->setVal(J)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setFillProperties(Lorg/apache/poi/xddf/usermodel/XDDFFillProperties;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataPoint;->getShapeProperties()Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;

    invoke-direct {v0}, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;-><init>()V

    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;->setFillProperties(Lorg/apache/poi/xddf/usermodel/XDDFFillProperties;)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataPoint;->setShapeProperties(Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;)V

    return-void
.end method

.method public setInvertIfNegative(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataPoint;->point:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDPt;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDPt;->isSetInvertIfNegative()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataPoint;->point:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDPt;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDPt;->getInvertIfNegative()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;->setVal(Z)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataPoint;->point:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDPt;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDPt;->addNewInvertIfNegative()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;->setVal(Z)V

    :goto_0
    return-void
.end method

.method public setLineProperties(Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataPoint;->getShapeProperties()Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;

    invoke-direct {v0}, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;-><init>()V

    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;->setLineProperties(Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataPoint;->setShapeProperties(Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;)V

    return-void
.end method

.method public setMarkerSize(S)V
    .locals 1

    const/4 v0, 0x2

    if-lt p1, v0, :cond_1

    const/16 v0, 0x48

    if-lt v0, p1, :cond_1

    invoke-direct {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataPoint;->getMarker()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTMarker;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTMarker;->isSetSize()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTMarker;->getSize()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTMarkerSize;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTMarkerSize;->setVal(S)V

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTMarker;->addNewSize()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTMarkerSize;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTMarkerSize;->setVal(S)V

    :goto_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Minimum inclusive: 2; Maximum inclusive: 72"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMarkerStyle(Lorg/apache/poi/xddf/usermodel/chart/MarkerStyle;)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataPoint;->getMarker()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTMarker;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTMarker;->isSetSymbol()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTMarker;->getSymbol()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTMarkerStyle;

    move-result-object p0

    iget-object p1, p1, Lorg/apache/poi/xddf/usermodel/chart/MarkerStyle;->underlying:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTMarkerStyle;->setVal(Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;)V

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTMarker;->addNewSymbol()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTMarkerStyle;

    move-result-object p0

    iget-object p1, p1, Lorg/apache/poi/xddf/usermodel/chart/MarkerStyle;->underlying:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTMarkerStyle;->setVal(Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;)V

    :goto_0
    return-void
.end method

.method public setShapeProperties(Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataPoint;->point:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDPt;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDPt;->isSetSpPr()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataPoint;->point:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDPt;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDPt;->unsetSpPr()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataPoint;->point:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDPt;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDPt;->isSetSpPr()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataPoint;->point:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDPt;

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDPt;->setSpPr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataPoint;->point:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDPt;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDPt;->addNewSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    :cond_2
    :goto_0
    return-void
.end method
