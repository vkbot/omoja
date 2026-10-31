.class public final Lorg/apache/commons/io/input/ChecksumInputStream;
.super Lorg/apache/commons/io/input/CountingInputStream;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/io/input/ChecksumInputStream$Builder;
    }
.end annotation


# instance fields
.field private final countThreshold:J

.field private final expectedChecksumValue:J


# direct methods
.method private constructor <init>(Lorg/apache/commons/io/input/ChecksumInputStream$Builder;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/zip/CheckedInputStream;

    .line 2
    .line 3
    invoke-virtual {p1}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->getInputStream()Ljava/io/InputStream;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {p1}, Lorg/apache/commons/io/input/ChecksumInputStream$Builder;->access$100(Lorg/apache/commons/io/input/ChecksumInputStream$Builder;)Ljava/util/zip/Checksum;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const-string v3, "builder.checksum"

    .line 12
    .line 13
    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    check-cast v2, Ljava/util/zip/Checksum;

    .line 17
    .line 18
    invoke-direct {v0, v1, v2}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, v0, p1}, Lorg/apache/commons/io/input/CountingInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/commons/io/input/ProxyInputStream$AbstractBuilder;)V

    .line 22
    .line 23
    .line 24
    invoke-static {p1}, Lorg/apache/commons/io/input/ChecksumInputStream$Builder;->access$200(Lorg/apache/commons/io/input/ChecksumInputStream$Builder;)J

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    iput-wide v0, p0, Lorg/apache/commons/io/input/ChecksumInputStream;->countThreshold:J

    .line 29
    .line 30
    invoke-static {p1}, Lorg/apache/commons/io/input/ChecksumInputStream$Builder;->access$300(Lorg/apache/commons/io/input/ChecksumInputStream$Builder;)J

    .line 31
    .line 32
    .line 33
    move-result-wide v0

    .line 34
    iput-wide v0, p0, Lorg/apache/commons/io/input/ChecksumInputStream;->expectedChecksumValue:J

    .line 35
    .line 36
    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/commons/io/input/ChecksumInputStream$Builder;Lorg/apache/commons/io/input/ChecksumInputStream$1;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lorg/apache/commons/io/input/ChecksumInputStream;-><init>(Lorg/apache/commons/io/input/ChecksumInputStream$Builder;)V

    return-void
.end method

.method public static builder()Lorg/apache/commons/io/input/ChecksumInputStream$Builder;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/io/input/ChecksumInputStream$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/apache/commons/io/input/ChecksumInputStream$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private getChecksum()Ljava/util/zip/Checksum;
    .locals 1

    .line 1
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 2
    .line 3
    check-cast v0, Ljava/util/zip/CheckedInputStream;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/zip/CheckedInputStream;->getChecksum()Ljava/util/zip/Checksum;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method


# virtual methods
.method public declared-synchronized afterRead(I)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-super {p0, p1}, Lorg/apache/commons/io/input/CountingInputStream;->afterRead(I)V

    .line 3
    .line 4
    .line 5
    iget-wide v0, p0, Lorg/apache/commons/io/input/ChecksumInputStream;->countThreshold:J

    .line 6
    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long v0, v0, v2

    .line 10
    .line 11
    if-lez v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lorg/apache/commons/io/input/CountingInputStream;->getByteCount()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    iget-wide v2, p0, Lorg/apache/commons/io/input/ChecksumInputStream;->countThreshold:J

    .line 18
    .line 19
    cmp-long v0, v0, v2

    .line 20
    .line 21
    if-gez v0, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    goto :goto_2

    .line 26
    :cond_0
    :goto_0
    const/4 v0, -0x1

    .line 27
    if-ne p1, v0, :cond_3

    .line 28
    .line 29
    :cond_1
    iget-wide v0, p0, Lorg/apache/commons/io/input/ChecksumInputStream;->expectedChecksumValue:J

    .line 30
    .line 31
    invoke-direct {p0}, Lorg/apache/commons/io/input/ChecksumInputStream;->getChecksum()Ljava/util/zip/Checksum;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-interface {p1}, Ljava/util/zip/Checksum;->getValue()J

    .line 36
    .line 37
    .line 38
    move-result-wide v2

    .line 39
    cmp-long p1, v0, v2

    .line 40
    .line 41
    if-nez p1, :cond_2

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    new-instance p1, Ljava/io/IOException;

    .line 45
    .line 46
    const-string v0, "Checksum verification failed."

    .line 47
    .line 48
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :cond_3
    :goto_1
    monitor-exit p0

    .line 53
    return-void

    .line 54
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    throw p1
.end method

.method public getRemaining()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/io/input/ChecksumInputStream;->countThreshold:J

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/apache/commons/io/input/CountingInputStream;->getByteCount()J

    .line 4
    .line 5
    .line 6
    move-result-wide v2

    .line 7
    sub-long/2addr v0, v2

    .line 8
    return-wide v0
.end method
