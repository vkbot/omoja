.class public Lorg/apache/mina/filter/stream/StreamWriteFilter;
.super Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;
.source "StreamWriteFilter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;-><init>()V

    return-void
.end method


# virtual methods
.method protected getMessageClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 78
    const-class v0, Ljava/io/InputStream;

    return-object v0
.end method

.method protected getNextBuffer(Ljava/io/InputStream;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 5
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    invoke-virtual {p0}, Lorg/apache/mina/filter/stream/StreamWriteFilter;->getWriteBufferSize()I

    move-result v0

    new-array v0, v0, [B

    .line 59
    .local v0, "bytes":[B
    const/4 v1, 0x0

    .line 60
    .local v1, "off":I
    const/4 v2, 0x0

    .line 62
    .local v2, "n":I
    :goto_0
    array-length v3, v0

    const/4 v4, -0x1

    if-ge v1, v3, :cond_0

    array-length v3, v0

    sub-int/2addr v3, v1

    invoke-virtual {p1, v0, v1, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    move v2, v3

    if-eq v3, v4, :cond_0

    .line 63
    add-int/2addr v1, v2

    goto :goto_0

    .line 66
    :cond_0
    if-ne v2, v4, :cond_1

    if-nez v1, :cond_1

    .line 67
    const/4 v3, 0x0

    return-object v3

    .line 70
    :cond_1
    const/4 v3, 0x0

    invoke-static {v0, v3, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->wrap([BII)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v3

    return-object v3
.end method

.method protected bridge synthetic getNextBuffer(Ljava/lang/Object;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1}, Lorg/apache/mina/filter/stream/StreamWriteFilter;->getNextBuffer(Ljava/io/InputStream;)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object p1

    return-object p1
.end method
