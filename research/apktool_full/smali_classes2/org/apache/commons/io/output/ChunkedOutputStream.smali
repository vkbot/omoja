.class public Lorg/apache/commons/io/output/ChunkedOutputStream;
.super Ljava/io/FilterOutputStream;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/io/output/ChunkedOutputStream$Builder;
    }
.end annotation


# instance fields
.field private final chunkSize:I


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x2000

    .line 25
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/io/output/ChunkedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 26
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    if-lez p2, :cond_0

    .line 27
    iput p2, p0, Lorg/apache/commons/io/output/ChunkedOutputStream;->chunkSize:I

    return-void

    .line 28
    :cond_0
    const-string p1, "chunkSize <= 0"

    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method private constructor <init>(Lorg/apache/commons/io/output/ChunkedOutputStream$Builder;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->getOutputStream()Ljava/io/OutputStream;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->getBufferSize()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-lez p1, :cond_0

    .line 13
    .line 14
    iput p1, p0, Lorg/apache/commons/io/output/ChunkedOutputStream;->chunkSize:I

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    const-string p1, "chunkSize <= 0"

    .line 18
    .line 19
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    throw p1
.end method

.method public synthetic constructor <init>(Lorg/apache/commons/io/output/ChunkedOutputStream$Builder;Lorg/apache/commons/io/output/ChunkedOutputStream$1;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lorg/apache/commons/io/output/ChunkedOutputStream;-><init>(Lorg/apache/commons/io/output/ChunkedOutputStream$Builder;)V

    return-void
.end method

.method public static builder()Lorg/apache/commons/io/output/ChunkedOutputStream$Builder;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/io/output/ChunkedOutputStream$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/apache/commons/io/output/ChunkedOutputStream$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public getChunkSize()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/io/output/ChunkedOutputStream;->chunkSize:I

    .line 2
    .line 3
    return v0
.end method

.method public write([BII)V
    .locals 2

    .line 1
    invoke-static {p1, p2, p3}, Lorg/apache/commons/io/IOUtils;->checkFromIndexSize([BII)V

    .line 2
    .line 3
    .line 4
    :goto_0
    if-lez p3, :cond_0

    .line 5
    .line 6
    iget v0, p0, Lorg/apache/commons/io/output/ChunkedOutputStream;->chunkSize:I

    .line 7
    .line 8
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    .line 13
    .line 14
    invoke-virtual {v1, p1, p2, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 15
    .line 16
    .line 17
    sub-int/2addr p3, v0

    .line 18
    add-int/2addr p2, v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    return-void
.end method
