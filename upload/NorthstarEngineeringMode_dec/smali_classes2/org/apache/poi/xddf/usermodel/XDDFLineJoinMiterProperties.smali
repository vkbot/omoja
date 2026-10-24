.class public Lorg/apache/poi/xddf/usermodel/XDDFLineJoinMiterProperties;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xddf/usermodel/XDDFLineJoinProperties;


# instance fields
.field private join:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineJoinMiterProperties;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineJoinMiterProperties;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineJoinMiterProperties;

    invoke-direct {p0, v0}, Lorg/apache/poi/xddf/usermodel/XDDFLineJoinMiterProperties;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineJoinMiterProperties;)V

    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineJoinMiterProperties;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineJoinMiterProperties;->join:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineJoinMiterProperties;

    return-void
.end method


# virtual methods
.method public getLimit()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineJoinMiterProperties;->join:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineJoinMiterProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineJoinMiterProperties;->isSetLim()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineJoinMiterProperties;->join:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineJoinMiterProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineJoinMiterProperties;->xgetLim()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPositivePercentage;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parsePercent(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPositivePercentage;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineJoinMiterProperties;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineJoinMiterProperties;->join:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineJoinMiterProperties;

    return-object p0
.end method

.method public setLimit(Ljava/lang/Integer;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineJoinMiterProperties;->join:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineJoinMiterProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineJoinMiterProperties;->isSetLim()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineJoinMiterProperties;->join:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineJoinMiterProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineJoinMiterProperties;->unsetLim()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineJoinMiterProperties;->join:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineJoinMiterProperties;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineJoinMiterProperties;->setLim(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
