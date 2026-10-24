.class public Lorg/apache/poi/xddf/usermodel/chart/XDDFView3D;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final view3D:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTView3D;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTView3D;)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFView3D;->view3D:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTView3D;

    return-void
.end method


# virtual methods
.method public getDepthPercent()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFView3D;->view3D:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTView3D;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTView3D;->isSetDepthPercent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFView3D;->view3D:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTView3D;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTView3D;->getDepthPercent()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDepthPercent;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDepthPercent;->xgetVal()Lorg/openxmlformats/schemas/drawingml/x2006/chart/STDepthPercent;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parsePercent(Lorg/openxmlformats/schemas/drawingml/x2006/chart/STDepthPercent;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getHPercent()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFView3D;->view3D:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTView3D;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTView3D;->isSetHPercent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFView3D;->view3D:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTView3D;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTView3D;->getHPercent()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTHPercent;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTHPercent;->xgetVal()Lorg/openxmlformats/schemas/drawingml/x2006/chart/STHPercent;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parsePercent(Lorg/openxmlformats/schemas/drawingml/x2006/chart/STHPercent;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getPerspectiveAngle()Ljava/lang/Short;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFView3D;->view3D:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTView3D;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTView3D;->isSetPerspective()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFView3D;->view3D:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTView3D;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTView3D;->getPerspective()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPerspective;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPerspective;->getVal()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getXRotationAngle()Ljava/lang/Byte;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFView3D;->view3D:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTView3D;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTView3D;->isSetRotX()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFView3D;->view3D:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTView3D;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTView3D;->getRotX()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTRotX;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTRotX;->getVal()B

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getYRotationAngle()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFView3D;->view3D:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTView3D;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTView3D;->isSetRotY()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFView3D;->view3D:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTView3D;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTView3D;->getRotY()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTRotY;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTRotY;->getVal()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public hasRightAngleAxes()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFView3D;->view3D:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTView3D;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTView3D;->isSetRAngAx()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFView3D;->view3D:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTView3D;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTView3D;->getRAngAx()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;->getVal()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public setDepthPercent(Ljava/lang/Integer;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFView3D;->view3D:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTView3D;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTView3D;->isSetDepthPercent()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFView3D;->view3D:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTView3D;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTView3D;->unsetDepthPercent()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x14

    if-lt v0, v1, :cond_3

    const/16 v0, 0x7d0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFView3D;->view3D:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTView3D;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTView3D;->isSetDepthPercent()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFView3D;->view3D:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTView3D;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTView3D;->getDepthPercent()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDepthPercent;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDepthPercent;->setVal(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFView3D;->view3D:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTView3D;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTView3D;->addNewDepthPercent()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDepthPercent;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDepthPercent;->setVal(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "percent must be between 20 and 2000"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setHPercent(Ljava/lang/Integer;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFView3D;->view3D:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTView3D;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTView3D;->isSetHPercent()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFView3D;->view3D:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTView3D;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTView3D;->unsetHPercent()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_3

    const/16 v0, 0x1f4

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFView3D;->view3D:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTView3D;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTView3D;->isSetHPercent()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFView3D;->view3D:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTView3D;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTView3D;->getHPercent()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTHPercent;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTHPercent;->setVal(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFView3D;->view3D:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTView3D;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTView3D;->addNewHPercent()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTHPercent;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTHPercent;->setVal(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "percent must be between 5 and 500"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setPerspectiveAngle(Ljava/lang/Short;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFView3D;->view3D:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTView3D;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTView3D;->isSetPerspective()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFView3D;->view3D:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTView3D;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTView3D;->unsetPerspective()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result v0

    if-ltz v0, :cond_3

    const/16 v0, 0xf0

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFView3D;->view3D:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTView3D;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTView3D;->isSetPerspective()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFView3D;->view3D:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTView3D;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTView3D;->getPerspective()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPerspective;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPerspective;->setVal(S)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFView3D;->view3D:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTView3D;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTView3D;->addNewPerspective()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPerspective;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPerspective;->setVal(S)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "perspective must be between 0 and 240"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setRightAngleAxes(Ljava/lang/Boolean;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFView3D;->view3D:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTView3D;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTView3D;->isSetRAngAx()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFView3D;->view3D:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTView3D;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTView3D;->unsetRAngAx()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFView3D;->view3D:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTView3D;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTView3D;->isSetRAngAx()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFView3D;->view3D:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTView3D;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTView3D;->getRAngAx()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;->setVal(Z)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFView3D;->view3D:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTView3D;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTView3D;->addNewRAngAx()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;->setVal(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setXRotationAngle(Ljava/lang/Byte;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFView3D;->view3D:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTView3D;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTView3D;->isSetRotX()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFView3D;->view3D:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTView3D;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTView3D;->unsetRotX()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    const/16 v1, -0x5a

    if-lt v0, v1, :cond_3

    const/16 v0, 0x5a

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFView3D;->view3D:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTView3D;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTView3D;->isSetRotX()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFView3D;->view3D:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTView3D;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTView3D;->getRotX()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTRotX;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTRotX;->setVal(B)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFView3D;->view3D:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTView3D;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTView3D;->addNewRotX()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTRotX;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTRotX;->setVal(B)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "rotation must be between -90 and 90"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setYRotationAngle(Ljava/lang/Integer;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFView3D;->view3D:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTView3D;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTView3D;->isSetRotY()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFView3D;->view3D:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTView3D;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTView3D;->unsetRotY()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_3

    const/16 v0, 0x168

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFView3D;->view3D:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTView3D;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTView3D;->isSetRotY()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFView3D;->view3D:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTView3D;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTView3D;->getRotY()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTRotY;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTRotY;->setVal(I)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFView3D;->view3D:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTView3D;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTView3D;->addNewRotY()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTRotY;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTRotY;->setVal(I)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "rotation must be between 0 and 360"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
