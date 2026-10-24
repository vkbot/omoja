.class public final Lh4/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V
    .locals 4

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    sget-object v1, Li4/c;->a:[B

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    :cond_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    if-lez v2, :cond_1

    invoke-interface {p0, p1}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v3, v2, :cond_0

    :cond_1
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result p0

    sub-int/2addr v1, p0

    if-lt v1, v0, :cond_2

    return-void

    :cond_2
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public static b(Ljava/io/InputStream;I)[B
    .locals 12

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    int-to-long v1, p1

    sget-object p1, Li4/c;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    const/4 v3, 0x0

    invoke-static {p1, v3}, Ljava/util/Arrays;->fill([BB)V

    const-wide/16 v4, 0x0

    cmp-long v6, v1, v4

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    array-length v7, p1

    if-lez v6, :cond_1

    int-to-long v8, v7

    cmp-long v8, v1, v8

    if-gez v8, :cond_1

    long-to-int v8, v1

    goto :goto_0

    :cond_1
    move v8, v7

    :cond_2
    :goto_0
    if-lez v8, :cond_3

    invoke-virtual {p0, p1, v3, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v9

    const/4 v10, -0x1

    if-eq v10, v9, :cond_3

    invoke-virtual {v0, p1, v3, v9}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v9, v9

    add-long/2addr v4, v9

    if-lez v6, :cond_2

    sub-long v8, v1, v4

    int-to-long v10, v7

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    long-to-int v8, v8

    goto :goto_0

    :cond_3
    :goto_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/nio/channels/SeekableByteChannel;I)[B
    .locals 6

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x2000

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, p1, :cond_1

    sub-int v4, p1, v3

    invoke-virtual {v1}, Ljava/nio/Buffer;->capacity()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-interface {p0, v1}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v4

    if-gtz v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {v0, v5, v2, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    add-int/2addr v3, v4

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method
