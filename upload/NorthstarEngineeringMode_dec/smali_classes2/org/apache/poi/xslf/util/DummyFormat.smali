.class public Lorg/apache/poi/xslf/util/DummyFormat;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xslf/util/OutputFormat;


# instance fields
.field private final bos:Lorg/apache/commons/io/output/j;

.field private final dummy2d:Lorg/apache/poi/xslf/util/DummyGraphics2d;


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    sget v0, Lorg/apache/commons/io/output/j;->c:I

    new-instance v0, Lorg/apache/commons/io/output/j$a;

    invoke-direct {v0}, Lorg/apache/commons/io/output/j$a;-><init>()V

    invoke-virtual {v0}, Lorg/apache/commons/io/output/j$a;->k()Lorg/apache/commons/io/output/j;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xslf/util/DummyFormat;->bos:Lorg/apache/commons/io/output/j;

    new-instance v1, Lorg/apache/poi/xslf/util/DummyGraphics2d;

    new-instance v2, Ljava/io/PrintStream;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v0, v4, v3}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/apache/poi/xslf/util/DummyGraphics2d;-><init>(Ljava/io/PrintStream;)V

    iput-object v1, p0, Lorg/apache/poi/xslf/util/DummyFormat;->dummy2d:Lorg/apache/poi/xslf/util/DummyGraphics2d;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public addSlide(DD)Ljava/awt/Graphics2D;
    .locals 0

    iget-object p1, p0, Lorg/apache/poi/xslf/util/DummyFormat;->bos:Lorg/apache/commons/io/output/j;

    invoke-virtual {p1}, Lorg/apache/commons/io/output/a;->resetImpl()V

    iget-object p0, p0, Lorg/apache/poi/xslf/util/DummyFormat;->dummy2d:Lorg/apache/poi/xslf/util/DummyGraphics2d;

    return-object p0
.end method

.method public close()V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/util/DummyFormat;->bos:Lorg/apache/commons/io/output/j;

    invoke-virtual {p0}, Lorg/apache/commons/io/output/a;->resetImpl()V

    return-void
.end method

.method public writeDocument(Lorg/apache/poi/xslf/util/MFProxy;Ljava/io/File;)V
    .locals 0

    return-void
.end method

.method public writeSlide(Lorg/apache/poi/xslf/util/MFProxy;Ljava/io/File;)V
    .locals 0

    invoke-virtual {p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/nio/file/OpenOption;

    invoke-static {p1, p2}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object p1

    :try_start_0
    iget-object p2, p0, Lorg/apache/poi/xslf/util/DummyFormat;->bos:Lorg/apache/commons/io/output/j;

    invoke-virtual {p2, p1}, Lorg/apache/commons/io/output/a;->writeToImpl(Ljava/io/OutputStream;)V

    iget-object p0, p0, Lorg/apache/poi/xslf/util/DummyFormat;->bos:Lorg/apache/commons/io/output/j;

    invoke-virtual {p0}, Lorg/apache/commons/io/output/a;->resetImpl()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz p1, :cond_1

    :try_start_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p2
.end method
