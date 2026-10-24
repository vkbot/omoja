.class public Lorg/apache/poi/xslf/usermodel/XSLFColor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/xslf/usermodel/XSLFColor$XSLFColorStyle;
    }
.end annotation

.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field private static final LOGGER:La5/d;

.field private static final VAL_ATTR:Ljavax/xml/namespace/QName;


# instance fields
.field private final _color:Ljava/awt/Color;

.field private final _phClr:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;

.field private final _sheet:Lorg/apache/poi/xslf/usermodel/XSLFSheet;

.field private final _xmlObject:Lorg/apache/xmlbeans/XmlObject;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/apache/poi/xslf/usermodel/XSLFColor;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFColor;->LOGGER:La5/d;

    new-instance v0, Ljavax/xml/namespace/QName;

    const-string v1, "val"

    invoke-direct {v0, v1}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFColor;->VAL_ATTR:Ljavax/xml/namespace/QName;

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xslf/usermodel/XSLFTheme;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFColor;->_xmlObject:Lorg/apache/xmlbeans/XmlObject;

    iput-object p3, p0, Lorg/apache/poi/xslf/usermodel/XSLFColor;->_phClr:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;

    iput-object p4, p0, Lorg/apache/poi/xslf/usermodel/XSLFColor;->_sheet:Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->toColor(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xslf/usermodel/XSLFTheme;)Ljava/awt/Color;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFColor;->_color:Ljava/awt/Color;

    return-void
.end method

.method public static synthetic access$000(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;Lorg/apache/xmlbeans/XmlObject;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->getRawValue(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;Lorg/apache/xmlbeans/XmlObject;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private getPercentageValue(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFColor;->_phClr:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFColor;->_xmlObject:Lorg/apache/xmlbeans/XmlObject;

    invoke-static {v0, p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->getRawValue(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;Lorg/apache/xmlbeans/XmlObject;Ljava/lang/String;)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    div-int/lit16 p0, p0, 0x3e8

    :goto_0
    return p0
.end method

.method private static getRawValue(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;Lorg/apache/xmlbeans/XmlObject;Ljava/lang/String;)I
    .locals 5

    const-string v0, "http://schemas.openxmlformats.org/drawingml/2006/main"

    const/4 v1, 0x2

    new-array v2, v1, [Lorg/apache/xmlbeans/XmlObject;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p0, v2, p1

    :goto_0
    if-ge v3, v1, :cond_4

    aget-object p0, v2, v3

    if-nez p0, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {p0}, Li5/j2;->newCursor()Li5/p0;

    move-result-object p0

    :try_start_0
    invoke-interface {p0, v0, p2}, Li5/p0;->I0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-interface {p0}, Li5/p0;->o0()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0, v0, p2}, Li5/p0;->I0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_2

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    :goto_1
    invoke-interface {p0}, Li5/p0;->close()V

    goto :goto_2

    :cond_2
    :try_start_1
    sget-object p1, Lorg/apache/poi/xslf/usermodel/XSLFColor;->VAL_ATTR:Ljavax/xml/namespace/QName;

    invoke-interface {p0, p1}, Li5/p0;->V(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v4, ""

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {p0}, Li5/p0;->close()V

    return p1

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :goto_3
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz p0, :cond_3

    :try_start_3
    invoke-interface {p0}, Li5/p0;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_4
    throw p2

    :cond_4
    const/4 p0, -0x1

    return p0
.end method

.method private static isInt(F)Z
    .locals 4

    float-to-double v0, p0

    const-wide v2, 0x406fe00000000000L    # 255.0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->rint(D)D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double p0, v0, v2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static nextObject(Lorg/apache/xmlbeans/XmlObject;Li5/p0;I)Lorg/apache/xmlbeans/XmlObject;
    .locals 1

    if-eqz p2, :cond_3

    const/4 p0, 0x1

    const/4 v0, 0x0

    if-eq p2, p0, :cond_1

    invoke-interface {p1}, Li5/p0;->k0()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p1}, Li5/p0;->Z()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    invoke-interface {p1}, Li5/p0;->o0()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-interface {p1}, Li5/p0;->Z()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    :cond_2
    return-object v0

    :cond_3
    return-object p0
.end method

.method private toColor(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xslf/usermodel/XSLFTheme;)Ljava/awt/Color;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFColor;->_phClr:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;

    if-nez p1, :cond_0

    goto :goto_0

    .line 24
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->toColor(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;Lorg/apache/poi/xslf/usermodel/XSLFTheme;)Ljava/awt/Color;

    move-result-object v0

    :goto_0
    return-object v0

    .line 25
    :cond_1
    invoke-interface {p1}, Li5/j2;->newCursor()Li5/p0;

    move-result-object v1

    const/4 v2, 0x0

    :goto_1
    if-nez v0, :cond_b

    .line 26
    :try_start_0
    invoke-static {p1, v1, v2}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->nextObject(Lorg/apache/xmlbeans/XmlObject;Li5/p0;I)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 27
    instance-of v4, v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHslColor;

    if-eqz v4, :cond_2

    .line 28
    check-cast v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHslColor;

    invoke-direct {p0, v3}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->toColor(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHslColor;)Ljava/awt/Color;

    move-result-object v0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 29
    :cond_2
    instance-of v4, v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetColor;

    if-eqz v4, :cond_3

    .line 30
    check-cast v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetColor;

    invoke-direct {p0, v3}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->toColor(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetColor;)Ljava/awt/Color;

    move-result-object v0

    goto :goto_2

    .line 31
    :cond_3
    instance-of v4, v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;

    if-eqz v4, :cond_4

    .line 32
    check-cast v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;

    invoke-direct {p0, v3, p2}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->toColor(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;Lorg/apache/poi/xslf/usermodel/XSLFTheme;)Ljava/awt/Color;

    move-result-object v0

    goto :goto_2

    .line 33
    :cond_4
    instance-of v4, v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScRgbColor;

    if-eqz v4, :cond_5

    .line 34
    check-cast v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScRgbColor;

    invoke-direct {p0, v3}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->toColor(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScRgbColor;)Ljava/awt/Color;

    move-result-object v0

    goto :goto_2

    .line 35
    :cond_5
    instance-of v4, v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;

    if-eqz v4, :cond_6

    .line 36
    check-cast v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;

    invoke-direct {p0, v3}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->toColor(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;)Ljava/awt/Color;

    move-result-object v0

    goto :goto_2

    .line 37
    :cond_6
    instance-of v4, v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSystemColor;

    if-eqz v4, :cond_7

    .line 38
    check-cast v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSystemColor;

    invoke-direct {p0, v3}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->toColor(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSystemColor;)Ljava/awt/Color;

    move-result-object v0

    goto :goto_2

    .line 39
    :cond_7
    instance-of v4, v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontReference;

    if-nez v4, :cond_9

    if-gtz v2, :cond_8

    goto :goto_2

    .line 40
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unexpected color choice: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_9
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 41
    :goto_3
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    if-eqz v1, :cond_a

    .line 42
    :try_start_2
    invoke-interface {v1}, Li5/p0;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception p2

    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_a
    :goto_4
    throw p1

    :cond_b
    if-eqz v1, :cond_c

    invoke-interface {v1}, Li5/p0;->close()V

    :cond_c
    return-object v0
.end method

.method private toColor(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHslColor;)Ljava/awt/Color;
    .locals 12

    .line 1
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHslColor;->getHue2()I

    move-result p0

    int-to-double v0, p0

    const-wide v2, 0x40ed4c0000000000L    # 60000.0

    div-double v4, v0, v2

    .line 2
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHslColor;->xgetSat2()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parsePercent(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;)I

    move-result p0

    int-to-double v0, p0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double v6, v0, v2

    .line 3
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHslColor;->xgetLum2()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parsePercent(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;)I

    move-result p0

    int-to-double p0, p0

    div-double v8, p0, v2

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    .line 4
    invoke-static/range {v4 .. v11}, Lorg/apache/poi/sl/draw/DrawPaint;->HSL2RGB(DDDD)Ljava/awt/Color;

    move-result-object p0

    return-object p0
.end method

.method private toColor(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetColor;)Ljava/awt/Color;
    .locals 0

    .line 5
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetColor;->getVal()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetColorVal$Enum;

    move-result-object p0

    invoke-virtual {p0}, Li5/h0;->toString()Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-static {p0}, Lorg/apache/poi/sl/usermodel/PresetColor;->valueOfOoxmlId(Ljava/lang/String;)Lorg/apache/poi/sl/usermodel/PresetColor;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 7
    iget-object p0, p0, Lorg/apache/poi/sl/usermodel/PresetColor;->color:Ljava/awt/Color;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private toColor(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;)Ljava/awt/Color;
    .locals 3

    .line 16
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;->getVal()[B

    move-result-object p0

    .line 17
    new-instance p1, Ljava/awt/Color;

    const/4 v0, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x2

    aget-byte p0, p0, v2

    and-int/lit16 p0, p0, 0xff

    invoke-direct {p1, v0, v1, p0}, Ljava/awt/Color;-><init>(III)V

    return-object p1
.end method

.method private toColor(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScRgbColor;)Ljava/awt/Color;
    .locals 5

    const/4 p0, 0x3

    new-array p0, p0, [D

    .line 12
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScRgbColor;->xgetR()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parsePercent(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;)I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x40f86a0000000000L    # 100000.0

    div-double/2addr v0, v2

    const/4 v4, 0x0

    aput-wide v0, p0, v4

    .line 13
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScRgbColor;->xgetG()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parsePercent(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;)I

    move-result v0

    int-to-double v0, v0

    div-double/2addr v0, v2

    const/4 v4, 0x1

    aput-wide v0, p0, v4

    .line 14
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScRgbColor;->xgetB()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parsePercent(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;)I

    move-result p1

    int-to-double v0, p1

    div-double/2addr v0, v2

    const/4 p1, 0x2

    aput-wide v0, p0, p1

    .line 15
    invoke-static {p0}, Lorg/apache/poi/sl/draw/DrawPaint;->SCRGB2RGB([D)Ljava/awt/Color;

    move-result-object p0

    return-object p0
.end method

.method private toColor(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;Lorg/apache/poi/xslf/usermodel/XSLFTheme;)Ljava/awt/Color;
    .locals 2

    .line 8
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;->getVal()Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;

    move-result-object p1

    invoke-virtual {p1}, Li5/h0;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFColor;->_phClr:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;

    if-eqz v0, :cond_0

    .line 9
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;->getVal()Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;

    move-result-object p1

    invoke-virtual {p1}, Li5/h0;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    const/4 v0, 0x0

    if-nez p2, :cond_1

    move-object p1, v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFColor;->_sheet:Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    .line 10
    invoke-virtual {v1, p1}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->mapSchemeColor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/apache/poi/xslf/usermodel/XSLFTheme;->getCTColor(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    .line 11
    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->toColor(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xslf/usermodel/XSLFTheme;)Ljava/awt/Color;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method private toColor(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSystemColor;)Ljava/awt/Color;
    .locals 3

    .line 18
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSystemColor;->isSetLastClr()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 19
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSystemColor;->getLastClr()[B

    move-result-object p0

    .line 20
    new-instance p1, Ljava/awt/Color;

    const/4 v0, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x2

    aget-byte p0, p0, v2

    and-int/lit16 p0, p0, 0xff

    invoke-direct {p1, v0, v1, p0}, Ljava/awt/Color;-><init>(III)V

    return-object p1

    .line 21
    :cond_0
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSystemColor;->getVal()Lorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal$Enum;

    move-result-object p0

    invoke-virtual {p0}, Li5/h0;->toString()Ljava/lang/String;

    move-result-object p0

    .line 22
    invoke-static {p0}, Lorg/apache/poi/sl/usermodel/PresetColor;->valueOfOoxmlId(Ljava/lang/String;)Lorg/apache/poi/sl/usermodel/PresetColor;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 23
    iget-object p0, p0, Lorg/apache/poi/sl/usermodel/PresetColor;->color:Ljava/awt/Color;

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    sget-object p0, Ljava/awt/Color;->black:Ljava/awt/Color;

    :goto_0
    return-object p0
.end method


# virtual methods
.method public getAlpha()I
    .locals 1

    const-string v0, "alpha"

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->getPercentageValue(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getAlphaMod()I
    .locals 1

    const-string v0, "alphaMod"

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->getPercentageValue(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getAlphaOff()I
    .locals 1

    const-string v0, "alphaOff"

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->getPercentageValue(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getBlue()I
    .locals 1

    const-string v0, "blue"

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->getPercentageValue(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getBlueMod()I
    .locals 1

    const-string v0, "blueMod"

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->getPercentageValue(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getBlueOff()I
    .locals 1

    const-string v0, "blueOff"

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->getPercentageValue(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getColor()Ljava/awt/Color;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->getColorStyle()Lorg/apache/poi/sl/usermodel/ColorStyle;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/sl/draw/DrawPaint;->applyColorTransform(Lorg/apache/poi/sl/usermodel/ColorStyle;)Ljava/awt/Color;

    move-result-object p0

    return-object p0
.end method

.method public getColorStyle()Lorg/apache/poi/sl/usermodel/ColorStyle;
    .locals 3

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFColor$XSLFColorStyle;

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFColor;->_xmlObject:Lorg/apache/xmlbeans/XmlObject;

    iget-object v2, p0, Lorg/apache/poi/xslf/usermodel/XSLFColor;->_color:Ljava/awt/Color;

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFColor;->_phClr:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;

    invoke-direct {v0, v1, v2, p0}, Lorg/apache/poi/xslf/usermodel/XSLFColor$XSLFColorStyle;-><init>(Lorg/apache/xmlbeans/XmlObject;Ljava/awt/Color;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;)V

    return-object v0
.end method

.method public getGreen()I
    .locals 1

    const-string v0, "green"

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->getPercentageValue(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getGreenMod()I
    .locals 1

    const-string v0, "greenMod"

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->getPercentageValue(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getGreenOff()I
    .locals 1

    const-string v0, "greenOff"

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->getPercentageValue(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getHue()I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFColor;->_phClr:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFColor;->_xmlObject:Lorg/apache/xmlbeans/XmlObject;

    const-string v1, "hue"

    invoke-static {v0, p0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->getRawValue(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;Lorg/apache/xmlbeans/XmlObject;Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0xea60

    div-int/2addr p0, v0

    :goto_0
    return p0
.end method

.method public getHueMod()I
    .locals 1

    const-string v0, "hueMod"

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->getPercentageValue(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getHueOff()I
    .locals 1

    const-string v0, "hueOff"

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->getPercentageValue(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getLum()I
    .locals 1

    const-string v0, "lum"

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->getPercentageValue(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getLumMod()I
    .locals 1

    const-string v0, "lumMod"

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->getPercentageValue(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getLumOff()I
    .locals 1

    const-string v0, "lumOff"

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->getPercentageValue(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getRed()I
    .locals 1

    const-string v0, "red"

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->getPercentageValue(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getRedMod()I
    .locals 1

    const-string v0, "redMod"

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->getPercentageValue(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getRedOff()I
    .locals 1

    const-string v0, "redOff"

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->getPercentageValue(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getSat()I
    .locals 1

    const-string v0, "sat"

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->getPercentageValue(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getSatMod()I
    .locals 1

    const-string v0, "satMod"

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->getPercentageValue(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getSatOff()I
    .locals 1

    const-string v0, "satOff"

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->getPercentageValue(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getShade()I
    .locals 1

    const-string v0, "shade"

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->getPercentageValue(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getTint()I
    .locals 1

    const-string v0, "tint"

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->getPercentageValue(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getXmlObject()Lorg/apache/xmlbeans/XmlObject;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFColor;->_xmlObject:Lorg/apache/xmlbeans/XmlObject;

    return-object p0
.end method

.method public setColor(Ljava/awt/Color;)V
    .locals 12
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFColor;->_xmlObject:Lorg/apache/xmlbeans/XmlObject;

    instance-of v0, p0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;

    if-nez v0, :cond_0

    sget-object p0, Lorg/apache/poi/xslf/usermodel/XSLFColor;->LOGGER:La5/d;

    invoke-interface {p0}, La5/d;->h()La5/b;

    move-result-object p0

    const-string p1, "XSLFColor.setColor currently only supports CTSolidColorFillProperties"

    invoke-interface {p0, p1}, La5/b;->f(Ljava/lang/String;)V

    return-void

    :cond_0
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->isSetSrgbClr()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->unsetSrgbClr()V

    :cond_1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->isSetScrgbClr()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->unsetScrgbClr()V

    :cond_2
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->isSetHslClr()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->unsetHslClr()V

    :cond_3
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->isSetPrstClr()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->unsetPrstClr()V

    :cond_4
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->isSetSchemeClr()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->unsetSchemeClr()V

    :cond_5
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->isSetSysClr()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->unsetSysClr()V

    :cond_6
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/awt/Color;->getRGBComponents([F)[F

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v2, v3, :cond_7

    aget v2, v1, v4

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_7

    move v2, v6

    goto :goto_0

    :cond_7
    move v2, v5

    :goto_0
    aget v3, v1, v5

    invoke-static {v3}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->isInt(F)Z

    move-result v3

    const/4 v7, 0x2

    if-eqz v3, :cond_8

    aget v3, v1, v6

    invoke-static {v3}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->isInt(F)Z

    move-result v3

    if-eqz v3, :cond_8

    aget v3, v1, v7

    invoke-static {v3}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->isInt(F)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->addNewSrgbClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;

    move-result-object p0

    new-array v3, v4, [B

    invoke-virtual {p1}, Ljava/awt/Color;->getRed()I

    move-result v8

    int-to-byte v8, v8

    aput-byte v8, v3, v5

    invoke-virtual {p1}, Ljava/awt/Color;->getGreen()I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v3, v6

    invoke-virtual {p1}, Ljava/awt/Color;->getBlue()I

    move-result p1

    int-to-byte p1, p1

    aput-byte p1, v3, v7

    invoke-interface {p0, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;->setVal([B)V

    if-eqz v2, :cond_9

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;->addNewAlpha()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveFixedPercentage;

    move-result-object v0

    goto :goto_1

    :cond_8
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->addNewScrgbClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScRgbColor;

    move-result-object p0

    invoke-static {p1}, Lorg/apache/poi/sl/draw/DrawPaint;->RGB2SCRGB(Ljava/awt/Color;)[D

    move-result-object p1

    aget-wide v8, p1, v5

    const-wide v10, 0x40f86a0000000000L    # 100000.0

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->rint(D)D

    move-result-wide v8

    double-to-int v3, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p0, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScRgbColor;->setR(Ljava/lang/Object;)V

    aget-wide v5, p1, v6

    mul-double/2addr v5, v10

    invoke-static {v5, v6}, Ljava/lang/Math;->rint(D)D

    move-result-wide v5

    double-to-int v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p0, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScRgbColor;->setG(Ljava/lang/Object;)V

    aget-wide v5, p1, v7

    mul-double/2addr v5, v10

    invoke-static {v5, v6}, Ljava/lang/Math;->rint(D)D

    move-result-wide v5

    double-to-int p1, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScRgbColor;->setB(Ljava/lang/Object;)V

    if-eqz v2, :cond_9

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScRgbColor;->addNewAlpha()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveFixedPercentage;

    move-result-object v0

    :cond_9
    :goto_1
    if-eqz v0, :cond_a

    aget p0, v1, v4

    const p1, 0x47c35000    # 100000.0f

    mul-float/2addr p0, p1

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->rint(D)D

    move-result-wide p0

    double-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveFixedPercentage;->setVal(Ljava/lang/Object;)V

    :cond_a
    return-void
.end method
