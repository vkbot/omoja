.class public Lorg/apache/poi/xddf/usermodel/XDDFTransform2D;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private transform:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xddf/usermodel/XDDFTransform2D;->transform:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    return-void
.end method


# virtual methods
.method public getExtension()Lorg/apache/poi/xddf/usermodel/XDDFPositiveSize2D;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFTransform2D;->transform:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->isSetExt()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFPositiveSize2D;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFTransform2D;->transform:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->getExt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/XDDFPositiveSize2D;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getFlipHorizontal()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFTransform2D;->transform:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->isSetFlipH()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFTransform2D;->transform:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->getFlipH()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getFlipVertical()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFTransform2D;->transform:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->isSetFlipV()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFTransform2D;->transform:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->getFlipV()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getOffset()Lorg/apache/poi/xddf/usermodel/XDDFPoint2D;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFTransform2D;->transform:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->isSetOff()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFPoint2D;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFTransform2D;->transform:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->getOff()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/XDDFPoint2D;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRotation()Ljava/lang/Double;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFTransform2D;->transform:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->isSetRot()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFTransform2D;->transform:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->getRot()I

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

.method public getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFTransform2D;->transform:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    return-object p0
.end method

.method public setExtension(Lorg/apache/poi/xddf/usermodel/XDDFPositiveSize2D;)V
    .locals 2

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/XDDFTransform2D;->transform:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->isSetExt()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFTransform2D;->transform:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->unsetExt()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFTransform2D;->transform:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->isSetExt()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFTransform2D;->transform:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->getExt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;

    move-result-object p0

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFTransform2D;->transform:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->addNewExt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;

    move-result-object p0

    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/XDDFPositiveSize2D;->getX()J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->setCx(J)V

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/XDDFPositiveSize2D;->getY()J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->setCy(J)V

    return-void
.end method

.method public setFlipHorizontal(Ljava/lang/Boolean;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/XDDFTransform2D;->transform:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->isSetFlipH()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFTransform2D;->transform:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->unsetFlipH()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFTransform2D;->transform:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->setFlipH(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setFlipVertical(Ljava/lang/Boolean;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/XDDFTransform2D;->transform:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->isSetFlipV()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFTransform2D;->transform:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->unsetFlipV()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFTransform2D;->transform:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->setFlipV(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setOffset(Lorg/apache/poi/xddf/usermodel/XDDFPoint2D;)V
    .locals 2

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/XDDFTransform2D;->transform:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->isSetOff()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFTransform2D;->transform:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->unsetOff()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFTransform2D;->transform:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->isSetOff()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFTransform2D;->transform:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->getOff()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;

    move-result-object p0

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFTransform2D;->transform:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->addNewOff()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;

    move-result-object p0

    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/XDDFPoint2D;->getX()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;->setX(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/XDDFPoint2D;->getY()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;->setY(Ljava/lang/Object;)V

    return-void
.end method

.method public setRotation(Ljava/lang/Double;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/XDDFTransform2D;->transform:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->isSetRot()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFTransform2D;->transform:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->unsetRot()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFTransform2D;->transform:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/xddf/usermodel/Angles;->degreesToAttribute(D)I

    move-result p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->setRot(I)V

    :cond_1
    :goto_0
    return-void
.end method
