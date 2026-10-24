.class public Lorg/apache/poi/xddf/usermodel/XDDFColorRgbBinary;
.super Lorg/apache/poi/xddf/usermodel/XDDFColor;
.source "SourceFile"


# instance fields
.field private color:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;)V
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xddf/usermodel/XDDFColorRgbBinary;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;)V

    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 4
    invoke-direct {p0, p2}, Lorg/apache/poi/xddf/usermodel/XDDFColor;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;)V

    iput-object p1, p0, Lorg/apache/poi/xddf/usermodel/XDDFColorRgbBinary;->color:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .line 1
    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;

    sget-object v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/xddf/usermodel/XDDFColorRgbBinary;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;)V

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/poi/xddf/usermodel/XDDFColorRgbBinary;->setValue([B)V

    return-void
.end method


# virtual methods
.method public getValue()[B
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFColorRgbBinary;->color:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;->getVal()[B

    move-result-object p0

    return-object p0
.end method

.method public getXmlObject()Lorg/apache/xmlbeans/XmlObject;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFColorRgbBinary;->color:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;

    return-object p0
.end method

.method public setValue([B)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFColorRgbBinary;->color:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;->setVal([B)V

    return-void
.end method

.method public toRGBHex()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFColorRgbBinary;->color:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;->getVal()[B

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v3, p0, v2

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v5, "%02X"

    invoke-static {v4, v5, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
