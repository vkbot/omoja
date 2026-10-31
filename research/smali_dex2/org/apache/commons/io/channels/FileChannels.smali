.class public final Lorg/apache/commons/io/channels/FileChannels;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static contentEquals(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;I)Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 79
    invoke-static {p0, p1, p2}, Lorg/apache/commons/io/channels/FileChannels;->contentEquals(Ljava/nio/channels/SeekableByteChannel;Ljava/nio/channels/SeekableByteChannel;I)Z

    move-result p0

    return p0
.end method

.method public static contentEquals(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/channels/ReadableByteChannel;I)Z
    .registers 11

    .line 1
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_8

    .line 7
    .line 8
    return v1

    .line 9
    :cond_8
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    const/4 v2, 0x0

    .line 18
    move v3, v2

    .line 19
    move v4, v3

    .line 20
    move v5, v4

    .line 21
    move v6, v5

    .line 22
    :cond_15
    :goto_15
    if-nez v3, :cond_23

    .line 23
    .line 24
    invoke-static {p0, v0}, Lorg/apache/commons/io/channels/FileChannels;->readToLimit(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)I

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 29
    .line 30
    .line 31
    if-nez v5, :cond_22

    .line 32
    .line 33
    move v4, v1

    .line 34
    goto :goto_23

    .line 35
    :cond_22
    move v4, v2

    .line 36
    :cond_23
    :goto_23
    if-nez v4, :cond_31

    .line 37
    .line 38
    invoke-static {p1, p2}, Lorg/apache/commons/io/channels/FileChannels;->readToLimit(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)I

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 43
    .line 44
    .line 45
    if-nez v6, :cond_30

    .line 46
    .line 47
    move v3, v1

    .line 48
    goto :goto_31

    .line 49
    :cond_30
    move v3, v2

    .line 50
    :cond_31
    :goto_31
    const/4 v7, -0x1

    .line 51
    if-ne v5, v7, :cond_3b

    .line 52
    .line 53
    if-ne v6, v7, :cond_3b

    .line 54
    .line 55
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    return p0

    .line 60
    :cond_3b
    if-eqz v5, :cond_4a

    .line 61
    .line 62
    if-nez v6, :cond_40

    .line 63
    .line 64
    goto :goto_4a

    .line 65
    :cond_40
    if-eq v5, v6, :cond_43

    .line 66
    .line 67
    return v2

    .line 68
    :cond_43
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v7

    .line 72
    if-nez v7, :cond_15

    .line 73
    .line 74
    return v2

    .line 75
    :cond_4a
    :goto_4a
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 76
    .line 77
    .line 78
    goto :goto_15
.end method

.method public static contentEquals(Ljava/nio/channels/SeekableByteChannel;Ljava/nio/channels/SeekableByteChannel;I)Z
    .registers 12

    .line 80
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 81
    :cond_8
    invoke-static {p0}, Lorg/apache/commons/io/channels/FileChannels;->size(Ljava/nio/channels/SeekableByteChannel;)J

    move-result-wide v2

    .line 82
    invoke-static {p1}, Lorg/apache/commons/io/channels/FileChannels;->size(Ljava/nio/channels/SeekableByteChannel;)J

    move-result-wide v4

    cmp-long v0, v2, v4

    const/4 v6, 0x0

    if-eqz v0, :cond_16

    return v6

    :cond_16
    const-wide/16 v7, 0x0

    cmp-long v0, v2, v7

    if-nez v0, :cond_20

    cmp-long v0, v4, v7

    if-eqz v0, :cond_26

    .line 83
    :cond_20
    invoke-static {p0, p1, p2}, Lorg/apache/commons/io/channels/FileChannels;->contentEquals(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/channels/ReadableByteChannel;I)Z

    move-result p0

    if-eqz p0, :cond_27

    :cond_26
    return v1

    :cond_27
    return v6
.end method

.method private static readToLimit(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)I
    .registers 5

    .line 1
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_21

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    :goto_7
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, -0x1

    .line 13
    if-eqz v1, :cond_1d

    .line 14
    .line 15
    invoke-interface {p0, p1}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-ne v1, v2, :cond_15

    .line 20
    .line 21
    goto :goto_1d

    .line 22
    :cond_15
    if-nez v1, :cond_1b

    .line 23
    .line 24
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 25
    .line 26
    .line 27
    goto :goto_7

    .line 28
    :cond_1b
    add-int/2addr v0, v1

    .line 29
    goto :goto_7

    .line 30
    :cond_1d
    :goto_1d
    if-eqz v0, :cond_20

    .line 31
    .line 32
    return v0

    .line 33
    :cond_20
    return v2

    .line 34
    :cond_21
    invoke-static {}, Ll9/i;->a()V

    .line 35
    .line 36
    .line 37
    const/4 p0, 0x0

    .line 38
    return p0
.end method

.method private static size(Ljava/nio/channels/SeekableByteChannel;)J
    .registers 3

    .line 1
    if-eqz p0, :cond_7

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/nio/channels/SeekableByteChannel;->size()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0

    .line 8
    :cond_7
    const-wide/16 v0, 0x0

    .line 9
    .line 10
    return-wide v0
.end method
