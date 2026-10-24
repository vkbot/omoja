.class public Lorg/apache/poi/xslf/draw/geom/XSLFAdjustPoint;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/draw/geom/AdjustPointIf;


# instance fields
.field private final pnt:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xslf/draw/geom/XSLFAdjustPoint;->pnt:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;

    return-void
.end method


# virtual methods
.method public getX()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/draw/geom/XSLFAdjustPoint;->pnt:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->xgetX()Lorg/openxmlformats/schemas/drawingml/x2006/main/STAdjCoordinate;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STAdjCoordinate;->getStringValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getY()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/draw/geom/XSLFAdjustPoint;->pnt:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->xgetY()Lorg/openxmlformats/schemas/drawingml/x2006/main/STAdjCoordinate;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STAdjCoordinate;->getStringValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isSetX()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/draw/geom/XSLFAdjustPoint;->pnt:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->xgetX()Lorg/openxmlformats/schemas/drawingml/x2006/main/STAdjCoordinate;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetY()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/draw/geom/XSLFAdjustPoint;->pnt:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->xgetY()Lorg/openxmlformats/schemas/drawingml/x2006/main/STAdjCoordinate;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setX(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/draw/geom/XSLFAdjustPoint;->pnt:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->setX(Ljava/lang/Object;)V

    return-void
.end method

.method public setY(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/draw/geom/XSLFAdjustPoint;->pnt:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->setY(Ljava/lang/Object;)V

    return-void
.end method
