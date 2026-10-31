.class public Lorg/apache/commons/io/input/ReaderInputStream$Builder;
.super Lorg/apache/commons/io/build/AbstractStreamBuilder;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/input/ReaderInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/io/build/AbstractStreamBuilder<",
        "Lorg/apache/commons/io/input/ReaderInputStream;",
        "Lorg/apache/commons/io/input/ReaderInputStream$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private charsetEncoder:Ljava/nio/charset/CharsetEncoder;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->getCharset()Ljava/nio/charset/Charset;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    # invokes: Lorg/apache/commons/io/input/ReaderInputStream;->newEncoder(Ljava/nio/charset/Charset;)Ljava/nio/charset/CharsetEncoder;
    invoke-static {v0}, Lorg/apache/commons/io/input/ReaderInputStream;->access$000(Ljava/nio/charset/Charset;)Ljava/nio/charset/CharsetEncoder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lorg/apache/commons/io/input/ReaderInputStream$Builder;->charsetEncoder:Ljava/nio/charset/CharsetEncoder;

    .line 13
    .line 14
    return-void
.end method

.method public static synthetic access$200(Lorg/apache/commons/io/input/ReaderInputStream$Builder;)Ljava/nio/charset/CharsetEncoder;
    .registers 1

    .line 1
    iget-object p0, p0, Lorg/apache/commons/io/input/ReaderInputStream$Builder;->charsetEncoder:Ljava/nio/charset/CharsetEncoder;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic b(Lorg/apache/commons/io/input/ReaderInputStream$Builder;)Ljava/nio/charset/CharsetEncoder;
    .registers 1

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/io/input/ReaderInputStream$Builder;->lambda$setCharsetEncoder$0()Ljava/nio/charset/CharsetEncoder;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private synthetic lambda$setCharsetEncoder$0()Ljava/nio/charset/CharsetEncoder;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->getCharsetDefault()Ljava/nio/charset/Charset;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    # invokes: Lorg/apache/commons/io/input/ReaderInputStream;->newEncoder(Ljava/nio/charset/Charset;)Ljava/nio/charset/CharsetEncoder;
    invoke-static {v0}, Lorg/apache/commons/io/input/ReaderInputStream;->access$000(Ljava/nio/charset/Charset;)Ljava/nio/charset/CharsetEncoder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Lorg/apache/commons/io/input/ReaderInputStream$Builder;->get()Lorg/apache/commons/io/input/ReaderInputStream;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/apache/commons/io/input/ReaderInputStream;
    .registers 3

    .line 1
    new-instance v0, Lorg/apache/commons/io/input/ReaderInputStream;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lorg/apache/commons/io/input/ReaderInputStream;-><init>(Lorg/apache/commons/io/input/ReaderInputStream$Builder;Lorg/apache/commons/io/input/ReaderInputStream$1;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public getCharsetEncoder()Ljava/nio/charset/CharsetEncoder;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/input/ReaderInputStream$Builder;->charsetEncoder:Ljava/nio/charset/CharsetEncoder;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic setCharset(Ljava/nio/charset/Charset;)Lorg/apache/commons/io/build/AbstractStreamBuilder;
    .registers 2

    .line 15
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/input/ReaderInputStream$Builder;->setCharset(Ljava/nio/charset/Charset;)Lorg/apache/commons/io/input/ReaderInputStream$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setCharset(Ljava/nio/charset/Charset;)Lorg/apache/commons/io/input/ReaderInputStream$Builder;
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->setCharset(Ljava/nio/charset/Charset;)Lorg/apache/commons/io/build/AbstractStreamBuilder;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->getCharset()Ljava/nio/charset/Charset;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    # invokes: Lorg/apache/commons/io/input/ReaderInputStream;->newEncoder(Ljava/nio/charset/Charset;)Ljava/nio/charset/CharsetEncoder;
    invoke-static {p1}, Lorg/apache/commons/io/input/ReaderInputStream;->access$000(Ljava/nio/charset/Charset;)Ljava/nio/charset/CharsetEncoder;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lorg/apache/commons/io/input/ReaderInputStream$Builder;->charsetEncoder:Ljava/nio/charset/CharsetEncoder;

    .line 13
    .line 14
    return-object p0
.end method

.method public setCharsetEncoder(Ljava/nio/charset/CharsetEncoder;)Lorg/apache/commons/io/input/ReaderInputStream$Builder;
    .registers 4

    .line 1
    new-instance v0, Lkotlin/streams/jdk8/a;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, v1, p0}, Lkotlin/streams/jdk8/a;-><init>(ILjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    invoke-static {p1, v0}, Lorg/apache/commons/io/charset/CharsetEncoders;->toCharsetEncoder(Ljava/nio/charset/CharsetEncoder;Ljava/util/function/Supplier;)Ljava/nio/charset/CharsetEncoder;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lorg/apache/commons/io/input/ReaderInputStream$Builder;->charsetEncoder:Ljava/nio/charset/CharsetEncoder;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-super {p0, p1}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->setCharset(Ljava/nio/charset/Charset;)Lorg/apache/commons/io/build/AbstractStreamBuilder;

    .line 18
    .line 19
    .line 20
    return-object p0
.end method
