.class public final Lorg/apache/poi/ddf/EscherArrayProperty;
.super Lorg/apache/poi/ddf/EscherComplexProperty;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/ddf/EscherComplexProperty;",
        "Ljava/lang/Iterable<",
        "[B>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_RECORD_LENGTH:I = 0x186a0

.field private static final FIXED_SIZE:I = 0x6

.field private static MAX_RECORD_LENGTH:I = 0x186a0


# instance fields
.field private final emptyComplexPart:Z

.field private sizeIncludesHeaderSize:Z


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

    invoke-static {p3}, Lorg/apache/poi/ddf/EscherArrayProperty;->safeSize(I)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ddf/EscherArrayProperty;-><init>(SI)V

    return-void
.end method

.method public constructor <init>(SI)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ddf/EscherComplexProperty;-><init>(SI)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/poi/ddf/EscherArrayProperty;->sizeIncludesHeaderSize:Z

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lorg/apache/poi/ddf/EscherArrayProperty;->emptyComplexPart:Z

    return-void
.end method

.method public constructor <init>(SZ[B)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "5.0.0"
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const/16 p2, 0x4000

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    or-int/2addr p1, p2

    int-to-short p1, p1

    if-nez p3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    array-length v0, p3

    :goto_1
    invoke-static {v0}, Lorg/apache/poi/ddf/EscherArrayProperty;->safeSize(I)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ddf/EscherArrayProperty;-><init>(SI)V

    .line 3
    invoke-virtual {p0, p3}, Lorg/apache/poi/ddf/EscherComplexProperty;->setComplexData([B)I

    return-void
.end method

.method public static synthetic b(Lorg/apache/poi/ddf/EscherArrayProperty;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherArrayProperty;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lorg/apache/poi/ddf/EscherArrayProperty;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherArrayProperty;->lambda$getGenericProperties$1()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static getActualSizeOfElements(S)I
    .locals 0

    if-gez p0, :cond_0

    neg-int p0, p0

    shr-int/lit8 p0, p0, 0x2

    int-to-short p0, p0

    :cond_0
    return p0
.end method

.method public static getMaxRecordLength()I
    .locals 1

    sget v0, Lorg/apache/poi/ddf/EscherArrayProperty;->MAX_RECORD_LENGTH:I

    return v0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    invoke-super {p0}, Lorg/apache/poi/ddf/EscherComplexProperty;->getGenericProperties()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$1()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherArrayProperty;->spliterator()Ljava/util/Spliterator;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private rewriteArray(IZ)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherArrayProperty;->getSizeOfElements()S

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/ddf/EscherArrayProperty;->getActualSizeOfElements(S)I

    move-result v0

    mul-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x6

    if-eqz p2, :cond_0

    move p2, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherComplexProperty;->getComplexData()[B

    move-result-object p2

    array-length p2, p2

    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/ddf/EscherComplexProperty;->resizeComplexData(II)V

    return-void
.end method

.method private static safeSize(I)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x6

    :cond_0
    return p0
.end method

.method public static setMaxRecordLength(I)V
    .locals 0

    sput p0, Lorg/apache/poi/ddf/EscherArrayProperty;->MAX_RECORD_LENGTH:I

    return-void
.end method


# virtual methods
.method public getElement(I)[B
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherArrayProperty;->getSizeOfElements()S

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/ddf/EscherArrayProperty;->getActualSizeOfElements(S)I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherComplexProperty;->getComplexData()[B

    move-result-object p0

    mul-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x6

    sget v1, Lorg/apache/poi/ddf/EscherArrayProperty;->MAX_RECORD_LENGTH:I

    invoke-static {p0, p1, v0, v1}, Lorg/apache/poi/util/IOUtils;->safelyClone([BIII)[B

    move-result-object p0

    return-object p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    const-string v0, "base"

    new-instance v1, Lorg/apache/poi/ddf/f;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/ddf/f;-><init>(Lorg/apache/poi/ddf/EscherArrayProperty;I)V

    const-string v3, "numElements"

    new-instance v4, Lorg/apache/poi/ddf/g;

    invoke-direct {v4, p0, v2}, Lorg/apache/poi/ddf/g;-><init>(Lorg/apache/poi/ddf/EscherArrayProperty;I)V

    const-string v5, "numElementsInMemory"

    new-instance v6, Lorg/apache/poi/ddf/c;

    const/4 v2, 0x1

    invoke-direct {v6, v2, p0}, Lorg/apache/poi/ddf/c;-><init>(ILjava/lang/Object;)V

    const-string/jumbo v7, "sizeOfElements"

    new-instance v8, Lorg/apache/poi/ddf/f;

    invoke-direct {v8, p0, v2}, Lorg/apache/poi/ddf/f;-><init>(Lorg/apache/poi/ddf/EscherArrayProperty;I)V

    const-string v9, "elements"

    new-instance v10, Lorg/apache/poi/ddf/g;

    invoke-direct {v10, p0, v2}, Lorg/apache/poi/ddf/g;-><init>(Lorg/apache/poi/ddf/EscherArrayProperty;I)V

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    invoke-static/range {v0 .. v9}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getNumberOfElementsInArray()I
    .locals 2

    iget-boolean v0, p0, Lorg/apache/poi/ddf/EscherArrayProperty;->emptyComplexPart:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherComplexProperty;->getComplexData()[B

    move-result-object p0

    invoke-static {p0, v1}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result v1

    :goto_0
    return v1
.end method

.method public getNumberOfElementsInMemory()I
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/ddf/EscherArrayProperty;->emptyComplexPart:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherComplexProperty;->getComplexData()[B

    move-result-object p0

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result p0

    :goto_0
    return p0
.end method

.method public getSizeOfElements()S
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/ddf/EscherArrayProperty;->emptyComplexPart:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherComplexProperty;->getComplexData()[B

    move-result-object p0

    const/4 v0, 0x4

    invoke-static {p0, v0}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result p0

    :goto_0
    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "[B>;"
        }
    .end annotation

    new-instance v0, Lorg/apache/poi/ddf/EscherArrayProperty$1;

    invoke-direct {v0, p0}, Lorg/apache/poi/ddf/EscherArrayProperty$1;-><init>(Lorg/apache/poi/ddf/EscherArrayProperty;)V

    return-object v0
.end method

.method public serializeSimplePart([BI)I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherProperty;->getId()S

    move-result v0

    invoke-static {p1, p2, v0}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherComplexProperty;->getComplexData()[B

    move-result-object v0

    array-length v0, v0

    iget-boolean p0, p0, Lorg/apache/poi/ddf/EscherArrayProperty;->sizeIncludesHeaderSize:Z

    if-nez p0, :cond_0

    add-int/lit8 v0, v0, -0x6

    :cond_0
    add-int/lit8 p2, p2, 0x2

    invoke-static {p1, p2, v0}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    const/4 p0, 0x6

    return p0
.end method

.method public setArrayData([BI)I
    .locals 4

    iget-boolean v0, p0, Lorg/apache/poi/ddf/EscherArrayProperty;->emptyComplexPart:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lorg/apache/poi/ddf/EscherComplexProperty;->resizeComplexData(I)V

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v0

    add-int/lit8 v2, p2, 0x4

    invoke-static {p1, v2}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherComplexProperty;->getComplexData()[B

    move-result-object v3

    array-length v3, v3

    invoke-static {v2}, Lorg/apache/poi/ddf/EscherArrayProperty;->getActualSizeOfElements(S)I

    move-result v2

    mul-int/2addr v2, v0

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, v2, 0x6

    invoke-virtual {p0, v2, v1}, Lorg/apache/poi/ddf/EscherComplexProperty;->resizeComplexData(II)V

    iput-boolean v1, p0, Lorg/apache/poi/ddf/EscherArrayProperty;->sizeIncludesHeaderSize:Z

    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/ddf/EscherComplexProperty;->setComplexData([BI)I

    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherComplexProperty;->getComplexData()[B

    move-result-object p0

    array-length p0, p0

    return p0
.end method

.method public setElement(I[B)V
    .locals 2

    iget-boolean v0, p0, Lorg/apache/poi/ddf/EscherArrayProperty;->emptyComplexPart:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherArrayProperty;->getSizeOfElements()S

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/ddf/EscherArrayProperty;->getActualSizeOfElements(S)I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherComplexProperty;->getComplexData()[B

    move-result-object p0

    mul-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x6

    const/4 v1, 0x0

    invoke-static {p2, v1, p0, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public setNumberOfElementsInArray(I)V
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/ddf/EscherArrayProperty;->emptyComplexPart:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/ddf/EscherArrayProperty;->rewriteArray(IZ)V

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherComplexProperty;->getComplexData()[B

    move-result-object p0

    int-to-short p1, p1

    invoke-static {p0, v0, p1}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    return-void
.end method

.method public setNumberOfElementsInMemory(I)V
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/ddf/EscherArrayProperty;->emptyComplexPart:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/ddf/EscherArrayProperty;->rewriteArray(IZ)V

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherComplexProperty;->getComplexData()[B

    move-result-object p0

    const/4 v0, 0x2

    int-to-short p1, p1

    invoke-static {p0, v0, p1}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    return-void
.end method

.method public setSizeOfElements(I)V
    .locals 2

    iget-boolean v0, p0, Lorg/apache/poi/ddf/EscherArrayProperty;->emptyComplexPart:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherComplexProperty;->getComplexData()[B

    move-result-object v0

    const/4 v1, 0x4

    int-to-short p1, p1

    invoke-static {v0, v1, p1}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherArrayProperty;->getNumberOfElementsInArray()I

    move-result p1

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherArrayProperty;->getSizeOfElements()S

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/ddf/EscherArrayProperty;->getActualSizeOfElements(S)I

    move-result v0

    mul-int/2addr p1, v0

    const/4 v0, 0x6

    add-int/2addr p1, v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/ddf/EscherComplexProperty;->resizeComplexData(II)V

    return-void
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "[B>;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherArrayProperty;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherArrayProperty;->getNumberOfElementsInArray()I

    move-result p0

    int-to-long v1, p0

    const/4 p0, 0x0

    invoke-static {v0, v1, v2, p0}, Ljava/util/Spliterators;->spliterator(Ljava/util/Iterator;JI)Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method
