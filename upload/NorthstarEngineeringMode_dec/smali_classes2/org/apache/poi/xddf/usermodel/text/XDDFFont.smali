.class public Lorg/apache/poi/xddf/usermodel/text/XDDFFont;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private font:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

.field private group:Lorg/apache/poi/common/usermodel/fonts/FontGroup;


# direct methods
.method public constructor <init>(Lorg/apache/poi/common/usermodel/fonts/FontGroup;Ljava/lang/String;Ljava/lang/Byte;Ljava/lang/Byte;[B)V
    .locals 1

    .line 1
    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xddf/usermodel/text/XDDFFont;-><init>(Lorg/apache/poi/common/usermodel/fonts/FontGroup;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;)V

    if-nez p2, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFFont;->font:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    .line 2
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->getTypeface()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFFont;->font:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->getTypeface()Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFFont;->font:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    .line 3
    invoke-interface {p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->setTypeface(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFFont;->font:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    .line 4
    invoke-interface {p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->setTypeface(Ljava/lang/String;)V

    :cond_1
    :goto_0
    if-nez p3, :cond_2

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFFont;->font:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    .line 5
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->isSetCharset()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFFont;->font:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    .line 6
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->unsetCharset()V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFFont;->font:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    .line 7
    invoke-virtual {p3}, Ljava/lang/Byte;->byteValue()B

    move-result p2

    invoke-interface {p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->setCharset(B)V

    :cond_3
    :goto_1
    if-nez p4, :cond_4

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFFont;->font:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    .line 8
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->isSetPitchFamily()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFFont;->font:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    .line 9
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->unsetPitchFamily()V

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFFont;->font:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    .line 10
    invoke-virtual {p4}, Ljava/lang/Byte;->byteValue()B

    move-result p2

    invoke-interface {p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->setPitchFamily(B)V

    :cond_5
    :goto_2
    if-eqz p5, :cond_7

    .line 11
    array-length p1, p5

    if-nez p1, :cond_6

    goto :goto_3

    :cond_6
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFFont;->font:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    .line 12
    invoke-interface {p0, p5}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->setPanose([B)V

    goto :goto_4

    :cond_7
    :goto_3
    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFFont;->font:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    .line 13
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->isSetPanose()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFFont;->font:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    .line 14
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->unsetPanose()V

    :cond_8
    :goto_4
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/common/usermodel/fonts/FontGroup;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFFont;->group:Lorg/apache/poi/common/usermodel/fonts/FontGroup;

    iput-object p2, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFFont;->font:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    return-void
.end method

.method public static unsetFontForGroup(Lorg/apache/poi/common/usermodel/fonts/FontGroup;)Lorg/apache/poi/xddf/usermodel/text/XDDFFont;
    .locals 2

    new-instance v0, Lorg/apache/poi/xddf/usermodel/text/XDDFFont;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xddf/usermodel/text/XDDFFont;-><init>(Lorg/apache/poi/common/usermodel/fonts/FontGroup;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;)V

    return-object v0
.end method


# virtual methods
.method public getCharset()Ljava/lang/Byte;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFFont;->font:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->isSetCharset()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFFont;->font:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->getCharset()B

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getGroup()Lorg/apache/poi/common/usermodel/fonts/FontGroup;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFFont;->group:Lorg/apache/poi/common/usermodel/fonts/FontGroup;

    return-object p0
.end method

.method public getPanose()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFFont;->font:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->isSetPanose()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFFont;->font:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->getPanose()[B

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPitchFamily()Ljava/lang/Byte;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFFont;->font:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->isSetPitchFamily()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFFont;->font:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->getPitchFamily()B

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTypeface()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFFont;->font:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->getTypeface()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFFont;->font:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    return-object p0
.end method
