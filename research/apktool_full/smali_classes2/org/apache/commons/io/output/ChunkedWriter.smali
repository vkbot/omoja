.class public Lorg/apache/commons/io/output/ChunkedWriter;
.super Ljava/io/FilterWriter;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field private static final DEFAULT_CHUNK_SIZE:I = 0x2000


# instance fields
.field private final chunkSize:I


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 1

    const/16 v0, 0x2000

    .line 14
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/io/output/ChunkedWriter;-><init>(Ljava/io/Writer;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/io/FilterWriter;-><init>(Ljava/io/Writer;)V

    .line 2
    .line 3
    .line 4
    if-lez p2, :cond_0

    .line 5
    .line 6
    iput p2, p0, Lorg/apache/commons/io/output/ChunkedWriter;->chunkSize:I

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-static {}, Ll9/i;->a()V

    .line 10
    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    throw p1
.end method


# virtual methods
.method public write([CII)V
    .locals 2

    .line 1
    invoke-static {p1, p2, p3}, Lorg/apache/commons/io/IOUtils;->checkFromIndexSize([CII)V

    .line 2
    .line 3
    .line 4
    :goto_0
    if-lez p3, :cond_0

    .line 5
    .line 6
    iget v0, p0, Lorg/apache/commons/io/output/ChunkedWriter;->chunkSize:I

    .line 7
    .line 8
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget-object v1, p0, Ljava/io/FilterWriter;->out:Ljava/io/Writer;

    .line 13
    .line 14
    invoke-virtual {v1, p1, p2, v0}, Ljava/io/Writer;->write([CII)V

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
