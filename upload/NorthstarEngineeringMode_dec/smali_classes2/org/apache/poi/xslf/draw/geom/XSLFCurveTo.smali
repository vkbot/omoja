.class public Lorg/apache/poi/xslf/draw/geom/XSLFCurveTo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/draw/geom/CurveToCommandIf;


# instance fields
.field private final bezier:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DCubicBezierTo;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DCubicBezierTo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xslf/draw/geom/XSLFCurveTo;->bezier:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DCubicBezierTo;

    return-void
.end method

.method private getOrCreate(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;
    .locals 2

    add-int/lit8 v0, p1, 0x1

    iget-object v1, p0, Lorg/apache/poi/xslf/draw/geom/XSLFCurveTo;->bezier:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DCubicBezierTo;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DCubicBezierTo;->sizeOfPtArray()I

    move-result v1

    sub-int/2addr v0, v1

    :goto_0
    if-lez v0, :cond_0

    iget-object v1, p0, Lorg/apache/poi/xslf/draw/geom/XSLFCurveTo;->bezier:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DCubicBezierTo;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DCubicBezierTo;->addNewPt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xslf/draw/geom/XSLFCurveTo;->bezier:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DCubicBezierTo;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DCubicBezierTo;->getPtArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getPt1()Lorg/apache/poi/sl/draw/geom/AdjustPointIf;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xslf/draw/geom/XSLFCurveTo;->getPt1()Lorg/apache/poi/xslf/draw/geom/XSLFAdjustPoint;

    move-result-object p0

    return-object p0
.end method

.method public getPt1()Lorg/apache/poi/xslf/draw/geom/XSLFAdjustPoint;
    .locals 2

    .line 2
    new-instance v0, Lorg/apache/poi/xslf/draw/geom/XSLFAdjustPoint;

    iget-object p0, p0, Lorg/apache/poi/xslf/draw/geom/XSLFCurveTo;->bezier:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DCubicBezierTo;

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DCubicBezierTo;->getPtArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xslf/draw/geom/XSLFAdjustPoint;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;)V

    return-object v0
.end method

.method public bridge synthetic getPt2()Lorg/apache/poi/sl/draw/geom/AdjustPointIf;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xslf/draw/geom/XSLFCurveTo;->getPt2()Lorg/apache/poi/xslf/draw/geom/XSLFAdjustPoint;

    move-result-object p0

    return-object p0
.end method

.method public getPt2()Lorg/apache/poi/xslf/draw/geom/XSLFAdjustPoint;
    .locals 2

    .line 2
    new-instance v0, Lorg/apache/poi/xslf/draw/geom/XSLFAdjustPoint;

    iget-object p0, p0, Lorg/apache/poi/xslf/draw/geom/XSLFCurveTo;->bezier:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DCubicBezierTo;

    const/4 v1, 0x1

    invoke-interface {p0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DCubicBezierTo;->getPtArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xslf/draw/geom/XSLFAdjustPoint;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;)V

    return-object v0
.end method

.method public bridge synthetic getPt3()Lorg/apache/poi/sl/draw/geom/AdjustPointIf;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xslf/draw/geom/XSLFCurveTo;->getPt3()Lorg/apache/poi/xslf/draw/geom/XSLFAdjustPoint;

    move-result-object p0

    return-object p0
.end method

.method public getPt3()Lorg/apache/poi/xslf/draw/geom/XSLFAdjustPoint;
    .locals 2

    .line 2
    new-instance v0, Lorg/apache/poi/xslf/draw/geom/XSLFAdjustPoint;

    iget-object p0, p0, Lorg/apache/poi/xslf/draw/geom/XSLFCurveTo;->bezier:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DCubicBezierTo;

    const/4 v1, 0x2

    invoke-interface {p0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DCubicBezierTo;->getPtArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xslf/draw/geom/XSLFAdjustPoint;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;)V

    return-object v0
.end method

.method public setPt1(Lorg/apache/poi/sl/draw/geom/AdjustPointIf;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/draw/geom/XSLFCurveTo;->getOrCreate(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;

    move-result-object p0

    invoke-interface {p1}, Lorg/apache/poi/sl/draw/geom/AdjustPointIf;->getX()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->setX(Ljava/lang/Object;)V

    invoke-interface {p1}, Lorg/apache/poi/sl/draw/geom/AdjustPointIf;->getY()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->setY(Ljava/lang/Object;)V

    return-void
.end method

.method public setPt2(Lorg/apache/poi/sl/draw/geom/AdjustPointIf;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/draw/geom/XSLFCurveTo;->getOrCreate(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;

    move-result-object p0

    invoke-interface {p1}, Lorg/apache/poi/sl/draw/geom/AdjustPointIf;->getX()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->setX(Ljava/lang/Object;)V

    invoke-interface {p1}, Lorg/apache/poi/sl/draw/geom/AdjustPointIf;->getY()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->setY(Ljava/lang/Object;)V

    return-void
.end method

.method public setPt3(Lorg/apache/poi/sl/draw/geom/AdjustPointIf;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/draw/geom/XSLFCurveTo;->getOrCreate(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;

    move-result-object p0

    invoke-interface {p1}, Lorg/apache/poi/sl/draw/geom/AdjustPointIf;->getX()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->setX(Ljava/lang/Object;)V

    invoke-interface {p1}, Lorg/apache/poi/sl/draw/geom/AdjustPointIf;->getY()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->setY(Ljava/lang/Object;)V

    return-void
.end method
