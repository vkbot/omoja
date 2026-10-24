.class public Lorg/apache/poi/xssf/usermodel/XSSFColor;
.super Lorg/apache/poi/ss/usermodel/ExtendedColor;
.source "SourceFile"


# instance fields
.field private final ctColor:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

.field private final indexedColorMap:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 2
    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    return-void
.end method

.method public constructor <init>(Ljava/awt/Color;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V
    .locals 0

    .line 4
    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/usermodel/XSSFColor;-><init>(Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    .line 5
    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/usermodel/ExtendedColor;->setColor(Ljava/awt/Color;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ss/usermodel/IndexedColors;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V
    .locals 1

    .line 9
    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    invoke-direct {p0, v0, p2}, Lorg/apache/poi/xssf/usermodel/XSSFColor;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFColor;->ctColor:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    .line 10
    iget-short p1, p1, Lorg/apache/poi/ss/usermodel/IndexedColors;->index:S

    int-to-long p1, p1

    invoke-interface {p0, p1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->setIndexed(J)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V
    .locals 1

    .line 3
    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    return-void
.end method

.method private constructor <init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/ss/usermodel/ExtendedColor;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFColor;->ctColor:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    iput-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFColor;->indexedColorMap:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFColor;-><init>([BLorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    return-void
.end method

.method public constructor <init>([BLorg/apache/poi/xssf/usermodel/IndexedColorMap;)V
    .locals 1

    .line 6
    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    invoke-direct {p0, v0, p2}, Lorg/apache/poi/xssf/usermodel/XSSFColor;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFColor;->ctColor:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    .line 7
    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->setRgb([B)V

    return-void
.end method

.method public static from(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)Lorg/apache/poi/xssf/usermodel/XSSFColor;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFColor;

    invoke-direct {v1, p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFColor;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public static from(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)Lorg/apache/poi/xssf/usermodel/XSSFColor;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFColor;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method private sameARGB(Lorg/apache/poi/xssf/usermodel/XSSFColor;)Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->isRGB()Z

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->isRGB()Z

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->isRGB()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getARGB()[B

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getARGB()[B

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method private sameAuto(Lorg/apache/poi/xssf/usermodel/XSSFColor;)Z
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->isAuto()Z

    move-result p0

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->isAuto()Z

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private sameIndexed(Lorg/apache/poi/xssf/usermodel/XSSFColor;)Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->isIndexed()Z

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->isIndexed()Z

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->isIndexed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getIndexed()S

    move-result p0

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getIndexed()S

    move-result p1

    if-ne p0, p1, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method private sameTheme(Lorg/apache/poi/xssf/usermodel/XSSFColor;)Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->isThemed()Z

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->isThemed()Z

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->isThemed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getTheme()I

    move-result p0

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getTheme()I

    move-result p1

    if-ne p0, p1, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method private sameTint(Lorg/apache/poi/xssf/usermodel/XSSFColor;)Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->hasTint()Z

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->hasTint()Z

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->hasTint()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getTint()D

    move-result-wide v0

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getTint()D

    move-result-wide p0

    cmpl-double p0, v0, p0

    if-nez p0, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public static toXSSFColor(Lorg/apache/poi/ss/usermodel/Color;)Lorg/apache/poi/xssf/usermodel/XSSFColor;
    .locals 3

    if-eqz p0, :cond_1

    instance-of v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFColor;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Only XSSFColor objects are supported, but had "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    check-cast p0, Lorg/apache/poi/xssf/usermodel/XSSFColor;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lorg/apache/poi/xssf/usermodel/XSSFColor;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/apache/poi/xssf/usermodel/XSSFColor;

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->sameARGB(Lorg/apache/poi/xssf/usermodel/XSSFColor;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->sameTheme(Lorg/apache/poi/xssf/usermodel/XSSFColor;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->sameIndexed(Lorg/apache/poi/xssf/usermodel/XSSFColor;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->sameTint(Lorg/apache/poi/xssf/usermodel/XSSFColor;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->sameAuto(Lorg/apache/poi/xssf/usermodel/XSSFColor;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getARGB()[B
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/ss/usermodel/ExtendedColor;->getRGBOrARGB()[B

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    array-length v0, p0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v2, -0x1

    const/4 v3, 0x0

    aput-byte v2, v0, v3

    const/4 v2, 0x1

    invoke-static {p0, v3, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_1
    return-object p0
.end method

.method public getCTColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFColor;->ctColor:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    return-object p0
.end method

.method public getIndex()S
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFColor;->ctColor:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->getIndexed()J

    move-result-wide v0

    long-to-int p0, v0

    int-to-short p0, p0

    return p0
.end method

.method public getIndexed()S
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getIndex()S

    move-result p0

    return p0
.end method

.method public getIndexedRGB()[B
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->isIndexed()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFColor;->indexedColorMap:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getIndex()S

    move-result p0

    invoke-interface {v0, p0}, Lorg/apache/poi/xssf/usermodel/IndexedColorMap;->getRGB(I)[B

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getIndex()S

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/xssf/usermodel/DefaultIndexedColorMap;->getDefaultRGB(I)[B

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRGB()[B
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/ss/usermodel/ExtendedColor;->getRGBOrARGB()[B

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    array-length v0, p0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public getStoredRGB()[B
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFColor;->ctColor:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->getRgb()[B

    move-result-object p0

    return-object p0
.end method

.method public getTheme()I
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFColor;->ctColor:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->getTheme()J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method public getTint()D
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFColor;->ctColor:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->getTint()D

    move-result-wide v0

    return-wide v0
.end method

.method public hasAlpha()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFColor;->ctColor:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->isSetRgb()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFColor;->ctColor:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->getRgb()[B

    move-result-object p0

    array-length p0, p0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasTint()Z
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFColor;->ctColor:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->isSetTint()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFColor;->ctColor:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->getTint()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFColor;->ctColor:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public isAuto()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFColor;->ctColor:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->getAuto()Z

    move-result p0

    return p0
.end method

.method public isIndexed()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFColor;->ctColor:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->isSetIndexed()Z

    move-result p0

    return p0
.end method

.method public isRGB()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFColor;->ctColor:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->isSetRgb()Z

    move-result p0

    return p0
.end method

.method public isThemed()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFColor;->ctColor:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->isSetTheme()Z

    move-result p0

    return p0
.end method

.method public setAuto(Z)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFColor;->ctColor:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->setAuto(Z)V

    return-void
.end method

.method public setIndexed(I)V
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFColor;->ctColor:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    int-to-long v0, p1

    invoke-interface {p0, v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->setIndexed(J)V

    return-void
.end method

.method public setRGB([B)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFColor;->ctColor:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->setRgb([B)V

    return-void
.end method

.method public setTheme(I)V
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFColor;->ctColor:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    int-to-long v0, p1

    invoke-interface {p0, v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->setTheme(J)V

    return-void
.end method

.method public setTint(D)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFColor;->ctColor:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    invoke-interface {p0, p1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->setTint(D)V

    return-void
.end method
