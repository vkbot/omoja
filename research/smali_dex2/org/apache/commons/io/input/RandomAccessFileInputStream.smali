.class public Lorg/apache/commons/io/input/RandomAccessFileInputStream;
.super Lorg/apache/commons/io/input/AbstractInputStream;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/io/input/RandomAccessFileInputStream$Builder;
    }
.end annotation


# instance fields
.field private final propagateClose:Z

.field private final randomAccessFile:Ljava/io/RandomAccessFile;


# direct methods
.method public constructor <init>(Ljava/io/RandomAccessFile;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/io/input/RandomAccessFileInputStream;-><init>(Ljava/io/RandomAccessFile;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/RandomAccessFile;Z)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/io/input/AbstractInputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "file"

    .line 5
    .line 6
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lorg/apache/commons/io/input/RandomAccessFileInputStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    .line 10
    .line 11
    iput-boolean p2, p0, Lorg/apache/commons/io/input/RandomAccessFileInputStream;->propagateClose:Z

    .line 12
    .line 13
    return-void
.end method

.method private constructor <init>(Lorg/apache/commons/io/input/RandomAccessFileInputStream$Builder;)V
    .registers 3

    .line 14
    invoke-virtual {p1}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->getRandomAccessFile()Ljava/io/RandomAccessFile;

    move-result-object v0

    # getter for: Lorg/apache/commons/io/input/RandomAccessFileInputStream$Builder;->propagateClose:Z
    invoke-static {p1}, Lorg/apache/commons/io/input/RandomAccessFileInputStream$Builder;->access$100(Lorg/apache/commons/io/input/RandomAccessFileInputStream$Builder;)Z

    move-result p1

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/io/input/RandomAccessFileInputStream;-><init>(Ljava/io/RandomAccessFile;Z)V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/commons/io/input/RandomAccessFileInputStream$Builder;Lorg/apache/commons/io/input/RandomAccessFileInputStream$1;)V
    .registers 3

    .line 16
    invoke-direct {p0, p1}, Lorg/apache/commons/io/input/RandomAccessFileInputStream;-><init>(Lorg/apache/commons/io/input/RandomAccessFileInputStream$Builder;)V

    return-void
.end method

.method public static builder()Lorg/apache/commons/io/input/RandomAccessFileInputStream$Builder;
    .registers 1

    .line 1
    new-instance v0, Lorg/apache/commons/io/input/RandomAccessFileInputStream$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/apache/commons/io/input/RandomAccessFileInputStream$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public available()I
    .registers 5

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/io/input/RandomAccessFileInputStream;->availableLong()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/32 v2, 0x7fffffff

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    invoke-static {v0, v1}, Ljava/lang/Math;->toIntExact(J)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    return v0
.end method

.method public availableLong()J
    .registers 5

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/io/input/AbstractInputStream;->isClosed()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_9

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    return-wide v0

    .line 10
    :cond_9
    iget-object v0, p0, Lorg/apache/commons/io/input/RandomAccessFileInputStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    iget-object v2, p0, Lorg/apache/commons/io/input/RandomAccessFileInputStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 19
    .line 20
    .line 21
    move-result-wide v2

    .line 22
    sub-long/2addr v0, v2

    .line 23
    return-wide v0
.end method

.method public close()V
    .registers 2

    .line 1
    invoke-super {p0}, Lorg/apache/commons/io/input/AbstractInputStream;->close()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lorg/apache/commons/io/input/RandomAccessFileInputStream;->propagateClose:Z

    .line 5
    .line 6
    if-eqz v0, :cond_c

    .line 7
    .line 8
    iget-object v0, p0, Lorg/apache/commons/io/input/RandomAccessFileInputStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 11
    .line 12
    .line 13
    :cond_c
    return-void
.end method

.method public copy(JJLjava/io/OutputStream;)J
    .registers 13

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/input/RandomAccessFileInputStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v3, 0x0

    .line 7
    .line 8
    move-object v1, p0

    .line 9
    move-wide v5, p3

    .line 10
    move-object v2, p5

    .line 11
    invoke-static/range {v1 .. v6}, Lorg/apache/commons/io/IOUtils;->copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;JJ)J

    .line 12
    .line 13
    .line 14
    move-result-wide p1

    .line 15
    return-wide p1
.end method

.method public getRandomAccessFile()Ljava/io/RandomAccessFile;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/input/RandomAccessFileInputStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    .line 2
    .line 3
    return-object v0
.end method

.method public isCloseOnClose()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/io/input/RandomAccessFileInputStream;->propagateClose:Z

    .line 2
    .line 3
    return v0
.end method

.method public read()I
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/input/RandomAccessFileInputStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->read()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public read([B)I
    .registers 3

    .line 8
    iget-object v0, p0, Lorg/apache/commons/io/input/RandomAccessFileInputStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->read([B)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .registers 5

    .line 9
    iget-object v0, p0, Lorg/apache/commons/io/input/RandomAccessFileInputStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p1

    return p1
.end method

.method public skip(J)J
    .registers 10

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-gtz v2, :cond_7

    .line 6
    .line 7
    return-wide v0

    .line 8
    :cond_7
    iget-object v2, p0, Lorg/apache/commons/io/input/RandomAccessFileInputStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 11
    .line 12
    .line 13
    move-result-wide v2

    .line 14
    iget-object v4, p0, Lorg/apache/commons/io/input/RandomAccessFileInputStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    .line 15
    .line 16
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->length()J

    .line 17
    .line 18
    .line 19
    move-result-wide v4

    .line 20
    cmp-long v6, v2, v4

    .line 21
    .line 22
    if-ltz v6, :cond_18

    .line 23
    .line 24
    return-wide v0

    .line 25
    :cond_18
    add-long/2addr p1, v2

    .line 26
    cmp-long v6, p1, v4

    .line 27
    .line 28
    if-lez v6, :cond_21

    .line 29
    .line 30
    const-wide/16 p1, 0x1

    .line 31
    .line 32
    sub-long p1, v4, p1

    .line 33
    .line 34
    :cond_21
    cmp-long v0, p1, v0

    .line 35
    .line 36
    if-lez v0, :cond_2a

    .line 37
    .line 38
    iget-object v0, p0, Lorg/apache/commons/io/input/RandomAccessFileInputStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    .line 39
    .line 40
    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 41
    .line 42
    .line 43
    :cond_2a
    iget-object p1, p0, Lorg/apache/commons/io/input/RandomAccessFileInputStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 46
    .line 47
    .line 48
    move-result-wide p1

    .line 49
    sub-long/2addr p1, v2

    .line 50
    return-wide p1
.end method
