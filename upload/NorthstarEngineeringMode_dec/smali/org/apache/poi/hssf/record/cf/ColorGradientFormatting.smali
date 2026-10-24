.class public final Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/common/Duplicatable;
.implements Lorg/apache/poi/common/usermodel/GenericRecord;


# static fields
.field private static final LOGGER:La5/d;

.field private static final background:Lorg/apache/poi/util/BitField;

.field private static final clamp:Lorg/apache/poi/util/BitField;


# instance fields
.field private colors:[Lorg/apache/poi/hssf/record/common/ExtendedColor;

.field private final options:B

.field private thresholds:[Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->LOGGER:La5/d;

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->clamp:Lorg/apache/poi/util/BitField;

    const/4 v0, 0x2

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->background:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->options:B

    new-array v1, v0, [Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    iput-object v1, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->thresholds:[Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    new-array v0, v0, [Lorg/apache/poi/hssf/record/common/ExtendedColor;

    iput-object v0, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->colors:[Lorg/apache/poi/hssf/record/common/ExtendedColor;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;)V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iget-byte v0, p1, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->options:B

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->options:B

    .line 4
    iget-object v0, p1, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->thresholds:[Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 5
    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lorg/apache/commons/compress/archivers/zip/x0;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Lorg/apache/commons/compress/archivers/zip/x0;-><init>(I)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lh5/e;

    invoke-direct {v2, v1}, Lh5/e;-><init>(I)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    iput-object v0, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->thresholds:[Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    .line 6
    :cond_0
    iget-object p1, p1, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->colors:[Lorg/apache/poi/hssf/record/common/ExtendedColor;

    if-eqz p1, :cond_1

    .line 7
    invoke-static {p1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/apache/poi/ddf/f0;

    const/4 v2, 0x5

    invoke-direct {v0, v2}, Lorg/apache/poi/ddf/f0;-><init>(I)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lh5/f;

    invoke-direct {v0, v1}, Lh5/f;-><init>(I)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/poi/hssf/record/common/ExtendedColor;

    iput-object p1, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->colors:[Lorg/apache/poi/hssf/record/common/ExtendedColor;

    :cond_1
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 6

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    .line 10
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    .line 11
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result v0

    .line 12
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result v1

    if-eq v0, v1, :cond_0

    sget-object v2, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->LOGGER:La5/d;

    .line 13
    invoke-interface {v2}, La5/d;->g()La5/b;

    move-result-object v2

    invoke-static {v0}, Lg5/b0;->a(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lg5/b0;->a(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Inconsistent Color Gradient definition, found {} vs {} entries"

    invoke-interface {v2, v3, v5, v4}, La5/b;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 14
    :cond_0
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result v2

    iput-byte v2, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->options:B

    .line 15
    new-array v0, v0, [Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    iput-object v0, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->thresholds:[Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v3, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->thresholds:[Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    .line 16
    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 17
    new-instance v4, Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    invoke-direct {v4, p1}, Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 18
    :cond_1
    new-array v1, v1, [Lorg/apache/poi/hssf/record/common/ExtendedColor;

    iput-object v1, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->colors:[Lorg/apache/poi/hssf/record/common/ExtendedColor;

    :goto_1
    iget-object v1, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->colors:[Lorg/apache/poi/hssf/record/common/ExtendedColor;

    .line 19
    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 20
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readDouble()D

    iget-object v1, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->colors:[Lorg/apache/poi/hssf/record/common/ExtendedColor;

    .line 21
    new-instance v2, Lorg/apache/poi/hssf/record/common/ExtendedColor;

    invoke-direct {v2, p1}, Lorg/apache/poi/hssf/record/common/ExtendedColor;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static synthetic a(I)[Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->lambda$new$0(I)[Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(I)[Lorg/apache/poi/hssf/record/common/ExtendedColor;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->lambda$new$1(I)[Lorg/apache/poi/hssf/record/common/ExtendedColor;

    move-result-object p0

    return-object p0
.end method

.method private getOptionFlag(Lorg/apache/poi/util/BitField;)Z
    .locals 0

    iget-byte p0, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->options:B

    invoke-virtual {p1, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$new$0(I)[Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;
    .locals 0

    new-array p0, p0, [Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    return-object p0
.end method

.method private static synthetic lambda$new$1(I)[Lorg/apache/poi/hssf/record/common/ExtendedColor;
    .locals 0

    new-array p0, p0, [Lorg/apache/poi/hssf/record/common/ExtendedColor;

    return-object p0
.end method

.method private updateThresholdPositions()V
    .locals 6

    iget-object v0, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->thresholds:[Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->thresholds:[Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    array-length v4, v1

    if-ge v0, v4, :cond_0

    aget-object v1, v1, v0

    int-to-double v4, v0

    mul-double/2addr v4, v2

    invoke-virtual {v1, v4, v5}, Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;->setPosition(D)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->copy()Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;-><init>(Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;)V

    return-object v0
.end method

.method public getColors()[Lorg/apache/poi/hssf/record/common/ExtendedColor;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->colors:[Lorg/apache/poi/hssf/record/common/ExtendedColor;

    return-object p0
.end method

.method public getDataLength()I
    .locals 6

    iget-object v0, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->thresholds:[Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    array-length v1, v0

    const/4 v2, 0x6

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_0

    aget-object v5, v0, v4

    invoke-virtual {v5}, Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;->getDataLength()I

    move-result v5

    add-int/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->colors:[Lorg/apache/poi/hssf/record/common/ExtendedColor;

    array-length v0, p0

    :goto_1
    if-ge v3, v0, :cond_1

    aget-object v1, p0, v3

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/common/ExtendedColor;->getDataLength()I

    move-result v1

    add-int/2addr v1, v2

    add-int/lit8 v2, v1, 0x8

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return v2
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    const-string v0, "clampToCurve"

    new-instance v1, Lh5/d;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lh5/d;-><init>(Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;I)V

    const-string v2, "background"

    new-instance v3, Lorg/apache/poi/ddf/d;

    const/16 v4, 0xf

    invoke-direct {v3, p0, v4}, Lorg/apache/poi/ddf/d;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    const-string/jumbo v4, "thresholds"

    new-instance v5, Lorg/apache/poi/ddf/b;

    const/16 v6, 0xa

    invoke-direct {v5, v6, p0}, Lorg/apache/poi/ddf/b;-><init>(ILjava/lang/Object;)V

    const-string v6, "colors"

    new-instance v7, Lh5/d;

    const/4 v8, 0x1

    invoke-direct {v7, p0, v8}, Lh5/d;-><init>(Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;I)V

    invoke-static/range {v0 .. v7}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getNumControlPoints()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->thresholds:[Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    array-length p0, p0

    return p0
.end method

.method public getThresholds()[Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->thresholds:[Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    return-object p0
.end method

.method public isAppliesToBackground()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->background:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->getOptionFlag(Lorg/apache/poi/util/BitField;)Z

    move-result p0

    return p0
.end method

.method public isClampToCurve()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->clamp:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->getOptionFlag(Lorg/apache/poi/util/BitField;)Z

    move-result p0

    return p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 5

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget-object v1, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->thresholds:[Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    array-length v1, v1

    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget-object v1, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->thresholds:[Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    array-length v1, v1

    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget-byte v1, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->options:B

    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget-object v1, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->thresholds:[Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    invoke-virtual {v4, p1}, Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->colors:[Lorg/apache/poi/hssf/record/common/ExtendedColor;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    int-to-double v1, v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    div-double/2addr v3, v1

    :goto_1
    iget-object v1, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->colors:[Lorg/apache/poi/hssf/record/common/ExtendedColor;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    int-to-double v1, v0

    mul-double/2addr v1, v3

    invoke-interface {p1, v1, v2}, Lorg/apache/poi/util/LittleEndianOutput;->writeDouble(D)V

    iget-object v1, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->colors:[Lorg/apache/poi/hssf/record/common/ExtendedColor;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lorg/apache/poi/hssf/record/common/ExtendedColor;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public setColors([Lorg/apache/poi/hssf/record/common/ExtendedColor;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [Lorg/apache/poi/hssf/record/common/ExtendedColor;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/poi/hssf/record/common/ExtendedColor;

    :goto_0
    iput-object p1, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->colors:[Lorg/apache/poi/hssf/record/common/ExtendedColor;

    return-void
.end method

.method public setNumControlPoints(I)V
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->thresholds:[Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    array-length v1, v0

    if-eq p1, v1, :cond_0

    new-array v1, p1, [Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    new-array v2, p1, [Lorg/apache/poi/hssf/record/common/ExtendedColor;

    array-length v0, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->thresholds:[Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->colors:[Lorg/apache/poi/hssf/record/common/ExtendedColor;

    invoke-static {v0, v3, v2, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->thresholds:[Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    iput-object v2, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->colors:[Lorg/apache/poi/hssf/record/common/ExtendedColor;

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->updateThresholdPositions()V

    :cond_0
    return-void
.end method

.method public setThresholds([Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    :goto_0
    iput-object p1, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->thresholds:[Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->updateThresholdPositions()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/util/GenericRecordJsonWriter;->marshal(Lorg/apache/poi/common/usermodel/GenericRecord;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
