.class public Lorg/apache/poi/xddf/usermodel/XDDFLineEndProperties;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineEndProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;

    return-void
.end method


# virtual methods
.method public getLength()Lorg/apache/poi/xddf/usermodel/LineEndLength;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineEndProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->getLen()Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndLength$Enum;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/xddf/usermodel/LineEndLength;->valueOf(Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndLength$Enum;)Lorg/apache/poi/xddf/usermodel/LineEndLength;

    move-result-object p0

    return-object p0
.end method

.method public getType()Lorg/apache/poi/xddf/usermodel/LineEndType;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineEndProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->getType()Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndType$Enum;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/xddf/usermodel/LineEndType;->valueOf(Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndType$Enum;)Lorg/apache/poi/xddf/usermodel/LineEndType;

    move-result-object p0

    return-object p0
.end method

.method public getWidth()Lorg/apache/poi/xddf/usermodel/LineEndWidth;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineEndProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->getW()Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndWidth$Enum;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/xddf/usermodel/LineEndWidth;->valueOf(Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndWidth$Enum;)Lorg/apache/poi/xddf/usermodel/LineEndWidth;

    move-result-object p0

    return-object p0
.end method

.method public getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineEndProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;

    return-object p0
.end method

.method public setLength(Lorg/apache/poi/xddf/usermodel/LineEndLength;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineEndProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;

    iget-object p1, p1, Lorg/apache/poi/xddf/usermodel/LineEndLength;->underlying:Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndLength$Enum;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->setLen(Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndLength$Enum;)V

    return-void
.end method

.method public setType(Lorg/apache/poi/xddf/usermodel/LineEndType;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineEndProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;

    iget-object p1, p1, Lorg/apache/poi/xddf/usermodel/LineEndType;->underlying:Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndType$Enum;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->setType(Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndType$Enum;)V

    return-void
.end method

.method public setWidth(Lorg/apache/poi/xddf/usermodel/LineEndWidth;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineEndProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;

    iget-object p1, p1, Lorg/apache/poi/xddf/usermodel/LineEndWidth;->underlying:Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndWidth$Enum;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->setW(Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndWidth$Enum;)V

    return-void
.end method
