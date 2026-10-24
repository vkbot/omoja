.class public Lorg/apache/poi/xslf/draw/geom/XSLFPath;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/draw/geom/PathIf;


# instance fields
.field private final pathXml:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xslf/draw/geom/XSLFPath;->pathXml:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;

    return-void
.end method


# virtual methods
.method public addCommand(Lorg/apache/poi/sl/draw/geom/PathCommand;)V
    .locals 0

    return-void
.end method

.method public getFill()Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/xslf/draw/geom/XSLFPath;->pathXml:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;->getFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathFillMode$Enum;

    move-result-object p0

    invoke-virtual {p0}, Li5/h0;->intValue()I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_4

    const/4 v0, 0x3

    if-eq p0, v0, :cond_3

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    sget-object p0, Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;->NONE:Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    return-object p0

    :cond_0
    sget-object p0, Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;->DARKEN_LESS:Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    return-object p0

    :cond_1
    sget-object p0, Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;->DARKEN:Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    return-object p0

    :cond_2
    sget-object p0, Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;->LIGHTEN_LESS:Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    return-object p0

    :cond_3
    sget-object p0, Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;->LIGHTEN:Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    return-object p0

    :cond_4
    sget-object p0, Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;->NORM:Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    return-object p0
.end method

.method public getH()J
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/xslf/draw/geom/XSLFPath;->pathXml:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;->getH()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPath(Lorg/apache/poi/sl/draw/geom/Context;)Ljava/awt/geom/Path2D$Double;
    .locals 3

    new-instance v0, Ljava/awt/geom/Path2D$Double;

    invoke-direct {v0}, Ljava/awt/geom/Path2D$Double;-><init>()V

    iget-object p0, p0, Lorg/apache/poi/xslf/draw/geom/XSLFPath;->pathXml:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;->newCursor()Li5/p0;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Li5/p0;->o0()Z

    move-result v1

    :goto_0
    if-eqz v1, :cond_6

    invoke-interface {p0}, Li5/p0;->Z()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    instance-of v2, v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DArcTo;

    if-eqz v2, :cond_0

    new-instance v2, Lorg/apache/poi/xslf/draw/geom/XSLFArcTo;

    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DArcTo;

    invoke-direct {v2, v1}, Lorg/apache/poi/xslf/draw/geom/XSLFArcTo;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DArcTo;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    instance-of v2, v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DCubicBezierTo;

    if-eqz v2, :cond_1

    new-instance v2, Lorg/apache/poi/xslf/draw/geom/XSLFCurveTo;

    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DCubicBezierTo;

    invoke-direct {v2, v1}, Lorg/apache/poi/xslf/draw/geom/XSLFCurveTo;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DCubicBezierTo;)V

    goto :goto_1

    :cond_1
    instance-of v2, v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DMoveTo;

    if-eqz v2, :cond_2

    new-instance v2, Lorg/apache/poi/xslf/draw/geom/XSLFMoveTo;

    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DMoveTo;

    invoke-direct {v2, v1}, Lorg/apache/poi/xslf/draw/geom/XSLFMoveTo;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DMoveTo;)V

    goto :goto_1

    :cond_2
    instance-of v2, v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DLineTo;

    if-eqz v2, :cond_3

    new-instance v2, Lorg/apache/poi/xslf/draw/geom/XSLFLineTo;

    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DLineTo;

    invoke-direct {v2, v1}, Lorg/apache/poi/xslf/draw/geom/XSLFLineTo;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DLineTo;)V

    goto :goto_1

    :cond_3
    instance-of v2, v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DQuadBezierTo;

    if-eqz v2, :cond_4

    new-instance v2, Lorg/apache/poi/xslf/draw/geom/XSLFQuadTo;

    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DQuadBezierTo;

    invoke-direct {v2, v1}, Lorg/apache/poi/xslf/draw/geom/XSLFQuadTo;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DQuadBezierTo;)V

    goto :goto_1

    :cond_4
    instance-of v1, v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DClose;

    if-eqz v1, :cond_5

    new-instance v2, Lorg/apache/poi/sl/draw/geom/ClosePathCommand;

    invoke-direct {v2}, Lorg/apache/poi/sl/draw/geom/ClosePathCommand;-><init>()V

    :goto_1
    invoke-interface {v2, v0, p1}, Lorg/apache/poi/sl/draw/geom/PathCommand;->execute(Ljava/awt/geom/Path2D$Double;Lorg/apache/poi/sl/draw/geom/Context;)V

    :cond_5
    invoke-interface {p0}, Li5/p0;->k0()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_6
    invoke-interface {p0}, Li5/p0;->close()V

    return-object v0

    :goto_2
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p0, :cond_7

    :try_start_2
    invoke-interface {p0}, Li5/p0;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_3
    throw v0
.end method

.method public getW()J
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/xslf/draw/geom/XSLFPath;->pathXml:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;->getW()J

    move-result-wide v0

    return-wide v0
.end method

.method public isExtrusionOk()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/draw/geom/XSLFPath;->pathXml:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;->getExtrusionOk()Z

    move-result p0

    return p0
.end method

.method public isFilled()Z
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/xslf/draw/geom/XSLFPath;->pathXml:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;->getFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathFillMode$Enum;

    move-result-object p0

    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathFillMode;->NONE:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathFillMode$Enum;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isStroked()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/draw/geom/XSLFPath;->pathXml:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;->getStroke()Z

    move-result p0

    return p0
.end method

.method public setExtrusionOk(Z)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/draw/geom/XSLFPath;->pathXml:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;->setExtrusionOk(Z)V

    return-void
.end method

.method public setFill(Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;)V
    .locals 1

    sget-object v0, Lorg/apache/poi/xslf/draw/geom/XSLFPath$1;->$SwitchMap$org$apache$poi$sl$usermodel$PaintStyle$PaintModifier:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    sget-object p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathFillMode;->NONE:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathFillMode$Enum;

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathFillMode;->DARKEN_LESS:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathFillMode$Enum;

    goto :goto_0

    :cond_1
    sget-object p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathFillMode;->DARKEN:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathFillMode$Enum;

    goto :goto_0

    :cond_2
    sget-object p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathFillMode;->LIGHTEN_LESS:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathFillMode$Enum;

    goto :goto_0

    :cond_3
    sget-object p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathFillMode;->LIGHTEN:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathFillMode$Enum;

    goto :goto_0

    :cond_4
    sget-object p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathFillMode;->NORM:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathFillMode$Enum;

    :goto_0
    iget-object p0, p0, Lorg/apache/poi/xslf/draw/geom/XSLFPath;->pathXml:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;->setFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathFillMode$Enum;)V

    return-void
.end method

.method public setH(J)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/draw/geom/XSLFPath;->pathXml:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;

    invoke-interface {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;->setH(J)V

    return-void
.end method

.method public setStroke(Z)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/draw/geom/XSLFPath;->pathXml:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;->setStroke(Z)V

    return-void
.end method

.method public setW(J)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/draw/geom/XSLFPath;->pathXml:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;

    invoke-interface {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;->setW(J)V

    return-void
.end method
