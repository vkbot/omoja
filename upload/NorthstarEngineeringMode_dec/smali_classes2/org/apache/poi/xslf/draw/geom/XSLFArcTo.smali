.class public Lorg/apache/poi/xslf/draw/geom/XSLFArcTo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/draw/geom/ArcToCommandIf;


# instance fields
.field private final arc:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DArcTo;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DArcTo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xslf/draw/geom/XSLFArcTo;->arc:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DArcTo;

    return-void
.end method


# virtual methods
.method public getHR()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/draw/geom/XSLFArcTo;->arc:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DArcTo;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DArcTo;->xgetHR()Lorg/openxmlformats/schemas/drawingml/x2006/main/STAdjCoordinate;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STAdjCoordinate;->getStringValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStAng()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/draw/geom/XSLFArcTo;->arc:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DArcTo;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DArcTo;->xgetStAng()Lorg/openxmlformats/schemas/drawingml/x2006/main/STAdjAngle;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STAdjAngle;->getStringValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSwAng()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/draw/geom/XSLFArcTo;->arc:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DArcTo;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DArcTo;->xgetSwAng()Lorg/openxmlformats/schemas/drawingml/x2006/main/STAdjAngle;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STAdjAngle;->getStringValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getWR()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/draw/geom/XSLFArcTo;->arc:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DArcTo;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DArcTo;->xgetHR()Lorg/openxmlformats/schemas/drawingml/x2006/main/STAdjCoordinate;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STAdjCoordinate;->getStringValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setHR(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/draw/geom/XSLFArcTo;->arc:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DArcTo;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DArcTo;->setHR(Ljava/lang/Object;)V

    return-void
.end method

.method public setStAng(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/draw/geom/XSLFArcTo;->arc:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DArcTo;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DArcTo;->setStAng(Ljava/lang/Object;)V

    return-void
.end method

.method public setSwAng(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/draw/geom/XSLFArcTo;->arc:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DArcTo;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DArcTo;->setSwAng(Ljava/lang/Object;)V

    return-void
.end method

.method public setWR(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/draw/geom/XSLFArcTo;->arc:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DArcTo;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DArcTo;->setWR(Ljava/lang/Object;)V

    return-void
.end method
