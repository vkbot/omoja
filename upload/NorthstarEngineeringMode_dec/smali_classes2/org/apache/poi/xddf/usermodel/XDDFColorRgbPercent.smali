.class public Lorg/apache/poi/xddf/usermodel/XDDFColorRgbPercent;
.super Lorg/apache/poi/xddf/usermodel/XDDFColor;
.source "SourceFile"


# instance fields
.field private final color:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScRgbColor;


# direct methods
.method public constructor <init>(III)V
    .locals 2

    .line 1
    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScRgbColor;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScRgbColor;

    sget-object v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/xddf/usermodel/XDDFColorRgbPercent;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScRgbColor;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;)V

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/poi/xddf/usermodel/XDDFColorRgbPercent;->setRed(I)V

    .line 3
    invoke-virtual {p0, p2}, Lorg/apache/poi/xddf/usermodel/XDDFColorRgbPercent;->setGreen(I)V

    .line 4
    invoke-virtual {p0, p3}, Lorg/apache/poi/xddf/usermodel/XDDFColorRgbPercent;->setBlue(I)V

    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScRgbColor;)V
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xddf/usermodel/XDDFColorRgbPercent;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScRgbColor;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;)V

    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScRgbColor;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 6
    invoke-direct {p0, p2}, Lorg/apache/poi/xddf/usermodel/XDDFColor;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;)V

    iput-object p1, p0, Lorg/apache/poi/xddf/usermodel/XDDFColorRgbPercent;->color:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScRgbColor;

    return-void
.end method

.method private normalize(I)I
    .locals 0

    if-gez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const p0, 0x186a0

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    :goto_0
    return p0
.end method


# virtual methods
.method public getBlue()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFColorRgbPercent;->color:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScRgbColor;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScRgbColor;->xgetB()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parsePercent(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;)I

    move-result p0

    return p0
.end method

.method public getGreen()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFColorRgbPercent;->color:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScRgbColor;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScRgbColor;->xgetG()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parsePercent(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;)I

    move-result p0

    return p0
.end method

.method public getRed()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFColorRgbPercent;->color:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScRgbColor;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScRgbColor;->xgetR()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parsePercent(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;)I

    move-result p0

    return p0
.end method

.method public getXmlObject()Lorg/apache/xmlbeans/XmlObject;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFColorRgbPercent;->color:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScRgbColor;

    return-object p0
.end method

.method public setBlue(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFColorRgbPercent;->color:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScRgbColor;

    invoke-direct {p0, p1}, Lorg/apache/poi/xddf/usermodel/XDDFColorRgbPercent;->normalize(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScRgbColor;->setB(Ljava/lang/Object;)V

    return-void
.end method

.method public setGreen(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFColorRgbPercent;->color:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScRgbColor;

    invoke-direct {p0, p1}, Lorg/apache/poi/xddf/usermodel/XDDFColorRgbPercent;->normalize(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScRgbColor;->setG(Ljava/lang/Object;)V

    return-void
.end method

.method public setRed(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFColorRgbPercent;->color:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScRgbColor;

    invoke-direct {p0, p1}, Lorg/apache/poi/xddf/usermodel/XDDFColorRgbPercent;->normalize(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScRgbColor;->setR(Ljava/lang/Object;)V

    return-void
.end method

.method public toRGBHex()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x3

    new-array v1, v0, [Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;

    iget-object v2, p0, Lorg/apache/poi/xddf/usermodel/XDDFColorRgbPercent;->color:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScRgbColor;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScRgbColor;->xgetR()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/apache/poi/xddf/usermodel/XDDFColorRgbPercent;->color:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScRgbColor;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScRgbColor;->xgetG()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFColorRgbPercent;->color:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScRgbColor;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScRgbColor;->xgetB()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;

    move-result-object p0

    const/4 v2, 0x2

    aput-object p0, v1, v2

    move p0, v3

    :goto_0
    if-ge v3, v0, :cond_0

    aget-object v2, v1, v3

    shl-int/lit8 p0, p0, 0x8

    invoke-static {v2}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parsePercent(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;)I

    move-result v2

    mul-int/lit16 v2, v2, 0xff

    const v4, 0x186a0

    div-int/2addr v2, v4

    and-int/lit16 v2, v2, 0xff

    or-int/2addr p0, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "%06X"

    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
