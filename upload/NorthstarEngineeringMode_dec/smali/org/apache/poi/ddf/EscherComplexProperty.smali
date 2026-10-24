.class public Lorg/apache/poi/ddf/EscherComplexProperty;
.super Lorg/apache/poi/ddf/EscherProperty;
.source "SourceFile"


# static fields
.field private static final DEFAULT_MAX_RECORD_LENGTH:I = 0x5f5e100

.field private static MAX_RECORD_LENGTH:I = 0x5f5e100


# instance fields
.field private complexData:[B


# direct methods
.method public constructor <init>(Lorg/apache/poi/ddf/EscherPropertyTypes;ZI)V
    .locals 0

    .line 4
    iget-short p1, p1, Lorg/apache/poi/ddf/EscherPropertyTypes;->propNumber:S

    if-eqz p2, :cond_0

    const/16 p2, 0x4000

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    or-int/2addr p1, p2

    int-to-short p1, p1

    invoke-direct {p0, p1, p3}, Lorg/apache/poi/ddf/EscherComplexProperty;-><init>(SI)V

    return-void
.end method

.method public constructor <init>(SI)V
    .locals 1

    const v0, 0x8000

    or-int/2addr p1, v0

    int-to-short p1, p1

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/poi/ddf/EscherProperty;-><init>(S)V

    int-to-long p1, p2

    sget v0, Lorg/apache/poi/ddf/EscherComplexProperty;->MAX_RECORD_LENGTH:I

    .line 2
    invoke-static {p1, p2, v0}, Lorg/apache/poi/util/IOUtils;->safelyAllocate(JI)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/ddf/EscherComplexProperty;->complexData:[B

    return-void
.end method

.method public constructor <init>(SZI)V
    .locals 0

    if-eqz p2, :cond_0

    const/16 p2, 0x4000

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    or-int/2addr p1, p2

    int-to-short p1, p1

    .line 3
    invoke-direct {p0, p1, p3}, Lorg/apache/poi/ddf/EscherComplexProperty;-><init>(SI)V

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/ddf/EscherComplexProperty;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherComplexProperty;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getMaxRecordLength()I
    .locals 1

    sget v0, Lorg/apache/poi/ddf/EscherComplexProperty;->MAX_RECORD_LENGTH:I

    return v0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    invoke-super {p0}, Lorg/apache/poi/ddf/EscherProperty;->getGenericProperties()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static setMaxRecordLength(I)V
    .locals 0

    sput p0, Lorg/apache/poi/ddf/EscherComplexProperty;->MAX_RECORD_LENGTH:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lorg/apache/poi/ddf/EscherComplexProperty;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Lorg/apache/poi/ddf/EscherComplexProperty;

    iget-object p0, p0, Lorg/apache/poi/ddf/EscherComplexProperty;->complexData:[B

    iget-object p1, p1, Lorg/apache/poi/ddf/EscherComplexProperty;->complexData:[B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method

.method public getComplexData()[B
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ddf/EscherComplexProperty;->complexData:[B

    return-object p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    new-instance v0, Lorg/apache/poi/ddf/d;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/ddf/d;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    new-instance v1, Lorg/apache/poi/ddf/b;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p0}, Lorg/apache/poi/ddf/b;-><init>(ILjava/lang/Object;)V

    const-string p0, "base"

    const-string v2, "data"

    invoke-static {p0, v0, v2, v1}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getPropertySize()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ddf/EscherComplexProperty;->complexData:[B

    array-length p0, p0

    add-int/lit8 p0, p0, 0x6

    return p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ddf/EscherComplexProperty;->complexData:[B

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherProperty;->getId()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public resizeComplexData(I)V
    .locals 1

    const v0, 0x7fffffff

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/ddf/EscherComplexProperty;->resizeComplexData(II)V

    return-void
.end method

.method public resizeComplexData(II)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/ddf/EscherComplexProperty;->complexData:[B

    .line 2
    array-length v0, v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    int-to-long v0, p1

    sget v2, Lorg/apache/poi/ddf/EscherComplexProperty;->MAX_RECORD_LENGTH:I

    .line 3
    invoke-static {v0, v1, v2}, Lorg/apache/poi/util/IOUtils;->safelyAllocate(JI)[B

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/ddf/EscherComplexProperty;->complexData:[B

    .line 4
    array-length v2, v1

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 p2, 0x0

    invoke-static {v1, p2, v0, p2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lorg/apache/poi/ddf/EscherComplexProperty;->complexData:[B

    return-void
.end method

.method public serializeComplexPart([BI)I
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/ddf/EscherComplexProperty;->complexData:[B

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p0, p0, Lorg/apache/poi/ddf/EscherComplexProperty;->complexData:[B

    array-length p0, p0

    return p0
.end method

.method public serializeSimplePart([BI)I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherProperty;->getId()S

    move-result v0

    invoke-static {p1, p2, v0}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    add-int/lit8 p2, p2, 0x2

    iget-object p0, p0, Lorg/apache/poi/ddf/EscherComplexProperty;->complexData:[B

    array-length p0, p0

    invoke-static {p1, p2, p0}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    const/4 p0, 0x6

    return p0
.end method

.method public setComplexData([B)I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/ddf/EscherComplexProperty;->setComplexData([BI)I

    move-result p0

    return p0
.end method

.method public setComplexData([BI)I
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/ddf/EscherComplexProperty;->complexData:[B

    .line 2
    array-length v1, v1

    array-length v2, p1

    sub-int/2addr v2, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object p0, p0, Lorg/apache/poi/ddf/EscherComplexProperty;->complexData:[B

    .line 3
    invoke-static {p1, p2, p0, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return v1
.end method
