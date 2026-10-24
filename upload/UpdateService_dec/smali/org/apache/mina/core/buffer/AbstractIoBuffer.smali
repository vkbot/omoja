.class public abstract Lorg/apache/mina/core/buffer/AbstractIoBuffer;
.super Lorg/apache/mina/core/buffer/IoBuffer;
.source "AbstractIoBuffer.java"


# static fields
.field private static final BYTE_MASK:J = 0xffL

.field private static final INT_MASK:J = 0xffffffffL

.field private static final SHORT_MASK:J = 0xffffL


# instance fields
.field private autoExpand:Z

.field private autoShrink:Z

.field private final derived:Z

.field private mark:I

.field private minimumCapacity:I

.field private recapacityAllowed:Z


# direct methods
.method protected constructor <init>(Lorg/apache/mina/core/buffer/AbstractIoBuffer;)V
    .locals 2
    .param p1, "parent"    # Lorg/apache/mina/core/buffer/AbstractIoBuffer;

    .line 108
    invoke-direct {p0}, Lorg/apache/mina/core/buffer/IoBuffer;-><init>()V

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->recapacityAllowed:Z

    .line 87
    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->mark:I

    .line 109
    invoke-static {}, Lorg/apache/mina/core/buffer/IoBuffer;->getAllocator()Lorg/apache/mina/core/buffer/IoBufferAllocator;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->setAllocator(Lorg/apache/mina/core/buffer/IoBufferAllocator;)V

    .line 110
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->recapacityAllowed:Z

    .line 111
    iput-boolean v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->derived:Z

    .line 112
    iget v0, p1, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->minimumCapacity:I

    iput v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->minimumCapacity:I

    .line 113
    return-void
.end method

.method protected constructor <init>(Lorg/apache/mina/core/buffer/IoBufferAllocator;I)V
    .locals 2
    .param p1, "allocator"    # Lorg/apache/mina/core/buffer/IoBufferAllocator;
    .param p2, "initialCapacity"    # I

    .line 95
    invoke-direct {p0}, Lorg/apache/mina/core/buffer/IoBuffer;-><init>()V

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->recapacityAllowed:Z

    .line 87
    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->mark:I

    .line 96
    invoke-static {p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->setAllocator(Lorg/apache/mina/core/buffer/IoBufferAllocator;)V

    .line 97
    iput-boolean v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->recapacityAllowed:Z

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->derived:Z

    .line 99
    iput p2, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->minimumCapacity:I

    .line 100
    return-void
.end method

.method private autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "expectedRemaining"    # I

    .line 2726
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->isAutoExpand()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2727
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->expand(IZ)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 2729
    :cond_0
    return-object p0
.end method

.method private autoExpand(II)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "pos"    # I
    .param p2, "expectedRemaining"    # I

    .line 2737
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->isAutoExpand()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2738
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->expand(IIZ)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 2740
    :cond_0
    return-object p0
.end method

.method private static checkFieldSize(I)V
    .locals 3
    .param p0, "fieldSize"    # I

    .line 2744
    if-ltz p0, :cond_0

    .line 2747
    return-void

    .line 2745
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fieldSize cannot be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private enumConversionErrorMessage(Ljava/lang/Enum;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2543
    .local p1, "e":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const-string v1, "%s.%s has an ordinal value too large for a %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private expand(IIZ)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 3
    .param p1, "pos"    # I
    .param p2, "expectedRemaining"    # I
    .param p3, "autoExpand"    # Z

    .line 272
    iget-boolean v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->recapacityAllowed:Z

    if-eqz v0, :cond_3

    .line 276
    add-int v0, p1, p2

    .line 279
    .local v0, "end":I
    if-eqz p3, :cond_0

    .line 280
    invoke-static {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->normalizeCapacity(I)I

    move-result v1

    .local v1, "newCapacity":I
    goto :goto_0

    .line 282
    .end local v1    # "newCapacity":I
    :cond_0
    move v1, v0

    .line 284
    .restart local v1    # "newCapacity":I
    :goto_0
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->capacity()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 286
    invoke-virtual {p0, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->capacity(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 289
    :cond_1
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit()I

    move-result v2

    if-le v0, v2, :cond_2

    .line 291
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 293
    :cond_2
    return-object p0

    .line 273
    .end local v0    # "end":I
    .end local v1    # "newCapacity":I
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Derived buffers and their parent can\'t be expanded."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private expand(IZ)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "expectedRemaining"    # I
    .param p2, "autoExpand"    # Z

    .line 260
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v0

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->expand(IIZ)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    return-object v0
.end method

.method private getMediumInt(BBB)I
    .locals 3
    .param p1, "b1"    # B
    .param p2, "b2"    # B
    .param p3, "b3"    # B

    .line 1442
    shl-int/lit8 v0, p1, 0x10

    const/high16 v1, 0xff0000

    and-int/2addr v0, v1

    shl-int/lit8 v1, p2, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    and-int/lit16 v1, p3, 0xff

    or-int/2addr v0, v1

    .line 1444
    .local v0, "ret":I
    and-int/lit16 v1, p1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_0

    .line 1446
    const/high16 v1, -0x1000000

    or-int/2addr v0, v1

    .line 1448
    :cond_0
    return v0
.end method

.method private toEnum(Ljava/lang/Class;I)Ljava/lang/Object;
    .locals 5
    .param p2, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;I)TE;"
        }
    .end annotation

    .line 2534
    .local p1, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    .line 2535
    .local v0, "enumConstants":[Ljava/lang/Object;, "[TE;"
    array-length v1, v0

    if-gt p2, v1, :cond_0

    .line 2539
    aget-object v1, v0, p2

    return-object v1

    .line 2536
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 2537
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "%d is too large of an ordinal to convert to the enum %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private toEnumSet(Ljava/lang/Class;J)Ljava/util/EnumSet;
    .locals 9
    .param p2, "vector"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Class<",
            "TE;>;J)",
            "Ljava/util/EnumSet<",
            "TE;>;"
        }
    .end annotation

    .line 2611
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-static {p1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 2612
    .local v0, "set":Ljava/util/EnumSet;, "Ljava/util/EnumSet<TE;>;"
    const-wide/16 v1, 0x1

    .line 2613
    .local v1, "mask":J
    invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Enum;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 2614
    .local v6, "e":Ljava/lang/Enum;, "TE;"
    and-long v7, v1, p2

    cmp-long v7, v7, v1

    if-nez v7, :cond_0

    .line 2615
    invoke-virtual {v0, v6}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 2617
    :cond_0
    const/4 v7, 0x1

    shl-long/2addr v1, v7

    .line 2613
    .end local v6    # "e":Ljava/lang/Enum;, "TE;"
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2619
    :cond_1
    return-object v0
.end method

.method private toLong(Ljava/util/Set;)J
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/util/Set<",
            "TE;>;)J"
        }
    .end annotation

    .line 2711
    .local p1, "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    const-wide/16 v0, 0x0

    .line 2712
    .local v0, "vector":J
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Enum;

    .line 2713
    .local v3, "e":Ljava/lang/Enum;, "TE;"
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/16 v5, 0x40

    if-ge v4, v5, :cond_0

    .line 2716
    const-wide/16 v4, 0x1

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    .line 2717
    .end local v3    # "e":Ljava/lang/Enum;, "TE;"
    goto :goto_0

    .line 2714
    .restart local v3    # "e":Ljava/lang/Enum;, "TE;"
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The enum set is too large to fit in a bit vector: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2718
    .end local v3    # "e":Ljava/lang/Enum;, "TE;"
    :cond_1
    return-wide v0
.end method


# virtual methods
.method public final asCharBuffer()Ljava/nio/CharBuffer;
    .locals 1

    .line 769
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final asDoubleBuffer()Ljava/nio/DoubleBuffer;
    .locals 1

    .line 1141
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asDoubleBuffer()Ljava/nio/DoubleBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final asFloatBuffer()Ljava/nio/FloatBuffer;
    .locals 1

    .line 1097
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    return-object v0
.end method

.method public asInputStream()Ljava/io/InputStream;
    .locals 1

    .line 1500
    new-instance v0, Lorg/apache/mina/core/buffer/AbstractIoBuffer$1;

    invoke-direct {v0, p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer$1;-><init>(Lorg/apache/mina/core/buffer/AbstractIoBuffer;)V

    return-object v0
.end method

.method public final asIntBuffer()Ljava/nio/IntBuffer;
    .locals 1

    .line 1009
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final asLongBuffer()Ljava/nio/LongBuffer;
    .locals 1

    .line 1053
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v0

    return-object v0
.end method

.method public asOutputStream()Ljava/io/OutputStream;
    .locals 1

    .line 1561
    new-instance v0, Lorg/apache/mina/core/buffer/AbstractIoBuffer$2;

    invoke-direct {v0, p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer$2;-><init>(Lorg/apache/mina/core/buffer/AbstractIoBuffer;)V

    return-object v0
.end method

.method public final asReadOnlyBuffer()Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .line 1149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->recapacityAllowed:Z

    .line 1150
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->asReadOnlyBuffer0()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    return-object v0
.end method

.method protected abstract asReadOnlyBuffer0()Lorg/apache/mina/core/buffer/IoBuffer;
.end method

.method public final asShortBuffer()Ljava/nio/ShortBuffer;
    .locals 1

    .line 813
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    return-object v0
.end method

.method protected abstract buf(Ljava/nio/ByteBuffer;)V
.end method

.method public final capacity()I
    .locals 1

    .line 163
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    return v0
.end method

.method public final capacity(I)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 7
    .param p1, "newCapacity"    # I

    .line 171
    iget-boolean v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->recapacityAllowed:Z

    if-eqz v0, :cond_2

    .line 176
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->capacity()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 179
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v0

    .line 180
    .local v0, "pos":I
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit()I

    move-result v1

    .line 181
    .local v1, "limit":I
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v2

    .line 184
    .local v2, "bo":Ljava/nio/ByteOrder;
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 185
    .local v3, "oldBuf":Ljava/nio/ByteBuffer;
    invoke-static {}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getAllocator()Lorg/apache/mina/core/buffer/IoBufferAllocator;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->isDirect()Z

    move-result v5

    invoke-interface {v4, p1, v5}, Lorg/apache/mina/core/buffer/IoBufferAllocator;->allocateNioBuffer(IZ)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 186
    .local v4, "newBuf":Ljava/nio/ByteBuffer;
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 187
    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 188
    invoke-virtual {p0, v4}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf(Ljava/nio/ByteBuffer;)V

    .line 191
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 192
    iget v5, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->mark:I

    if-ltz v5, :cond_0

    .line 193
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v5

    iget v6, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->mark:I

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 194
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 196
    :cond_0
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 197
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 200
    .end local v0    # "pos":I
    .end local v1    # "limit":I
    .end local v2    # "bo":Ljava/nio/ByteOrder;
    .end local v3    # "oldBuf":Ljava/nio/ByteBuffer;
    .end local v4    # "newBuf":Ljava/nio/ByteBuffer;
    :cond_1
    return-object p0

    .line 172
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Derived buffers and their parent can\'t be expanded."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final clear()Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .line 434
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 435
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->mark:I

    .line 436
    return-object p0
.end method

.method public final compact()Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 8

    .line 663
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->remaining()I

    move-result v0

    .line 664
    .local v0, "remaining":I
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->capacity()I

    move-result v1

    .line 666
    .local v1, "capacity":I
    if-nez v1, :cond_0

    .line 667
    return-object p0

    .line 670
    :cond_0
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->isAutoShrink()Z

    move-result v2

    if-eqz v2, :cond_4

    ushr-int/lit8 v2, v1, 0x2

    if-gt v0, v2, :cond_4

    iget v2, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->minimumCapacity:I

    if-le v1, v2, :cond_4

    .line 671
    move v3, v1

    .line 672
    .local v3, "newCapacity":I
    shl-int/lit8 v4, v0, 0x1

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 674
    .local v2, "minCapacity":I
    :goto_0
    ushr-int/lit8 v4, v3, 0x1

    if-ge v4, v2, :cond_3

    .line 675
    nop

    .line 680
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 682
    if-ne v3, v1, :cond_1

    .line 683
    return-object p0

    .line 688
    :cond_1
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v4

    .line 691
    .local v4, "bo":Ljava/nio/ByteOrder;
    if-gt v0, v3, :cond_2

    .line 697
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 698
    .local v5, "oldBuf":Ljava/nio/ByteBuffer;
    invoke-static {}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getAllocator()Lorg/apache/mina/core/buffer/IoBufferAllocator;

    move-result-object v6

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->isDirect()Z

    move-result v7

    invoke-interface {v6, v3, v7}, Lorg/apache/mina/core/buffer/IoBufferAllocator;->allocateNioBuffer(IZ)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 699
    .local v6, "newBuf":Ljava/nio/ByteBuffer;
    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 700
    invoke-virtual {p0, v6}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf(Ljava/nio/ByteBuffer;)V

    .line 703
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 704
    .end local v2    # "minCapacity":I
    .end local v3    # "newCapacity":I
    .end local v4    # "bo":Ljava/nio/ByteOrder;
    .end local v5    # "oldBuf":Ljava/nio/ByteBuffer;
    .end local v6    # "newBuf":Ljava/nio/ByteBuffer;
    goto :goto_1

    .line 692
    .restart local v2    # "minCapacity":I
    .restart local v3    # "newCapacity":I
    .restart local v4    # "bo":Ljava/nio/ByteOrder;
    :cond_2
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "The amount of the remaining bytes is greater than the new capacity."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 677
    .end local v4    # "bo":Ljava/nio/ByteOrder;
    :cond_3
    ushr-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 705
    .end local v2    # "minCapacity":I
    .end local v3    # "newCapacity":I
    :cond_4
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 707
    :goto_1
    const/4 v2, -0x1

    iput v2, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->mark:I

    .line 708
    return-object p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 58
    check-cast p1, Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->compareTo(Lorg/apache/mina/core/buffer/IoBuffer;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/apache/mina/core/buffer/IoBuffer;)I
    .locals 6
    .param p1, "that"    # Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1293
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->remaining()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1294
    .local v0, "n":I
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v1

    .local v1, "i":I
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v2

    .local v2, "j":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1295
    invoke-virtual {p0, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->get(I)B

    move-result v3

    .line 1296
    .local v3, "v1":B
    invoke-virtual {p1, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result v4

    .line 1297
    .local v4, "v2":B
    if-ne v3, v4, :cond_0

    .line 1298
    nop

    .line 1294
    .end local v3    # "v1":B
    .end local v4    # "v2":B
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1300
    .restart local v3    # "v1":B
    .restart local v4    # "v2":B
    :cond_0
    if-ge v3, v4, :cond_1

    .line 1301
    const/4 v5, -0x1

    return v5

    .line 1304
    :cond_1
    const/4 v5, 0x1

    return v5

    .line 1306
    .end local v1    # "i":I
    .end local v2    # "j":I
    .end local v3    # "v1":B
    .end local v4    # "v2":B
    :cond_2
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->remaining()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v2

    sub-int/2addr v1, v2

    return v1
.end method

.method public final duplicate()Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .line 1166
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->recapacityAllowed:Z

    .line 1167
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->duplicate0()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    return-object v0
.end method

.method protected abstract duplicate0()Lorg/apache/mina/core/buffer/IoBuffer;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .line 1268
    instance-of v0, p1, Lorg/apache/mina/core/buffer/IoBuffer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1269
    return v1

    .line 1272
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1273
    .local v0, "that":Lorg/apache/mina/core/buffer/IoBuffer;
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->remaining()I

    move-result v2

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 1274
    return v1

    .line 1277
    :cond_1
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v2

    .line 1278
    .local v2, "p":I
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .local v3, "i":I
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->limit()I

    move-result v5

    sub-int/2addr v5, v4

    .local v5, "j":I
    :goto_0
    if-lt v3, v2, :cond_3

    .line 1279
    invoke-virtual {p0, v3}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->get(I)B

    move-result v6

    .line 1280
    .local v6, "v1":B
    invoke-virtual {v0, v5}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result v7

    .line 1281
    .local v7, "v2":B
    if-eq v6, v7, :cond_2

    .line 1282
    return v1

    .line 1278
    .end local v6    # "v1":B
    .end local v7    # "v2":B
    :cond_2
    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 1285
    .end local v3    # "i":I
    .end local v5    # "j":I
    :cond_3
    return v4
.end method

.method public final expand(I)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 2
    .param p1, "expectedRemaining"    # I

    .line 256
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->expand(IIZ)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final expand(II)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "pos"    # I
    .param p2, "expectedRemaining"    # I

    .line 268
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->expand(IIZ)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    return-object v0
.end method

.method public fill(BI)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 10
    .param p1, "value"    # B
    .param p2, "size"    # I

    .line 2324
    invoke-direct {p0, p2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 2325
    ushr-int/lit8 v0, p2, 0x3

    .line 2326
    .local v0, "q":I
    and-int/lit8 v1, p2, 0x7

    .line 2328
    .local v1, "r":I
    const/high16 v2, 0xff0000

    const v3, 0xff00

    if-lez v0, :cond_0

    .line 2329
    and-int/lit16 v4, p1, 0xff

    shl-int/lit8 v5, p1, 0x8

    and-int/2addr v5, v3

    or-int/2addr v4, v5

    shl-int/lit8 v5, p1, 0x10

    and-int/2addr v5, v2

    or-int/2addr v4, v5

    shl-int/lit8 v5, p1, 0x18

    or-int/2addr v4, v5

    .line 2330
    .local v4, "intValue":I
    int-to-long v5, v4

    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    int-to-long v7, v4

    const/16 v9, 0x20

    shl-long/2addr v7, v9

    or-long/2addr v5, v7

    .line 2332
    .local v5, "longValue":J
    move v7, v0

    .local v7, "i":I
    :goto_0
    if-lez v7, :cond_0

    .line 2333
    invoke-virtual {p0, v5, v6}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->putLong(J)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 2332
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 2337
    .end local v4    # "intValue":I
    .end local v5    # "longValue":J
    .end local v7    # "i":I
    :cond_0
    ushr-int/lit8 v0, v1, 0x2

    .line 2338
    and-int/lit8 v1, v1, 0x3

    .line 2340
    if-lez v0, :cond_1

    .line 2341
    and-int/lit16 v4, p1, 0xff

    shl-int/lit8 v5, p1, 0x8

    and-int/2addr v3, v5

    or-int/2addr v3, v4

    shl-int/lit8 v4, p1, 0x10

    and-int/2addr v2, v4

    or-int/2addr v2, v3

    shl-int/lit8 v3, p1, 0x18

    or-int/2addr v2, v3

    .line 2342
    .local v2, "intValue":I
    invoke-virtual {p0, v2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->putInt(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 2345
    .end local v2    # "intValue":I
    :cond_1
    shr-int/lit8 v0, v1, 0x1

    .line 2346
    and-int/lit8 v1, v1, 0x1

    .line 2348
    if-lez v0, :cond_2

    .line 2349
    and-int/lit16 v2, p1, 0xff

    shl-int/lit8 v3, p1, 0x8

    or-int/2addr v2, v3

    int-to-short v2, v2

    .line 2350
    .local v2, "shortValue":S
    invoke-virtual {p0, v2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->putShort(S)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 2353
    .end local v2    # "shortValue":S
    :cond_2
    if-lez v1, :cond_3

    .line 2354
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 2357
    :cond_3
    return-object p0
.end method

.method public fill(I)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 5
    .param p1, "size"    # I

    .line 2380
    invoke-direct {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 2381
    ushr-int/lit8 v0, p1, 0x3

    .line 2382
    .local v0, "q":I
    and-int/lit8 v1, p1, 0x7

    .line 2384
    .local v1, "r":I
    move v2, v0

    .local v2, "i":I
    :goto_0
    if-lez v2, :cond_0

    .line 2385
    const-wide/16 v3, 0x0

    invoke-virtual {p0, v3, v4}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->putLong(J)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 2384
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2388
    .end local v2    # "i":I
    :cond_0
    ushr-int/lit8 v0, v1, 0x2

    .line 2389
    and-int/lit8 v1, v1, 0x3

    .line 2391
    const/4 v2, 0x0

    if-lez v0, :cond_1

    .line 2392
    invoke-virtual {p0, v2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->putInt(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 2395
    :cond_1
    shr-int/lit8 v0, v1, 0x1

    .line 2396
    and-int/lit8 v1, v1, 0x1

    .line 2398
    if-lez v0, :cond_2

    .line 2399
    invoke-virtual {p0, v2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->putShort(S)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 2402
    :cond_2
    if-lez v1, :cond_3

    .line 2403
    invoke-virtual {p0, v2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 2406
    :cond_3
    return-object p0
.end method

.method public fillAndReset(BI)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 2
    .param p1, "value"    # B
    .param p2, "size"    # I

    .line 2365
    invoke-direct {p0, p2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 2366
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v0

    .line 2368
    .local v0, "pos":I
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->fill(BI)Lorg/apache/mina/core/buffer/IoBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2370
    invoke-virtual {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 2371
    nop

    .line 2372
    return-object p0

    .line 2370
    :catchall_0
    move-exception v1

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 2371
    throw v1
.end method

.method public fillAndReset(I)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 2
    .param p1, "size"    # I

    .line 2414
    invoke-direct {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 2415
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v0

    .line 2417
    .local v0, "pos":I
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->fill(I)Lorg/apache/mina/core/buffer/IoBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2419
    invoke-virtual {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 2420
    nop

    .line 2422
    return-object p0

    .line 2419
    :catchall_0
    move-exception v1

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 2420
    throw v1
.end method

.method public final flip()Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .line 462
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 463
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->mark:I

    .line 464
    return-object p0
.end method

.method public final get()B
    .locals 1

    .line 502
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    return v0
.end method

.method public final get(I)B
    .locals 1
    .param p1, "index"    # I

    .line 608
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    return v0
.end method

.method public get([B)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 2
    .param p1, "dst"    # [B

    .line 1337
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->get([BII)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final get([BII)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "dst"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 634
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 635
    return-object p0
.end method

.method public final getChar()C
    .locals 1

    .line 733
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v0

    return v0
.end method

.method public final getChar(I)C
    .locals 1
    .param p1, "index"    # I

    .line 751
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getChar(I)C

    move-result v0

    return v0
.end method

.method public final getDouble()D
    .locals 2

    .line 1105
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public final getDouble(I)D
    .locals 2
    .param p1, "index"    # I

    .line 1123
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getEnum(ILjava/lang/Class;)Ljava/lang/Enum;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(I",
            "Ljava/lang/Class<",
            "TE;>;)TE;"
        }
    .end annotation

    .line 2438
    .local p2, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getUnsigned(I)S

    move-result v0

    invoke-direct {p0, p2, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->toEnum(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    return-object v0
.end method

.method public getEnum(Ljava/lang/Class;)Ljava/lang/Enum;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Class<",
            "TE;>;)TE;"
        }
    .end annotation

    .line 2430
    .local p1, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getUnsigned()S

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->toEnum(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    return-object v0
.end method

.method public getEnumInt(ILjava/lang/Class;)Ljava/lang/Enum;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(I",
            "Ljava/lang/Class<",
            "TE;>;)TE;"
        }
    .end annotation

    .line 2470
    .local p2, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getInt(I)I

    move-result v0

    invoke-direct {p0, p2, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->toEnum(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    return-object v0
.end method

.method public getEnumInt(Ljava/lang/Class;)Ljava/lang/Enum;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Class<",
            "TE;>;)TE;"
        }
    .end annotation

    .line 2462
    .local p1, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getInt()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->toEnum(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    return-object v0
.end method

.method public getEnumSet(ILjava/lang/Class;)Ljava/util/Set;
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(I",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 2559
    .local p2, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->get(I)B

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    invoke-direct {p0, p2, v0, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->toEnumSet(Ljava/lang/Class;J)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public getEnumSet(Ljava/lang/Class;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 2551
    .local p1, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->get()B

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->toEnumSet(Ljava/lang/Class;J)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public getEnumSetInt(ILjava/lang/Class;)Ljava/util/Set;
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(I",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 2591
    .local p2, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    invoke-direct {p0, p2, v0, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->toEnumSet(Ljava/lang/Class;J)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public getEnumSetInt(Ljava/lang/Class;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 2583
    .local p1, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getInt()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->toEnumSet(Ljava/lang/Class;J)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public getEnumSetLong(ILjava/lang/Class;)Ljava/util/Set;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(I",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 2607
    .local p2, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getLong(I)J

    move-result-wide v0

    invoke-direct {p0, p2, v0, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->toEnumSet(Ljava/lang/Class;J)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public getEnumSetLong(Ljava/lang/Class;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 2599
    .local p1, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getLong()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->toEnumSet(Ljava/lang/Class;J)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public getEnumSetShort(ILjava/lang/Class;)Ljava/util/Set;
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(I",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 2575
    .local p2, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getShort(I)S

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    invoke-direct {p0, p2, v0, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->toEnumSet(Ljava/lang/Class;J)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public getEnumSetShort(Ljava/lang/Class;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 2567
    .local p1, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getShort()S

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->toEnumSet(Ljava/lang/Class;J)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public getEnumShort(ILjava/lang/Class;)Ljava/lang/Enum;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(I",
            "Ljava/lang/Class<",
            "TE;>;)TE;"
        }
    .end annotation

    .line 2454
    .local p2, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getUnsignedShort(I)I

    move-result v0

    invoke-direct {p0, p2, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->toEnum(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    return-object v0
.end method

.method public getEnumShort(Ljava/lang/Class;)Ljava/lang/Enum;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Class<",
            "TE;>;)TE;"
        }
    .end annotation

    .line 2446
    .local p1, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getUnsignedShort()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->toEnum(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    return-object v0
.end method

.method public final getFloat()F
    .locals 1

    .line 1061
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v0

    return v0
.end method

.method public final getFloat(I)F
    .locals 1
    .param p1, "index"    # I

    .line 1079
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public final getInt()I
    .locals 1

    .line 821
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    return v0
.end method

.method public final getInt(I)I
    .locals 1
    .param p1, "index"    # I

    .line 991
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method public final getLong()J
    .locals 2

    .line 1017
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getLong(I)J
    .locals 2
    .param p1, "index"    # I

    .line 1035
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMediumInt()I
    .locals 5

    .line 1385
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->get()B

    move-result v0

    .line 1386
    .local v0, "b1":B
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->get()B

    move-result v1

    .line 1387
    .local v1, "b2":B
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->get()B

    move-result v2

    .line 1388
    .local v2, "b3":B
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1389
    invoke-direct {p0, v0, v1, v2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getMediumInt(BBB)I

    move-result v3

    return v3

    .line 1392
    :cond_0
    invoke-direct {p0, v2, v1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getMediumInt(BBB)I

    move-result v3

    return v3
.end method

.method public getMediumInt(I)I
    .locals 5
    .param p1, "index"    # I

    .line 1415
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->get(I)B

    move-result v0

    .line 1416
    .local v0, "b1":B
    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->get(I)B

    move-result v1

    .line 1417
    .local v1, "b2":B
    add-int/lit8 v2, p1, 0x2

    invoke-virtual {p0, v2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->get(I)B

    move-result v2

    .line 1418
    .local v2, "b3":B
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1419
    invoke-direct {p0, v0, v1, v2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getMediumInt(BBB)I

    move-result v3

    return v3

    .line 1422
    :cond_0
    invoke-direct {p0, v2, v1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getMediumInt(BBB)I

    move-result v3

    return v3
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 2141
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getObject(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getObject(Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 6
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 2149
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->prefixedDataAvailable(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2153
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getInt()I

    move-result v1

    .line 2154
    .local v1, "length":I
    if-le v1, v0, :cond_0

    .line 2158
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit()I

    move-result v0

    .line 2159
    .local v0, "oldLimit":I
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 2161
    :try_start_0
    new-instance v2, Lorg/apache/mina/core/buffer/AbstractIoBuffer$3;

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->asInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, p0, v3, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer$3;-><init>(Lorg/apache/mina/core/buffer/AbstractIoBuffer;Ljava/io/InputStream;Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 2196
    .local v2, "in":Ljava/io/ObjectInputStream;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2197
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 2200
    invoke-virtual {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 2196
    return-object v3

    .line 2161
    :catchall_0
    move-exception v3

    .end local v0    # "oldLimit":I
    .end local v1    # "length":I
    .end local v2    # "in":Ljava/io/ObjectInputStream;
    .end local p0    # "this":Lorg/apache/mina/core/buffer/AbstractIoBuffer;
    .end local p1    # "classLoader":Ljava/lang/ClassLoader;
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2197
    .restart local v0    # "oldLimit":I
    .restart local v1    # "length":I
    .restart local v2    # "in":Ljava/io/ObjectInputStream;
    .restart local p0    # "this":Lorg/apache/mina/core/buffer/AbstractIoBuffer;
    .restart local p1    # "classLoader":Ljava/lang/ClassLoader;
    :catchall_1
    move-exception v4

    :try_start_4
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v5

    :try_start_5
    invoke-virtual {v3, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "oldLimit":I
    .end local v1    # "length":I
    .end local p0    # "this":Lorg/apache/mina/core/buffer/AbstractIoBuffer;
    .end local p1    # "classLoader":Ljava/lang/ClassLoader;
    :goto_0
    throw v4
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 2200
    .end local v2    # "in":Ljava/io/ObjectInputStream;
    .restart local v0    # "oldLimit":I
    .restart local v1    # "length":I
    .restart local p0    # "this":Lorg/apache/mina/core/buffer/AbstractIoBuffer;
    .restart local p1    # "classLoader":Ljava/lang/ClassLoader;
    :catchall_3
    move-exception v2

    goto :goto_1

    .line 2197
    :catch_0
    move-exception v2

    .line 2198
    .local v2, "e":Ljava/io/IOException;
    :try_start_6
    new-instance v3, Lorg/apache/mina/core/buffer/BufferDataException;

    invoke-direct {v3, v2}, Lorg/apache/mina/core/buffer/BufferDataException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "oldLimit":I
    .end local v1    # "length":I
    .end local p0    # "this":Lorg/apache/mina/core/buffer/AbstractIoBuffer;
    .end local p1    # "classLoader":Ljava/lang/ClassLoader;
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 2200
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "oldLimit":I
    .restart local v1    # "length":I
    .restart local p0    # "this":Lorg/apache/mina/core/buffer/AbstractIoBuffer;
    .restart local p1    # "classLoader":Ljava/lang/ClassLoader;
    :goto_1
    invoke-virtual {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 2201
    throw v2

    .line 2155
    .end local v0    # "oldLimit":I
    :cond_0
    new-instance v0, Lorg/apache/mina/core/buffer/BufferDataException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Object length should be greater than 4: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/mina/core/buffer/BufferDataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2150
    .end local v1    # "length":I
    :cond_1
    new-instance v0, Ljava/nio/BufferUnderflowException;

    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v0
.end method

.method public getPrefixedString(ILjava/nio/charset/CharsetDecoder;)Ljava/lang/String;
    .locals 9
    .param p1, "prefixLength"    # I
    .param p2, "decoder"    # Ljava/nio/charset/CharsetDecoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .line 1922
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->prefixedDataAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1926
    const/4 v0, 0x0

    .line 1928
    .local v0, "fieldSize":I
    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 1936
    :cond_0
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getInt()I

    move-result v0

    goto :goto_0

    .line 1933
    :cond_1
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getUnsignedShort()I

    move-result v0

    .line 1934
    goto :goto_0

    .line 1930
    :cond_2
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getUnsigned()S

    move-result v0

    .line 1931
    nop

    .line 1940
    :goto_0
    if-nez v0, :cond_3

    .line 1941
    const-string v1, ""

    return-object v1

    .line 1944
    :cond_3
    invoke-virtual {p2}, Ljava/nio/charset/CharsetDecoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1945
    invoke-virtual {p2}, Ljava/nio/charset/CharsetDecoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1946
    invoke-virtual {p2}, Ljava/nio/charset/CharsetDecoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    move v2, v1

    .line 1948
    .local v2, "utf16":Z
    :goto_2
    if-eqz v2, :cond_7

    and-int/lit8 v3, v0, 0x1

    if-nez v3, :cond_6

    goto :goto_3

    .line 1949
    :cond_6
    new-instance v1, Lorg/apache/mina/core/buffer/BufferDataException;

    const-string v3, "fieldSize is not even for a UTF-16 string."

    invoke-direct {v1, v3}, Lorg/apache/mina/core/buffer/BufferDataException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1952
    :cond_7
    :goto_3
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit()I

    move-result v3

    .line 1953
    .local v3, "oldLimit":I
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v4

    add-int/2addr v4, v0

    .line 1955
    .local v4, "end":I
    if-lt v3, v4, :cond_b

    .line 1959
    invoke-virtual {p0, v4}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1960
    invoke-virtual {p2}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 1962
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->remaining()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p2}, Ljava/nio/charset/CharsetDecoder;->averageCharsPerByte()F

    move-result v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    add-int/2addr v5, v1

    .line 1963
    .local v5, "expectedLength":I
    invoke-static {v5}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v6

    .line 1966
    .local v6, "out":Ljava/nio/CharBuffer;
    :goto_4
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->hasRemaining()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1967
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {p2, v7, v6, v1}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v7

    .local v7, "cr":Ljava/nio/charset/CoderResult;
    goto :goto_5

    .line 1969
    .end local v7    # "cr":Ljava/nio/charset/CoderResult;
    :cond_8
    invoke-virtual {p2, v6}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v7

    .line 1972
    .restart local v7    # "cr":Ljava/nio/charset/CoderResult;
    :goto_5
    invoke-virtual {v7}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1973
    nop

    .line 1987
    .end local v7    # "cr":Ljava/nio/charset/CoderResult;
    invoke-virtual {p0, v3}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1988
    invoke-virtual {p0, v4}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1989
    invoke-virtual {v6}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1976
    .restart local v7    # "cr":Ljava/nio/charset/CoderResult;
    :cond_9
    invoke-virtual {v7}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1977
    invoke-virtual {v6}, Ljava/nio/CharBuffer;->capacity()I

    move-result v8

    add-int/2addr v8, v5

    invoke-static {v8}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v8

    .line 1978
    .local v8, "o":Ljava/nio/CharBuffer;
    invoke-virtual {v6}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 1979
    invoke-virtual {v8, v6}, Ljava/nio/CharBuffer;->put(Ljava/nio/CharBuffer;)Ljava/nio/CharBuffer;

    .line 1980
    move-object v6, v8

    .line 1981
    goto :goto_4

    .line 1984
    .end local v8    # "o":Ljava/nio/CharBuffer;
    :cond_a
    invoke-virtual {v7}, Ljava/nio/charset/CoderResult;->throwException()V

    .line 1985
    .end local v7    # "cr":Ljava/nio/charset/CoderResult;
    goto :goto_4

    .line 1956
    .end local v5    # "expectedLength":I
    .end local v6    # "out":Ljava/nio/CharBuffer;
    :cond_b
    new-instance v1, Ljava/nio/BufferUnderflowException;

    invoke-direct {v1}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v1

    .line 1923
    .end local v0    # "fieldSize":I
    .end local v2    # "utf16":Z
    .end local v3    # "oldLimit":I
    .end local v4    # "end":I
    :cond_c
    new-instance v0, Ljava/nio/BufferUnderflowException;

    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v0
.end method

.method public getPrefixedString(Ljava/nio/charset/CharsetDecoder;)Ljava/lang/String;
    .locals 1
    .param p1, "decoder"    # Ljava/nio/charset/CharsetDecoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .line 1907
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getPrefixedString(ILjava/nio/charset/CharsetDecoder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getShort()S
    .locals 1

    .line 777
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    return v0
.end method

.method public final getShort(I)S
    .locals 1
    .param p1, "index"    # I

    .line 795
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    return v0
.end method

.method public final getSlice(I)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 6
    .param p1, "length"    # I

    .line 1225
    if-ltz p1, :cond_1

    .line 1228
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v0

    .line 1229
    .local v0, "pos":I
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit()I

    move-result v1

    .line 1230
    .local v1, "limit":I
    add-int v2, v0, p1

    .line 1231
    .local v2, "nextPos":I
    if-lt v1, v2, :cond_0

    .line 1236
    add-int v3, v0, p1

    invoke-virtual {p0, v3}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1237
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->slice()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v3

    .line 1238
    .local v3, "slice":Lorg/apache/mina/core/buffer/IoBuffer;
    invoke-virtual {p0, v2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1239
    invoke-virtual {p0, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1240
    return-object v3

    .line 1232
    .end local v3    # "slice":Lorg/apache/mina/core/buffer/IoBuffer;
    :cond_0
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "position + length ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") is greater than limit ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1226
    .end local v0    # "pos":I
    .end local v1    # "limit":I
    .end local v2    # "nextPos":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getSlice(II)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 6
    .param p1, "index"    # I
    .param p2, "length"    # I

    .line 1191
    if-ltz p2, :cond_2

    .line 1195
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v0

    .line 1196
    .local v0, "pos":I
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit()I

    move-result v1

    .line 1198
    .local v1, "limit":I
    if-gt p1, v1, :cond_1

    .line 1202
    add-int v2, p1, p2

    .line 1204
    .local v2, "endIndex":I
    if-gt v2, v1, :cond_0

    .line 1209
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->clear()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1210
    invoke-virtual {p0, v2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1211
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1213
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->slice()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v3

    .line 1214
    .local v3, "slice":Lorg/apache/mina/core/buffer/IoBuffer;
    invoke-virtual {p0, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1215
    invoke-virtual {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1217
    return-object v3

    .line 1205
    .end local v3    # "slice":Lorg/apache/mina/core/buffer/IoBuffer;
    :cond_0
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "index + length ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") is greater than limit ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1199
    .end local v2    # "endIndex":I
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1192
    .end local v0    # "pos":I
    .end local v1    # "limit":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getString(ILjava/nio/charset/CharsetDecoder;)Ljava/lang/String;
    .locals 10
    .param p1, "fieldSize"    # I
    .param p2, "decoder"    # Ljava/nio/charset/CharsetDecoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .line 1683
    invoke-static {p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->checkFieldSize(I)V

    .line 1685
    const-string v0, ""

    if-nez p1, :cond_0

    .line 1686
    return-object v0

    .line 1689
    :cond_0
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1690
    return-object v0

    .line 1693
    :cond_1
    invoke-virtual {p2}, Ljava/nio/charset/CharsetDecoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_3

    .line 1694
    invoke-virtual {p2}, Ljava/nio/charset/CharsetDecoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v1

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v3}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1695
    invoke-virtual {p2}, Ljava/nio/charset/CharsetDecoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v1

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v3}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    move v1, v2

    .line 1697
    .local v1, "utf16":Z
    :goto_1
    if-eqz v1, :cond_5

    and-int/lit8 v3, p1, 0x1

    if-nez v3, :cond_4

    goto :goto_2

    .line 1698
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "fieldSize is not even."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1701
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v3

    .line 1702
    .local v3, "oldPos":I
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit()I

    move-result v4

    .line 1703
    .local v4, "oldLimit":I
    add-int v5, v3, p1

    .line 1705
    .local v5, "end":I
    if-lt v4, v5, :cond_12

    .line 1711
    if-nez v1, :cond_9

    .line 1712
    move v6, v3

    .local v6, "i":I
    :goto_3
    if-ge v6, v5, :cond_7

    .line 1713
    invoke-virtual {p0, v6}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->get(I)B

    move-result v7

    if-nez v7, :cond_6

    .line 1714
    goto :goto_4

    .line 1712
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1718
    :cond_7
    :goto_4
    if-ne v6, v5, :cond_8

    .line 1719
    invoke-virtual {p0, v5}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_7

    .line 1721
    :cond_8
    invoke-virtual {p0, v6}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_7

    .line 1724
    .end local v6    # "i":I
    :cond_9
    move v6, v3

    .restart local v6    # "i":I
    :goto_5
    if-ge v6, v5, :cond_b

    .line 1725
    invoke-virtual {p0, v6}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->get(I)B

    move-result v7

    if-nez v7, :cond_a

    add-int/lit8 v7, v6, 0x1

    invoke-virtual {p0, v7}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->get(I)B

    move-result v7

    if-nez v7, :cond_a

    .line 1726
    goto :goto_6

    .line 1724
    :cond_a
    add-int/lit8 v6, v6, 0x2

    goto :goto_5

    .line 1730
    :cond_b
    :goto_6
    if-ne v6, v5, :cond_c

    .line 1731
    invoke-virtual {p0, v5}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_7

    .line 1733
    :cond_c
    invoke-virtual {p0, v6}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1737
    :goto_7
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->hasRemaining()Z

    move-result v7

    if-nez v7, :cond_d

    .line 1738
    invoke-virtual {p0, v4}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1739
    invoke-virtual {p0, v5}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1740
    return-object v0

    .line 1742
    :cond_d
    invoke-virtual {p2}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 1744
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->remaining()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Ljava/nio/charset/CharsetDecoder;->averageCharsPerByte()F

    move-result v7

    mul-float/2addr v0, v7

    float-to-int v0, v0

    add-int/2addr v0, v2

    .line 1745
    .local v0, "expectedLength":I
    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v7

    .line 1748
    .local v7, "out":Ljava/nio/CharBuffer;
    :goto_8
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->hasRemaining()Z

    move-result v8

    if-eqz v8, :cond_e

    .line 1749
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-virtual {p2, v8, v7, v2}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v8

    .local v8, "cr":Ljava/nio/charset/CoderResult;
    goto :goto_9

    .line 1751
    .end local v8    # "cr":Ljava/nio/charset/CoderResult;
    :cond_e
    invoke-virtual {p2, v7}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v8

    .line 1754
    .restart local v8    # "cr":Ljava/nio/charset/CoderResult;
    :goto_9
    invoke-virtual {v8}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v9

    if-eqz v9, :cond_f

    .line 1755
    nop

    .line 1774
    .end local v8    # "cr":Ljava/nio/charset/CoderResult;
    invoke-virtual {p0, v4}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1775
    invoke-virtual {p0, v5}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1776
    invoke-virtual {v7}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1758
    .restart local v8    # "cr":Ljava/nio/charset/CoderResult;
    :cond_f
    invoke-virtual {v8}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v9

    if-eqz v9, :cond_10

    .line 1759
    invoke-virtual {v7}, Ljava/nio/CharBuffer;->capacity()I

    move-result v9

    add-int/2addr v9, v0

    invoke-static {v9}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v9

    .line 1760
    .local v9, "o":Ljava/nio/CharBuffer;
    invoke-virtual {v7}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 1761
    invoke-virtual {v9, v7}, Ljava/nio/CharBuffer;->put(Ljava/nio/CharBuffer;)Ljava/nio/CharBuffer;

    .line 1762
    move-object v7, v9

    .line 1763
    goto :goto_8

    .line 1766
    .end local v9    # "o":Ljava/nio/CharBuffer;
    :cond_10
    invoke-virtual {v8}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v9

    if-eqz v9, :cond_11

    .line 1768
    invoke-virtual {p0, v4}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1769
    invoke-virtual {p0, v3}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1770
    invoke-virtual {v8}, Ljava/nio/charset/CoderResult;->throwException()V

    .line 1772
    .end local v8    # "cr":Ljava/nio/charset/CoderResult;
    :cond_11
    goto :goto_8

    .line 1706
    .end local v0    # "expectedLength":I
    .end local v6    # "i":I
    .end local v7    # "out":Ljava/nio/CharBuffer;
    :cond_12
    new-instance v0, Ljava/nio/BufferUnderflowException;

    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v0
.end method

.method public getString(Ljava/nio/charset/CharsetDecoder;)Ljava/lang/String;
    .locals 12
    .param p1, "decoder"    # Ljava/nio/charset/CharsetDecoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .line 1579
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->hasRemaining()Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    .line 1580
    return-object v1

    .line 1583
    :cond_0
    invoke-virtual {p1}, Ljava/nio/charset/CharsetDecoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v0

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v2}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_2

    .line 1584
    invoke-virtual {p1}, Ljava/nio/charset/CharsetDecoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v0

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v4}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1585
    invoke-virtual {p1}, Ljava/nio/charset/CharsetDecoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v0

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v4}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v3

    .line 1587
    .local v0, "utf16":Z
    :goto_1
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v4

    .line 1588
    .local v4, "oldPos":I
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit()I

    move-result v5

    .line 1589
    .local v5, "oldLimit":I
    const/4 v6, -0x1

    .line 1592
    .local v6, "end":I
    if-nez v0, :cond_4

    .line 1593
    invoke-virtual {p0, v2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->indexOf(B)I

    move-result v2

    .line 1594
    .end local v6    # "end":I
    .local v2, "end":I
    if-gez v2, :cond_3

    .line 1595
    move v2, v5

    move v6, v5

    move v9, v2

    move v10, v6

    .local v6, "newPos":I
    goto :goto_5

    .line 1597
    .end local v6    # "newPos":I
    :cond_3
    add-int/lit8 v6, v2, 0x1

    move v9, v2

    move v10, v6

    .restart local v6    # "newPos":I
    goto :goto_5

    .line 1600
    .end local v2    # "end":I
    .local v6, "end":I
    :cond_4
    move v7, v4

    .line 1602
    .local v7, "i":I
    :cond_5
    :goto_2
    invoke-virtual {p0, v7}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->get(I)B

    move-result v8

    if-nez v8, :cond_6

    move v8, v3

    goto :goto_3

    :cond_6
    move v8, v2

    .line 1603
    .local v8, "wasZero":Z
    :goto_3
    add-int/lit8 v7, v7, 0x1

    .line 1605
    if-lt v7, v5, :cond_7

    .line 1606
    goto :goto_4

    .line 1609
    :cond_7
    invoke-virtual {p0, v7}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->get(I)B

    move-result v9

    if-eqz v9, :cond_8

    .line 1610
    add-int/lit8 v7, v7, 0x1

    .line 1611
    if-lt v7, v5, :cond_5

    .line 1612
    goto :goto_4

    .line 1618
    :cond_8
    if-eqz v8, :cond_10

    .line 1619
    add-int/lit8 v6, v7, -0x1

    .line 1620
    nop

    .line 1624
    .end local v8    # "wasZero":Z
    :goto_4
    if-gez v6, :cond_9

    .line 1625
    sub-int v2, v5, v4

    and-int/lit8 v2, v2, -0x2

    add-int/2addr v2, v4

    move v6, v2

    move v10, v2

    move v9, v6

    .local v2, "newPos":I
    goto :goto_5

    .line 1627
    .end local v2    # "newPos":I
    :cond_9
    add-int/lit8 v2, v6, 0x2

    if-gt v2, v5, :cond_a

    .line 1628
    add-int/lit8 v2, v6, 0x2

    move v10, v2

    move v9, v6

    .restart local v2    # "newPos":I
    goto :goto_5

    .line 1630
    .end local v2    # "newPos":I
    :cond_a
    move v2, v6

    move v10, v2

    move v9, v6

    .line 1635
    .end local v6    # "end":I
    .end local v7    # "i":I
    .local v9, "end":I
    .local v10, "newPos":I
    :goto_5
    if-ne v4, v9, :cond_b

    .line 1636
    invoke-virtual {p0, v10}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1637
    return-object v1

    .line 1640
    :cond_b
    invoke-virtual {p0, v9}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1641
    invoke-virtual {p1}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 1643
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->remaining()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Ljava/nio/charset/CharsetDecoder;->averageCharsPerByte()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int/lit8 v11, v1, 0x1

    .line 1644
    .local v11, "expectedLength":I
    invoke-static {v11}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v1

    .line 1647
    .local v1, "out":Ljava/nio/CharBuffer;
    :goto_6
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1648
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p1, v2, v1, v3}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v2

    .local v2, "cr":Ljava/nio/charset/CoderResult;
    goto :goto_7

    .line 1650
    .end local v2    # "cr":Ljava/nio/charset/CoderResult;
    :cond_c
    invoke-virtual {p1, v1}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v2

    .line 1653
    .restart local v2    # "cr":Ljava/nio/charset/CoderResult;
    :goto_7
    invoke-virtual {v2}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 1654
    nop

    .line 1673
    .end local v2    # "cr":Ljava/nio/charset/CoderResult;
    invoke-virtual {p0, v5}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1674
    invoke-virtual {p0, v10}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1675
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1657
    .restart local v2    # "cr":Ljava/nio/charset/CoderResult;
    :cond_d
    invoke-virtual {v2}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 1658
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->capacity()I

    move-result v6

    add-int/2addr v6, v11

    invoke-static {v6}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v6

    .line 1659
    .local v6, "o":Ljava/nio/CharBuffer;
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 1660
    invoke-virtual {v6, v1}, Ljava/nio/CharBuffer;->put(Ljava/nio/CharBuffer;)Ljava/nio/CharBuffer;

    .line 1661
    move-object v1, v6

    .line 1662
    goto :goto_6

    .line 1665
    .end local v6    # "o":Ljava/nio/CharBuffer;
    :cond_e
    invoke-virtual {v2}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 1667
    invoke-virtual {p0, v5}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1668
    invoke-virtual {p0, v4}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1669
    invoke-virtual {v2}, Ljava/nio/charset/CoderResult;->throwException()V

    .line 1671
    .end local v2    # "cr":Ljava/nio/charset/CoderResult;
    :cond_f
    goto :goto_6

    .line 1622
    .end local v1    # "out":Ljava/nio/CharBuffer;
    .end local v9    # "end":I
    .end local v10    # "newPos":I
    .end local v11    # "expectedLength":I
    .local v6, "end":I
    .restart local v7    # "i":I
    :cond_10
    goto/16 :goto_2
.end method

.method public final getUnsigned()S
    .locals 1

    .line 510
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    return v0
.end method

.method public final getUnsigned(I)S
    .locals 1
    .param p1, "index"    # I

    .line 616
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    return v0
.end method

.method public getUnsignedInt()J
    .locals 4

    .line 1377
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getInt()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public getUnsignedInt(I)J
    .locals 4
    .param p1, "index"    # I

    .line 1492
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public getUnsignedMediumInt()I
    .locals 5

    .line 1400
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getUnsigned()S

    move-result v0

    .line 1401
    .local v0, "b1":I
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getUnsigned()S

    move-result v1

    .line 1402
    .local v1, "b2":I
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getUnsigned()S

    move-result v2

    .line 1403
    .local v2, "b3":I
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1404
    shl-int/lit8 v3, v0, 0x10

    shl-int/lit8 v4, v1, 0x8

    or-int/2addr v3, v4

    or-int/2addr v3, v2

    return v3

    .line 1407
    :cond_0
    shl-int/lit8 v3, v2, 0x10

    shl-int/lit8 v4, v1, 0x8

    or-int/2addr v3, v4

    or-int/2addr v3, v0

    return v3
.end method

.method public getUnsignedMediumInt(I)I
    .locals 5
    .param p1, "index"    # I

    .line 1430
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getUnsigned(I)S

    move-result v0

    .line 1431
    .local v0, "b1":I
    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getUnsigned(I)S

    move-result v1

    .line 1432
    .local v1, "b2":I
    add-int/lit8 v2, p1, 0x2

    invoke-virtual {p0, v2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getUnsigned(I)S

    move-result v2

    .line 1434
    .local v2, "b3":I
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1435
    shl-int/lit8 v3, v0, 0x10

    shl-int/lit8 v4, v1, 0x8

    or-int/2addr v3, v4

    or-int/2addr v3, v2

    return v3

    .line 1438
    :cond_0
    shl-int/lit8 v3, v2, 0x10

    shl-int/lit8 v4, v1, 0x8

    or-int/2addr v3, v4

    or-int/2addr v3, v0

    return v3
.end method

.method public getUnsignedShort()I
    .locals 2

    .line 1361
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getUnsignedShort(I)I
    .locals 2
    .param p1, "index"    # I

    .line 1369
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getShort(I)S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public final hasRemaining()Z
    .locals 3

    .line 492
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 494
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    if-le v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 5

    .line 1255
    const/4 v0, 0x1

    .line 1256
    .local v0, "h":I
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v1

    .line 1257
    .local v1, "p":I
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 1258
    mul-int/lit8 v3, v0, 0x1f

    invoke-virtual {p0, v2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->get(I)B

    move-result v4

    add-int v0, v3, v4

    .line 1257
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1260
    .end local v2    # "i":I
    :cond_0
    return v0
.end method

.method public indexOf(B)I
    .locals 6
    .param p1, "b"    # B

    .line 2285
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2286
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->arrayOffset()I

    move-result v0

    .line 2287
    .local v0, "arrayOffset":I
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v1

    add-int/2addr v1, v0

    .line 2288
    .local v1, "beginPos":I
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit()I

    move-result v2

    add-int/2addr v2, v0

    .line 2289
    .local v2, "limit":I
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->array()[B

    move-result-object v3

    .line 2291
    .local v3, "array":[B
    move v4, v1

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 2292
    aget-byte v5, v3, v4

    if-ne v5, p1, :cond_0

    .line 2293
    sub-int v5, v4, v0

    return v5

    .line 2291
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2296
    .end local v0    # "arrayOffset":I
    .end local v1    # "beginPos":I
    .end local v2    # "limit":I
    .end local v3    # "array":[B
    .end local v4    # "i":I
    :cond_1
    goto :goto_2

    .line 2297
    :cond_2
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v0

    .line 2298
    .local v0, "beginPos":I
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit()I

    move-result v1

    .line 2300
    .local v1, "limit":I
    move v2, v0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_4

    .line 2301
    invoke-virtual {p0, v2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->get(I)B

    move-result v3

    if-ne v3, p1, :cond_3

    .line 2302
    return v2

    .line 2300
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2307
    .end local v0    # "beginPos":I
    .end local v1    # "limit":I
    .end local v2    # "i":I
    :cond_4
    :goto_2
    const/4 v0, -0x1

    return v0
.end method

.method public final isAutoExpand()Z
    .locals 1

    .line 208
    iget-boolean v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->recapacityAllowed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isAutoShrink()Z
    .locals 1

    .line 216
    iget-boolean v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoShrink:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->recapacityAllowed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isDerived()Z
    .locals 1

    .line 224
    iget-boolean v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->derived:Z

    return v0
.end method

.method public final isDirect()Z
    .locals 1

    .line 120
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    return v0
.end method

.method public final isReadOnly()Z
    .locals 1

    .line 128
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    return v0
.end method

.method public final limit()I
    .locals 1

    .line 384
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    return v0
.end method

.method public final limit(I)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "newLimit"    # I

    .line 392
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(II)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 393
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 394
    iget v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->mark:I

    if-le v0, p1, :cond_0

    .line 395
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->mark:I

    .line 397
    :cond_0
    return-object p0
.end method

.method public final mark()Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 2

    .line 405
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 406
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 407
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iput v1, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->mark:I

    .line 409
    return-object p0
.end method

.method public final markValue()I
    .locals 1

    .line 417
    iget v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->mark:I

    return v0
.end method

.method public final minimumCapacity()I
    .locals 1

    .line 143
    iget v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->minimumCapacity:I

    return v0
.end method

.method public final minimumCapacity(I)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 3
    .param p1, "minimumCapacity"    # I

    .line 151
    if-ltz p1, :cond_0

    .line 154
    iput p1, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->minimumCapacity:I

    .line 155
    return-object p0

    .line 152
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "minimumCapacity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final order()Ljava/nio/ByteOrder;
    .locals 1

    .line 716
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method public final order(Ljava/nio/ByteOrder;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "bo"    # Ljava/nio/ByteOrder;

    .line 724
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 725
    return-object p0
.end method

.method public final position()I
    .locals 1

    .line 361
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method

.method public final position(I)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "newPosition"    # I

    .line 369
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(II)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 370
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 372
    iget v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->mark:I

    if-le v0, p1, :cond_0

    .line 373
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->mark:I

    .line 376
    :cond_0
    return-object p0
.end method

.method public prefixedDataAvailable(I)Z
    .locals 1
    .param p1, "prefixLength"    # I

    .line 2246
    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->prefixedDataAvailable(II)Z

    move-result v0

    return v0
.end method

.method public prefixedDataAvailable(II)Z
    .locals 4
    .param p1, "prefixLength"    # I
    .param p2, "maxDataLength"    # I

    .line 2254
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x0

    if-ge v0, p1, :cond_0

    .line 2255
    return v1

    .line 2259
    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-ne p1, v2, :cond_1

    .line 2267
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getInt(I)I

    move-result v2

    .line 2268
    .local v2, "dataLength":I
    goto :goto_0

    .line 2270
    .end local v2    # "dataLength":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prefixLength: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2264
    :cond_2
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getUnsignedShort(I)I

    move-result v2

    .line 2265
    .restart local v2    # "dataLength":I
    goto :goto_0

    .line 2261
    .end local v2    # "dataLength":I
    :cond_3
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getUnsigned(I)S

    move-result v2

    .line 2262
    .restart local v2    # "dataLength":I
    nop

    .line 2273
    :goto_0
    if-ltz v2, :cond_5

    if-gt v2, p2, :cond_5

    .line 2277
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->remaining()I

    move-result v3

    sub-int/2addr v3, p1

    if-lt v3, v2, :cond_4

    move v1, v0

    :cond_4
    return v1

    .line 2274
    :cond_5
    new-instance v0, Lorg/apache/mina/core/buffer/BufferDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dataLength: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/mina/core/buffer/BufferDataException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final put(B)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "b"    # B

    .line 518
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 519
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 520
    return-object p0
.end method

.method public final put(IB)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "index"    # I
    .param p2, "b"    # B

    .line 624
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(II)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 625
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 626
    return-object p0
.end method

.method public final put(Ljava/nio/ByteBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "src"    # Ljava/nio/ByteBuffer;

    .line 643
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 644
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 645
    return-object p0
.end method

.method public put(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "src"    # Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1345
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->put(Ljava/nio/ByteBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    return-object v0
.end method

.method public put([B)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 2
    .param p1, "src"    # [B

    .line 1353
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->put([BII)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final put([BII)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "src"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 653
    invoke-direct {p0, p3}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 654
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 655
    return-object p0
.end method

.method public final putChar(C)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "value"    # C

    .line 741
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 742
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putChar(C)Ljava/nio/ByteBuffer;

    .line 743
    return-object p0
.end method

.method public final putChar(IC)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # C

    .line 759
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(II)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 760
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putChar(IC)Ljava/nio/ByteBuffer;

    .line 761
    return-object p0
.end method

.method public final putDouble(D)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "value"    # D

    .line 1113
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1114
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    .line 1115
    return-object p0
.end method

.method public final putDouble(ID)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # D

    .line 1131
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(II)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1132
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->putDouble(ID)Ljava/nio/ByteBuffer;

    .line 1133
    return-object p0
.end method

.method public putEnum(ILjava/lang/Enum;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Enum<",
            "*>;)",
            "Lorg/apache/mina/core/buffer/IoBuffer;"
        }
    .end annotation

    .line 2489
    .local p2, "e":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 2492
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->put(IB)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    return-object v0

    .line 2490
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "byte"

    invoke-direct {p0, p2, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->enumConversionErrorMessage(Ljava/lang/Enum;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public putEnum(Ljava/lang/Enum;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)",
            "Lorg/apache/mina/core/buffer/IoBuffer;"
        }
    .end annotation

    .line 2478
    .local p1, "e":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 2481
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    return-object v0

    .line 2479
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "byte"

    invoke-direct {p0, p1, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->enumConversionErrorMessage(Ljava/lang/Enum;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public putEnumInt(ILjava/lang/Enum;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Enum<",
            "*>;)",
            "Lorg/apache/mina/core/buffer/IoBuffer;"
        }
    .end annotation

    .line 2530
    .local p2, "e":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->putInt(II)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    return-object v0
.end method

.method public putEnumInt(Ljava/lang/Enum;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)",
            "Lorg/apache/mina/core/buffer/IoBuffer;"
        }
    .end annotation

    .line 2522
    .local p1, "e":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->putInt(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    return-object v0
.end method

.method public putEnumSet(ILjava/util/Set;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 6
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(I",
            "Ljava/util/Set<",
            "TE;>;)",
            "Lorg/apache/mina/core/buffer/IoBuffer;"
        }
    .end annotation

    .line 2639
    .local p2, "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    invoke-direct {p0, p2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->toLong(Ljava/util/Set;)J

    move-result-wide v0

    .line 2640
    .local v0, "vector":J
    const-wide/16 v2, -0x100

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 2643
    long-to-int v2, v0

    int-to-byte v2, v2

    invoke-virtual {p0, p1, v2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->put(IB)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v2

    return-object v2

    .line 2641
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The enum set is too large to fit in a byte: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public putEnumSet(Ljava/util/Set;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/util/Set<",
            "TE;>;)",
            "Lorg/apache/mina/core/buffer/IoBuffer;"
        }
    .end annotation

    .line 2627
    .local p1, "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    invoke-direct {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->toLong(Ljava/util/Set;)J

    move-result-wide v0

    .line 2628
    .local v0, "vector":J
    const-wide/16 v2, -0x100

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 2631
    long-to-int v2, v0

    int-to-byte v2, v2

    invoke-virtual {p0, v2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v2

    return-object v2

    .line 2629
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The enum set is too large to fit in a byte: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public putEnumSetInt(ILjava/util/Set;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 6
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(I",
            "Ljava/util/Set<",
            "TE;>;)",
            "Lorg/apache/mina/core/buffer/IoBuffer;"
        }
    .end annotation

    .line 2687
    .local p2, "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    invoke-direct {p0, p2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->toLong(Ljava/util/Set;)J

    move-result-wide v0

    .line 2688
    .local v0, "vector":J
    const-wide v2, -0x100000000L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 2691
    long-to-int v2, v0

    invoke-virtual {p0, p1, v2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->putInt(II)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v2

    return-object v2

    .line 2689
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The enum set is too large to fit in an int: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public putEnumSetInt(Ljava/util/Set;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/util/Set<",
            "TE;>;)",
            "Lorg/apache/mina/core/buffer/IoBuffer;"
        }
    .end annotation

    .line 2675
    .local p1, "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    invoke-direct {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->toLong(Ljava/util/Set;)J

    move-result-wide v0

    .line 2676
    .local v0, "vector":J
    const-wide v2, -0x100000000L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 2679
    long-to-int v2, v0

    invoke-virtual {p0, v2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->putInt(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v2

    return-object v2

    .line 2677
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The enum set is too large to fit in an int: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public putEnumSetLong(ILjava/util/Set;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(I",
            "Ljava/util/Set<",
            "TE;>;)",
            "Lorg/apache/mina/core/buffer/IoBuffer;"
        }
    .end annotation

    .line 2707
    .local p2, "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    invoke-direct {p0, p2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->toLong(Ljava/util/Set;)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->putLong(IJ)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    return-object v0
.end method

.method public putEnumSetLong(Ljava/util/Set;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/util/Set<",
            "TE;>;)",
            "Lorg/apache/mina/core/buffer/IoBuffer;"
        }
    .end annotation

    .line 2699
    .local p1, "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    invoke-direct {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->toLong(Ljava/util/Set;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->putLong(J)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    return-object v0
.end method

.method public putEnumSetShort(ILjava/util/Set;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 6
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(I",
            "Ljava/util/Set<",
            "TE;>;)",
            "Lorg/apache/mina/core/buffer/IoBuffer;"
        }
    .end annotation

    .line 2663
    .local p2, "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    invoke-direct {p0, p2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->toLong(Ljava/util/Set;)J

    move-result-wide v0

    .line 2664
    .local v0, "vector":J
    const-wide/32 v2, -0x10000

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 2667
    long-to-int v2, v0

    int-to-short v2, v2

    invoke-virtual {p0, p1, v2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->putShort(IS)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v2

    return-object v2

    .line 2665
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The enum set is too large to fit in a short: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public putEnumSetShort(Ljava/util/Set;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/util/Set<",
            "TE;>;)",
            "Lorg/apache/mina/core/buffer/IoBuffer;"
        }
    .end annotation

    .line 2651
    .local p1, "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    invoke-direct {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->toLong(Ljava/util/Set;)J

    move-result-wide v0

    .line 2652
    .local v0, "vector":J
    const-wide/32 v2, -0x10000

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 2655
    long-to-int v2, v0

    int-to-short v2, v2

    invoke-virtual {p0, v2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->putShort(S)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v2

    return-object v2

    .line 2653
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The enum set is too large to fit in a short: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public putEnumShort(ILjava/lang/Enum;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Enum<",
            "*>;)",
            "Lorg/apache/mina/core/buffer/IoBuffer;"
        }
    .end annotation

    .line 2511
    .local p2, "e":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0xffff

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 2514
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->putShort(IS)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    return-object v0

    .line 2512
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "short"

    invoke-direct {p0, p2, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->enumConversionErrorMessage(Ljava/lang/Enum;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public putEnumShort(Ljava/lang/Enum;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)",
            "Lorg/apache/mina/core/buffer/IoBuffer;"
        }
    .end annotation

    .line 2500
    .local p1, "e":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0xffff

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 2503
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->putShort(S)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    return-object v0

    .line 2501
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "short"

    invoke-direct {p0, p1, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->enumConversionErrorMessage(Ljava/lang/Enum;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final putFloat(F)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "value"    # F

    .line 1069
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1070
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 1071
    return-object p0
.end method

.method public final putFloat(IF)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # F

    .line 1087
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(II)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1088
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putFloat(IF)Ljava/nio/ByteBuffer;

    .line 1089
    return-object p0
.end method

.method public final putInt(I)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "value"    # I

    .line 829
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 830
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 831
    return-object p0
.end method

.method public final putInt(II)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 999
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(II)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1000
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 1001
    return-object p0
.end method

.method public final putLong(IJ)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 1043
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(II)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1044
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 1045
    return-object p0
.end method

.method public final putLong(J)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "value"    # J

    .line 1025
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1026
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 1027
    return-object p0
.end method

.method public putMediumInt(I)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 5
    .param p1, "value"    # I

    .line 1456
    shr-int/lit8 v0, p1, 0x10

    int-to-byte v0, v0

    .line 1457
    .local v0, "b1":B
    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    .line 1458
    .local v1, "b2":B
    int-to-byte v2, p1

    .line 1460
    .local v2, "b3":B
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1461
    invoke-virtual {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_0

    .line 1463
    :cond_0
    invoke-virtual {p0, v2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/apache/mina/core/buffer/IoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1466
    :goto_0
    return-object p0
.end method

.method public putMediumInt(II)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 5
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 1474
    shr-int/lit8 v0, p2, 0x10

    int-to-byte v0, v0

    .line 1475
    .local v0, "b1":B
    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    .line 1476
    .local v1, "b2":B
    int-to-byte v2, p2

    .line 1478
    .local v2, "b3":B
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1479
    invoke-virtual {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->put(IB)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v3

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(IB)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v3

    add-int/lit8 v4, p1, 0x2

    invoke-virtual {v3, v4, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->put(IB)Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_0

    .line 1481
    :cond_0
    invoke-virtual {p0, p1, v2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->put(IB)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v3

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(IB)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v3

    add-int/lit8 v4, p1, 0x2

    invoke-virtual {v3, v4, v0}, Lorg/apache/mina/core/buffer/IoBuffer;->put(IB)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1484
    :goto_0
    return-object p0
.end method

.method public putObject(Ljava/lang/Object;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 2209
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v0

    .line 2210
    .local v0, "oldPos":I
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->skip(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 2212
    :try_start_0
    new-instance v2, Lorg/apache/mina/core/buffer/AbstractIoBuffer$4;

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->asOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lorg/apache/mina/core/buffer/AbstractIoBuffer$4;-><init>(Lorg/apache/mina/core/buffer/AbstractIoBuffer;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2227
    .local v2, "out":Ljava/io/ObjectOutputStream;
    :try_start_1
    invoke-virtual {v2, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 2228
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2229
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2231
    .end local v2    # "out":Ljava/io/ObjectOutputStream;
    nop

    .line 2234
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v2

    .line 2235
    .local v2, "newPos":I
    invoke-virtual {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 2236
    sub-int v3, v2, v0

    sub-int/2addr v3, v1

    invoke-virtual {p0, v3}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->putInt(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 2237
    invoke-virtual {p0, v2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 2238
    return-object p0

    .line 2212
    .local v2, "out":Ljava/io/ObjectOutputStream;
    :catchall_0
    move-exception v1

    .end local v0    # "oldPos":I
    .end local v2    # "out":Ljava/io/ObjectOutputStream;
    .end local p0    # "this":Lorg/apache/mina/core/buffer/AbstractIoBuffer;
    .end local p1    # "o":Ljava/lang/Object;
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2229
    .restart local v0    # "oldPos":I
    .restart local v2    # "out":Ljava/io/ObjectOutputStream;
    .restart local p0    # "this":Lorg/apache/mina/core/buffer/AbstractIoBuffer;
    .restart local p1    # "o":Ljava/lang/Object;
    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v4

    :try_start_5
    invoke-virtual {v1, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "oldPos":I
    .end local p0    # "this":Lorg/apache/mina/core/buffer/AbstractIoBuffer;
    .end local p1    # "o":Ljava/lang/Object;
    :goto_0
    throw v3
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .end local v2    # "out":Ljava/io/ObjectOutputStream;
    .restart local v0    # "oldPos":I
    .restart local p0    # "this":Lorg/apache/mina/core/buffer/AbstractIoBuffer;
    .restart local p1    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 2230
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lorg/apache/mina/core/buffer/BufferDataException;

    invoke-direct {v2, v1}, Lorg/apache/mina/core/buffer/BufferDataException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public putPrefixedString(Ljava/lang/CharSequence;IIBLjava/nio/charset/CharsetEncoder;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 17
    .param p1, "val"    # Ljava/lang/CharSequence;
    .param p2, "prefixLength"    # I
    .param p3, "padding"    # I
    .param p4, "padValue"    # B
    .param p5, "encoder"    # Ljava/nio/charset/CharsetEncoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .line 2025
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p5

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v1, v6, :cond_2

    if-eq v1, v5, :cond_1

    if-ne v1, v4, :cond_0

    .line 2033
    const v7, 0x7fffffff

    .line 2034
    .local v7, "maxLength":I
    goto :goto_0

    .line 2036
    .end local v7    # "maxLength":I
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "prefixLength: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2030
    :cond_1
    const v7, 0xffff

    .line 2031
    .restart local v7    # "maxLength":I
    goto :goto_0

    .line 2027
    .end local v7    # "maxLength":I
    :cond_2
    const/16 v7, 0xff

    .line 2028
    .restart local v7    # "maxLength":I
    nop

    .line 2039
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    const-string v9, "The specified string is too long."

    if-gt v8, v7, :cond_14

    .line 2042
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-nez v8, :cond_6

    .line 2043
    const/4 v8, 0x0

    if-eq v1, v6, :cond_5

    if-eq v1, v5, :cond_4

    if-eq v1, v4, :cond_3

    goto :goto_1

    .line 2051
    :cond_3
    invoke-virtual {v0, v8}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->putInt(I)Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_1

    .line 2048
    :cond_4
    invoke-virtual {v0, v8}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->putShort(S)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 2049
    goto :goto_1

    .line 2045
    :cond_5
    invoke-virtual {v0, v8}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 2046
    nop

    .line 2054
    :goto_1
    return-object v0

    .line 2058
    :cond_6
    if-eqz v2, :cond_9

    if-eq v2, v6, :cond_9

    if-eq v2, v5, :cond_8

    if-ne v2, v4, :cond_7

    .line 2067
    const/4 v8, 0x3

    .line 2068
    .local v8, "padMask":I
    goto :goto_2

    .line 2070
    .end local v8    # "padMask":I
    :cond_7
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "padding: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2064
    :cond_8
    const/4 v8, 0x1

    .line 2065
    .restart local v8    # "padMask":I
    goto :goto_2

    .line 2061
    .end local v8    # "padMask":I
    :cond_9
    const/4 v8, 0x0

    .line 2062
    .restart local v8    # "padMask":I
    nop

    .line 2073
    :goto_2
    invoke-static/range {p1 .. p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v10

    .line 2074
    .local v10, "in":Ljava/nio/CharBuffer;
    invoke-virtual {v0, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->skip(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 2075
    invoke-virtual/range {p0 .. p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v11

    .line 2076
    .local v11, "oldPos":I
    invoke-virtual/range {p5 .. p5}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    .line 2078
    const/4 v12, 0x0

    .line 2082
    .local v12, "expandedState":I
    :goto_3
    invoke-virtual {v10}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v13

    if-eqz v13, :cond_a

    .line 2083
    invoke-virtual/range {p0 .. p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v13

    invoke-virtual {v3, v10, v13, v6}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v13

    .local v13, "cr":Ljava/nio/charset/CoderResult;
    goto :goto_4

    .line 2085
    .end local v13    # "cr":Ljava/nio/charset/CoderResult;
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/nio/charset/CharsetEncoder;->flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v13

    .line 2088
    .restart local v13    # "cr":Ljava/nio/charset/CoderResult;
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v14

    sub-int/2addr v14, v11

    if-gt v14, v7, :cond_13

    .line 2092
    invoke-virtual {v13}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v14

    if-eqz v14, :cond_e

    .line 2093
    nop

    .line 2120
    .end local v13    # "cr":Ljava/nio/charset/CoderResult;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v9

    sub-int/2addr v9, v11

    and-int/2addr v9, v8

    sub-int v9, v2, v9

    move/from16 v14, p4

    invoke-virtual {v0, v14, v9}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->fill(BI)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 2121
    invoke-virtual/range {p0 .. p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v9

    sub-int/2addr v9, v11

    .line 2122
    .local v9, "length":I
    if-eq v1, v6, :cond_d

    if-eq v1, v5, :cond_c

    if-eq v1, v4, :cond_b

    goto :goto_5

    .line 2130
    :cond_b
    add-int/lit8 v4, v11, -0x4

    invoke-virtual {v0, v4, v9}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->putInt(II)Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_5

    .line 2127
    :cond_c
    add-int/lit8 v4, v11, -0x2

    int-to-short v5, v9

    invoke-virtual {v0, v4, v5}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->putShort(IS)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 2128
    goto :goto_5

    .line 2124
    :cond_d
    add-int/lit8 v4, v11, -0x1

    int-to-byte v5, v9

    invoke-virtual {v0, v4, v5}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->put(IB)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 2125
    nop

    .line 2133
    :goto_5
    return-object v0

    .line 2095
    .end local v9    # "length":I
    .restart local v13    # "cr":Ljava/nio/charset/CoderResult;
    :cond_e
    move/from16 v14, p4

    invoke-virtual {v13}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v15

    if-eqz v15, :cond_12

    .line 2096
    invoke-virtual/range {p0 .. p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->isAutoExpand()Z

    move-result v15

    if-eqz v15, :cond_11

    .line 2097
    if-eqz v12, :cond_10

    if-ne v12, v6, :cond_f

    .line 2103
    invoke-virtual {v10}, Ljava/nio/CharBuffer;->remaining()I

    move-result v15

    int-to-float v15, v15

    invoke-virtual/range {p5 .. p5}, Ljava/nio/charset/CharsetEncoder;->maxBytesPerChar()F

    move-result v16

    mul-float v15, v15, v16

    float-to-double v4, v15

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-direct {v0, v4}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 2104
    add-int/lit8 v12, v12, 0x1

    .line 2105
    const/4 v4, 0x4

    const/4 v5, 0x2

    goto :goto_3

    .line 2107
    :cond_f
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expanded by "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2108
    invoke-virtual {v10}, Ljava/nio/CharBuffer;->remaining()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual/range {p5 .. p5}, Ljava/nio/charset/CharsetEncoder;->maxBytesPerChar()F

    move-result v9

    mul-float/2addr v6, v9

    float-to-double v1, v6

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " but that wasn\'t enough for \'"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2099
    :cond_10
    move-object/from16 v1, p1

    invoke-virtual {v10}, Ljava/nio/CharBuffer;->remaining()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p5 .. p5}, Ljava/nio/charset/CharsetEncoder;->averageBytesPerChar()F

    move-result v4

    mul-float/2addr v2, v4

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v2, v4

    invoke-direct {v0, v2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 2100
    add-int/lit8 v12, v12, 0x1

    .line 2101
    move/from16 v1, p2

    move/from16 v2, p3

    const/4 v4, 0x4

    const/4 v5, 0x2

    goto/16 :goto_3

    .line 2096
    :cond_11
    move-object/from16 v1, p1

    goto :goto_6

    .line 2114
    :cond_12
    move-object/from16 v1, p1

    const/4 v2, 0x0

    move v12, v2

    .line 2116
    :goto_6
    invoke-virtual {v13}, Ljava/nio/charset/CoderResult;->throwException()V

    .line 2117
    .end local v13    # "cr":Ljava/nio/charset/CoderResult;
    move/from16 v1, p2

    move/from16 v2, p3

    const/4 v4, 0x4

    const/4 v5, 0x2

    goto/16 :goto_3

    .line 2089
    .restart local v13    # "cr":Ljava/nio/charset/CoderResult;
    :cond_13
    move-object/from16 v1, p1

    move/from16 v14, p4

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2040
    .end local v8    # "padMask":I
    .end local v10    # "in":Ljava/nio/CharBuffer;
    .end local v11    # "oldPos":I
    .end local v12    # "expandedState":I
    .end local v13    # "cr":Ljava/nio/charset/CoderResult;
    :cond_14
    move-object/from16 v1, p1

    move/from16 v14, p4

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public putPrefixedString(Ljava/lang/CharSequence;IILjava/nio/charset/CharsetEncoder;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 6
    .param p1, "in"    # Ljava/lang/CharSequence;
    .param p2, "prefixLength"    # I
    .param p3, "padding"    # I
    .param p4, "encoder"    # Ljava/nio/charset/CharsetEncoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .line 2015
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->putPrefixedString(Ljava/lang/CharSequence;IIBLjava/nio/charset/CharsetEncoder;)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    return-object v0
.end method

.method public putPrefixedString(Ljava/lang/CharSequence;ILjava/nio/charset/CharsetEncoder;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "in"    # Ljava/lang/CharSequence;
    .param p2, "prefixLength"    # I
    .param p3, "encoder"    # Ljava/nio/charset/CharsetEncoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .line 2006
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->putPrefixedString(Ljava/lang/CharSequence;IILjava/nio/charset/CharsetEncoder;)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    return-object v0
.end method

.method public putPrefixedString(Ljava/lang/CharSequence;Ljava/nio/charset/CharsetEncoder;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 2
    .param p1, "in"    # Ljava/lang/CharSequence;
    .param p2, "encoder"    # Ljava/nio/charset/CharsetEncoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .line 1997
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->putPrefixedString(Ljava/lang/CharSequence;IILjava/nio/charset/CharsetEncoder;)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final putShort(IS)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # S

    .line 803
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(II)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 804
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 805
    return-object p0
.end method

.method public final putShort(S)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "value"    # S

    .line 785
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 786
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 787
    return-object p0
.end method

.method public putString(Ljava/lang/CharSequence;ILjava/nio/charset/CharsetEncoder;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 8
    .param p1, "val"    # Ljava/lang/CharSequence;
    .param p2, "fieldSize"    # I
    .param p3, "encoder"    # Ljava/nio/charset/CharsetEncoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .line 1835
    invoke-static {p2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->checkFieldSize(I)V

    .line 1837
    if-nez p2, :cond_0

    .line 1838
    return-object p0

    .line 1841
    :cond_0
    invoke-direct {p0, p2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1843
    invoke-virtual {p3}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 1844
    invoke-virtual {p3}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v0

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v3}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1845
    invoke-virtual {p3}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v0

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v3}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v1

    .line 1847
    .local v0, "utf16":Z
    :goto_1
    if-eqz v0, :cond_4

    and-int/lit8 v3, p2, 0x1

    if-nez v3, :cond_3

    goto :goto_2

    .line 1848
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "fieldSize is not even."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1851
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit()I

    move-result v3

    .line 1852
    .local v3, "oldLimit":I
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v4

    add-int/2addr v4, p2

    .line 1854
    .local v4, "end":I
    if-lt v3, v4, :cond_c

    .line 1858
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_6

    .line 1859
    if-nez v0, :cond_5

    .line 1860
    invoke-virtual {p0, v2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_3

    .line 1862
    :cond_5
    invoke-virtual {p0, v2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1863
    invoke-virtual {p0, v2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1865
    :goto_3
    invoke-virtual {p0, v4}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1866
    return-object p0

    .line 1869
    :cond_6
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v5

    .line 1870
    .local v5, "in":Ljava/nio/CharBuffer;
    invoke-virtual {p0, v4}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1871
    invoke-virtual {p3}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    .line 1875
    :goto_4
    invoke-virtual {v5}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1876
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {p3, v5, v6, v1}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v6

    .local v6, "cr":Ljava/nio/charset/CoderResult;
    goto :goto_5

    .line 1878
    .end local v6    # "cr":Ljava/nio/charset/CoderResult;
    :cond_7
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/nio/charset/CharsetEncoder;->flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v6

    .line 1881
    .restart local v6    # "cr":Ljava/nio/charset/CoderResult;
    :goto_5
    invoke-virtual {v6}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v7

    if-nez v7, :cond_9

    invoke-virtual {v6}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1882
    goto :goto_6

    .line 1884
    :cond_8
    invoke-virtual {v6}, Ljava/nio/charset/CoderResult;->throwException()V

    .line 1885
    .end local v6    # "cr":Ljava/nio/charset/CoderResult;
    goto :goto_4

    .line 1887
    :cond_9
    :goto_6
    invoke-virtual {p0, v3}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1889
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v1

    if-ge v1, v4, :cond_b

    .line 1890
    if-nez v0, :cond_a

    .line 1891
    invoke-virtual {p0, v2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_7

    .line 1893
    :cond_a
    invoke-virtual {p0, v2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1894
    invoke-virtual {p0, v2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1898
    :cond_b
    :goto_7
    invoke-virtual {p0, v4}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1899
    return-object p0

    .line 1855
    .end local v5    # "in":Ljava/nio/CharBuffer;
    :cond_c
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1
.end method

.method public putString(Ljava/lang/CharSequence;Ljava/nio/charset/CharsetEncoder;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 7
    .param p1, "val"    # Ljava/lang/CharSequence;
    .param p2, "encoder"    # Ljava/nio/charset/CharsetEncoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .line 1784
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 1785
    return-object p0

    .line 1788
    :cond_0
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 1789
    .local v0, "in":Ljava/nio/CharBuffer;
    invoke-virtual {p2}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    .line 1791
    const/4 v1, 0x0

    .line 1795
    .local v1, "expandedState":I
    :goto_0
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 1796
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p2, v0, v2, v3}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v2

    .local v2, "cr":Ljava/nio/charset/CoderResult;
    goto :goto_1

    .line 1798
    .end local v2    # "cr":Ljava/nio/charset/CoderResult;
    :cond_1
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/nio/charset/CharsetEncoder;->flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v2

    .line 1801
    .restart local v2    # "cr":Ljava/nio/charset/CoderResult;
    :goto_1
    invoke-virtual {v2}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1802
    nop

    .line 1827
    .end local v2    # "cr":Ljava/nio/charset/CoderResult;
    return-object p0

    .line 1804
    .restart local v2    # "cr":Ljava/nio/charset/CoderResult;
    :cond_2
    invoke-virtual {v2}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1805
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->isAutoExpand()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1806
    if-eqz v1, :cond_4

    if-ne v1, v3, :cond_3

    .line 1812
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p2}, Ljava/nio/charset/CharsetEncoder;->maxBytesPerChar()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-direct {p0, v3}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1813
    add-int/lit8 v1, v1, 0x1

    .line 1814
    goto :goto_0

    .line 1816
    :cond_3
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expanded by "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1817
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p2}, Ljava/nio/charset/CharsetEncoder;->maxBytesPerChar()F

    move-result v6

    mul-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " but that wasn\'t enough for \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1808
    :cond_4
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p2}, Ljava/nio/charset/CharsetEncoder;->averageBytesPerChar()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-direct {p0, v3}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1809
    add-int/lit8 v1, v1, 0x1

    .line 1810
    goto/16 :goto_0

    .line 1823
    :cond_5
    const/4 v1, 0x0

    .line 1825
    :cond_6
    invoke-virtual {v2}, Ljava/nio/charset/CoderResult;->throwException()V

    .line 1826
    .end local v2    # "cr":Ljava/nio/charset/CoderResult;
    goto/16 :goto_0
.end method

.method public putUnsigned(B)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 2
    .param p1, "value"    # B

    .line 528
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 529
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 530
    return-object p0
.end method

.method public putUnsigned(I)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 2
    .param p1, "value"    # I

    .line 568
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 569
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 570
    return-object p0
.end method

.method public putUnsigned(IB)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # B

    .line 538
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(II)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 539
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    invoke-virtual {v0, p1, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 540
    return-object p0
.end method

.method public putUnsigned(II)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 578
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(II)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 579
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    invoke-virtual {v0, p1, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 580
    return-object p0
.end method

.method public putUnsigned(IJ)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 598
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(II)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 599
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    const-wide/16 v1, 0xff

    and-long/2addr v1, p2

    long-to-int v1, v1

    int-to-byte v1, v1

    invoke-virtual {v0, p1, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 600
    return-object p0
.end method

.method public putUnsigned(IS)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # S

    .line 558
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(II)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 559
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    invoke-virtual {v0, p1, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 560
    return-object p0
.end method

.method public putUnsigned(J)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 3
    .param p1, "value"    # J

    .line 588
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 589
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    const-wide/16 v1, 0xff

    and-long/2addr v1, p1

    long-to-int v1, v1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 590
    return-object p0
.end method

.method public putUnsigned(S)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 2
    .param p1, "value"    # S

    .line 548
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 549
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 550
    return-object p0
.end method

.method public final putUnsignedInt(B)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 2
    .param p1, "value"    # B

    .line 839
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 840
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 841
    return-object p0
.end method

.method public final putUnsignedInt(I)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "value"    # I

    .line 879
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->putInt(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final putUnsignedInt(IB)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # B

    .line 849
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(II)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 850
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    and-int/lit16 v1, p2, 0xff

    invoke-virtual {v0, p1, v1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 851
    return-object p0
.end method

.method public final putUnsignedInt(II)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 887
    invoke-virtual {p0, p1, p2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->putInt(II)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final putUnsignedInt(IJ)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 905
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(II)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 906
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    const-wide v1, 0xffffffffL

    and-long/2addr v1, p2

    long-to-int v1, v1

    invoke-virtual {v0, p1, v1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 907
    return-object p0
.end method

.method public final putUnsignedInt(IS)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # S

    .line 869
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(II)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 870
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    const v1, 0xffff

    and-int/2addr v1, p2

    invoke-virtual {v0, p1, v1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 871
    return-object p0
.end method

.method public final putUnsignedInt(J)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 3
    .param p1, "value"    # J

    .line 895
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 896
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    const-wide/16 v1, -0x1

    and-long/2addr v1, p1

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 897
    return-object p0
.end method

.method public final putUnsignedInt(S)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 2
    .param p1, "value"    # S

    .line 859
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 860
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    const v1, 0xffff

    and-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 861
    return-object p0
.end method

.method public final putUnsignedShort(B)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 2
    .param p1, "value"    # B

    .line 915
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 916
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    and-int/lit16 v1, p1, 0xff

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 917
    return-object p0
.end method

.method public final putUnsignedShort(I)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 2
    .param p1, "value"    # I

    .line 951
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 952
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    int-to-short v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 953
    return-object p0
.end method

.method public final putUnsignedShort(IB)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # B

    .line 925
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(II)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 926
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    and-int/lit16 v1, p2, 0xff

    int-to-short v1, v1

    invoke-virtual {v0, p1, v1}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 927
    return-object p0
.end method

.method public final putUnsignedShort(II)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 961
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(II)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 962
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    int-to-short v1, p2

    invoke-virtual {v0, p1, v1}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 963
    return-object p0
.end method

.method public final putUnsignedShort(IJ)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 981
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(II)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 982
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    long-to-int v1, p2

    int-to-short v1, v1

    invoke-virtual {v0, p1, v1}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 983
    return-object p0
.end method

.method public final putUnsignedShort(IS)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # S

    .line 943
    invoke-virtual {p0, p1, p2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->putShort(IS)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final putUnsignedShort(J)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 2
    .param p1, "value"    # J

    .line 971
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 972
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    long-to-int v1, p1

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 973
    return-object p0
.end method

.method public final putUnsignedShort(S)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "value"    # S

    .line 935
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->putShort(S)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final remaining()I
    .locals 3

    .line 482
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 484
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    sub-int/2addr v1, v2

    return v1
.end method

.method public final reset()Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .line 425
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 426
    return-object p0
.end method

.method public final rewind()Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .line 472
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 473
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->mark:I

    .line 474
    return-object p0
.end method

.method public final setAutoExpand(Z)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 2
    .param p1, "autoExpand"    # Z

    .line 232
    iget-boolean v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->recapacityAllowed:Z

    if-eqz v0, :cond_0

    .line 235
    iput-boolean p1, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand:Z

    .line 236
    return-object p0

    .line 233
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Derived buffers and their parent can\'t be expanded."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setAutoShrink(Z)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 2
    .param p1, "autoShrink"    # Z

    .line 244
    iget-boolean v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->recapacityAllowed:Z

    if-eqz v0, :cond_0

    .line 247
    iput-boolean p1, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoShrink:Z

    .line 248
    return-object p0

    .line 245
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Derived buffers and their parent can\'t be shrinked."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final shrink()Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 9

    .line 302
    iget-boolean v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->recapacityAllowed:Z

    if-eqz v0, :cond_4

    .line 306
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v0

    .line 307
    .local v0, "position":I
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->capacity()I

    move-result v1

    .line 308
    .local v1, "capacity":I
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit()I

    move-result v2

    .line 310
    .local v2, "limit":I
    if-ne v1, v2, :cond_0

    .line 311
    return-object p0

    .line 314
    :cond_0
    move v3, v1

    .line 315
    .local v3, "newCapacity":I
    iget v4, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->minimumCapacity:I

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 318
    .local v4, "minCapacity":I
    :cond_1
    ushr-int/lit8 v5, v3, 0x1

    if-ge v5, v4, :cond_2

    .line 319
    goto :goto_0

    .line 322
    :cond_2
    ushr-int/lit8 v3, v3, 0x1

    .line 324
    if-nez v4, :cond_1

    .line 325
    nop

    .line 329
    :goto_0
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 331
    if-ne v3, v1, :cond_3

    .line 332
    return-object p0

    .line 337
    :cond_3
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v5

    .line 340
    .local v5, "bo":Ljava/nio/ByteOrder;
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 341
    .local v6, "oldBuf":Ljava/nio/ByteBuffer;
    invoke-static {}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getAllocator()Lorg/apache/mina/core/buffer/IoBufferAllocator;

    move-result-object v7

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->isDirect()Z

    move-result v8

    invoke-interface {v7, v3, v8}, Lorg/apache/mina/core/buffer/IoBufferAllocator;->allocateNioBuffer(IZ)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 342
    .local v7, "newBuf":Ljava/nio/ByteBuffer;
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 343
    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 344
    invoke-virtual {v7, v6}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 345
    invoke-virtual {p0, v7}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf(Ljava/nio/ByteBuffer;)V

    .line 348
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 349
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 350
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 351
    const/4 v8, -0x1

    iput v8, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->mark:I

    .line 353
    return-object p0

    .line 303
    .end local v0    # "position":I
    .end local v1    # "capacity":I
    .end local v2    # "limit":I
    .end local v3    # "newCapacity":I
    .end local v4    # "minCapacity":I
    .end local v5    # "bo":Ljava/nio/ByteOrder;
    .end local v6    # "oldBuf":Ljava/nio/ByteBuffer;
    .end local v7    # "newBuf":Ljava/nio/ByteBuffer;
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Derived buffers and their parent can\'t be expanded."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public skip(I)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "size"    # I

    .line 2315
    invoke-direct {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 2316
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final slice()Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .line 1182
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->recapacityAllowed:Z

    .line 1183
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->slice0()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    return-object v0
.end method

.method protected abstract slice0()Lorg/apache/mina/core/buffer/IoBuffer;
.end method

.method public final sweep()Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .line 444
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->clear()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 445
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->remaining()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->fillAndReset(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final sweep(B)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "value"    # B

    .line 453
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->clear()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 454
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->remaining()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->fillAndReset(BI)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1315
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1316
    const-string v1, "DirectBuffer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1318
    :cond_0
    const-string v1, "HeapBuffer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1320
    :goto_0
    const-string v1, "[pos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1321
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1322
    const-string v1, " lim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1323
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1324
    const-string v1, " cap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1325
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1326
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1327
    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getHexDump(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1328
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1329
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
