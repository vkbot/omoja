.class public Lorg/apache/poi/xslf/draw/geom/XSLFMoveTo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/draw/geom/MoveToCommandIf;


# instance fields
.field private final moveTo:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DMoveTo;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DMoveTo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xslf/draw/geom/XSLFMoveTo;->moveTo:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DMoveTo;

    return-void
.end method


# virtual methods
.method public bridge synthetic getPt()Lorg/apache/poi/sl/draw/geom/AdjustPointIf;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xslf/draw/geom/XSLFMoveTo;->getPt()Lorg/apache/poi/xslf/draw/geom/XSLFAdjustPoint;

    move-result-object p0

    return-object p0
.end method

.method public getPt()Lorg/apache/poi/xslf/draw/geom/XSLFAdjustPoint;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/poi/xslf/draw/geom/XSLFAdjustPoint;

    iget-object p0, p0, Lorg/apache/poi/xslf/draw/geom/XSLFMoveTo;->moveTo:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DMoveTo;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DMoveTo;->getPt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xslf/draw/geom/XSLFAdjustPoint;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;)V

    return-object v0
.end method

.method public setPt(Lorg/apache/poi/sl/draw/geom/AdjustPointIf;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/draw/geom/XSLFMoveTo;->moveTo:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DMoveTo;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DMoveTo;->getPt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xslf/draw/geom/XSLFMoveTo;->moveTo:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DMoveTo;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DMoveTo;->addNewPt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;

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
