.class public Lorg/apache/poi/xddf/usermodel/XDDFLinearShadeProperties;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLinearShadeProperties;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLinearShadeProperties;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xddf/usermodel/XDDFLinearShadeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLinearShadeProperties;

    return-void
.end method


# virtual methods
.method public getAngle()Ljava/lang/Double;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLinearShadeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLinearShadeProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLinearShadeProperties;->isSetAng()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLinearShadeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLinearShadeProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLinearShadeProperties;->getAng()I

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/xddf/usermodel/Angles;->attributeToDegrees(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLinearShadeProperties;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLinearShadeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLinearShadeProperties;

    return-object p0
.end method

.method public isScaled()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLinearShadeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLinearShadeProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLinearShadeProperties;->isSetScaled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLinearShadeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLinearShadeProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLinearShadeProperties;->getScaled()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setAngle(Ljava/lang/Double;)V
    .locals 4

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/XDDFLinearShadeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLinearShadeProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLinearShadeProperties;->isSetAng()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLinearShadeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLinearShadeProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLinearShadeProperties;->unsetAng()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_2

    const-wide v0, 0x4076800000000000L    # 360.0

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-lez v0, :cond_2

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLinearShadeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLinearShadeProperties;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/xddf/usermodel/Angles;->degreesToAttribute(D)I

    move-result p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLinearShadeProperties;->setAng(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "angle must be in the range [0, 360)."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setScaled(Ljava/lang/Boolean;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/XDDFLinearShadeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLinearShadeProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLinearShadeProperties;->isSetScaled()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLinearShadeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLinearShadeProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLinearShadeProperties;->unsetScaled()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLinearShadeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLinearShadeProperties;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLinearShadeProperties;->setScaled(Z)V

    :cond_1
    :goto_0
    return-void
.end method
