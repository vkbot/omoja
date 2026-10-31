.class public Lorg/apache/commons/io/output/FileWriterWithEncoding$Builder;
.super Lorg/apache/commons/io/build/AbstractStreamBuilder;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/output/FileWriterWithEncoding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/io/build/AbstractStreamBuilder<",
        "Lorg/apache/commons/io/output/FileWriterWithEncoding;",
        "Lorg/apache/commons/io/output/FileWriterWithEncoding$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private append:Z

.field private charsetEncoder:Ljava/nio/charset/CharsetEncoder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->getCharset()Ljava/nio/charset/Charset;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lorg/apache/commons/io/output/FileWriterWithEncoding$Builder;->charsetEncoder:Ljava/nio/charset/CharsetEncoder;

    .line 13
    .line 14
    return-void
.end method

.method public static synthetic access$100(Lorg/apache/commons/io/output/FileWriterWithEncoding$Builder;)Ljava/io/File;
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/io/output/FileWriterWithEncoding$Builder;->checkOriginFile()Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$200(Lorg/apache/commons/io/output/FileWriterWithEncoding$Builder;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/io/output/FileWriterWithEncoding$Builder;->getEncoder()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$300(Lorg/apache/commons/io/output/FileWriterWithEncoding$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/apache/commons/io/output/FileWriterWithEncoding$Builder;->append:Z

    .line 2
    .line 3
    return p0
.end method

.method private checkOriginFile()Ljava/io/File;
    .locals 1

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

.method private getEncoder()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/output/FileWriterWithEncoding$Builder;->charsetEncoder:Ljava/nio/charset/CharsetEncoder;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->getCharset()Ljava/nio/charset/Charset;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lorg/apache/commons/io/output/FileWriterWithEncoding$Builder;->charsetEncoder:Ljava/nio/charset/CharsetEncoder;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->getCharset()Ljava/nio/charset/Charset;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 29
    .line 30
    invoke-virtual {p0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->getCharset()Ljava/nio/charset/Charset;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iget-object v2, p0, Lorg/apache/commons/io/output/FileWriterWithEncoding$Builder;->charsetEncoder:Ljava/nio/charset/CharsetEncoder;

    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const-string v2, "Mismatched Charset(%s) and CharsetEncoder(%s)"

    .line 45
    .line 46
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw v0

    .line 54
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/io/output/FileWriterWithEncoding$Builder;->charsetEncoder:Ljava/nio/charset/CharsetEncoder;

    .line 55
    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    return-object v0

    .line 59
    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->getCharset()Ljava/nio/charset/Charset;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lorg/apache/commons/io/output/FileWriterWithEncoding$Builder;->get()Lorg/apache/commons/io/output/FileWriterWithEncoding;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/apache/commons/io/output/FileWriterWithEncoding;
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/commons/io/output/FileWriterWithEncoding;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lorg/apache/commons/io/output/FileWriterWithEncoding;-><init>(Lorg/apache/commons/io/output/FileWriterWithEncoding$Builder;Lorg/apache/commons/io/output/FileWriterWithEncoding$1;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public setAppend(Z)Lorg/apache/commons/io/output/FileWriterWithEncoding$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/apache/commons/io/output/FileWriterWithEncoding$Builder;->append:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setCharsetEncoder(Ljava/nio/charset/CharsetEncoder;)Lorg/apache/commons/io/output/FileWriterWithEncoding$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/commons/io/output/FileWriterWithEncoding$Builder;->charsetEncoder:Ljava/nio/charset/CharsetEncoder;

    .line 2
    .line 3
    return-object p0
.end method
