.class public Lorg/apache/poi/xddf/usermodel/XDDFDashStop;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private stop:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTDashStop;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTDashStop;)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xddf/usermodel/XDDFDashStop;->stop:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTDashStop;

    return-void
.end method


# virtual methods
.method public getDashLength()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFDashStop;->stop:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTDashStop;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTDashStop;->xgetD()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPositivePercentage;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parsePercent(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPositivePercentage;)I

    move-result p0

    return p0
.end method

.method public getSpaceLength()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFDashStop;->stop:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTDashStop;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTDashStop;->xgetSp()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPositivePercentage;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parsePercent(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPositivePercentage;)I

    move-result p0

    return p0
.end method

.method public getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTDashStop;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFDashStop;->stop:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTDashStop;

    return-object p0
.end method

.method public setDashLength(I)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFDashStop;->stop:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTDashStop;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTDashStop;->setD(Ljava/lang/Object;)V

    return-void
.end method

.method public setSpaceLength(I)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFDashStop;->stop:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTDashStop;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTDashStop;->setSp(Ljava/lang/Object;)V

    return-void
.end method
