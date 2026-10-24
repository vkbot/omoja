.class public Lorg/apache/poi/ddf/EscherRGBProperty;
.super Lorg/apache/poi/ddf/EscherSimpleProperty;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/apache/poi/ddf/EscherPropertyTypes;I)V
    .locals 0

    .line 2
    iget-short p1, p1, Lorg/apache/poi/ddf/EscherPropertyTypes;->propNumber:S

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(SI)V

    return-void
.end method

.method public constructor <init>(SI)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(SI)V

    return-void
.end method


# virtual methods
.method public getBlue()B
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRGBProperty;->getRgbColor()I

    move-result p0

    shr-int/lit8 p0, p0, 0x10

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    return p0
.end method

.method public getGreen()B
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRGBProperty;->getRgbColor()I

    move-result p0

    shr-int/lit8 p0, p0, 0x8

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    return p0
.end method

.method public getRed()B
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRGBProperty;->getRgbColor()I

    move-result p0

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    return p0
.end method

.method public getRgbColor()I
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherSimpleProperty;->getPropertyValue()I

    move-result p0

    return p0
.end method
