.class Lorg/apache/mina/transport/socket/nio/NioDatagramSessionConfig;
.super Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;
.source "NioDatagramSessionConfig.java"


# instance fields
.field private final channel:Ljava/nio/channels/DatagramChannel;


# direct methods
.method constructor <init>(Ljava/nio/channels/DatagramChannel;)V
    .locals 0
    .param p1, "channel"    # Ljava/nio/channels/DatagramChannel;

    .line 44
    invoke-direct {p0}, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramSessionConfig;->channel:Ljava/nio/channels/DatagramChannel;

    .line 46
    return-void
.end method


# virtual methods
.method public getReceiveBufferSize()I
    .locals 2

    .line 60
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramSessionConfig;->channel:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->getReceiveBufferSize()I

    move-result v0
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/apache/mina/core/RuntimeIoException;

    invoke-direct {v1, v0}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getSendBufferSize()I
    .locals 2

    .line 120
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramSessionConfig;->channel:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->getSendBufferSize()I

    move-result v0
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/apache/mina/core/RuntimeIoException;

    invoke-direct {v1, v0}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getTrafficClass()I
    .locals 2

    .line 182
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramSessionConfig;->channel:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->getTrafficClass()I

    move-result v0
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/apache/mina/core/RuntimeIoException;

    invoke-direct {v1, v0}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isBroadcast()Z
    .locals 2

    .line 97
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramSessionConfig;->channel:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->getBroadcast()Z

    move-result v0
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/apache/mina/core/RuntimeIoException;

    invoke-direct {v1, v0}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isReuseAddress()Z
    .locals 2

    .line 150
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramSessionConfig;->channel:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->getReuseAddress()Z

    move-result v0
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/apache/mina/core/RuntimeIoException;

    invoke-direct {v1, v0}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setBroadcast(Z)V
    .locals 2
    .param p1, "broadcast"    # Z

    .line 106
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramSessionConfig;->channel:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/DatagramSocket;->setBroadcast(Z)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    nop

    .line 110
    return-void

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/apache/mina/core/RuntimeIoException;

    invoke-direct {v1, v0}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setReceiveBufferSize(I)V
    .locals 2
    .param p1, "receiveBufferSize"    # I

    .line 81
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramSessionConfig;->channel:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/DatagramSocket;->setReceiveBufferSize(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    nop

    .line 85
    return-void

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/apache/mina/core/RuntimeIoException;

    invoke-direct {v1, v0}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setReuseAddress(Z)V
    .locals 2
    .param p1, "reuseAddress"    # Z

    .line 164
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramSessionConfig;->channel:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/DatagramSocket;->setReuseAddress(Z)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    nop

    .line 168
    return-void

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/apache/mina/core/RuntimeIoException;

    invoke-direct {v1, v0}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setSendBufferSize(I)V
    .locals 2
    .param p1, "sendBufferSize"    # I

    .line 134
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramSessionConfig;->channel:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/DatagramSocket;->setSendBufferSize(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    nop

    .line 138
    return-void

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/apache/mina/core/RuntimeIoException;

    invoke-direct {v1, v0}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setTrafficClass(I)V
    .locals 2
    .param p1, "trafficClass"    # I

    .line 196
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramSessionConfig;->channel:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/DatagramSocket;->setTrafficClass(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    nop

    .line 200
    return-void

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/apache/mina/core/RuntimeIoException;

    invoke-direct {v1, v0}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
