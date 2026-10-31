.class public Lorg/apache/commons/io/input/BoundedReader;
.super Ljava/io/Reader;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field private static final INVALID:I = -0x1


# instance fields
.field private charsRead:I

.field private markedAt:I

.field private final maxCharsFromTargetReader:I

.field private readAheadLimit:I

.field private final target:Ljava/io/Reader;


# direct methods
.method public constructor <init>(Ljava/io/Reader;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lorg/apache/commons/io/input/BoundedReader;->markedAt:I

    .line 6
    .line 7
    iput-object p1, p0, Lorg/apache/commons/io/input/BoundedReader;->target:Ljava/io/Reader;

    .line 8
    .line 9
    iput p2, p0, Lorg/apache/commons/io/input/BoundedReader;->maxCharsFromTargetReader:I

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/input/BoundedReader;->target:Ljava/io/Reader;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public mark(I)V
    .locals 2

    .line 1
    iget v0, p0, Lorg/apache/commons/io/input/BoundedReader;->charsRead:I

    .line 2
    .line 3
    sub-int v1, p1, v0

    .line 4
    .line 5
    iput v1, p0, Lorg/apache/commons/io/input/BoundedReader;->readAheadLimit:I

    .line 6
    .line 7
    iput v0, p0, Lorg/apache/commons/io/input/BoundedReader;->markedAt:I

    .line 8
    .line 9
    iget-object v0, p0, Lorg/apache/commons/io/input/BoundedReader;->target:Ljava/io/Reader;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/io/Reader;->mark(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public read()I
    .locals 4

    .line 1
    iget v0, p0, Lorg/apache/commons/io/input/BoundedReader;->charsRead:I

    .line 2
    .line 3
    iget v1, p0, Lorg/apache/commons/io/input/BoundedReader;->maxCharsFromTargetReader:I

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    return v2

    .line 9
    :cond_0
    iget v1, p0, Lorg/apache/commons/io/input/BoundedReader;->markedAt:I

    .line 10
    .line 11
    if-ltz v1, :cond_1

    .line 12
    .line 13
    sub-int v1, v0, v1

    .line 14
    .line 15
    iget v3, p0, Lorg/apache/commons/io/input/BoundedReader;->readAheadLimit:I

    .line 16
    .line 17
    if-lt v1, v3, :cond_1

    .line 18
    .line 19
    return v2

    .line 20
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 21
    .line 22
    iput v0, p0, Lorg/apache/commons/io/input/BoundedReader;->charsRead:I

    .line 23
    .line 24
    iget-object v0, p0, Lorg/apache/commons/io/input/BoundedReader;->target:Ljava/io/Reader;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    return v0
.end method

.method public read([CII)I
    .locals 3

    .line 31
    invoke-static {p1, p2, p3}, Lorg/apache/commons/io/IOUtils;->checkFromIndexSize([CII)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_2

    .line 32
    invoke-virtual {p0}, Lorg/apache/commons/io/input/BoundedReader;->read()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    return v2

    :cond_0
    return v0

    :cond_1
    add-int v2, p2, v0

    int-to-char v1, v1

    .line 33
    aput-char v1, p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return p3
.end method

.method public reset()V
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/io/input/BoundedReader;->markedAt:I

    .line 2
    .line 3
    iput v0, p0, Lorg/apache/commons/io/input/BoundedReader;->charsRead:I

    .line 4
    .line 5
    iget-object v0, p0, Lorg/apache/commons/io/input/BoundedReader;->target:Ljava/io/Reader;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/io/Reader;->reset()V

    .line 8
    .line 9
    .line 10
    return-void
.end method
