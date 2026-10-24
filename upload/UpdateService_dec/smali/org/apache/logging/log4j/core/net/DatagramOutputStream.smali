.class public Lorg/apache/logging/log4j/core/net/DatagramOutputStream;
.super Ljava/io/OutputStream;
.source "DatagramOutputStream.java"


# static fields
.field protected static final LOGGER:Lorg/apache/logging/log4j/Logger;

.field private static final SHIFT_1:I = 0x8

.field private static final SHIFT_2:I = 0x10

.field private static final SHIFT_3:I = 0x18


# instance fields
.field private data:[B

.field private datagramSocket:Ljava/net/DatagramSocket;

.field private final footer:[B

.field private final header:[B

.field private final inetAddress:Ljava/net/InetAddress;

.field private final port:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/net/DatagramOutputStream;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I[B[B)V
    .locals 3
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "header"    # [B
    .param p4, "footer"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "host",
            "port",
            "header",
            "footer"
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 60
    iput p2, p0, Lorg/apache/logging/log4j/core/net/DatagramOutputStream;->port:I

    .line 61
    iput-object p3, p0, Lorg/apache/logging/log4j/core/net/DatagramOutputStream;->header:[B

    .line 62
    iput-object p4, p0, Lorg/apache/logging/log4j/core/net/DatagramOutputStream;->footer:[B

    .line 64
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/net/DatagramOutputStream;->inetAddress:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1

    .line 69
    nop

    .line 72
    :try_start_1
    new-instance v0, Ljava/net/DatagramSocket;

    invoke-direct {v0}, Ljava/net/DatagramSocket;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/net/DatagramOutputStream;->datagramSocket:Ljava/net/DatagramSocket;
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0

    .line 77
    nop

    .line 78
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "ex":Ljava/net/SocketException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not instantiate DatagramSocket to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "msg":Ljava/lang/String;
    sget-object v2, Lorg/apache/logging/log4j/core/net/DatagramOutputStream;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v2, v1, v0}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    new-instance v2, Lorg/apache/logging/log4j/core/appender/AppenderLoggingException;

    invoke-direct {v2, v1, v0}, Lorg/apache/logging/log4j/core/appender/AppenderLoggingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 65
    .end local v0    # "ex":Ljava/net/SocketException;
    .end local v1    # "msg":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 66
    .local v0, "ex":Ljava/net/UnknownHostException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find host "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 67
    .restart local v1    # "msg":Ljava/lang/String;
    sget-object v2, Lorg/apache/logging/log4j/core/net/DatagramOutputStream;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v2, v1, v0}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    new-instance v2, Lorg/apache/logging/log4j/core/appender/AppenderLoggingException;

    invoke-direct {v2, v1, v0}, Lorg/apache/logging/log4j/core/appender/AppenderLoggingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private copy([BII)V
    .locals 5
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "bytes",
            "offset",
            "length"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lorg/apache/logging/log4j/core/net/DatagramOutputStream;->data:[B

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    array-length v0, v0

    .line 126
    .local v0, "index":I
    :goto_0
    add-int v2, p3, v0

    new-array v2, v2, [B

    .line 127
    .local v2, "copy":[B
    iget-object v3, p0, Lorg/apache/logging/log4j/core/net/DatagramOutputStream;->data:[B

    if-eqz v3, :cond_1

    .line 128
    array-length v4, v3

    invoke-static {v3, v1, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 130
    :cond_1
    invoke-static {p1, p2, v2, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 131
    iput-object v2, p0, Lorg/apache/logging/log4j/core/net/DatagramOutputStream;->data:[B

    .line 132
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 115
    :try_start_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/net/DatagramOutputStream;->datagramSocket:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lorg/apache/logging/log4j/core/net/DatagramOutputStream;->data:[B

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/net/DatagramOutputStream;->flush()V

    .line 119
    .end local p0    # "this":Lorg/apache/logging/log4j/core/net/DatagramOutputStream;
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/net/DatagramOutputStream;->datagramSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/net/DatagramOutputStream;->datagramSocket:Ljava/net/DatagramSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    :cond_1
    monitor-exit p0

    return-void

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized flush()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 98
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lorg/apache/logging/log4j/core/net/DatagramOutputStream;->data:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_1

    :try_start_1
    iget-object v2, p0, Lorg/apache/logging/log4j/core/net/DatagramOutputStream;->datagramSocket:Ljava/net/DatagramSocket;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/apache/logging/log4j/core/net/DatagramOutputStream;->inetAddress:Ljava/net/InetAddress;

    if-eqz v2, :cond_1

    .line 99
    iget-object v2, p0, Lorg/apache/logging/log4j/core/net/DatagramOutputStream;->footer:[B

    if-eqz v2, :cond_0

    .line 100
    iget-object v2, p0, Lorg/apache/logging/log4j/core/net/DatagramOutputStream;->footer:[B

    iget-object v3, p0, Lorg/apache/logging/log4j/core/net/DatagramOutputStream;->footer:[B

    array-length v3, v3

    invoke-direct {p0, v2, v1, v3}, Lorg/apache/logging/log4j/core/net/DatagramOutputStream;->copy([BII)V

    .line 102
    :cond_0
    new-instance v2, Ljava/net/DatagramPacket;

    iget-object v3, p0, Lorg/apache/logging/log4j/core/net/DatagramOutputStream;->data:[B

    iget-object v4, p0, Lorg/apache/logging/log4j/core/net/DatagramOutputStream;->data:[B

    array-length v4, v4

    iget-object v5, p0, Lorg/apache/logging/log4j/core/net/DatagramOutputStream;->inetAddress:Ljava/net/InetAddress;

    iget v6, p0, Lorg/apache/logging/log4j/core/net/DatagramOutputStream;->port:I

    invoke-direct {v2, v3, v4, v5, v6}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 103
    .local v2, "packet":Ljava/net/DatagramPacket;
    iget-object v3, p0, Lorg/apache/logging/log4j/core/net/DatagramOutputStream;->datagramSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v3, v2}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 106
    .end local v2    # "packet":Ljava/net/DatagramPacket;
    :catchall_0
    move-exception v2

    goto :goto_1

    :cond_1
    :goto_0
    :try_start_2
    iput-object v0, p0, Lorg/apache/logging/log4j/core/net/DatagramOutputStream;->data:[B

    .line 107
    iget-object v0, p0, Lorg/apache/logging/log4j/core/net/DatagramOutputStream;->header:[B

    if-eqz v0, :cond_2

    .line 108
    iget-object v0, p0, Lorg/apache/logging/log4j/core/net/DatagramOutputStream;->header:[B

    iget-object v2, p0, Lorg/apache/logging/log4j/core/net/DatagramOutputStream;->header:[B

    array-length v2, v2

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/logging/log4j/core/net/DatagramOutputStream;->copy([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 111
    .end local p0    # "this":Lorg/apache/logging/log4j/core/net/DatagramOutputStream;
    :cond_2
    monitor-exit p0

    return-void

    .line 106
    :catchall_1
    move-exception v2

    :goto_1
    :try_start_3
    iput-object v0, p0, Lorg/apache/logging/log4j/core/net/DatagramOutputStream;->data:[B

    .line 107
    iget-object v0, p0, Lorg/apache/logging/log4j/core/net/DatagramOutputStream;->header:[B

    if-eqz v0, :cond_3

    .line 108
    iget-object v0, p0, Lorg/apache/logging/log4j/core/net/DatagramOutputStream;->header:[B

    iget-object v3, p0, Lorg/apache/logging/log4j/core/net/DatagramOutputStream;->header:[B

    array-length v3, v3

    invoke-direct {p0, v0, v1, v3}, Lorg/apache/logging/log4j/core/net/DatagramOutputStream;->copy([BII)V

    :cond_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 97
    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write(I)V
    .locals 5
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "i"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 87
    const/4 v0, 0x4

    :try_start_0
    new-array v1, v0, [B

    ushr-int/lit8 v2, p1, 0x18

    int-to-byte v2, v2

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    const/4 v2, 0x1

    ushr-int/lit8 v4, p1, 0x10

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    const/4 v2, 0x2

    ushr-int/lit8 v4, p1, 0x8

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    const/4 v2, 0x3

    int-to-byte v4, p1

    aput-byte v4, v1, v2

    invoke-direct {p0, v1, v3, v0}, Lorg/apache/logging/log4j/core/net/DatagramOutputStream;->copy([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    monitor-exit p0

    return-void

    .line 86
    .end local p0    # "this":Lorg/apache/logging/log4j/core/net/DatagramOutputStream;
    .end local p1    # "i":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized write([B)V
    .locals 2
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "bytes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 92
    const/4 v0, 0x0

    :try_start_0
    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/logging/log4j/core/net/DatagramOutputStream;->copy([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    monitor-exit p0

    return-void

    .line 91
    .end local p0    # "this":Lorg/apache/logging/log4j/core/net/DatagramOutputStream;
    .end local p1    # "bytes":[B
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized write([BII)V
    .locals 0
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "bytes",
            "offset",
            "length"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 82
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/logging/log4j/core/net/DatagramOutputStream;->copy([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    monitor-exit p0

    return-void

    .line 81
    .end local p0    # "this":Lorg/apache/logging/log4j/core/net/DatagramOutputStream;
    .end local p1    # "bytes":[B
    .end local p2    # "offset":I
    .end local p3    # "length":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
