.class public Lorg/apache/commons/io/build/AbstractOrigin$ChannelOrigin;
.super Lorg/apache/commons/io/build/AbstractOrigin;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/build/AbstractOrigin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChannelOrigin"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/io/build/AbstractOrigin<",
        "Ljava/nio/channels/Channel;",
        "Lorg/apache/commons/io/build/AbstractOrigin$ChannelOrigin;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/nio/channels/Channel;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/commons/io/build/AbstractOrigin;-><init>(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getByteArray()[B
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/nio/file/OpenOption;

    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/build/AbstractOrigin$ChannelOrigin;->getInputStream([Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public varargs getChannel([Ljava/nio/file/OpenOption;)Ljava/nio/channels/Channel;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/io/build/AbstractOrigin;->get()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/nio/channels/Channel;

    .line 6
    .line 7
    return-object p1
.end method

.method public varargs getInputStream([Ljava/nio/file/OpenOption;)Ljava/io/InputStream;
    .registers 3

    .line 1
    const-class v0, Ljava/nio/channels/ReadableByteChannel;

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/io/build/AbstractOrigin;->getChannel(Ljava/lang/Class;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/Channel;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/nio/channels/ReadableByteChannel;

    .line 8
    .line 9
    invoke-static {p1}, Ljava/nio/channels/Channels;->newInputStream(Ljava/nio/channels/ReadableByteChannel;)Ljava/io/InputStream;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public varargs getOutputStream([Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;
    .registers 3

    .line 1
    const-class v0, Ljava/nio/channels/WritableByteChannel;

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/io/build/AbstractOrigin;->getChannel(Ljava/lang/Class;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/Channel;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/nio/channels/WritableByteChannel;

    .line 8
    .line 9
    invoke-static {p1}, Ljava/nio/channels/Channels;->newOutputStream(Ljava/nio/channels/WritableByteChannel;)Ljava/io/OutputStream;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public getReader(Ljava/nio/charset/Charset;)Ljava/io/Reader;
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/nio/file/OpenOption;

    .line 3
    .line 4
    const-class v1, Ljava/nio/channels/ReadableByteChannel;

    .line 5
    .line 6
    invoke-virtual {p0, v1, v0}, Lorg/apache/commons/io/build/AbstractOrigin;->getChannel(Ljava/lang/Class;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/Channel;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Ljava/nio/channels/ReadableByteChannel;

    .line 11
    .line 12
    invoke-static {p1}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const/4 v1, -0x1

    .line 21
    invoke-static {v0, p1, v1}, Ljava/nio/channels/Channels;->newReader(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/charset/CharsetDecoder;I)Ljava/io/Reader;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    return-object p1
.end method

.method public varargs getWriter(Ljava/nio/charset/Charset;[Ljava/nio/file/OpenOption;)Ljava/io/Writer;
    .registers 4

    .line 1
    const-class v0, Ljava/nio/channels/WritableByteChannel;

    .line 2
    .line 3
    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/io/build/AbstractOrigin;->getChannel(Ljava/lang/Class;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/Channel;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    check-cast p2, Ljava/nio/channels/WritableByteChannel;

    .line 8
    .line 9
    invoke-static {p1}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const/4 v0, -0x1

    .line 18
    invoke-static {p2, p1, v0}, Ljava/nio/channels/Channels;->newWriter(Ljava/nio/channels/WritableByteChannel;Ljava/nio/charset/CharsetEncoder;I)Ljava/io/Writer;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method

.method public size()J
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/build/AbstractOrigin;->origin:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/nio/channels/SeekableByteChannel;

    .line 4
    .line 5
    if-eqz v1, :cond_d

    .line 6
    .line 7
    check-cast v0, Ljava/nio/channels/SeekableByteChannel;

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/nio/channels/SeekableByteChannel;->size()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    return-wide v0

    .line 14
    :cond_d
    const-string v0, "size"

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/build/AbstractOrigin;->unsupportedOperation(Ljava/lang/String;)Ljava/lang/UnsupportedOperationException;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    throw v0
.end method
