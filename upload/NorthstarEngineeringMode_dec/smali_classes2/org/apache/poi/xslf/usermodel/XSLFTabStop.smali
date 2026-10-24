.class public Lorg/apache/poi/xslf/usermodel/XSLFTabStop;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/TabStop;


# instance fields
.field final tabStop:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStop;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStop;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTabStop;->tabStop:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStop;

    return-void
.end method


# virtual methods
.method public getPosition()I
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTabStop;->tabStop:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStop;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStop;->xgetPos()Lorg/openxmlformats/schemas/drawingml/x2006/main/STCoordinate32;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parseLength(Lorg/openxmlformats/schemas/drawingml/x2006/main/STCoordinate32;)J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method public getPositionInPoints()D
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTabStop;->getPosition()I

    move-result p0

    int-to-long v0, p0

    invoke-static {v0, v1}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getType()Lorg/apache/poi/sl/usermodel/TabStop$TabStopType;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTabStop;->tabStop:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStop;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStop;->getAlgn()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextTabAlignType$Enum;

    move-result-object p0

    invoke-virtual {p0}, Li5/h0;->intValue()I

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/sl/usermodel/TabStop$TabStopType;->fromOoxmlId(I)Lorg/apache/poi/sl/usermodel/TabStop$TabStopType;

    move-result-object p0

    return-object p0
.end method

.method public setPosition(I)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTabStop;->tabStop:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStop;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStop;->setPos(Ljava/lang/Object;)V

    return-void
.end method

.method public setPositionInPoints(D)V
    .locals 0

    invoke-static {p1, p2}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFTabStop;->setPosition(I)V

    return-void
.end method

.method public setType(Lorg/apache/poi/sl/usermodel/TabStop$TabStopType;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTabStop;->tabStop:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStop;

    iget p1, p1, Lorg/apache/poi/sl/usermodel/TabStop$TabStopType;->ooxmlId:I

    invoke-static {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextTabAlignType$Enum;->forInt(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextTabAlignType$Enum;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStop;->setAlgn(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextTabAlignType$Enum;)V

    return-void
.end method
