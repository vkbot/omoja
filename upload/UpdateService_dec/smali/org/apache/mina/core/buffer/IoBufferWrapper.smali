.class public Lorg/apache/mina/core/buffer/IoBufferWrapper;
.super Lorg/apache/mina/core/buffer/IoBuffer;
.source "IoBufferWrapper.java"


# instance fields
.field private final buf:Lorg/apache/mina/core/buffer/IoBuffer;


# direct methods
.method protected constructor <init>(Lorg/apache/mina/core/buffer/IoBuffer;)V
    .locals 2
    .param p1, "buf"    # Lorg/apache/mina/core/buffer/IoBuffer;

    .line 59
    invoke-direct {p0}, Lorg/apache/mina/core/buffer/IoBuffer;-><init>()V

    .line 60
    if-eqz p1, :cond_0

    .line 63
    iput-object p1, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    .line 64
    return-void

    .line 61
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "buf"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public array()[B
    .locals 1

    .line 1055
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public arrayOffset()I
    .locals 1

    .line 1063
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->arrayOffset()I

    move-result v0

    return v0
.end method

.method public asCharBuffer()Ljava/nio/CharBuffer;
    .locals 1

    .line 427
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public asDoubleBuffer()Ljava/nio/DoubleBuffer;
    .locals 1

    .line 813
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->asDoubleBuffer()Ljava/nio/DoubleBuffer;

    move-result-object v0

    return-object v0
.end method

.method public asFloatBuffer()Ljava/nio/FloatBuffer;
    .locals 1

    .line 771
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    return-object v0
.end method

.method public asInputStream()Ljava/io/InputStream;
    .locals 1

    .line 1015
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->asInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public asIntBuffer()Ljava/nio/IntBuffer;
    .locals 1

    .line 687
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    return-object v0
.end method

.method public asLongBuffer()Ljava/nio/LongBuffer;
    .locals 1

    .line 729
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v0

    return-object v0
.end method

.method public asOutputStream()Ljava/io/OutputStream;
    .locals 1

    .line 1023
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->asOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public asReadOnlyBuffer()Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .line 1047
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->asReadOnlyBuffer()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    return-object v0
.end method

.method public asShortBuffer()Ljava/nio/ShortBuffer;
    .locals 1

    .line 485
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    return-object v0
.end method

.method public buf()Ljava/nio/ByteBuffer;
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public capacity()I
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->capacity()I

    move-result v0

    return v0
.end method

.method public capacity(I)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "newCapacity"    # I

    .line 1088
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->capacity(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1089
    return-object p0
.end method

.method public clear()Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .line 154
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->clear()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 155
    return-object p0
.end method

.method public compact()Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .line 335
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->compact()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 336
    return-object p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 47
    check-cast p1, Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/IoBufferWrapper;->compareTo(Lorg/apache/mina/core/buffer/IoBuffer;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/apache/mina/core/buffer/IoBuffer;)I
    .locals 1
    .param p1, "that"    # Lorg/apache/mina/core/buffer/IoBuffer;

    .line 368
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->compareTo(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public duplicate()Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .line 1031
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->duplicate()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "ob"    # Ljava/lang/Object;

    .line 360
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public expand(I)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "expectedRemaining"    # I

    .line 981
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->expand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 982
    return-object p0
.end method

.method public expand(II)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "pos"    # I
    .param p2, "expectedRemaining"    # I

    .line 972
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1, p2}, Lorg/apache/mina/core/buffer/IoBuffer;->expand(II)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 973
    return-object p0
.end method

.method public fill(BI)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "value"    # B
    .param p2, "size"    # I

    .line 919
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1, p2}, Lorg/apache/mina/core/buffer/IoBuffer;->fill(BI)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 920
    return-object p0
.end method

.method public fill(I)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "size"    # I

    .line 937
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->fill(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 938
    return-object p0
.end method

.method public fillAndReset(BI)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "value"    # B
    .param p2, "size"    # I

    .line 928
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1, p2}, Lorg/apache/mina/core/buffer/IoBuffer;->fillAndReset(BI)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 929
    return-object p0
.end method

.method public fillAndReset(I)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "size"    # I

    .line 946
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->fillAndReset(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 947
    return-object p0
.end method

.method public flip()Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .line 181
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 182
    return-object p0
.end method

.method public free()V
    .locals 1

    .line 1121
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->free()V

    .line 1122
    return-void
.end method

.method public get()B
    .locals 1

    .line 215
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->get()B

    move-result v0

    return v0
.end method

.method public get(I)B
    .locals 1
    .param p1, "index"    # I

    .line 240
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result v0

    return v0
.end method

.method public get([B)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "dst"    # [B

    .line 290
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->get([B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 291
    return-object p0
.end method

.method public get([BII)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "dst"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 265
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/mina/core/buffer/IoBuffer;->get([BII)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 266
    return-object p0
.end method

.method public getChar()C
    .locals 1

    .line 393
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->getChar()C

    move-result v0

    return v0
.end method

.method public getChar(I)C
    .locals 1
    .param p1, "index"    # I

    .line 410
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->getChar(I)C

    move-result v0

    return v0
.end method

.method public getDouble()D
    .locals 2

    .line 779
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->getDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public getDouble(I)D
    .locals 2
    .param p1, "index"    # I

    .line 796
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->getDouble(I)D

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

    .line 1245
    .local p2, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1, p2}, Lorg/apache/mina/core/buffer/IoBuffer;->getEnum(ILjava/lang/Class;)Ljava/lang/Enum;

    move-result-object v0

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

    .line 1237
    .local p1, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->getEnum(Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v0

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

    .line 1277
    .local p2, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1, p2}, Lorg/apache/mina/core/buffer/IoBuffer;->getEnumInt(ILjava/lang/Class;)Ljava/lang/Enum;

    move-result-object v0

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

    .line 1269
    .local p1, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->getEnumInt(Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method

.method public getEnumSet(ILjava/lang/Class;)Ljava/util/Set;
    .locals 1
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

    .line 1344
    .local p2, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1, p2}, Lorg/apache/mina/core/buffer/IoBuffer;->getEnumSet(ILjava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getEnumSet(Ljava/lang/Class;)Ljava/util/Set;
    .locals 1
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

    .line 1336
    .local p1, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->getEnumSet(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getEnumSetInt(ILjava/lang/Class;)Ljava/util/Set;
    .locals 1
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

    .line 1376
    .local p2, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1, p2}, Lorg/apache/mina/core/buffer/IoBuffer;->getEnumSetInt(ILjava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getEnumSetInt(Ljava/lang/Class;)Ljava/util/Set;
    .locals 1
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

    .line 1368
    .local p1, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->getEnumSetInt(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getEnumSetLong(ILjava/lang/Class;)Ljava/util/Set;
    .locals 1
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

    .line 1392
    .local p2, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1, p2}, Lorg/apache/mina/core/buffer/IoBuffer;->getEnumSetLong(ILjava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getEnumSetLong(Ljava/lang/Class;)Ljava/util/Set;
    .locals 1
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

    .line 1384
    .local p1, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->getEnumSetLong(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getEnumSetShort(ILjava/lang/Class;)Ljava/util/Set;
    .locals 1
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

    .line 1360
    .local p2, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1, p2}, Lorg/apache/mina/core/buffer/IoBuffer;->getEnumSetShort(ILjava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getEnumSetShort(Ljava/lang/Class;)Ljava/util/Set;
    .locals 1
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

    .line 1352
    .local p1, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->getEnumSetShort(Ljava/lang/Class;)Ljava/util/Set;

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

    .line 1261
    .local p2, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1, p2}, Lorg/apache/mina/core/buffer/IoBuffer;->getEnumShort(ILjava/lang/Class;)Ljava/lang/Enum;

    move-result-object v0

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

    .line 1253
    .local p1, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->getEnumShort(Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method

.method public getFloat()F
    .locals 1

    .line 737
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->getFloat()F

    move-result v0

    return v0
.end method

.method public getFloat(I)F
    .locals 1
    .param p1, "index"    # I

    .line 754
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public getInt()I
    .locals 1

    .line 493
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->getInt()I

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .locals 1
    .param p1, "index"    # I

    .line 662
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getLong()J
    .locals 2

    .line 695
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->getLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLong(I)J
    .locals 2
    .param p1, "index"    # I

    .line 712
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMediumInt()I
    .locals 1

    .line 1163
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->getMediumInt()I

    move-result v0

    return v0
.end method

.method public getMediumInt(I)I
    .locals 1
    .param p1, "index"    # I

    .line 1179
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->getMediumInt(I)I

    move-result v0

    return v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 990
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->getObject()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getObject(Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 1
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 998
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->getObject(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getParentBuffer()Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    return-object v0
.end method

.method public getPrefixedString(ILjava/nio/charset/CharsetDecoder;)Ljava/lang/String;
    .locals 1
    .param p1, "prefixLength"    # I
    .param p2, "decoder"    # Ljava/nio/charset/CharsetDecoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .line 845
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1, p2}, Lorg/apache/mina/core/buffer/IoBuffer;->getPrefixedString(ILjava/nio/charset/CharsetDecoder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrefixedString(Ljava/nio/charset/CharsetDecoder;)Ljava/lang/String;
    .locals 1
    .param p1, "decoder"    # Ljava/nio/charset/CharsetDecoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .line 837
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->getPrefixedString(Ljava/nio/charset/CharsetDecoder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShort()S
    .locals 1

    .line 435
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->getShort()S

    move-result v0

    return v0
.end method

.method public getShort(I)S
    .locals 1
    .param p1, "index"    # I

    .line 460
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->getShort(I)S

    move-result v0

    return v0
.end method

.method public getSlice(I)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "length"    # I

    .line 282
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->getSlice(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getSlice(II)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "index"    # I
    .param p2, "length"    # I

    .line 274
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1, p2}, Lorg/apache/mina/core/buffer/IoBuffer;->getSlice(II)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getString(ILjava/nio/charset/CharsetDecoder;)Ljava/lang/String;
    .locals 1
    .param p1, "fieldSize"    # I
    .param p2, "decoder"    # Ljava/nio/charset/CharsetDecoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .line 821
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1, p2}, Lorg/apache/mina/core/buffer/IoBuffer;->getString(ILjava/nio/charset/CharsetDecoder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/nio/charset/CharsetDecoder;)Ljava/lang/String;
    .locals 1
    .param p1, "decoder"    # Ljava/nio/charset/CharsetDecoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .line 829
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->getString(Ljava/nio/charset/CharsetDecoder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUnsigned()S
    .locals 1

    .line 223
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->getUnsigned()S

    move-result v0

    return v0
.end method

.method public getUnsigned(I)S
    .locals 1
    .param p1, "index"    # I

    .line 248
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->getUnsigned(I)S

    move-result v0

    return v0
.end method

.method public getUnsignedInt()J
    .locals 2

    .line 501
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->getUnsignedInt()J

    move-result-wide v0

    return-wide v0
.end method

.method public getUnsignedInt(I)J
    .locals 2
    .param p1, "index"    # I

    .line 670
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->getUnsignedInt(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getUnsignedMediumInt()I
    .locals 1

    .line 1171
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->getUnsignedMediumInt()I

    move-result v0

    return v0
.end method

.method public getUnsignedMediumInt(I)I
    .locals 1
    .param p1, "index"    # I

    .line 1187
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->getUnsignedMediumInt(I)I

    move-result v0

    return v0
.end method

.method public getUnsignedShort()I
    .locals 1

    .line 443
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->getUnsignedShort()I

    move-result v0

    return v0
.end method

.method public getUnsignedShort(I)I
    .locals 1
    .param p1, "index"    # I

    .line 468
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->getUnsignedShort(I)I

    move-result v0

    return v0
.end method

.method public hasArray()Z
    .locals 1

    .line 1113
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->hasArray()Z

    move-result v0

    return v0
.end method

.method public hasRemaining()Z
    .locals 1

    .line 207
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 352
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public indexOf(B)I
    .locals 1
    .param p1, "b"    # B

    .line 1229
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->indexOf(B)I

    move-result v0

    return v0
.end method

.method public isAutoExpand()Z
    .locals 1

    .line 955
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->isAutoExpand()Z

    move-result v0

    return v0
.end method

.method public isAutoShrink()Z
    .locals 1

    .line 1137
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->isAutoShrink()Z

    move-result v0

    return v0
.end method

.method public isDerived()Z
    .locals 1

    .line 1129
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->isDerived()Z

    move-result v0

    return v0
.end method

.method public isDirect()Z
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->isDirect()Z

    move-result v0

    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    .line 1097
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->isReadOnly()Z

    move-result v0

    return v0
.end method

.method public limit()I
    .locals 1

    .line 119
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->limit()I

    move-result v0

    return v0
.end method

.method public limit(I)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "newLimit"    # I

    .line 127
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 128
    return-object p0
.end method

.method public mark()Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .line 136
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->mark()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 137
    return-object p0
.end method

.method public markValue()I
    .locals 1

    .line 1105
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->markValue()I

    move-result v0

    return v0
.end method

.method public minimumCapacity()I
    .locals 1

    .line 1071
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->minimumCapacity()I

    move-result v0

    return v0
.end method

.method public minimumCapacity(I)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "minimumCapacity"    # I

    .line 1079
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->minimumCapacity(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1080
    return-object p0
.end method

.method public order()Ljava/nio/ByteOrder;
    .locals 1

    .line 376
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method public order(Ljava/nio/ByteOrder;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "bo"    # Ljava/nio/ByteOrder;

    .line 384
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->order(Ljava/nio/ByteOrder;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 385
    return-object p0
.end method

.method public position()I
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v0

    return v0
.end method

.method public position(I)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "newPosition"    # I

    .line 110
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 111
    return-object p0
.end method

.method public prefixedDataAvailable(I)Z
    .locals 1
    .param p1, "prefixLength"    # I

    .line 1213
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->prefixedDataAvailable(I)Z

    move-result v0

    return v0
.end method

.method public prefixedDataAvailable(II)Z
    .locals 1
    .param p1, "prefixLength"    # I
    .param p2, "maxDataLength"    # I

    .line 1221
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1, p2}, Lorg/apache/mina/core/buffer/IoBuffer;->prefixedDataAvailable(II)Z

    move-result v0

    return v0
.end method

.method public put(B)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "b"    # B

    .line 231
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 232
    return-object p0
.end method

.method public put(IB)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "index"    # I
    .param p2, "b"    # B

    .line 256
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1, p2}, Lorg/apache/mina/core/buffer/IoBuffer;->put(IB)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 257
    return-object p0
.end method

.method public put(Ljava/nio/ByteBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "src"    # Ljava/nio/ByteBuffer;

    .line 308
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Ljava/nio/ByteBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 309
    return-object p0
.end method

.method public put(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "src"    # Lorg/apache/mina/core/buffer/IoBuffer;

    .line 299
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 300
    return-object p0
.end method

.method public put([B)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "src"    # [B

    .line 326
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->put([B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 327
    return-object p0
.end method

.method public put([BII)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "src"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 317
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/mina/core/buffer/IoBuffer;->put([BII)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 318
    return-object p0
.end method

.method public putChar(C)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "value"    # C

    .line 401
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->putChar(C)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 402
    return-object p0
.end method

.method public putChar(IC)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # C

    .line 418
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1, p2}, Lorg/apache/mina/core/buffer/IoBuffer;->putChar(IC)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 419
    return-object p0
.end method

.method public putDouble(D)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "value"    # D

    .line 787
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1, p2}, Lorg/apache/mina/core/buffer/IoBuffer;->putDouble(D)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 788
    return-object p0
.end method

.method public putDouble(ID)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # D

    .line 804
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/mina/core/buffer/IoBuffer;->putDouble(ID)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 805
    return-object p0
.end method

.method public putEnum(ILjava/lang/Enum;)Lorg/apache/mina/core/buffer/IoBuffer;
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

    .line 1294
    .local p2, "e":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1, p2}, Lorg/apache/mina/core/buffer/IoBuffer;->putEnum(ILjava/lang/Enum;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1295
    return-object p0
.end method

.method public putEnum(Ljava/lang/Enum;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)",
            "Lorg/apache/mina/core/buffer/IoBuffer;"
        }
    .end annotation

    .line 1285
    .local p1, "e":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->putEnum(Ljava/lang/Enum;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1286
    return-object p0
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

    .line 1327
    .local p2, "e":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1, p2}, Lorg/apache/mina/core/buffer/IoBuffer;->putEnumInt(ILjava/lang/Enum;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1328
    return-object p0
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

    .line 1318
    .local p1, "e":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->putEnumInt(Ljava/lang/Enum;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1319
    return-object p0
.end method

.method public putEnumSet(ILjava/util/Set;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
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

    .line 1409
    .local p2, "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1, p2}, Lorg/apache/mina/core/buffer/IoBuffer;->putEnumSet(ILjava/util/Set;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1410
    return-object p0
.end method

.method public putEnumSet(Ljava/util/Set;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
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

    .line 1400
    .local p1, "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->putEnumSet(Ljava/util/Set;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1401
    return-object p0
.end method

.method public putEnumSetInt(ILjava/util/Set;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
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

    .line 1445
    .local p2, "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1, p2}, Lorg/apache/mina/core/buffer/IoBuffer;->putEnumSetInt(ILjava/util/Set;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1446
    return-object p0
.end method

.method public putEnumSetInt(Ljava/util/Set;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
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

    .line 1436
    .local p1, "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->putEnumSetInt(Ljava/util/Set;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1437
    return-object p0
.end method

.method public putEnumSetLong(ILjava/util/Set;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
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

    .line 1463
    .local p2, "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1, p2}, Lorg/apache/mina/core/buffer/IoBuffer;->putEnumSetLong(ILjava/util/Set;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1464
    return-object p0
.end method

.method public putEnumSetLong(Ljava/util/Set;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
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

    .line 1454
    .local p1, "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->putEnumSetLong(Ljava/util/Set;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1455
    return-object p0
.end method

.method public putEnumSetShort(ILjava/util/Set;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
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

    .line 1427
    .local p2, "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1, p2}, Lorg/apache/mina/core/buffer/IoBuffer;->putEnumSetShort(ILjava/util/Set;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1428
    return-object p0
.end method

.method public putEnumSetShort(Ljava/util/Set;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
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

    .line 1418
    .local p1, "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->putEnumSetShort(Ljava/util/Set;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1419
    return-object p0
.end method

.method public putEnumShort(ILjava/lang/Enum;)Lorg/apache/mina/core/buffer/IoBuffer;
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

    .line 1309
    .local p2, "e":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1, p2}, Lorg/apache/mina/core/buffer/IoBuffer;->putEnumShort(ILjava/lang/Enum;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1310
    return-object p0
.end method

.method public putEnumShort(Ljava/lang/Enum;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)",
            "Lorg/apache/mina/core/buffer/IoBuffer;"
        }
    .end annotation

    .line 1303
    .local p1, "e":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->putEnumShort(Ljava/lang/Enum;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1304
    return-object p0
.end method

.method public putFloat(F)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "value"    # F

    .line 745
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->putFloat(F)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 746
    return-object p0
.end method

.method public putFloat(IF)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # F

    .line 762
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1, p2}, Lorg/apache/mina/core/buffer/IoBuffer;->putFloat(IF)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 763
    return-object p0
.end method

.method public putInt(I)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "value"    # I

    .line 509
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->putInt(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 510
    return-object p0
.end method

.method public putInt(II)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 678
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1, p2}, Lorg/apache/mina/core/buffer/IoBuffer;->putInt(II)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 679
    return-object p0
.end method

.method public putLong(IJ)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 720
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/mina/core/buffer/IoBuffer;->putLong(IJ)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 721
    return-object p0
.end method

.method public putLong(J)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "value"    # J

    .line 703
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1, p2}, Lorg/apache/mina/core/buffer/IoBuffer;->putLong(J)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 704
    return-object p0
.end method

.method public putMediumInt(I)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "value"    # I

    .line 1195
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->putMediumInt(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1196
    return-object p0
.end method

.method public putMediumInt(II)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 1204
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1, p2}, Lorg/apache/mina/core/buffer/IoBuffer;->putMediumInt(II)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1205
    return-object p0
.end method

.method public putObject(Ljava/lang/Object;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 1006
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->putObject(Ljava/lang/Object;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1007
    return-object p0
.end method

.method public putPrefixedString(Ljava/lang/CharSequence;IIBLjava/nio/charset/CharsetEncoder;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 6
    .param p1, "in"    # Ljava/lang/CharSequence;
    .param p2, "prefixLength"    # I
    .param p3, "padding"    # I
    .param p4, "padValue"    # B
    .param p5, "encoder"    # Ljava/nio/charset/CharsetEncoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .line 901
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/apache/mina/core/buffer/IoBuffer;->putPrefixedString(Ljava/lang/CharSequence;IIBLjava/nio/charset/CharsetEncoder;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 902
    return-object p0
.end method

.method public putPrefixedString(Ljava/lang/CharSequence;IILjava/nio/charset/CharsetEncoder;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "in"    # Ljava/lang/CharSequence;
    .param p2, "prefixLength"    # I
    .param p3, "padding"    # I
    .param p4, "encoder"    # Ljava/nio/charset/CharsetEncoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .line 891
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/mina/core/buffer/IoBuffer;->putPrefixedString(Ljava/lang/CharSequence;IILjava/nio/charset/CharsetEncoder;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 892
    return-object p0
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

    .line 881
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/mina/core/buffer/IoBuffer;->putPrefixedString(Ljava/lang/CharSequence;ILjava/nio/charset/CharsetEncoder;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 882
    return-object p0
.end method

.method public putPrefixedString(Ljava/lang/CharSequence;Ljava/nio/charset/CharsetEncoder;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "in"    # Ljava/lang/CharSequence;
    .param p2, "encoder"    # Ljava/nio/charset/CharsetEncoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .line 871
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1, p2}, Lorg/apache/mina/core/buffer/IoBuffer;->putPrefixedString(Ljava/lang/CharSequence;Ljava/nio/charset/CharsetEncoder;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 872
    return-object p0
.end method

.method public putShort(IS)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # S

    .line 476
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1, p2}, Lorg/apache/mina/core/buffer/IoBuffer;->putShort(IS)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 477
    return-object p0
.end method

.method public putShort(S)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "value"    # S

    .line 451
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->putShort(S)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 452
    return-object p0
.end method

.method public putString(Ljava/lang/CharSequence;ILjava/nio/charset/CharsetEncoder;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "in"    # Ljava/lang/CharSequence;
    .param p2, "fieldSize"    # I
    .param p3, "encoder"    # Ljava/nio/charset/CharsetEncoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .line 853
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/mina/core/buffer/IoBuffer;->putString(Ljava/lang/CharSequence;ILjava/nio/charset/CharsetEncoder;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 854
    return-object p0
.end method

.method public putString(Ljava/lang/CharSequence;Ljava/nio/charset/CharsetEncoder;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "in"    # Ljava/lang/CharSequence;
    .param p2, "encoder"    # Ljava/nio/charset/CharsetEncoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .line 862
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1, p2}, Lorg/apache/mina/core/buffer/IoBuffer;->putString(Ljava/lang/CharSequence;Ljava/nio/charset/CharsetEncoder;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 863
    return-object p0
.end method

.method public putUnsigned(B)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "value"    # B

    .line 1472
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->putUnsigned(B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1473
    return-object p0
.end method

.method public putUnsigned(I)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "value"    # I

    .line 1508
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->putUnsigned(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1509
    return-object p0
.end method

.method public putUnsigned(IB)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # B

    .line 1481
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1, p2}, Lorg/apache/mina/core/buffer/IoBuffer;->putUnsigned(IB)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1482
    return-object p0
.end method

.method public putUnsigned(II)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 1517
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1, p2}, Lorg/apache/mina/core/buffer/IoBuffer;->putUnsigned(II)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1518
    return-object p0
.end method

.method public putUnsigned(IJ)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 1535
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/mina/core/buffer/IoBuffer;->putUnsigned(IJ)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1536
    return-object p0
.end method

.method public putUnsigned(IS)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # S

    .line 1499
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1, p2}, Lorg/apache/mina/core/buffer/IoBuffer;->putUnsigned(IS)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1500
    return-object p0
.end method

.method public putUnsigned(J)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "value"    # J

    .line 1526
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1, p2}, Lorg/apache/mina/core/buffer/IoBuffer;->putUnsigned(J)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1527
    return-object p0
.end method

.method public putUnsigned(S)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "value"    # S

    .line 1490
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->putUnsigned(S)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1491
    return-object p0
.end method

.method public putUnsignedInt(B)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "value"    # B

    .line 518
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->putUnsignedInt(B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 519
    return-object p0
.end method

.method public putUnsignedInt(I)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "value"    # I

    .line 554
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->putUnsignedInt(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 555
    return-object p0
.end method

.method public putUnsignedInt(IB)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # B

    .line 527
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1, p2}, Lorg/apache/mina/core/buffer/IoBuffer;->putUnsignedInt(IB)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 528
    return-object p0
.end method

.method public putUnsignedInt(II)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 563
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1, p2}, Lorg/apache/mina/core/buffer/IoBuffer;->putUnsignedInt(II)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 564
    return-object p0
.end method

.method public putUnsignedInt(IJ)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 581
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/mina/core/buffer/IoBuffer;->putUnsignedInt(IJ)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 582
    return-object p0
.end method

.method public putUnsignedInt(IS)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # S

    .line 545
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1, p2}, Lorg/apache/mina/core/buffer/IoBuffer;->putUnsignedInt(IS)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 546
    return-object p0
.end method

.method public putUnsignedInt(J)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "value"    # J

    .line 572
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1, p2}, Lorg/apache/mina/core/buffer/IoBuffer;->putUnsignedInt(J)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 573
    return-object p0
.end method

.method public putUnsignedInt(S)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "value"    # S

    .line 536
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->putUnsignedInt(S)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 537
    return-object p0
.end method

.method public putUnsignedShort(B)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "value"    # B

    .line 590
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->putUnsignedShort(B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 591
    return-object p0
.end method

.method public putUnsignedShort(I)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "value"    # I

    .line 626
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->putUnsignedShort(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 627
    return-object p0
.end method

.method public putUnsignedShort(IB)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # B

    .line 599
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1, p2}, Lorg/apache/mina/core/buffer/IoBuffer;->putUnsignedShort(IB)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 600
    return-object p0
.end method

.method public putUnsignedShort(II)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 635
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1, p2}, Lorg/apache/mina/core/buffer/IoBuffer;->putUnsignedShort(II)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 636
    return-object p0
.end method

.method public putUnsignedShort(IJ)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 653
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/mina/core/buffer/IoBuffer;->putUnsignedShort(IJ)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 654
    return-object p0
.end method

.method public putUnsignedShort(IS)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # S

    .line 617
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1, p2}, Lorg/apache/mina/core/buffer/IoBuffer;->putUnsignedShort(IS)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 618
    return-object p0
.end method

.method public putUnsignedShort(J)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "value"    # J

    .line 644
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1, p2}, Lorg/apache/mina/core/buffer/IoBuffer;->putUnsignedShort(J)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 645
    return-object p0
.end method

.method public putUnsignedShort(S)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "value"    # S

    .line 608
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->putUnsignedShort(S)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 609
    return-object p0
.end method

.method public remaining()I
    .locals 1

    .line 199
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v0

    return v0
.end method

.method public reset()Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .line 145
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->reset()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 146
    return-object p0
.end method

.method public rewind()Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .line 190
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->rewind()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 191
    return-object p0
.end method

.method public setAutoExpand(Z)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "autoExpand"    # Z

    .line 963
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->setAutoExpand(Z)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 964
    return-object p0
.end method

.method public setAutoShrink(Z)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "autoShrink"    # Z

    .line 1145
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->setAutoShrink(Z)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1146
    return-object p0
.end method

.method public shrink()Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .line 1154
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->shrink()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1155
    return-object p0
.end method

.method public skip(I)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "size"    # I

    .line 910
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->skip(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 911
    return-object p0
.end method

.method public slice()Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .line 1039
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->slice()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    return-object v0
.end method

.method public sweep()Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .line 163
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->sweep()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 164
    return-object p0
.end method

.method public sweep(B)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "value"    # B

    .line 172
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->sweep(B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 173
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 344
    iget-object v0, p0, Lorg/apache/mina/core/buffer/IoBufferWrapper;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
