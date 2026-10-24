.class public Lorg/apache/poi/xslf/draw/geom/XSLFConnectionSite;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/draw/geom/ConnectionSiteIf;


# instance fields
.field final cxn:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTConnectionSite;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTConnectionSite;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xslf/draw/geom/XSLFConnectionSite;->cxn:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTConnectionSite;

    return-void
.end method


# virtual methods
.method public getAng()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/draw/geom/XSLFConnectionSite;->cxn:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTConnectionSite;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTConnectionSite;->xgetAng()Lorg/openxmlformats/schemas/drawingml/x2006/main/STAdjAngle;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STAdjAngle;->getStringValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPos()Lorg/apache/poi/sl/draw/geom/AdjustPointIf;
    .locals 1

    new-instance v0, Lorg/apache/poi/xslf/draw/geom/XSLFAdjustPoint;

    iget-object p0, p0, Lorg/apache/poi/xslf/draw/geom/XSLFConnectionSite;->cxn:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTConnectionSite;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTConnectionSite;->getPos()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xslf/draw/geom/XSLFAdjustPoint;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;)V

    return-object v0
.end method

.method public isSetAng()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/draw/geom/XSLFConnectionSite;->cxn:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTConnectionSite;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTConnectionSite;->xgetAng()Lorg/openxmlformats/schemas/drawingml/x2006/main/STAdjAngle;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setAng(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/draw/geom/XSLFConnectionSite;->cxn:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTConnectionSite;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTConnectionSite;->setAng(Ljava/lang/Object;)V

    return-void
.end method

.method public setPos(Lorg/apache/poi/sl/draw/geom/AdjustPointIf;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/draw/geom/XSLFConnectionSite;->cxn:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTConnectionSite;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTConnectionSite;->getPos()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xslf/draw/geom/XSLFConnectionSite;->cxn:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTConnectionSite;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTConnectionSite;->addNewPos()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;

    move-result-object v0

    :cond_0
    invoke-interface {p1}, Lorg/apache/poi/sl/draw/geom/AdjustPointIf;->getX()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->setX(Ljava/lang/Object;)V

    invoke-interface {p1}, Lorg/apache/poi/sl/draw/geom/AdjustPointIf;->getY()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->setY(Ljava/lang/Object;)V

    return-void
.end method
