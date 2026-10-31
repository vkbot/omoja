.class public Lorg/apache/commons/net/telnet/TelnetClient;
.super Lorg/apache/commons/net/telnet/Telnet;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field private static final DEFAULT_MAX_SUBNEGOTIATION_LENGTH:I = 0x200


# instance fields
.field private input:Ljava/io/InputStream;

.field private inputListener:Lorg/apache/commons/net/telnet/TelnetInputListener;

.field final maxSubnegotiationLength:I

.field private output:Ljava/io/OutputStream;

.field protected readerThread:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 17
    const-string v0, "VT100"

    const/16 v1, 0x200

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/net/telnet/TelnetClient;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 15
    const-string v0, "VT100"

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/telnet/TelnetClient;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x200

    .line 16
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/net/telnet/TelnetClient;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;-><init>(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lorg/apache/commons/net/telnet/TelnetClient;->readerThread:Z

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lorg/apache/commons/net/telnet/TelnetClient;->input:Ljava/io/InputStream;

    .line 9
    .line 10
    iput-object p1, p0, Lorg/apache/commons/net/telnet/TelnetClient;->output:Ljava/io/OutputStream;

    .line 11
    .line 12
    iput p2, p0, Lorg/apache/commons/net/telnet/TelnetClient;->maxSubnegotiationLength:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public _connectAction_()V
    .locals 3

    .line 1
    invoke-super {p0}, Lorg/apache/commons/net/telnet/Telnet;->_connectAction_()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/apache/commons/net/telnet/TelnetInputStream;

    .line 5
    .line 6
    iget-object v1, p0, Lorg/apache/commons/net/SocketClient;->_input_:Ljava/io/InputStream;

    .line 7
    .line 8
    iget-boolean v2, p0, Lorg/apache/commons/net/telnet/TelnetClient;->readerThread:Z

    .line 9
    .line 10
    invoke-direct {v0, v1, p0, v2}, Lorg/apache/commons/net/telnet/TelnetInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/commons/net/telnet/TelnetClient;Z)V

    .line 11
    .line 12
    .line 13
    iget-boolean v1, p0, Lorg/apache/commons/net/telnet/TelnetClient;->readerThread:Z

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Lorg/apache/commons/net/telnet/TelnetInputStream;->start()V

    .line 18
    .line 19
    .line 20
    :cond_0
    new-instance v1, Ljava/io/BufferedInputStream;

    .line 21
    .line 22
    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 23
    .line 24
    .line 25
    iput-object v1, p0, Lorg/apache/commons/net/telnet/TelnetClient;->input:Ljava/io/InputStream;

    .line 26
    .line 27
    new-instance v0, Lorg/apache/commons/net/telnet/TelnetOutputStream;

    .line 28
    .line 29
    invoke-direct {v0, p0}, Lorg/apache/commons/net/telnet/TelnetOutputStream;-><init>(Lorg/apache/commons/net/telnet/TelnetClient;)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lorg/apache/commons/net/telnet/TelnetClient;->output:Ljava/io/OutputStream;

    .line 33
    .line 34
    return-void
.end method

.method public addOptionHandler(Lorg/apache/commons/net/telnet/TelnetOptionHandler;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->addOptionHandler(Lorg/apache/commons/net/telnet/TelnetOptionHandler;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public closeOutputStream()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_output_:Ljava/io/OutputStream;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v1, 0x0

    .line 7
    :try_start_0
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    iput-object v1, p0, Lorg/apache/commons/net/SocketClient;->_output_:Ljava/io/OutputStream;

    .line 11
    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    iput-object v1, p0, Lorg/apache/commons/net/SocketClient;->_output_:Ljava/io/OutputStream;

    .line 15
    .line 16
    throw v0
.end method

.method public deleteOptionHandler(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->deleteOptionHandler(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public disconnect()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetClient;->input:Ljava/io/InputStream;

    .line 3
    .line 4
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->close(Ljava/io/Closeable;)V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetClient;->output:Ljava/io/OutputStream;

    .line 8
    .line 9
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->close(Ljava/io/Closeable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lorg/apache/commons/net/telnet/TelnetClient;->output:Ljava/io/OutputStream;

    .line 13
    .line 14
    iput-object v0, p0, Lorg/apache/commons/net/telnet/TelnetClient;->input:Ljava/io/InputStream;

    .line 15
    .line 16
    invoke-super {p0}, Lorg/apache/commons/net/SocketClient;->disconnect()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    iput-object v0, p0, Lorg/apache/commons/net/telnet/TelnetClient;->output:Ljava/io/OutputStream;

    .line 22
    .line 23
    iput-object v0, p0, Lorg/apache/commons/net/telnet/TelnetClient;->input:Ljava/io/InputStream;

    .line 24
    .line 25
    invoke-super {p0}, Lorg/apache/commons/net/SocketClient;->disconnect()V

    .line 26
    .line 27
    .line 28
    throw v1
.end method

.method public flushOutputStream()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_output_:Ljava/io/OutputStream;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    const-string v0, "Stream closed"

    .line 10
    .line 11
    invoke-static {v0}, Ln0/b;->A(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetClient;->input:Ljava/io/InputStream;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLocalOptionState(I)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->stateIsWill(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->requestedWill(I)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    return p1

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    return p1
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetClient;->output:Ljava/io/OutputStream;

    .line 2
    .line 3
    return-object v0
.end method

.method public getReaderThread()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetClient;->readerThread:Z

    .line 2
    .line 3
    return v0
.end method

.method public getRemoteOptionState(I)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->stateIsDo(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->requestedDo(I)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    return p1

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    return p1
.end method

.method public notifyInputListener()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetClient;->inputListener:Lorg/apache/commons/net/telnet/TelnetInputListener;

    .line 3
    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Lorg/apache/commons/net/telnet/TelnetInputListener;->telnetInputAvailable()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void

    .line 11
    :catchall_0
    move-exception v0

    .line 12
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    throw v0
.end method

.method public declared-synchronized registerInputListener(Lorg/apache/commons/net/telnet/TelnetInputListener;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Lorg/apache/commons/net/telnet/TelnetClient;->inputListener:Lorg/apache/commons/net/telnet/TelnetInputListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    throw p1
.end method

.method public bridge synthetic registerNotifHandler(Lorg/apache/commons/net/telnet/TelnetNotificationHandler;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->registerNotifHandler(Lorg/apache/commons/net/telnet/TelnetNotificationHandler;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public registerSpyStream(Ljava/io/OutputStream;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_registerSpyStream(Ljava/io/OutputStream;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public sendAYT(J)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p1, p2}, Lorg/apache/commons/io/file/e;->o(J)Ljava/time/Duration;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_sendAYT(Ljava/time/Duration;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public sendAYT(Ljava/time/Duration;)Z
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_sendAYT(Ljava/time/Duration;)Z

    move-result p1

    return p1
.end method

.method public sendCommand(B)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_sendCommand(B)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public sendSubnegotiation([I)V
    .locals 2

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x1

    .line 3
    if-lt v0, v1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_sendSubnegotiation([I)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    const-string p1, "zero length message"

    .line 10
    .line 11
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public setReaderThread(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/apache/commons/net/telnet/TelnetClient;->readerThread:Z

    .line 2
    .line 3
    return-void
.end method

.method public stopSpyStream()V
    .locals 0

    .line 1
    invoke-super {p0}, Lorg/apache/commons/net/telnet/Telnet;->_stopSpyStream()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public declared-synchronized unregisterInputListener()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    iput-object v0, p0, Lorg/apache/commons/net/telnet/TelnetClient;->inputListener:Lorg/apache/commons/net/telnet/TelnetInputListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    monitor-exit p0

    .line 6
    return-void

    .line 7
    :catchall_0
    move-exception v0

    .line 8
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    throw v0
.end method

.method public bridge synthetic unregisterNotifHandler()V
    .locals 0

    .line 1
    invoke-super {p0}, Lorg/apache/commons/net/telnet/Telnet;->unregisterNotifHandler()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
