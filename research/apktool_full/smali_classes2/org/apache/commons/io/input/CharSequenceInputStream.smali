.class public Lorg/apache/commons/io/input/CharSequenceInputStream;
.super Ljava/io/InputStream;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/io/input/CharSequenceInputStream$Builder;
    }
.end annotation


# static fields
.field private static final NO_MARK:I = -0x1


# instance fields
.field private final bBuf:Ljava/nio/ByteBuffer;

.field private bBufMark:I

.field private final cBuf:Ljava/nio/CharBuffer;

.field private cBufMark:I

.field private final charsetEncoder:Ljava/nio/charset/CharsetEncoder;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x2000

    .line 71
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/io/input/CharSequenceInputStream;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/String;I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 72
    invoke-static {p2}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/io/input/CharSequenceInputStream;-><init>(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x2000

    .line 69
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/io/input/CharSequenceInputStream;-><init>(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 70
    invoke-static {}, Lorg/apache/commons/io/input/CharSequenceInputStream;->builder()Lorg/apache/commons/io/input/CharSequenceInputStream$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/io/build/AbstractOriginSupplier;->setCharSequence(Ljava/lang/CharSequence;)Lorg/apache/commons/io/build/AbstractOriginSupplier;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/io/input/CharSequenceInputStream$Builder;

    invoke-virtual {p1, p2}, Lorg/apache/commons/io/input/CharSequenceInputStream$Builder;->setCharset(Ljava/nio/charset/Charset;)Lorg/apache/commons/io/input/CharSequenceInputStream$Builder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->setBufferSize(I)Lorg/apache/commons/io/build/AbstractStreamBuilder;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/io/input/CharSequenceInputStream$Builder;

    invoke-direct {p0, p1}, Lorg/apache/commons/io/input/CharSequenceInputStream;-><init>(Lorg/apache/commons/io/input/CharSequenceInputStream$Builder;)V

    return-void
.end method

.method private constructor <init>(Lorg/apache/commons/io/input/CharSequenceInputStream$Builder;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lorg/apache/commons/io/input/CharSequenceInputStream$Builder;->access$200(Lorg/apache/commons/io/input/CharSequenceInputStream$Builder;)Ljava/nio/charset/CharsetEncoder;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->charsetEncoder:Ljava/nio/charset/CharsetEncoder;

    .line 9
    .line 10
    invoke-static {p1}, Lorg/apache/commons/io/input/CharSequenceInputStream$Builder;->access$200(Lorg/apache/commons/io/input/CharSequenceInputStream$Builder;)Ljava/nio/charset/CharsetEncoder;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p1}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->getBufferSize()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-static {v0, v1}, Lorg/apache/commons/io/input/ReaderInputStream;->checkMinBufferSize(Ljava/nio/charset/CharsetEncoder;I)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->bBuf:Ljava/nio/ByteBuffer;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 29
    .line 30
    .line 31
    new-instance v1, Lorg/apache/commons/io/input/d;

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    invoke-direct {v1, p1, v2}, Lorg/apache/commons/io/input/d;-><init>(Lorg/apache/commons/io/input/CharSequenceInputStream$Builder;I)V

    .line 35
    .line 36
    .line 37
    invoke-static {v1}, Lorg/apache/commons/io/function/Uncheck;->get(Lorg/apache/commons/io/function/IOSupplier;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, Ljava/lang/CharSequence;

    .line 42
    .line 43
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iput-object p1, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->cBuf:Ljava/nio/CharBuffer;

    .line 48
    .line 49
    const/4 v1, -0x1

    .line 50
    iput v1, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->cBufMark:I

    .line 51
    .line 52
    iput v1, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->bBufMark:I

    .line 53
    .line 54
    :try_start_0
    invoke-direct {p0}, Lorg/apache/commons/io/input/CharSequenceInputStream;->fillBuffer()V
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :catch_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->rewind()Ljava/nio/Buffer;

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/commons/io/input/CharSequenceInputStream$Builder;Lorg/apache/commons/io/input/CharSequenceInputStream$1;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lorg/apache/commons/io/input/CharSequenceInputStream;-><init>(Lorg/apache/commons/io/input/CharSequenceInputStream$Builder;)V

    return-void
.end method

.method public static synthetic access$000(Ljava/nio/charset/Charset;)Ljava/nio/charset/CharsetEncoder;
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/apache/commons/io/input/CharSequenceInputStream;->newEncoder(Ljava/nio/charset/Charset;)Ljava/nio/charset/CharsetEncoder;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Lorg/apache/commons/io/input/CharSequenceInputStream$Builder;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/apache/commons/io/input/CharSequenceInputStream;->lambda$new$0(Lorg/apache/commons/io/input/CharSequenceInputStream$Builder;)Ljava/lang/CharSequence;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static builder()Lorg/apache/commons/io/input/CharSequenceInputStream$Builder;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/io/input/CharSequenceInputStream$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/apache/commons/io/input/CharSequenceInputStream$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private fillBuffer()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->bBuf:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->charsetEncoder:Ljava/nio/charset/CharsetEncoder;

    .line 7
    .line 8
    iget-object v1, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->cBuf:Ljava/nio/CharBuffer;

    .line 9
    .line 10
    iget-object v2, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->bBuf:Ljava/nio/ByteBuffer;

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isError()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->throwException()V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->bBuf:Ljava/nio/ByteBuffer;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method private static synthetic lambda$new$0(Lorg/apache/commons/io/input/CharSequenceInputStream$Builder;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->getCharSequence()Ljava/lang/CharSequence;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static newEncoder(Ljava/nio/charset/Charset;)Ljava/nio/charset/CharsetEncoder;
    .locals 1

    .line 1
    invoke-static {p0}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0, v0}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method


# virtual methods
.method public available()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->bBuf:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->bBuf:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public getCharsetEncoder()Ljava/nio/charset/CharsetEncoder;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->charsetEncoder:Ljava/nio/charset/CharsetEncoder;

    .line 2
    .line 3
    return-object v0
.end method

.method public declared-synchronized mark(I)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object p1, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->cBuf:Ljava/nio/CharBuffer;

    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iput p1, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->cBufMark:I

    .line 9
    .line 10
    iget-object p1, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->bBuf:Ljava/nio/ByteBuffer;

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    iput p1, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->bBufMark:I

    .line 17
    .line 18
    iget-object p1, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->cBuf:Ljava/nio/CharBuffer;

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->mark()Ljava/nio/Buffer;

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->bBuf:Ljava/nio/ByteBuffer;

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    monitor-exit p0

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    throw p1
.end method

.method public markSupported()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public read()I
    .locals 1

    .line 87
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->bBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->bBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0

    .line 89
    :cond_1
    invoke-direct {p0}, Lorg/apache/commons/io/input/CharSequenceInputStream;->fillBuffer()V

    .line 90
    iget-object v0, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->bBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->cBuf:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0
.end method

.method public read([B)I
    .locals 2

    const/4 v0, 0x0

    .line 86
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/io/input/CharSequenceInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 4

    .line 1
    invoke-static {p1, p2, p3}, Lorg/apache/commons/io/IOUtils;->checkFromIndexSize([BII)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    if-nez p3, :cond_0

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->bBuf:Ljava/nio/ByteBuffer;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, -0x1

    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    iget-object v1, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->cBuf:Ljava/nio/CharBuffer;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    return v2

    .line 26
    :cond_1
    :goto_0
    if-lez p3, :cond_3

    .line 27
    .line 28
    iget-object v1, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->bBuf:Ljava/nio/ByteBuffer;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    iget-object v1, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->bBuf:Ljava/nio/ByteBuffer;

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    iget-object v3, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->bBuf:Ljava/nio/ByteBuffer;

    .line 47
    .line 48
    invoke-virtual {v3, p1, p2, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 49
    .line 50
    .line 51
    add-int/2addr p2, v1

    .line 52
    sub-int/2addr p3, v1

    .line 53
    add-int/2addr v0, v1

    .line 54
    goto :goto_0

    .line 55
    :cond_2
    invoke-direct {p0}, Lorg/apache/commons/io/input/CharSequenceInputStream;->fillBuffer()V

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->bBuf:Ljava/nio/ByteBuffer;

    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-nez v1, :cond_1

    .line 65
    .line 66
    iget-object v1, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->cBuf:Ljava/nio/CharBuffer;

    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-nez v1, :cond_1

    .line 73
    .line 74
    :cond_3
    if-nez v0, :cond_4

    .line 75
    .line 76
    iget-object p1, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->cBuf:Ljava/nio/CharBuffer;

    .line 77
    .line 78
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-nez p1, :cond_4

    .line 83
    .line 84
    return v2

    .line 85
    :cond_4
    return v0
.end method

.method public declared-synchronized reset()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->cBufMark:I

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, -0x1

    .line 6
    if-eq v0, v2, :cond_2

    .line 7
    .line 8
    iget-object v0, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->cBuf:Ljava/nio/CharBuffer;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->charsetEncoder:Ljava/nio/charset/CharsetEncoder;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->cBuf:Ljava/nio/CharBuffer;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->rewind()Ljava/nio/Buffer;

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->bBuf:Ljava/nio/ByteBuffer;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->bBuf:Ljava/nio/ByteBuffer;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 34
    .line 35
    .line 36
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->cBuf:Ljava/nio/CharBuffer;

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    iget v3, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->cBufMark:I

    .line 43
    .line 44
    if-ge v0, v3, :cond_0

    .line 45
    .line 46
    iget-object v0, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->bBuf:Ljava/nio/ByteBuffer;

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->bBuf:Ljava/nio/ByteBuffer;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 54
    .line 55
    .line 56
    invoke-direct {p0}, Lorg/apache/commons/io/input/CharSequenceInputStream;->fillBuffer()V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catchall_0
    move-exception v0

    .line 61
    goto :goto_2

    .line 62
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->cBuf:Ljava/nio/CharBuffer;

    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    iget v3, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->cBufMark:I

    .line 69
    .line 70
    if-ne v0, v3, :cond_1

    .line 71
    .line 72
    iget-object v0, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->bBuf:Ljava/nio/ByteBuffer;

    .line 73
    .line 74
    iget v3, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->bBufMark:I

    .line 75
    .line 76
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 77
    .line 78
    .line 79
    iput v2, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->cBufMark:I

    .line 80
    .line 81
    iput v2, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->bBufMark:I

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 85
    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    const-string v2, "Unexpected CharBuffer position: actual="

    .line 92
    .line 93
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    iget-object v2, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->cBuf:Ljava/nio/CharBuffer;

    .line 97
    .line 98
    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string v2, " expected="

    .line 106
    .line 107
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    iget v2, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->cBufMark:I

    .line 111
    .line 112
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    throw v0

    .line 123
    :cond_2
    :goto_1
    invoke-virtual {p0, v1}, Lorg/apache/commons/io/input/CharSequenceInputStream;->mark(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    .line 125
    .line 126
    monitor-exit p0

    .line 127
    return-void

    .line 128
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    throw v0
.end method

.method public skip(J)J
    .locals 6

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    move-wide v2, v0

    .line 4
    :goto_0
    cmp-long v4, p1, v0

    .line 5
    .line 6
    if-lez v4, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lorg/apache/commons/io/input/CharSequenceInputStream;->available()I

    .line 9
    .line 10
    .line 11
    move-result v4

    .line 12
    if-lez v4, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lorg/apache/commons/io/input/CharSequenceInputStream;->read()I

    .line 15
    .line 16
    .line 17
    const-wide/16 v4, 0x1

    .line 18
    .line 19
    sub-long/2addr p1, v4

    .line 20
    add-long/2addr v2, v4

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-wide v2
.end method
