.class public Lorg/apache/poi/xddf/usermodel/XDDFStretchInfoProperties;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStretchInfoProperties;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStretchInfoProperties;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xddf/usermodel/XDDFStretchInfoProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStretchInfoProperties;

    return-void
.end method


# virtual methods
.method public getFillRectangle()Lorg/apache/poi/xddf/usermodel/XDDFRelativeRectangle;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFStretchInfoProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStretchInfoProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStretchInfoProperties;->isSetFillRect()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFRelativeRectangle;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFStretchInfoProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStretchInfoProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStretchInfoProperties;->getFillRect()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRelativeRect;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/XDDFRelativeRectangle;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRelativeRect;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStretchInfoProperties;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFStretchInfoProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStretchInfoProperties;

    return-object p0
.end method

.method public setFillRectangle(Lorg/apache/poi/xddf/usermodel/XDDFRelativeRectangle;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/XDDFStretchInfoProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStretchInfoProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStretchInfoProperties;->isSetFillRect()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFStretchInfoProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStretchInfoProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStretchInfoProperties;->unsetFillRect()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFStretchInfoProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStretchInfoProperties;

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/XDDFRelativeRectangle;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRelativeRect;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStretchInfoProperties;->setFillRect(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRelativeRect;)V

    :cond_1
    :goto_0
    return-void
.end method
