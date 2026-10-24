.class Lorg/apache/poi/xslf/usermodel/XSLFColor$XSLFColorStyle;
.super Lorg/apache/poi/sl/usermodel/AbstractColorStyle;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xslf/usermodel/XSLFColor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XSLFColorStyle"
.end annotation


# instance fields
.field private final color:Ljava/awt/Color;

.field private final phClr:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;

.field private final xmlObject:Lorg/apache/xmlbeans/XmlObject;


# direct methods
.method public constructor <init>(Lorg/apache/xmlbeans/XmlObject;Ljava/awt/Color;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/sl/usermodel/AbstractColorStyle;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFColor$XSLFColorStyle;->xmlObject:Lorg/apache/xmlbeans/XmlObject;

    iput-object p2, p0, Lorg/apache/poi/xslf/usermodel/XSLFColor$XSLFColorStyle;->color:Ljava/awt/Color;

    iput-object p3, p0, Lorg/apache/poi/xslf/usermodel/XSLFColor$XSLFColorStyle;->phClr:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;

    return-void
.end method


# virtual methods
.method public getAlpha()I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFColor$XSLFColorStyle;->phClr:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFColor$XSLFColorStyle;->xmlObject:Lorg/apache/xmlbeans/XmlObject;

    const-string v1, "alpha"

    invoke-static {v0, p0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->access$000(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;Lorg/apache/xmlbeans/XmlObject;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getColor()Ljava/awt/Color;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFColor$XSLFColorStyle;->color:Ljava/awt/Color;

    return-object p0
.end method

.method public getHueMod()I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFColor$XSLFColorStyle;->phClr:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFColor$XSLFColorStyle;->xmlObject:Lorg/apache/xmlbeans/XmlObject;

    const-string v1, "hueMod"

    invoke-static {v0, p0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->access$000(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;Lorg/apache/xmlbeans/XmlObject;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getHueOff()I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFColor$XSLFColorStyle;->phClr:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFColor$XSLFColorStyle;->xmlObject:Lorg/apache/xmlbeans/XmlObject;

    const-string v1, "hueOff"

    invoke-static {v0, p0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->access$000(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;Lorg/apache/xmlbeans/XmlObject;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getLumMod()I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFColor$XSLFColorStyle;->phClr:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFColor$XSLFColorStyle;->xmlObject:Lorg/apache/xmlbeans/XmlObject;

    const-string v1, "lumMod"

    invoke-static {v0, p0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->access$000(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;Lorg/apache/xmlbeans/XmlObject;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getLumOff()I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFColor$XSLFColorStyle;->phClr:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFColor$XSLFColorStyle;->xmlObject:Lorg/apache/xmlbeans/XmlObject;

    const-string v1, "lumOff"

    invoke-static {v0, p0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->access$000(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;Lorg/apache/xmlbeans/XmlObject;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getSatMod()I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFColor$XSLFColorStyle;->phClr:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFColor$XSLFColorStyle;->xmlObject:Lorg/apache/xmlbeans/XmlObject;

    const-string v1, "satMod"

    invoke-static {v0, p0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->access$000(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;Lorg/apache/xmlbeans/XmlObject;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getSatOff()I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFColor$XSLFColorStyle;->phClr:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFColor$XSLFColorStyle;->xmlObject:Lorg/apache/xmlbeans/XmlObject;

    const-string v1, "satOff"

    invoke-static {v0, p0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->access$000(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;Lorg/apache/xmlbeans/XmlObject;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getShade()I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFColor$XSLFColorStyle;->phClr:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFColor$XSLFColorStyle;->xmlObject:Lorg/apache/xmlbeans/XmlObject;

    const-string v1, "shade"

    invoke-static {v0, p0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->access$000(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;Lorg/apache/xmlbeans/XmlObject;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getTint()I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFColor$XSLFColorStyle;->phClr:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFColor$XSLFColorStyle;->xmlObject:Lorg/apache/xmlbeans/XmlObject;

    const-string v1, "tint"

    invoke-static {v0, p0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->access$000(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;Lorg/apache/xmlbeans/XmlObject;Ljava/lang/String;)I

    move-result p0

    return p0
.end method
