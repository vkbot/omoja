.class public Lorg/apache/poi/xddf/usermodel/text/XDDFBulletStyleAutoNumbered;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xddf/usermodel/text/XDDFBulletStyle;


# instance fields
.field private style:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextAutonumberBullet;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextAutonumberBullet;)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFBulletStyleAutoNumbered;->style:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextAutonumberBullet;

    return-void
.end method


# virtual methods
.method public getStartAt()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFBulletStyleAutoNumbered;->style:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextAutonumberBullet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextAutonumberBullet;->isSetStartAt()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFBulletStyleAutoNumbered;->style:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextAutonumberBullet;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextAutonumberBullet;->getStartAt()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public getType()Lorg/apache/poi/xddf/usermodel/text/AutonumberScheme;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFBulletStyleAutoNumbered;->style:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextAutonumberBullet;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextAutonumberBullet;->getType()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAutonumberScheme$Enum;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/xddf/usermodel/text/AutonumberScheme;->valueOf(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAutonumberScheme$Enum;)Lorg/apache/poi/xddf/usermodel/text/AutonumberScheme;

    move-result-object p0

    return-object p0
.end method

.method public getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextAutonumberBullet;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFBulletStyleAutoNumbered;->style:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextAutonumberBullet;

    return-object p0
.end method

.method public setStartAt(Ljava/lang/Integer;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFBulletStyleAutoNumbered;->style:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextAutonumberBullet;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextAutonumberBullet;->isSetStartAt()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFBulletStyleAutoNumbered;->style:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextAutonumberBullet;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextAutonumberBullet;->unsetStartAt()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFBulletStyleAutoNumbered;->style:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextAutonumberBullet;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextAutonumberBullet;->setStartAt(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setType(Lorg/apache/poi/xddf/usermodel/text/AutonumberScheme;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFBulletStyleAutoNumbered;->style:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextAutonumberBullet;

    iget-object p1, p1, Lorg/apache/poi/xddf/usermodel/text/AutonumberScheme;->underlying:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAutonumberScheme$Enum;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextAutonumberBullet;->setType(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAutonumberScheme$Enum;)V

    return-void
.end method
