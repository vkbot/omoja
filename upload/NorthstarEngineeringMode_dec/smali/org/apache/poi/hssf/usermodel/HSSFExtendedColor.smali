.class public Lorg/apache/poi/hssf/usermodel/HSSFExtendedColor;
.super Lorg/apache/poi/ss/usermodel/ExtendedColor;
.source "SourceFile"


# instance fields
.field private color:Lorg/apache/poi/hssf/record/common/ExtendedColor;


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/record/common/ExtendedColor;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ss/usermodel/ExtendedColor;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFExtendedColor;->color:Lorg/apache/poi/hssf/record/common/ExtendedColor;

    return-void
.end method


# virtual methods
.method public getARGB()[B
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [B

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFExtendedColor;->color:Lorg/apache/poi/hssf/record/common/ExtendedColor;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/common/ExtendedColor;->getRGBA()[B

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {p0, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-byte p0, p0, v3

    aput-byte p0, v0, v2

    return-object v0
.end method

.method public getExtendedColor()Lorg/apache/poi/hssf/record/common/ExtendedColor;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFExtendedColor;->color:Lorg/apache/poi/hssf/record/common/ExtendedColor;

    return-object p0
.end method

.method public getIndex()S
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFExtendedColor;->color:Lorg/apache/poi/hssf/record/common/ExtendedColor;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/common/ExtendedColor;->getColorIndex()I

    move-result p0

    int-to-short p0, p0

    return p0
.end method

.method public getIndexedRGB()[B
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFExtendedColor;->isIndexed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFExtendedColor;->getIndex()S

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFExtendedColor;->getIndex()S

    move-result p0

    invoke-static {}, Lorg/apache/poi/hssf/util/HSSFColor;->getIndexHash()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hssf/util/HSSFColor;

    if-eqz p0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [B

    invoke-virtual {p0}, Lorg/apache/poi/hssf/util/HSSFColor;->getTriplet()[S

    move-result-object v1

    const/4 v2, 0x0

    aget-short v1, v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    invoke-virtual {p0}, Lorg/apache/poi/hssf/util/HSSFColor;->getTriplet()[S

    move-result-object v1

    const/4 v2, 0x1

    aget-short v1, v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    invoke-virtual {p0}, Lorg/apache/poi/hssf/util/HSSFColor;->getTriplet()[S

    move-result-object p0

    const/4 v1, 0x2

    aget-short p0, p0, v1

    int-to-byte p0, p0

    aput-byte p0, v0, v1

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRGB()[B
    .locals 3

    const/4 v0, 0x3

    new-array v1, v0, [B

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFExtendedColor;->color:Lorg/apache/poi/hssf/record/common/ExtendedColor;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/common/ExtendedColor;->getRGBA()[B

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public getStoredRGB()[B
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFExtendedColor;->getARGB()[B

    move-result-object p0

    return-object p0
.end method

.method public getTheme()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFExtendedColor;->color:Lorg/apache/poi/hssf/record/common/ExtendedColor;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/common/ExtendedColor;->getThemeIndex()I

    move-result p0

    return p0
.end method

.method public getTint()D
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFExtendedColor;->color:Lorg/apache/poi/hssf/record/common/ExtendedColor;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/common/ExtendedColor;->getTint()D

    move-result-wide v0

    return-wide v0
.end method

.method public isAuto()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFExtendedColor;->color:Lorg/apache/poi/hssf/record/common/ExtendedColor;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/common/ExtendedColor;->getType()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isIndexed()Z
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFExtendedColor;->color:Lorg/apache/poi/hssf/record/common/ExtendedColor;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/common/ExtendedColor;->getType()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRGB()Z
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFExtendedColor;->color:Lorg/apache/poi/hssf/record/common/ExtendedColor;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/common/ExtendedColor;->getType()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isThemed()Z
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFExtendedColor;->color:Lorg/apache/poi/hssf/record/common/ExtendedColor;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/common/ExtendedColor;->getType()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setRGB([B)V
    .locals 6

    array-length v0, p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [B

    invoke-static {p1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p1, -0x1

    aput-byte p1, v0, v3

    iget-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFExtendedColor;->color:Lorg/apache/poi/hssf/record/common/ExtendedColor;

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/common/ExtendedColor;->setRGBA([B)V

    goto :goto_0

    :cond_0
    aget-byte v0, p1, v2

    const/4 v4, 0x1

    aget-byte v5, p1, v4

    aput-byte v5, p1, v2

    aget-byte v2, p1, v1

    aput-byte v2, p1, v4

    aget-byte v2, p1, v3

    aput-byte v2, p1, v1

    aput-byte v0, p1, v3

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFExtendedColor;->color:Lorg/apache/poi/hssf/record/common/ExtendedColor;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/common/ExtendedColor;->setRGBA([B)V

    :goto_0
    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFExtendedColor;->color:Lorg/apache/poi/hssf/record/common/ExtendedColor;

    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/record/common/ExtendedColor;->setType(I)V

    return-void
.end method

.method public setTint(D)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFExtendedColor;->color:Lorg/apache/poi/hssf/record/common/ExtendedColor;

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hssf/record/common/ExtendedColor;->setTint(D)V

    return-void
.end method
