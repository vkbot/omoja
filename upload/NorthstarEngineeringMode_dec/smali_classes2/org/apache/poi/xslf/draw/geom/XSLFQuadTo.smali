.class public Lorg/apache/poi/xslf/draw/geom/XSLFQuadTo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/draw/geom/QuadToCommandIf;


# instance fields
.field private final bezier:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DQuadBezierTo;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DQuadBezierTo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xslf/draw/geom/XSLFQuadTo;->bezier:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DQuadBezierTo;

    return-void
.end method


# virtual methods
.method public getPt1()Lorg/apache/poi/sl/draw/geom/AdjustPointIf;
    .locals 2

    new-instance v0, Lorg/apache/poi/xslf/draw/geom/XSLFAdjustPoint;

    iget-object p0, p0, Lorg/apache/poi/xslf/draw/geom/XSLFQuadTo;->bezier:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DQuadBezierTo;

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DQuadBezierTo;->getPtArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xslf/draw/geom/XSLFAdjustPoint;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;)V

    return-object v0
.end method

.method public getPt2()Lorg/apache/poi/sl/draw/geom/AdjustPointIf;
    .locals 2

    new-instance v0, Lorg/apache/poi/xslf/draw/geom/XSLFAdjustPoint;

    iget-object p0, p0, Lorg/apache/poi/xslf/draw/geom/XSLFQuadTo;->bezier:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DQuadBezierTo;

    const/4 v1, 0x1

    invoke-interface {p0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DQuadBezierTo;->getPtArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xslf/draw/geom/XSLFAdjustPoint;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;)V

    return-object v0
.end method

.method public setPt1(Lorg/apache/poi/sl/draw/geom/AdjustPointIf;)V
    .locals 0

    return-void
.end method

.method public setPt2(Lorg/apache/poi/sl/draw/geom/AdjustPointIf;)V
    .locals 0

    return-void
.end method
