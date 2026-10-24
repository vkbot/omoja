.class public Lorg/apache/poi/xddf/usermodel/XDDFPathShadeProperties;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPathShadeProperties;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPathShadeProperties;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPathShadeProperties;

    invoke-direct {p0, v0}, Lorg/apache/poi/xddf/usermodel/XDDFPathShadeProperties;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPathShadeProperties;)V

    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPathShadeProperties;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xddf/usermodel/XDDFPathShadeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPathShadeProperties;

    return-void
.end method


# virtual methods
.method public getFillToRectangle()Lorg/apache/poi/xddf/usermodel/XDDFRelativeRectangle;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFPathShadeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPathShadeProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPathShadeProperties;->isSetFillToRect()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFRelativeRectangle;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFPathShadeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPathShadeProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPathShadeProperties;->getFillToRect()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRelativeRect;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/XDDFRelativeRectangle;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRelativeRect;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPathShadeType()Lorg/apache/poi/xddf/usermodel/PathShadeType;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFPathShadeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPathShadeProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPathShadeProperties;->isSetPath()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFPathShadeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPathShadeProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPathShadeProperties;->getPath()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathShadeType$Enum;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/xddf/usermodel/PathShadeType;->valueOf(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathShadeType$Enum;)Lorg/apache/poi/xddf/usermodel/PathShadeType;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPathShadeProperties;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFPathShadeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPathShadeProperties;

    return-object p0
.end method

.method public setFillToRectangle(Lorg/apache/poi/xddf/usermodel/XDDFRelativeRectangle;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/XDDFPathShadeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPathShadeProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPathShadeProperties;->isSetFillToRect()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFPathShadeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPathShadeProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPathShadeProperties;->unsetFillToRect()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFPathShadeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPathShadeProperties;

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/XDDFRelativeRectangle;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRelativeRect;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPathShadeProperties;->setFillToRect(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRelativeRect;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setPathShadeType(Lorg/apache/poi/xddf/usermodel/PathShadeType;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/XDDFPathShadeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPathShadeProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPathShadeProperties;->isSetPath()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFPathShadeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPathShadeProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPathShadeProperties;->unsetPath()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFPathShadeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPathShadeProperties;

    iget-object p1, p1, Lorg/apache/poi/xddf/usermodel/PathShadeType;->underlying:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathShadeType$Enum;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPathShadeProperties;->setPath(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathShadeType$Enum;)V

    :cond_1
    :goto_0
    return-void
.end method
