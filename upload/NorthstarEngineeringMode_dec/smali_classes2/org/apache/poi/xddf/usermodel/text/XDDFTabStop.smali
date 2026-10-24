.class public Lorg/apache/poi/xddf/usermodel/text/XDDFTabStop;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private stop:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStop;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStop;)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTabStop;->stop:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStop;

    return-void
.end method


# virtual methods
.method public getAlignment()Lorg/apache/poi/xddf/usermodel/text/TabAlignment;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTabStop;->stop:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStop;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStop;->isSetAlgn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTabStop;->stop:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStop;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStop;->getAlgn()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextTabAlignType$Enum;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/xddf/usermodel/text/TabAlignment;->valueOf(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextTabAlignType$Enum;)Lorg/apache/poi/xddf/usermodel/text/TabAlignment;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPosition()Ljava/lang/Double;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTabStop;->stop:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStop;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStop;->isSetPos()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTabStop;->stop:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStop;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStop;->xgetPos()Lorg/openxmlformats/schemas/drawingml/x2006/main/STCoordinate32;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parseLength(Lorg/openxmlformats/schemas/drawingml/x2006/main/STCoordinate32;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStop;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTabStop;->stop:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStop;

    return-object p0
.end method

.method public setAlignment(Lorg/apache/poi/xddf/usermodel/text/TabAlignment;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTabStop;->stop:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStop;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStop;->isSetAlgn()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTabStop;->stop:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStop;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStop;->unsetAlgn()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTabStop;->stop:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStop;

    iget-object p1, p1, Lorg/apache/poi/xddf/usermodel/text/TabAlignment;->underlying:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextTabAlignType$Enum;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStop;->setAlgn(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextTabAlignType$Enum;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setPosition(Ljava/lang/Double;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTabStop;->stop:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStop;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStop;->isSetPos()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTabStop;->stop:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStop;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStop;->unsetPos()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTabStop;->stop:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStop;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStop;->setPos(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
