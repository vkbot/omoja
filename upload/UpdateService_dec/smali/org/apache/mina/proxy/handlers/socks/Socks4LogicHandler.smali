.class public Lorg/apache/mina/proxy/handlers/socks/Socks4LogicHandler;
.super Lorg/apache/mina/proxy/handlers/socks/AbstractSocksLogicHandler;
.source "Socks4LogicHandler.java"


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-class v0, Lorg/apache/mina/proxy/handlers/socks/Socks4LogicHandler;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/proxy/handlers/socks/Socks4LogicHandler;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/proxy/session/ProxyIoSession;)V
    .locals 0
    .param p1, "proxyIoSession"    # Lorg/apache/mina/proxy/session/ProxyIoSession;

    .line 47
    invoke-direct {p0, p1}, Lorg/apache/mina/proxy/handlers/socks/AbstractSocksLogicHandler;-><init>(Lorg/apache/mina/proxy/session/ProxyIoSession;)V

    .line 48
    return-void
.end method


# virtual methods
.method public doHandshake(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    .locals 2
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    .line 57
    sget-object v0, Lorg/apache/mina/proxy/handlers/socks/Socks4LogicHandler;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    sget-object v0, Lorg/apache/mina/proxy/handlers/socks/Socks4LogicHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, " doHandshake()"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 62
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/proxy/handlers/socks/Socks4LogicHandler;->request:Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;

    invoke-virtual {p0, p1, v0}, Lorg/apache/mina/proxy/handlers/socks/Socks4LogicHandler;->writeRequest(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;)V

    .line 63
    return-void
.end method

.method protected handleResponse(Lorg/apache/mina/core/buffer/IoBuffer;)V
    .locals 7
    .param p1, "buf"    # Lorg/apache/mina/core/buffer/IoBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 141
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result v1

    .line 143
    .local v1, "first":B
    if-nez v1, :cond_1

    .line 147
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result v3

    .line 150
    .local v3, "status":B
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v4

    add-int/lit8 v4, v4, 0x8

    invoke-virtual {p1, v4}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 152
    const/16 v4, 0x5a

    if-ne v3, v4, :cond_0

    .line 153
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/socks/Socks4LogicHandler;->setHandshakeComplete()V

    .line 158
    return-void

    .line 155
    :cond_0
    new-instance v4, Ljava/lang/Exception;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Proxy handshake failed - Code: 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v2, [B

    aput-byte v3, v2, v0

    invoke-static {v2}, Lorg/apache/mina/proxy/utils/ByteUtilities;->asHex([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-static {v3}, Lorg/apache/mina/proxy/handlers/socks/SocksProxyConstants;->getReplyCodeAsString(B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4

    .line 144
    .end local v3    # "status":B
    :cond_1
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "Socks response seems to be malformed"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public messageReceived(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/buffer/IoBuffer;)V
    .locals 2
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "buf"    # Lorg/apache/mina/core/buffer/IoBuffer;

    .line 123
    :try_start_0
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 124
    invoke-virtual {p0, p2}, Lorg/apache/mina/proxy/handlers/socks/Socks4LogicHandler;->handleResponse(Lorg/apache/mina/core/buffer/IoBuffer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :cond_0
    goto :goto_0

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "Proxy handshake failed: "

    invoke-virtual {p0, v1, v0}, Lorg/apache/mina/proxy/handlers/socks/Socks4LogicHandler;->closeSession(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 129
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method protected writeRequest(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;)V
    .locals 7
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "request"    # Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;

    .line 74
    const-string v0, "ASCII"

    :try_start_0
    invoke-virtual {p2}, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->getIpAddress()[B

    move-result-object v1

    sget-object v2, Lorg/apache/mina/proxy/handlers/socks/SocksProxyConstants;->FAKE_IP:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    .line 75
    .local v1, "isV4ARequest":Z
    invoke-virtual {p2}, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 76
    .local v2, "userID":[B
    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 78
    .local v0, "host":[B
    :goto_0
    array-length v3, v2

    add-int/lit8 v3, v3, 0x9

    .line 80
    .local v3, "len":I
    if-eqz v1, :cond_1

    .line 81
    array-length v4, v0

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 84
    :cond_1
    invoke-static {v3}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v4

    .line 86
    .local v4, "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    invoke-virtual {p2}, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->getProtocolVersion()B

    move-result v5

    invoke-virtual {v4, v5}, Lorg/apache/mina/core/buffer/IoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 87
    invoke-virtual {p2}, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->getCommandCode()B

    move-result v5

    invoke-virtual {v4, v5}, Lorg/apache/mina/core/buffer/IoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 88
    invoke-virtual {p2}, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->getPort()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/mina/core/buffer/IoBuffer;->put([B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 89
    invoke-virtual {p2}, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->getIpAddress()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/mina/core/buffer/IoBuffer;->put([B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 90
    invoke-virtual {v4, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->put([B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 91
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/apache/mina/core/buffer/IoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 93
    if-eqz v1, :cond_2

    .line 94
    invoke-virtual {v4, v0}, Lorg/apache/mina/core/buffer/IoBuffer;->put([B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 95
    invoke-virtual {v4, v5}, Lorg/apache/mina/core/buffer/IoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 98
    :cond_2
    sget-object v5, Lorg/apache/mina/proxy/handlers/socks/Socks4LogicHandler;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v5}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 99
    if-eqz v1, :cond_3

    .line 100
    sget-object v5, Lorg/apache/mina/proxy/handlers/socks/Socks4LogicHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v6, "  sending SOCKS4a request"

    invoke-interface {v5, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 102
    :cond_3
    sget-object v5, Lorg/apache/mina/proxy/handlers/socks/Socks4LogicHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v6, "  sending SOCKS4 request"

    invoke-interface {v5, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 106
    :cond_4
    :goto_1
    invoke-virtual {v4}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 107
    invoke-virtual {p0, p1, v4}, Lorg/apache/mina/proxy/handlers/socks/Socks4LogicHandler;->writeData(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    nop

    .end local v0    # "host":[B
    .end local v1    # "isV4ARequest":Z
    .end local v2    # "userID":[B
    .end local v3    # "len":I
    .end local v4    # "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    goto :goto_2

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "Unable to send Socks request: "

    invoke-virtual {p0, v1, v0}, Lorg/apache/mina/proxy/handlers/socks/Socks4LogicHandler;->closeSession(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 111
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_2
    return-void
.end method
