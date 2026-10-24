.class Lorg/apache/mina/transport/socket/nio/NioSocketSession$SessionConfigImpl;
.super Lorg/apache/mina/transport/socket/AbstractSocketSessionConfig;
.source "NioSocketSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/transport/socket/nio/NioSocketSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SessionConfigImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/mina/transport/socket/nio/NioSocketSession;


# direct methods
.method private constructor <init>(Lorg/apache/mina/transport/socket/nio/NioSocketSession;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lorg/apache/mina/transport/socket/nio/NioSocketSession$SessionConfigImpl;->this$0:Lorg/apache/mina/transport/socket/nio/NioSocketSession;

    invoke-direct {p0}, Lorg/apache/mina/transport/socket/AbstractSocketSessionConfig;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/mina/transport/socket/nio/NioSocketSession;Lorg/apache/mina/transport/socket/nio/NioSocketSession$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/mina/transport/socket/nio/NioSocketSession;
    .param p2, "x1"    # Lorg/apache/mina/transport/socket/nio/NioSocketSession$1;

    .line 138
    invoke-direct {p0, p1}, Lorg/apache/mina/transport/socket/nio/NioSocketSession$SessionConfigImpl;-><init>(Lorg/apache/mina/transport/socket/nio/NioSocketSession;)V

    return-void
.end method


# virtual methods
.method public getReceiveBufferSize()I
    .locals 2

    .line 321
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketSession$SessionConfigImpl;->this$0:Lorg/apache/mina/transport/socket/nio/NioSocketSession;

    invoke-static {v0}, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->access$100(Lorg/apache/mina/transport/socket/nio/NioSocketSession;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getReceiveBufferSize()I

    move-result v0
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 322
    :catch_0
    move-exception v0

    .line 323
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/apache/mina/core/RuntimeIoException;

    invoke-direct {v1, v0}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getSendBufferSize()I
    .locals 2

    .line 297
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketSession$SessionConfigImpl;->this$0:Lorg/apache/mina/transport/socket/nio/NioSocketSession;

    invoke-static {v0}, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->access$100(Lorg/apache/mina/transport/socket/nio/NioSocketSession;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getSendBufferSize()I

    move-result v0
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 298
    :catch_0
    move-exception v0

    .line 299
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/apache/mina/core/RuntimeIoException;

    invoke-direct {v1, v0}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getSoLinger()I
    .locals 2

    .line 217
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketSession$SessionConfigImpl;->this$0:Lorg/apache/mina/transport/socket/nio/NioSocketSession;

    invoke-static {v0}, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->access$100(Lorg/apache/mina/transport/socket/nio/NioSocketSession;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getSoLinger()I

    move-result v0
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/apache/mina/core/RuntimeIoException;

    invoke-direct {v1, v0}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getTrafficClass()I
    .locals 2

    .line 273
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketSession$SessionConfigImpl;->this$0:Lorg/apache/mina/transport/socket/nio/NioSocketSession;

    invoke-static {v0}, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->access$100(Lorg/apache/mina/transport/socket/nio/NioSocketSession;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getTrafficClass()I

    move-result v0
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 274
    :catch_0
    move-exception v0

    .line 275
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/apache/mina/core/RuntimeIoException;

    invoke-direct {v1, v0}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isKeepAlive()Z
    .locals 2

    .line 145
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketSession$SessionConfigImpl;->this$0:Lorg/apache/mina/transport/socket/nio/NioSocketSession;

    invoke-static {v0}, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->access$100(Lorg/apache/mina/transport/socket/nio/NioSocketSession;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getKeepAlive()Z

    move-result v0
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/apache/mina/core/RuntimeIoException;

    invoke-direct {v1, v0}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isOobInline()Z
    .locals 2

    .line 169
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketSession$SessionConfigImpl;->this$0:Lorg/apache/mina/transport/socket/nio/NioSocketSession;

    invoke-static {v0}, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->access$100(Lorg/apache/mina/transport/socket/nio/NioSocketSession;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getOOBInline()Z

    move-result v0
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/apache/mina/core/RuntimeIoException;

    invoke-direct {v1, v0}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isReuseAddress()Z
    .locals 2

    .line 193
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketSession$SessionConfigImpl;->this$0:Lorg/apache/mina/transport/socket/nio/NioSocketSession;

    invoke-static {v0}, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->access$100(Lorg/apache/mina/transport/socket/nio/NioSocketSession;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getReuseAddress()Z

    move-result v0
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/apache/mina/core/RuntimeIoException;

    invoke-direct {v1, v0}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isTcpNoDelay()Z
    .locals 2

    .line 244
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketSession$SessionConfigImpl;->this$0:Lorg/apache/mina/transport/socket/nio/NioSocketSession;

    invoke-virtual {v0}, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 245
    const/4 v0, 0x0

    return v0

    .line 249
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketSession$SessionConfigImpl;->this$0:Lorg/apache/mina/transport/socket/nio/NioSocketSession;

    invoke-static {v0}, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->access$100(Lorg/apache/mina/transport/socket/nio/NioSocketSession;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getTcpNoDelay()Z

    move-result v0
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 250
    :catch_0
    move-exception v0

    .line 251
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/apache/mina/core/RuntimeIoException;

    invoke-direct {v1, v0}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setKeepAlive(Z)V
    .locals 2
    .param p1, "on"    # Z

    .line 157
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketSession$SessionConfigImpl;->this$0:Lorg/apache/mina/transport/socket/nio/NioSocketSession;

    invoke-static {v0}, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->access$100(Lorg/apache/mina/transport/socket/nio/NioSocketSession;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setKeepAlive(Z)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    nop

    .line 161
    return-void

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/apache/mina/core/RuntimeIoException;

    invoke-direct {v1, v0}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setOobInline(Z)V
    .locals 2
    .param p1, "on"    # Z

    .line 181
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketSession$SessionConfigImpl;->this$0:Lorg/apache/mina/transport/socket/nio/NioSocketSession;

    invoke-static {v0}, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->access$100(Lorg/apache/mina/transport/socket/nio/NioSocketSession;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setOOBInline(Z)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    nop

    .line 185
    return-void

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/apache/mina/core/RuntimeIoException;

    invoke-direct {v1, v0}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setReceiveBufferSize(I)V
    .locals 2
    .param p1, "size"    # I

    .line 333
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketSession$SessionConfigImpl;->this$0:Lorg/apache/mina/transport/socket/nio/NioSocketSession;

    invoke-static {v0}, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->access$100(Lorg/apache/mina/transport/socket/nio/NioSocketSession;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setReceiveBufferSize(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    nop

    .line 337
    return-void

    .line 334
    :catch_0
    move-exception v0

    .line 335
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/apache/mina/core/RuntimeIoException;

    invoke-direct {v1, v0}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setReuseAddress(Z)V
    .locals 2
    .param p1, "on"    # Z

    .line 205
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketSession$SessionConfigImpl;->this$0:Lorg/apache/mina/transport/socket/nio/NioSocketSession;

    invoke-static {v0}, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->access$100(Lorg/apache/mina/transport/socket/nio/NioSocketSession;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setReuseAddress(Z)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    nop

    .line 209
    return-void

    .line 206
    :catch_0
    move-exception v0

    .line 207
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/apache/mina/core/RuntimeIoException;

    invoke-direct {v1, v0}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setSendBufferSize(I)V
    .locals 2
    .param p1, "size"    # I

    .line 309
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketSession$SessionConfigImpl;->this$0:Lorg/apache/mina/transport/socket/nio/NioSocketSession;

    invoke-static {v0}, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->access$100(Lorg/apache/mina/transport/socket/nio/NioSocketSession;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSendBufferSize(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    nop

    .line 313
    return-void

    .line 310
    :catch_0
    move-exception v0

    .line 311
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/apache/mina/core/RuntimeIoException;

    invoke-direct {v1, v0}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setSoLinger(I)V
    .locals 2
    .param p1, "linger"    # I

    .line 229
    if-gez p1, :cond_0

    .line 230
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketSession$SessionConfigImpl;->this$0:Lorg/apache/mina/transport/socket/nio/NioSocketSession;

    invoke-static {v0}, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->access$100(Lorg/apache/mina/transport/socket/nio/NioSocketSession;)Ljava/net/Socket;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Ljava/net/Socket;->setSoLinger(ZI)V

    goto :goto_0

    .line 232
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketSession$SessionConfigImpl;->this$0:Lorg/apache/mina/transport/socket/nio/NioSocketSession;

    invoke-static {v0}, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->access$100(Lorg/apache/mina/transport/socket/nio/NioSocketSession;)Ljava/net/Socket;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/net/Socket;->setSoLinger(ZI)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    :goto_0
    nop

    .line 237
    return-void

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/apache/mina/core/RuntimeIoException;

    invoke-direct {v1, v0}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setTcpNoDelay(Z)V
    .locals 2
    .param p1, "on"    # Z

    .line 261
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketSession$SessionConfigImpl;->this$0:Lorg/apache/mina/transport/socket/nio/NioSocketSession;

    invoke-static {v0}, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->access$100(Lorg/apache/mina/transport/socket/nio/NioSocketSession;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setTcpNoDelay(Z)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    nop

    .line 265
    return-void

    .line 262
    :catch_0
    move-exception v0

    .line 263
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/apache/mina/core/RuntimeIoException;

    invoke-direct {v1, v0}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setTrafficClass(I)V
    .locals 2
    .param p1, "tc"    # I

    .line 285
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketSession$SessionConfigImpl;->this$0:Lorg/apache/mina/transport/socket/nio/NioSocketSession;

    invoke-static {v0}, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->access$100(Lorg/apache/mina/transport/socket/nio/NioSocketSession;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setTrafficClass(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    nop

    .line 289
    return-void

    .line 286
    :catch_0
    move-exception v0

    .line 287
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/apache/mina/core/RuntimeIoException;

    invoke-direct {v1, v0}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
