.class public Lorg/apache/commons/io/output/DeferredFileOutputStream;
.super Lorg/apache/commons/io/output/ThresholdingOutputStream;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;
    }
.end annotation


# instance fields
.field private closed:Z

.field private currentOutputStream:Ljava/io/OutputStream;

.field private final directory:Ljava/nio/file/Path;

.field private memoryOutputStream:Lorg/apache/commons/io/output/ByteArrayOutputStream;

.field private outputPath:Ljava/nio/file/Path;

.field private final prefix:Ljava/lang/String;

.field private final suffix:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/io/File;)V
    .registers 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v6, p2

    move-object v2, p3

    .line 75
    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/io/output/DeferredFileOutputStream;-><init>(ILjava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;I)V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .registers 14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 76
    const-string v0, "prefix"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v3, 0x0

    move-object v1, p0

    move v2, p1

    move v7, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/io/output/DeferredFileOutputStream;-><init>(ILjava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;I)V

    return-void
.end method

.method public constructor <init>(ILjava/io/File;)V
    .registers 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v5, 0x0

    const/16 v6, 0x400

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    .line 67
    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/io/output/DeferredFileOutputStream;-><init>(ILjava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;I)V

    return-void
.end method

.method private constructor <init>(ILjava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;I)V
    .registers 7

    .line 68
    invoke-direct {p0, p1}, Lorg/apache/commons/io/output/ThresholdingOutputStream;-><init>(I)V

    const/4 p1, 0x0

    .line 69
    invoke-static {p2, p1}, Lorg/apache/commons/io/output/DeferredFileOutputStream;->toPath(Ljava/io/File;Ljava/util/function/Supplier;)Ljava/nio/file/Path;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->outputPath:Ljava/nio/file/Path;

    .line 70
    iput-object p3, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->prefix:Ljava/lang/String;

    .line 71
    iput-object p4, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->suffix:Ljava/lang/String;

    .line 72
    new-instance p1, Landroidx/emoji2/text/flatbuffer/a;

    const/16 p2, 0x8

    invoke-direct {p1, p2}, Landroidx/emoji2/text/flatbuffer/a;-><init>(I)V

    invoke-static {p5, p1}, Lorg/apache/commons/io/output/DeferredFileOutputStream;->toPath(Ljava/io/File;Ljava/util/function/Supplier;)Ljava/nio/file/Path;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->directory:Ljava/nio/file/Path;

    .line 73
    new-instance p1, Lorg/apache/commons/io/output/ByteArrayOutputStream;

    invoke-static {p6}, Lorg/apache/commons/io/output/DeferredFileOutputStream;->checkBufferSize(I)I

    move-result p2

    invoke-direct {p1, p2}, Lorg/apache/commons/io/output/ByteArrayOutputStream;-><init>(I)V

    iput-object p1, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->memoryOutputStream:Lorg/apache/commons/io/output/ByteArrayOutputStream;

    .line 74
    iput-object p1, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->currentOutputStream:Ljava/io/OutputStream;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .registers 13
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 77
    const-string v0, "prefix"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/16 v7, 0x400

    const/4 v3, 0x0

    move-object v1, p0

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/io/output/DeferredFileOutputStream;-><init>(ILjava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;I)V

    return-void
.end method

.method private constructor <init>(Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;)V
    .registers 5

    .line 1
    # getter for: Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;->threshold:I
    invoke-static {p1}, Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;->access$300(Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-direct {p0, v0}, Lorg/apache/commons/io/output/ThresholdingOutputStream;-><init>(I)V

    .line 6
    .line 7
    .line 8
    # getter for: Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;->outputFile:Ljava/nio/file/Path;
    invoke-static {p1}, Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;->access$400(Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;)Ljava/nio/file/Path;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-static {v0, v1}, Lorg/apache/commons/io/output/DeferredFileOutputStream;->toPath(Ljava/nio/file/Path;Ljava/util/function/Supplier;)Ljava/nio/file/Path;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->outputPath:Ljava/nio/file/Path;

    .line 18
    .line 19
    # getter for: Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;->prefix:Ljava/lang/String;
    invoke-static {p1}, Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;->access$500(Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->prefix:Ljava/lang/String;

    .line 24
    .line 25
    # getter for: Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;->suffix:Ljava/lang/String;
    invoke-static {p1}, Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;->access$600(Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->suffix:Ljava/lang/String;

    .line 30
    .line 31
    # getter for: Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;->directory:Ljava/nio/file/Path;
    invoke-static {p1}, Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;->access$700(Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;)Ljava/nio/file/Path;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    new-instance v1, Landroidx/emoji2/text/flatbuffer/a;

    .line 36
    .line 37
    const/16 v2, 0x8

    .line 38
    .line 39
    invoke-direct {v1, v2}, Landroidx/emoji2/text/flatbuffer/a;-><init>(I)V

    .line 40
    .line 41
    .line 42
    invoke-static {v0, v1}, Lorg/apache/commons/io/output/DeferredFileOutputStream;->toPath(Ljava/nio/file/Path;Ljava/util/function/Supplier;)Ljava/nio/file/Path;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iput-object v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->directory:Ljava/nio/file/Path;

    .line 47
    .line 48
    new-instance v0, Lorg/apache/commons/io/output/ByteArrayOutputStream;

    .line 49
    .line 50
    invoke-virtual {p1}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->getBufferSize()I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    invoke-static {p1}, Lorg/apache/commons/io/output/DeferredFileOutputStream;->checkBufferSize(I)I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    invoke-direct {v0, p1}, Lorg/apache/commons/io/output/ByteArrayOutputStream;-><init>(I)V

    .line 59
    .line 60
    .line 61
    iput-object v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->memoryOutputStream:Lorg/apache/commons/io/output/ByteArrayOutputStream;

    .line 62
    .line 63
    iput-object v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->currentOutputStream:Ljava/io/OutputStream;

    .line 64
    .line 65
    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;Lorg/apache/commons/io/output/DeferredFileOutputStream$1;)V
    .registers 3

    .line 66
    invoke-direct {p0, p1}, Lorg/apache/commons/io/output/DeferredFileOutputStream;-><init>(Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;)V

    return-void
.end method

.method public static synthetic access$100(Ljava/io/File;Ljava/util/function/Supplier;)Ljava/nio/file/Path;
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lorg/apache/commons/io/output/DeferredFileOutputStream;->toPath(Ljava/io/File;Ljava/util/function/Supplier;)Ljava/nio/file/Path;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$200(Ljava/nio/file/Path;Ljava/util/function/Supplier;)Ljava/nio/file/Path;
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lorg/apache/commons/io/output/DeferredFileOutputStream;->toPath(Ljava/nio/file/Path;Ljava/util/function/Supplier;)Ljava/nio/file/Path;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static builder()Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;
    .registers 1

    .line 1
    new-instance v0, Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static checkBufferSize(I)I
    .registers 1

    .line 1
    if-ltz p0, :cond_3

    .line 2
    .line 3
    return p0

    .line 4
    :cond_3
    const-string p0, "Initial buffer size must be at least 0."

    .line 5
    .line 6
    invoke-static {p0}, Lj1/i;->k(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return p0
.end method

.method private static toPath(Ljava/io/File;Ljava/util/function/Supplier;)Ljava/nio/file/Path;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/function/Supplier<",
            "Ljava/nio/file/Path;",
            ">;)",
            "Ljava/nio/file/Path;"
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_7

    .line 2
    .line 3
    invoke-static {p0}, Lc5/h;->i(Ljava/io/File;)Ljava/nio/file/Path;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0

    .line 8
    :cond_7
    if-nez p1, :cond_b

    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    return-object p0

    .line 12
    :cond_b
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {p0}, Lkotlin/internal/jdk8/a;->m(Ljava/lang/Object;)Ljava/nio/file/Path;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method private static toPath(Ljava/nio/file/Path;Ljava/util/function/Supplier;)Ljava/nio/file/Path;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/util/function/Supplier<",
            "Ljava/nio/file/Path;",
            ">;)",
            "Ljava/nio/file/Path;"
        }
    .end annotation

    if-eqz p0, :cond_3

    return-object p0

    :cond_3
    if-nez p1, :cond_7

    const/4 p0, 0x0

    return-object p0

    .line 21
    :cond_7
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/internal/jdk8/a;->m(Ljava/lang/Object;)Ljava/nio/file/Path;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 1
    invoke-super {p0}, Lorg/apache/commons/io/output/ThresholdingOutputStream;->close()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->closed:Z

    .line 6
    .line 7
    return-void
.end method

.method public getData()[B
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->memoryOutputStream:Lorg/apache/commons/io/output/ByteArrayOutputStream;

    .line 2
    .line 3
    if-eqz v0, :cond_9

    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->toByteArray()[B

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->outputPath:Ljava/nio/file/Path;

    .line 2
    .line 3
    if-eqz v0, :cond_9

    .line 4
    .line 5
    invoke-static {v0}, Lai/onnxruntime/c;->r(Ljava/nio/file/Path;)Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public getPath()Ljava/nio/file/Path;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->outputPath:Ljava/nio/file/Path;

    .line 2
    .line 3
    return-object v0
.end method

.method public getStream()Ljava/io/OutputStream;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->currentOutputStream:Ljava/io/OutputStream;

    .line 2
    .line 3
    return-object v0
.end method

.method public isInMemory()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/io/output/ThresholdingOutputStream;->isThresholdExceeded()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    xor-int/lit8 v0, v0, 0x1

    .line 6
    .line 7
    return v0
.end method

.method public thresholdReached()V
    .registers 6

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->prefix:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_11

    .line 5
    .line 6
    iget-object v2, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->directory:Ljava/nio/file/Path;

    .line 7
    .line 8
    iget-object v3, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->suffix:Ljava/lang/String;

    .line 9
    .line 10
    new-array v4, v1, [Ljava/nio/file/attribute/FileAttribute;

    .line 11
    .line 12
    invoke-static {v2, v0, v3, v4}, Lorg/apache/commons/io/filefilter/f;->e(Ljava/nio/file/Path;Ljava/lang/String;Ljava/lang/String;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->outputPath:Ljava/nio/file/Path;

    .line 17
    .line 18
    :cond_11
    iget-object v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->outputPath:Ljava/nio/file/Path;

    .line 19
    .line 20
    sget-object v2, Lorg/apache/commons/io/file/PathUtils;->EMPTY_FILE_ATTRIBUTE_ARRAY:[Ljava/nio/file/attribute/FileAttribute;

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-static {v0, v3, v2}, Lorg/apache/commons/io/file/PathUtils;->createParentDirectories(Ljava/nio/file/Path;Ljava/nio/file/LinkOption;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->outputPath:Ljava/nio/file/Path;

    .line 27
    .line 28
    new-array v1, v1, [Ljava/nio/file/OpenOption;

    .line 29
    .line 30
    invoke-static {v0, v1}, Lorg/apache/commons/io/d;->f(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    :try_start_21
    iget-object v1, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->memoryOutputStream:Lorg/apache/commons/io/output/ByteArrayOutputStream;

    .line 35
    .line 36
    invoke-virtual {v1, v0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_26} :catch_2b

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->currentOutputStream:Ljava/io/OutputStream;

    .line 40
    .line 41
    iput-object v3, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->memoryOutputStream:Lorg/apache/commons/io/output/ByteArrayOutputStream;

    .line 42
    .line 43
    return-void

    .line 44
    :catch_2b
    move-exception v1

    .line 45
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 46
    .line 47
    .line 48
    throw v1
.end method

.method public toInputStream()Ljava/io/InputStream;
    .registers 3

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->closed:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1b

    .line 4
    .line 5
    invoke-virtual {p0}, Lorg/apache/commons/io/output/DeferredFileOutputStream;->isInMemory()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_11

    .line 10
    .line 11
    iget-object v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->memoryOutputStream:Lorg/apache/commons/io/output/ByteArrayOutputStream;

    .line 12
    .line 13
    invoke-virtual {v0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->toInputStream()Ljava/io/InputStream;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0

    .line 18
    :cond_11
    iget-object v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->outputPath:Ljava/nio/file/Path;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    new-array v1, v1, [Ljava/nio/file/OpenOption;

    .line 22
    .line 23
    invoke-static {v0, v1}, Lkotlin/io/path/f;->e(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0

    .line 28
    :cond_1b
    const-string v0, "Stream not closed"

    .line 29
    .line 30
    invoke-static {v0}, Ln0/b;->A(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->closed:Z

    .line 2
    .line 3
    if-eqz v0, :cond_16

    .line 4
    .line 5
    invoke-virtual {p0}, Lorg/apache/commons/io/output/DeferredFileOutputStream;->isInMemory()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_10

    .line 10
    .line 11
    iget-object v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->memoryOutputStream:Lorg/apache/commons/io/output/ByteArrayOutputStream;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_10
    iget-object v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->outputPath:Ljava/nio/file/Path;

    .line 18
    .line 19
    invoke-static {v0, p1}, Lorg/apache/commons/io/filefilter/f;->s(Ljava/nio/file/Path;Ljava/io/OutputStream;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_16
    const-string p1, "Stream not closed"

    .line 24
    .line 25
    invoke-static {p1}, Ln0/b;->A(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method
