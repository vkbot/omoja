.class public Lorg/apache/commons/io/input/XmlStreamReader$Builder;
.super Lorg/apache/commons/io/build/AbstractStreamBuilder;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/input/XmlStreamReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/io/build/AbstractStreamBuilder<",
        "Lorg/apache/commons/io/input/XmlStreamReader;",
        "Lorg/apache/commons/io/input/XmlStreamReader$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private httpContentType:Ljava/lang/String;

.field private lenient:Z

.field private nullCharset:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lorg/apache/commons/io/input/XmlStreamReader$Builder;->nullCharset:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lorg/apache/commons/io/input/XmlStreamReader$Builder;->lenient:Z

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 45
    invoke-virtual {p0}, Lorg/apache/commons/io/input/XmlStreamReader$Builder;->get()Lorg/apache/commons/io/input/XmlStreamReader;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/apache/commons/io/input/XmlStreamReader;
    .registers 6

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/io/input/XmlStreamReader$Builder;->nullCharset:Z

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_e

    .line 7
    :cond_6
    invoke-virtual {p0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->getCharset()Ljava/nio/charset/Charset;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :goto_e
    iget-object v1, p0, Lorg/apache/commons/io/input/XmlStreamReader$Builder;->httpContentType:Ljava/lang/String;

    .line 16
    .line 17
    if-nez v1, :cond_1e

    .line 18
    .line 19
    new-instance v1, Lorg/apache/commons/io/input/XmlStreamReader;

    .line 20
    .line 21
    invoke-virtual {p0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->getInputStream()Ljava/io/InputStream;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    iget-boolean v3, p0, Lorg/apache/commons/io/input/XmlStreamReader$Builder;->lenient:Z

    .line 26
    .line 27
    invoke-direct {v1, v2, v3, v0}, Lorg/apache/commons/io/input/XmlStreamReader;-><init>(Ljava/io/InputStream;ZLjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-object v1

    .line 31
    :cond_1e
    new-instance v1, Lorg/apache/commons/io/input/XmlStreamReader;

    .line 32
    .line 33
    invoke-virtual {p0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->getInputStream()Ljava/io/InputStream;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    iget-object v3, p0, Lorg/apache/commons/io/input/XmlStreamReader$Builder;->httpContentType:Ljava/lang/String;

    .line 38
    .line 39
    iget-boolean v4, p0, Lorg/apache/commons/io/input/XmlStreamReader$Builder;->lenient:Z

    .line 40
    .line 41
    invoke-direct {v1, v2, v3, v4, v0}, Lorg/apache/commons/io/input/XmlStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;ZLjava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-object v1
.end method

.method public bridge synthetic setCharset(Ljava/lang/String;)Lorg/apache/commons/io/build/AbstractStreamBuilder;
    .registers 2

    .line 26
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/input/XmlStreamReader$Builder;->setCharset(Ljava/lang/String;)Lorg/apache/commons/io/input/XmlStreamReader$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setCharset(Ljava/nio/charset/Charset;)Lorg/apache/commons/io/build/AbstractStreamBuilder;
    .registers 2

    .line 23
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/input/XmlStreamReader$Builder;->setCharset(Ljava/nio/charset/Charset;)Lorg/apache/commons/io/input/XmlStreamReader$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setCharset(Ljava/lang/String;)Lorg/apache/commons/io/input/XmlStreamReader$Builder;
    .registers 3

    .line 1
    if-nez p1, :cond_4

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    goto :goto_5

    .line 5
    :cond_4
    const/4 v0, 0x0

    .line 6
    :goto_5
    iput-boolean v0, p0, Lorg/apache/commons/io/input/XmlStreamReader$Builder;->nullCharset:Z

    .line 7
    .line 8
    invoke-virtual {p0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->getCharsetDefault()Ljava/nio/charset/Charset;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {p1, v0}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-super {p0, p1}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->setCharset(Ljava/nio/charset/Charset;)Lorg/apache/commons/io/build/AbstractStreamBuilder;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lorg/apache/commons/io/input/XmlStreamReader$Builder;

    .line 21
    .line 22
    return-object p1
.end method

.method public setCharset(Ljava/nio/charset/Charset;)Lorg/apache/commons/io/input/XmlStreamReader$Builder;
    .registers 3

    if-nez p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    .line 24
    :goto_5
    iput-boolean v0, p0, Lorg/apache/commons/io/input/XmlStreamReader$Builder;->nullCharset:Z

    .line 25
    invoke-super {p0, p1}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->setCharset(Ljava/nio/charset/Charset;)Lorg/apache/commons/io/build/AbstractStreamBuilder;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/io/input/XmlStreamReader$Builder;

    return-object p1
.end method

.method public setHttpContentType(Ljava/lang/String;)Lorg/apache/commons/io/input/XmlStreamReader$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Lorg/apache/commons/io/input/XmlStreamReader$Builder;->httpContentType:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setLenient(Z)Lorg/apache/commons/io/input/XmlStreamReader$Builder;
    .registers 2

    .line 1
    iput-boolean p1, p0, Lorg/apache/commons/io/input/XmlStreamReader$Builder;->lenient:Z

    .line 2
    .line 3
    return-object p0
.end method
