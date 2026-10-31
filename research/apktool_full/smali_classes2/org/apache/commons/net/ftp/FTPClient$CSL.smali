.class final Lorg/apache/commons/net/ftp/FTPClient$CSL;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lorg/apache/commons/net/io/CopyStreamListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/net/ftp/FTPClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CSL"
.end annotation


# instance fields
.field private acksAcked:I

.field private final currentSoTimeoutMillis:I

.field private final idleMillis:J

.field private ioErrors:I

.field private lastIdleTimeMillis:J

.field private notAcked:I

.field private final parent:Lorg/apache/commons/net/ftp/FTPClient;


# direct methods
.method public constructor <init>(Lorg/apache/commons/net/ftp/FTPClient;Ljava/time/Duration;Ljava/time/Duration;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    iput-wide v0, p0, Lorg/apache/commons/net/ftp/FTPClient$CSL;->lastIdleTimeMillis:J

    .line 9
    .line 10
    invoke-static {p2}, Lkotlin/io/path/f;->c(Ljava/time/Duration;)J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    iput-wide v0, p0, Lorg/apache/commons/net/ftp/FTPClient$CSL;->idleMillis:J

    .line 15
    .line 16
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPClient$CSL;->parent:Lorg/apache/commons/net/ftp/FTPClient;

    .line 17
    .line 18
    invoke-virtual {p1}, Lorg/apache/commons/net/SocketClient;->getSoTimeout()I

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    iput p2, p0, Lorg/apache/commons/net/ftp/FTPClient$CSL;->currentSoTimeoutMillis:I

    .line 23
    .line 24
    invoke-static {p3}, Lorg/apache/commons/net/ftp/DurationUtils;->toMillisInt(Ljava/time/Duration;)I

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    invoke-virtual {p1, p2}, Lorg/apache/commons/net/SocketClient;->setSoTimeout(I)V

    .line 29
    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public bytesTransferred(JIJ)V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide p1

    .line 5
    iget-wide p3, p0, Lorg/apache/commons/net/ftp/FTPClient$CSL;->lastIdleTimeMillis:J

    .line 6
    .line 7
    sub-long p3, p1, p3

    .line 8
    .line 9
    iget-wide v0, p0, Lorg/apache/commons/net/ftp/FTPClient$CSL;->idleMillis:J

    .line 10
    .line 11
    cmp-long p3, p3, v0

    .line 12
    .line 13
    if-lez p3, :cond_0

    .line 14
    .line 15
    :try_start_0
    iget-object p3, p0, Lorg/apache/commons/net/ftp/FTPClient$CSL;->parent:Lorg/apache/commons/net/ftp/FTPClient;

    .line 16
    .line 17
    invoke-virtual {p3}, Lorg/apache/commons/net/ftp/FTP;->__noop()V

    .line 18
    .line 19
    .line 20
    iget p3, p0, Lorg/apache/commons/net/ftp/FTPClient$CSL;->acksAcked:I

    .line 21
    .line 22
    add-int/lit8 p3, p3, 0x1

    .line 23
    .line 24
    iput p3, p0, Lorg/apache/commons/net/ftp/FTPClient$CSL;->acksAcked:I
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catch_0
    iget p3, p0, Lorg/apache/commons/net/ftp/FTPClient$CSL;->ioErrors:I

    .line 28
    .line 29
    add-int/lit8 p3, p3, 0x1

    .line 30
    .line 31
    iput p3, p0, Lorg/apache/commons/net/ftp/FTPClient$CSL;->ioErrors:I

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catch_1
    iget p3, p0, Lorg/apache/commons/net/ftp/FTPClient$CSL;->notAcked:I

    .line 35
    .line 36
    add-int/lit8 p3, p3, 0x1

    .line 37
    .line 38
    iput p3, p0, Lorg/apache/commons/net/ftp/FTPClient$CSL;->notAcked:I

    .line 39
    .line 40
    :goto_0
    iput-wide p1, p0, Lorg/apache/commons/net/ftp/FTPClient$CSL;->lastIdleTimeMillis:J

    .line 41
    .line 42
    :cond_0
    return-void
.end method

.method public bytesTransferred(Lorg/apache/commons/net/io/CopyStreamEvent;)V
    .locals 6

    .line 43
    invoke-virtual {p1}, Lorg/apache/commons/net/io/CopyStreamEvent;->getTotalBytesTransferred()J

    move-result-wide v1

    invoke-virtual {p1}, Lorg/apache/commons/net/io/CopyStreamEvent;->getBytesTransferred()I

    move-result v3

    invoke-virtual {p1}, Lorg/apache/commons/net/io/CopyStreamEvent;->getStreamSize()J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/net/ftp/FTPClient$CSL;->bytesTransferred(JIJ)V

    return-void
.end method

.method public cleanUp()[I
    .locals 4

    .line 1
    iget v0, p0, Lorg/apache/commons/net/ftp/FTPClient$CSL;->notAcked:I

    .line 2
    .line 3
    :goto_0
    :try_start_0
    iget v1, p0, Lorg/apache/commons/net/ftp/FTPClient$CSL;->notAcked:I
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    iget-object v2, p0, Lorg/apache/commons/net/ftp/FTPClient$CSL;->parent:Lorg/apache/commons/net/ftp/FTPClient;

    .line 6
    .line 7
    if-lez v1, :cond_0

    .line 8
    .line 9
    :try_start_1
    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTP;->getReply()I

    .line 10
    .line 11
    .line 12
    iget v1, p0, Lorg/apache/commons/net/ftp/FTPClient$CSL;->notAcked:I

    .line 13
    .line 14
    add-int/lit8 v1, v1, -0x1

    .line 15
    .line 16
    iput v1, p0, Lorg/apache/commons/net/ftp/FTPClient$CSL;->notAcked:I
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    iget v1, p0, Lorg/apache/commons/net/ftp/FTPClient$CSL;->currentSoTimeoutMillis:I

    .line 22
    .line 23
    invoke-virtual {v2, v1}, Lorg/apache/commons/net/SocketClient;->setSoTimeout(I)V

    .line 24
    .line 25
    .line 26
    goto :goto_2

    .line 27
    :goto_1
    iget-object v1, p0, Lorg/apache/commons/net/ftp/FTPClient$CSL;->parent:Lorg/apache/commons/net/ftp/FTPClient;

    .line 28
    .line 29
    iget v2, p0, Lorg/apache/commons/net/ftp/FTPClient$CSL;->currentSoTimeoutMillis:I

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Lorg/apache/commons/net/SocketClient;->setSoTimeout(I)V

    .line 32
    .line 33
    .line 34
    throw v0

    .line 35
    :catch_0
    iget-object v1, p0, Lorg/apache/commons/net/ftp/FTPClient$CSL;->parent:Lorg/apache/commons/net/ftp/FTPClient;

    .line 36
    .line 37
    iget v2, p0, Lorg/apache/commons/net/ftp/FTPClient$CSL;->currentSoTimeoutMillis:I

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Lorg/apache/commons/net/SocketClient;->setSoTimeout(I)V

    .line 40
    .line 41
    .line 42
    :goto_2
    iget v1, p0, Lorg/apache/commons/net/ftp/FTPClient$CSL;->acksAcked:I

    .line 43
    .line 44
    iget v2, p0, Lorg/apache/commons/net/ftp/FTPClient$CSL;->notAcked:I

    .line 45
    .line 46
    iget v3, p0, Lorg/apache/commons/net/ftp/FTPClient$CSL;->ioErrors:I

    .line 47
    .line 48
    filled-new-array {v1, v0, v2, v3}, [I

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    return-object v0
.end method
