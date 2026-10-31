.class public Lorg/apache/commons/io/input/CharSequenceInputStream$Builder;
.super Lorg/apache/commons/io/build/AbstractStreamBuilder;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/input/CharSequenceInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/io/build/AbstractStreamBuilder<",
        "Lorg/apache/commons/io/input/CharSequenceInputStream;",
        "Lorg/apache/commons/io/input/CharSequenceInputStream$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private charsetEncoder:Ljava/nio/charset/CharsetEncoder;


# direct methods
.method public constructor <init>()V
    .locals 1

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
    invoke-static {v0}, Lorg/apache/commons/io/input/CharSequenceInputStream;->access$000(Ljava/nio/charset/Charset;)Ljava/nio/charset/CharsetEncoder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lorg/apache/commons/io/input/CharSequenceInputStream$Builder;->charsetEncoder:Ljava/nio/charset/CharsetEncoder;

    .line 13
    .line 14
    return-void
.end method

.method public static synthetic access$200(Lorg/apache/commons/io/input/CharSequenceInputStream$Builder;)Ljava/nio/charset/CharsetEncoder;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/commons/io/input/CharSequenceInputStream$Builder;->charsetEncoder:Ljava/nio/charset/CharsetEncoder;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic b(Lorg/apache/commons/io/input/CharSequenceInputStream$Builder;)Lorg/apache/commons/io/input/CharSequenceInputStream;
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/io/input/CharSequenceInputStream$Builder;->lambda$get$0()Lorg/apache/commons/io/input/CharSequenceInputStream;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c(Lorg/apache/commons/io/input/CharSequenceInputStream$Builder;)Ljava/nio/charset/CharsetEncoder;
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/io/input/CharSequenceInputStream$Builder;->lambda$setCharsetEncoder$1()Ljava/nio/charset/CharsetEncoder;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private synthetic lambda$get$0()Lorg/apache/commons/io/input/CharSequenceInputStream;
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/commons/io/input/CharSequenceInputStream;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lorg/apache/commons/io/input/CharSequenceInputStream;-><init>(Lorg/apache/commons/io/input/CharSequenceInputStream$Builder;Lorg/apache/commons/io/input/CharSequenceInputStream$1;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method private synthetic lambda$setCharsetEncoder$1()Ljava/nio/charset/CharsetEncoder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->getCharsetDefault()Ljava/nio/charset/Charset;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lorg/apache/commons/io/input/CharSequenceInputStream;->access$000(Ljava/nio/charset/Charset;)Ljava/nio/charset/CharsetEncoder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lorg/apache/commons/io/input/CharSequenceInputStream$Builder;->get()Lorg/apache/commons/io/input/CharSequenceInputStream;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/apache/commons/io/input/CharSequenceInputStream;
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/commons/io/input/d;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, p0, v1}, Lorg/apache/commons/io/input/d;-><init>(Lorg/apache/commons/io/input/CharSequenceInputStream$Builder;I)V

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lorg/apache/commons/io/function/Uncheck;->get(Lorg/apache/commons/io/function/IOSupplier;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lorg/apache/commons/io/input/CharSequenceInputStream;

    .line 12
    .line 13
    return-object v0
.end method

.method public getCharsetEncoder()Ljava/nio/charset/CharsetEncoder;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/input/CharSequenceInputStream$Builder;->charsetEncoder:Ljava/nio/charset/CharsetEncoder;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic setCharset(Ljava/nio/charset/Charset;)Lorg/apache/commons/io/build/AbstractStreamBuilder;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/input/CharSequenceInputStream$Builder;->setCharset(Ljava/nio/charset/Charset;)Lorg/apache/commons/io/input/CharSequenceInputStream$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setCharset(Ljava/nio/charset/Charset;)Lorg/apache/commons/io/input/CharSequenceInputStream$Builder;
    .locals 0

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
    invoke-static {p1}, Lorg/apache/commons/io/input/CharSequenceInputStream;->access$000(Ljava/nio/charset/Charset;)Ljava/nio/charset/CharsetEncoder;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lorg/apache/commons/io/input/CharSequenceInputStream$Builder;->charsetEncoder:Ljava/nio/charset/CharsetEncoder;

    .line 13
    .line 14
    return-object p0
.end method

.method public setCharsetEncoder(Ljava/nio/charset/CharsetEncoder;)Lorg/apache/commons/io/input/CharSequenceInputStream$Builder;
    .locals 2

    .line 1
    new-instance v0, Lkotlin/streams/jdk8/a;

    .line 2
    .line 3
    const/4 v1, 0x1

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
    iput-object p1, p0, Lorg/apache/commons/io/input/CharSequenceInputStream$Builder;->charsetEncoder:Ljava/nio/charset/CharsetEncoder;

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
