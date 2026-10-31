.class public final Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;
.super Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/io/output/AbstractByteArrayOutputStream<",
        "Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x400

    .line 21
    invoke-direct {p0, v0}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    if-ltz p1, :cond_9

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->needNewBuffer(I)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :cond_9
    const-string v0, "Negative initial size: "

    .line 11
    .line 12
    invoke-static {p1, v0}, Lai/onnxruntime/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    throw p1
.end method

.method private constructor <init>(Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream$Builder;)V
    .registers 2

    .line 22
    invoke-virtual {p1}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->getBufferSize()I

    move-result p1

    invoke-direct {p0, p1}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream$Builder;Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream$1;)V
    .registers 3

    .line 23
    invoke-direct {p0, p1}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;-><init>(Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream$Builder;)V

    return-void
.end method

.method public static synthetic b([BII)Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;->lambda$toInputStream$1([BII)Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static builder()Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream$Builder;
    .registers 1

    .line 1
    new-instance v0, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static synthetic c([BII)Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;->lambda$toInputStream$0([BII)Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static synthetic lambda$toInputStream$0([BII)Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;
    .registers 4

    .line 1
    invoke-static {}, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->builder()Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;->setByteArray([B)Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;->setOffset(I)Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0, p2}, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;->setLength(I)Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;->get()Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

.method private static synthetic lambda$toInputStream$1([BII)Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;
    .registers 4

    .line 1
    new-instance v0, Lorg/apache/commons/io/output/h;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/io/output/h;-><init>([BII)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lorg/apache/commons/io/function/Uncheck;->get(Lorg/apache/commons/io/function/IOSupplier;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;

    .line 11
    .line 12
    return-object p0
.end method

.method public static toBufferedInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .registers 2

    const/16 v0, 0x400

    .line 38
    invoke-static {p0, v0}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;->toBufferedInputStream(Ljava/io/InputStream;I)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public static toBufferedInputStream(Ljava/io/InputStream;I)Ljava/io/InputStream;
    .registers 3

    .line 1
    invoke-static {}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;->builder()Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->setBufferSize(I)Lorg/apache/commons/io/build/AbstractStreamBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream$Builder;

    .line 10
    .line 11
    invoke-virtual {p1}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream$Builder;->get()Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    :try_start_e
    invoke-virtual {p1, p0}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;->write(Ljava/io/InputStream;)I

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;->toInputStream()Ljava/io/InputStream;

    .line 19
    .line 20
    .line 21
    move-result-object p0
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_19

    .line 22
    invoke-virtual {p1}, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->close()V

    .line 23
    .line 24
    .line 25
    return-object p0

    .line 26
    :catchall_19
    move-exception p0

    .line 27
    if-eqz p1, :cond_24

    .line 28
    .line 29
    :try_start_1c
    invoke-virtual {p1}, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->close()V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_20

    .line 30
    .line 31
    .line 32
    goto :goto_24

    .line 33
    :catchall_20
    move-exception p1

    .line 34
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 35
    .line 36
    .line 37
    :cond_24
    :goto_24
    throw p0
.end method


# virtual methods
.method public reset()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->resetImpl()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public size()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->count:I

    .line 2
    .line 3
    return v0
.end method

.method public toByteArray()[B
    .registers 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->toByteArrayImpl()[B

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public toInputStream()Ljava/io/InputStream;
    .registers 3

    .line 1
    new-instance v0, Ln0/b;

    .line 2
    .line 3
    const/16 v1, 0x1c

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ln0/b;-><init>(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->toInputStream(Lorg/apache/commons/io/output/AbstractByteArrayOutputStream$InputStreamConstructor;)Ljava/io/InputStream;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public write(Ljava/io/InputStream;)I
    .registers 2

    .line 11
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->writeImpl(Ljava/io/InputStream;)I

    move-result p1

    return p1
.end method

.method public write(I)V
    .registers 2

    .line 12
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->writeImpl(I)V

    return-void
.end method

.method public write([BII)V
    .registers 4

    .line 1
    invoke-static {p1, p2, p3}, Lorg/apache/commons/io/IOUtils;->checkFromIndexSize([BII)V

    .line 2
    .line 3
    .line 4
    if-nez p3, :cond_6

    .line 5
    .line 6
    return-void

    .line 7
    :cond_6
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->writeImpl([BII)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->writeToImpl(Ljava/io/OutputStream;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
