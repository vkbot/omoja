.class public abstract Lorg/apache/commons/io/build/AbstractStreamBuilder;
.super Lorg/apache/commons/io/build/AbstractOriginSupplier;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Lorg/apache/commons/io/build/AbstractStreamBuilder<",
        "TT;TB;>;>",
        "Lorg/apache/commons/io/build/AbstractOriginSupplier<",
        "TT;TB;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_VALUE:I = 0x7fffffff

.field private static final DEFAULT_OPEN_OPTIONS:[Ljava/nio/file/OpenOption;


# instance fields
.field private bufferSize:I

.field private bufferSizeChecker:Ljava/util/function/IntUnaryOperator;

.field private bufferSizeDefault:I

.field private bufferSizeMax:I

.field private charset:Ljava/nio/charset/Charset;

.field private charsetDefault:Ljava/nio/charset/Charset;

.field private final defaultSizeChecker:Ljava/util/function/IntUnaryOperator;

.field private openOptions:[Ljava/nio/file/OpenOption;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    sget-object v0, Lorg/apache/commons/io/file/PathUtils;->EMPTY_OPEN_OPTION_ARRAY:[Ljava/nio/file/OpenOption;

    .line 2
    .line 3
    sput-object v0, Lorg/apache/commons/io/build/AbstractStreamBuilder;->DEFAULT_OPEN_OPTIONS:[Ljava/nio/file/OpenOption;

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/io/build/AbstractOriginSupplier;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x2000

    .line 5
    .line 6
    iput v0, p0, Lorg/apache/commons/io/build/AbstractStreamBuilder;->bufferSize:I

    .line 7
    .line 8
    iput v0, p0, Lorg/apache/commons/io/build/AbstractStreamBuilder;->bufferSizeDefault:I

    .line 9
    .line 10
    const v0, 0x7fffffff

    .line 11
    .line 12
    .line 13
    iput v0, p0, Lorg/apache/commons/io/build/AbstractStreamBuilder;->bufferSizeMax:I

    .line 14
    .line 15
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lorg/apache/commons/io/build/AbstractStreamBuilder;->charset:Ljava/nio/charset/Charset;

    .line 20
    .line 21
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Lorg/apache/commons/io/build/AbstractStreamBuilder;->charsetDefault:Ljava/nio/charset/Charset;

    .line 26
    .line 27
    sget-object v0, Lorg/apache/commons/io/build/AbstractStreamBuilder;->DEFAULT_OPEN_OPTIONS:[Ljava/nio/file/OpenOption;

    .line 28
    .line 29
    iput-object v0, p0, Lorg/apache/commons/io/build/AbstractStreamBuilder;->openOptions:[Ljava/nio/file/OpenOption;

    .line 30
    .line 31
    new-instance v0, Lorg/apache/commons/io/build/b;

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    invoke-direct {v0, v1, p0}, Lorg/apache/commons/io/build/b;-><init>(ILjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lorg/apache/commons/io/build/AbstractStreamBuilder;->defaultSizeChecker:Ljava/util/function/IntUnaryOperator;

    .line 38
    .line 39
    iput-object v0, p0, Lorg/apache/commons/io/build/AbstractStreamBuilder;->bufferSizeChecker:Ljava/util/function/IntUnaryOperator;

    .line 40
    .line 41
    return-void
.end method

.method public static synthetic a(Lorg/apache/commons/io/build/AbstractStreamBuilder;I)I
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->lambda$new$0(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private checkBufferSize(I)I
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/build/AbstractStreamBuilder;->bufferSizeChecker:Ljava/util/function/IntUnaryOperator;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method private synthetic lambda$new$0(I)I
    .registers 3

    .line 1
    iget v0, p0, Lorg/apache/commons/io/build/AbstractStreamBuilder;->bufferSizeMax:I

    .line 2
    .line 3
    if-le p1, v0, :cond_8

    .line 4
    .line 5
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->throwIae(II)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    :cond_8
    return p1
.end method

.method private throwIae(II)I
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string p2, "Request %,d exceeds maximum %,d"

    .line 16
    .line 17
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw v0
.end method


# virtual methods
.method public getBufferSize()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/apache/commons/io/build/AbstractStreamBuilder;->bufferSize:I

    .line 2
    .line 3
    return v0
.end method

.method public getBufferSizeDefault()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/apache/commons/io/build/AbstractStreamBuilder;->bufferSizeDefault:I

    .line 2
    .line 3
    return v0
.end method

.method public getChannel(Ljava/lang/Class;)Ljava/nio/channels/Channel;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/nio/channels/Channel;",
            ">(",
            "Ljava/lang/Class<",
            "TC;>;)TC;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/io/build/AbstractOriginSupplier;->checkOrigin()Lorg/apache/commons/io/build/AbstractOrigin;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->getOpenOptions()[Ljava/nio/file/OpenOption;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, p1, v1}, Lorg/apache/commons/io/build/AbstractOrigin;->getChannel(Ljava/lang/Class;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/Channel;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public getCharSequence()Ljava/lang/CharSequence;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/io/build/AbstractOriginSupplier;->checkOrigin()Lorg/apache/commons/io/build/AbstractOrigin;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->getCharset()Ljava/nio/charset/Charset;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lorg/apache/commons/io/build/AbstractOrigin;->getCharSequence(Ljava/nio/charset/Charset;)Ljava/lang/CharSequence;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public getCharset()Ljava/nio/charset/Charset;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/build/AbstractStreamBuilder;->charset:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCharsetDefault()Ljava/nio/charset/Charset;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/build/AbstractStreamBuilder;->charsetDefault:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/io/build/AbstractOriginSupplier;->checkOrigin()Lorg/apache/commons/io/build/AbstractOrigin;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/apache/commons/io/build/AbstractOrigin;->getFile()Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/io/build/AbstractOriginSupplier;->checkOrigin()Lorg/apache/commons/io/build/AbstractOrigin;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->getOpenOptions()[Ljava/nio/file/OpenOption;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lorg/apache/commons/io/build/AbstractOrigin;->getInputStream([Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public getOpenOptions()[Ljava/nio/file/OpenOption;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/build/AbstractStreamBuilder;->openOptions:[Ljava/nio/file/OpenOption;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/io/build/AbstractOriginSupplier;->checkOrigin()Lorg/apache/commons/io/build/AbstractOrigin;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->getOpenOptions()[Ljava/nio/file/OpenOption;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lorg/apache/commons/io/build/AbstractOrigin;->getOutputStream([Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public getPath()Ljava/nio/file/Path;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/io/build/AbstractOriginSupplier;->checkOrigin()Lorg/apache/commons/io/build/AbstractOrigin;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/apache/commons/io/build/AbstractOrigin;->getPath()Ljava/nio/file/Path;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getRandomAccessFile()Ljava/io/RandomAccessFile;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/io/build/AbstractOriginSupplier;->checkOrigin()Lorg/apache/commons/io/build/AbstractOrigin;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->getOpenOptions()[Ljava/nio/file/OpenOption;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lorg/apache/commons/io/build/AbstractOrigin;->getRandomAccessFile([Ljava/nio/file/OpenOption;)Ljava/io/RandomAccessFile;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public getReader()Ljava/io/Reader;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/io/build/AbstractOriginSupplier;->checkOrigin()Lorg/apache/commons/io/build/AbstractOrigin;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->getCharset()Ljava/nio/charset/Charset;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lorg/apache/commons/io/build/AbstractOrigin;->getReader(Ljava/nio/charset/Charset;)Ljava/io/Reader;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public getWriter()Ljava/io/Writer;
    .registers 4

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/io/build/AbstractOriginSupplier;->checkOrigin()Lorg/apache/commons/io/build/AbstractOrigin;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->getCharset()Ljava/nio/charset/Charset;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->getOpenOptions()[Ljava/nio/file/OpenOption;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/io/build/AbstractOrigin;->getWriter(Ljava/nio/charset/Charset;[Ljava/nio/file/OpenOption;)Ljava/io/Writer;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method public setBufferSize(I)Lorg/apache/commons/io/build/AbstractStreamBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    if-lez p1, :cond_3

    goto :goto_5

    .line 20
    :cond_3
    iget p1, p0, Lorg/apache/commons/io/build/AbstractStreamBuilder;->bufferSizeDefault:I

    :goto_5
    invoke-direct {p0, p1}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->checkBufferSize(I)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/io/build/AbstractStreamBuilder;->bufferSize:I

    .line 21
    invoke-virtual {p0}, Lorg/apache/commons/io/build/AbstractSupplier;->asThis()Lorg/apache/commons/io/build/AbstractSupplier;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/io/build/AbstractStreamBuilder;

    return-object p1
.end method

.method public setBufferSize(Ljava/lang/Integer;)Lorg/apache/commons/io/build/AbstractStreamBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")TB;"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_7

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    goto :goto_9

    .line 8
    :cond_7
    iget p1, p0, Lorg/apache/commons/io/build/AbstractStreamBuilder;->bufferSizeDefault:I

    .line 9
    .line 10
    :goto_9
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->setBufferSize(I)Lorg/apache/commons/io/build/AbstractStreamBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lorg/apache/commons/io/build/AbstractSupplier;->asThis()Lorg/apache/commons/io/build/AbstractSupplier;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lorg/apache/commons/io/build/AbstractStreamBuilder;

    .line 18
    .line 19
    return-object p1
.end method

.method public setBufferSizeChecker(Ljava/util/function/IntUnaryOperator;)Lorg/apache/commons/io/build/AbstractStreamBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/IntUnaryOperator;",
            ")TB;"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    goto :goto_5

    .line 4
    :cond_3
    iget-object p1, p0, Lorg/apache/commons/io/build/AbstractStreamBuilder;->defaultSizeChecker:Ljava/util/function/IntUnaryOperator;

    .line 5
    .line 6
    :goto_5
    iput-object p1, p0, Lorg/apache/commons/io/build/AbstractStreamBuilder;->bufferSizeChecker:Ljava/util/function/IntUnaryOperator;

    .line 7
    .line 8
    invoke-virtual {p0}, Lorg/apache/commons/io/build/AbstractSupplier;->asThis()Lorg/apache/commons/io/build/AbstractSupplier;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lorg/apache/commons/io/build/AbstractStreamBuilder;

    .line 13
    .line 14
    return-object p1
.end method

.method public setBufferSizeDefault(I)Lorg/apache/commons/io/build/AbstractStreamBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .line 1
    iput p1, p0, Lorg/apache/commons/io/build/AbstractStreamBuilder;->bufferSizeDefault:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/apache/commons/io/build/AbstractSupplier;->asThis()Lorg/apache/commons/io/build/AbstractSupplier;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lorg/apache/commons/io/build/AbstractStreamBuilder;

    .line 8
    .line 9
    return-object p1
.end method

.method public setBufferSizeMax(I)Lorg/apache/commons/io/build/AbstractStreamBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .line 1
    if-lez p1, :cond_3

    .line 2
    .line 3
    goto :goto_6

    .line 4
    :cond_3
    const p1, 0x7fffffff

    .line 5
    .line 6
    .line 7
    :goto_6
    iput p1, p0, Lorg/apache/commons/io/build/AbstractStreamBuilder;->bufferSizeMax:I

    .line 8
    .line 9
    invoke-virtual {p0}, Lorg/apache/commons/io/build/AbstractSupplier;->asThis()Lorg/apache/commons/io/build/AbstractSupplier;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lorg/apache/commons/io/build/AbstractStreamBuilder;

    .line 14
    .line 15
    return-object p1
.end method

.method public setCharset(Ljava/lang/String;)Lorg/apache/commons/io/build/AbstractStreamBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lorg/apache/commons/io/build/AbstractStreamBuilder;->charsetDefault:Ljava/nio/charset/Charset;

    invoke-static {p1, v0}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->setCharset(Ljava/nio/charset/Charset;)Lorg/apache/commons/io/build/AbstractStreamBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setCharset(Ljava/nio/charset/Charset;)Lorg/apache/commons/io/build/AbstractStreamBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/charset/Charset;",
            ")TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/build/AbstractStreamBuilder;->charsetDefault:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    invoke-static {p1, v0}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/nio/charset/Charset;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iput-object p1, p0, Lorg/apache/commons/io/build/AbstractStreamBuilder;->charset:Ljava/nio/charset/Charset;

    .line 8
    .line 9
    invoke-virtual {p0}, Lorg/apache/commons/io/build/AbstractSupplier;->asThis()Lorg/apache/commons/io/build/AbstractSupplier;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lorg/apache/commons/io/build/AbstractStreamBuilder;

    .line 14
    .line 15
    return-object p1
.end method

.method public setCharsetDefault(Ljava/nio/charset/Charset;)Lorg/apache/commons/io/build/AbstractStreamBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/charset/Charset;",
            ")TB;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/apache/commons/io/build/AbstractStreamBuilder;->charsetDefault:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/apache/commons/io/build/AbstractSupplier;->asThis()Lorg/apache/commons/io/build/AbstractSupplier;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lorg/apache/commons/io/build/AbstractStreamBuilder;

    .line 8
    .line 9
    return-object p1
.end method

.method public varargs setOpenOptions([Ljava/nio/file/OpenOption;)Lorg/apache/commons/io/build/AbstractStreamBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/nio/file/OpenOption;",
            ")TB;"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    goto :goto_5

    .line 4
    :cond_3
    sget-object p1, Lorg/apache/commons/io/build/AbstractStreamBuilder;->DEFAULT_OPEN_OPTIONS:[Ljava/nio/file/OpenOption;

    .line 5
    .line 6
    :goto_5
    iput-object p1, p0, Lorg/apache/commons/io/build/AbstractStreamBuilder;->openOptions:[Ljava/nio/file/OpenOption;

    .line 7
    .line 8
    invoke-virtual {p0}, Lorg/apache/commons/io/build/AbstractSupplier;->asThis()Lorg/apache/commons/io/build/AbstractSupplier;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lorg/apache/commons/io/build/AbstractStreamBuilder;

    .line 13
    .line 14
    return-object p1
.end method
