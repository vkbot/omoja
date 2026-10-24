.class public Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;
.super Lorg/apache/mina/proxy/handlers/socks/AbstractSocksLogicHandler;
.source "Socks5LogicHandler.java"


# static fields
.field private static final GSS_CONTEXT:Ljava/lang/String;

.field private static final GSS_TOKEN:Ljava/lang/String;

.field private static final HANDSHAKE_STEP:Ljava/lang/String;

.field private static final LOGGER:Lorg/slf4j/Logger;

.field private static final SELECTED_AUTH_METHOD:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 47
    const-class v0, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v1

    sput-object v1, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->LOGGER:Lorg/slf4j/Logger;

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".SelectedAuthMethod"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->SELECTED_AUTH_METHOD:Ljava/lang/String;

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".HandshakeStep"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->HANDSHAKE_STEP:Ljava/lang/String;

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".GSSContext"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->GSS_CONTEXT:Ljava/lang/String;

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".GSSToken"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->GSS_TOKEN:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/proxy/session/ProxyIoSession;)V
    .locals 3
    .param p1, "proxyIoSession"    # Lorg/apache/mina/proxy/session/ProxyIoSession;

    .line 75
    invoke-direct {p0, p1}, Lorg/apache/mina/proxy/handlers/socks/AbstractSocksLogicHandler;-><init>(Lorg/apache/mina/proxy/session/ProxyIoSession;)V

    .line 76
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v0

    sget-object v1, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->HANDSHAKE_STEP:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    return-void
.end method

.method private encodeAuthenticationPacket(Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 6
    .param p1, "request"    # Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation

    .line 175
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v0

    sget-object v1, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->SELECTED_AUTH_METHOD:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    .line 177
    .local v0, "method":B
    const/4 v1, 0x2

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 189
    :cond_0
    invoke-virtual {p1}, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->getUserName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ASCII"

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 190
    .local v1, "user":[B
    invoke-virtual {p1}, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->getPassword()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 191
    .local v3, "pwd":[B
    array-length v4, v1

    add-int/lit8 v4, v4, 0x3

    array-length v5, v3

    add-int/2addr v4, v5

    invoke-static {v4}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v4

    .line 193
    .local v4, "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    invoke-virtual {v4, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 194
    array-length v2, v1

    int-to-byte v2, v2

    invoke-virtual {v4, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 195
    invoke-virtual {v4, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->put([B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 196
    array-length v2, v3

    int-to-byte v2, v2

    invoke-virtual {v4, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 197
    invoke-virtual {v4, v3}, Lorg/apache/mina/core/buffer/IoBuffer;->put([B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 199
    return-object v4

    .line 185
    .end local v1    # "user":[B
    .end local v3    # "pwd":[B
    .end local v4    # "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    :cond_1
    invoke-direct {p0, p1}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->encodeGSSAPIAuthenticationPacket(Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v1

    return-object v1

    .line 181
    :cond_2
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v2

    sget-object v3, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->HANDSHAKE_STEP:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    nop

    .line 202
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private encodeGSSAPIAuthenticationPacket(Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 13
    .param p1, "request"    # Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation

    .line 213
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v0

    sget-object v1, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->GSS_CONTEXT:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ietf/jgss/GSSContext;

    .line 214
    .local v0, "ctx":Lorg/ietf/jgss/GSSContext;
    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 216
    invoke-static {}, Lorg/ietf/jgss/GSSManager;->getInstance()Lorg/ietf/jgss/GSSManager;

    move-result-object v2

    .line 217
    .local v2, "manager":Lorg/ietf/jgss/GSSManager;
    invoke-virtual {p1}, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->getServiceKerberosName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/ietf/jgss/GSSManager;->createName(Ljava/lang/String;Lorg/ietf/jgss/Oid;)Lorg/ietf/jgss/GSSName;

    move-result-object v3

    .line 218
    .local v3, "serverName":Lorg/ietf/jgss/GSSName;
    new-instance v5, Lorg/ietf/jgss/Oid;

    const-string v6, "1.2.840.113554.1.2.2"

    invoke-direct {v5, v6}, Lorg/ietf/jgss/Oid;-><init>(Ljava/lang/String;)V

    .line 220
    .local v5, "krb5OID":Lorg/ietf/jgss/Oid;
    sget-object v6, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v6}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 221
    sget-object v6, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v7, "Available mechs:"

    invoke-interface {v6, v7}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 222
    invoke-virtual {v2}, Lorg/ietf/jgss/GSSManager;->getMechs()[Lorg/ietf/jgss/Oid;

    move-result-object v6

    array-length v7, v6

    move v8, v1

    :goto_0
    if-ge v8, v7, :cond_1

    aget-object v9, v6, v8

    .line 223
    .local v9, "o":Lorg/ietf/jgss/Oid;
    invoke-virtual {v9, v5}, Lorg/ietf/jgss/Oid;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 224
    sget-object v10, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v11, "Found Kerberos V OID available"

    invoke-interface {v10, v11}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 226
    :cond_0
    sget-object v10, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {v2, v9}, Lorg/ietf/jgss/GSSManager;->getNamesForMech(Lorg/ietf/jgss/Oid;)[Lorg/ietf/jgss/Oid;

    move-result-object v11

    const-string v12, "{} with oid = {}"

    invoke-interface {v10, v12, v11, v9}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 222
    .end local v9    # "o":Lorg/ietf/jgss/Oid;
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 230
    :cond_1
    invoke-virtual {v2, v3, v5, v4, v1}, Lorg/ietf/jgss/GSSManager;->createContext(Lorg/ietf/jgss/GSSName;Lorg/ietf/jgss/Oid;Lorg/ietf/jgss/GSSCredential;I)Lorg/ietf/jgss/GSSContext;

    move-result-object v0

    .line 232
    const/4 v4, 0x1

    invoke-interface {v0, v4}, Lorg/ietf/jgss/GSSContext;->requestMutualAuth(Z)V

    .line 233
    invoke-interface {v0, v1}, Lorg/ietf/jgss/GSSContext;->requestConf(Z)V

    .line 234
    invoke-interface {v0, v1}, Lorg/ietf/jgss/GSSContext;->requestInteg(Z)V

    .line 236
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v4

    sget-object v6, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->GSS_CONTEXT:Ljava/lang/String;

    invoke-interface {v4, v6, v0}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    .end local v2    # "manager":Lorg/ietf/jgss/GSSManager;
    .end local v3    # "serverName":Lorg/ietf/jgss/GSSName;
    .end local v5    # "krb5OID":Lorg/ietf/jgss/Oid;
    :cond_2
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v2

    sget-object v3, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->GSS_TOKEN:Ljava/lang/String;

    invoke-interface {v2, v3}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    check-cast v2, [B

    .line 240
    .local v2, "token":[B
    if-eqz v2, :cond_3

    .line 241
    sget-object v3, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v3}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 242
    sget-object v3, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->LOGGER:Lorg/slf4j/Logger;

    array-length v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Lorg/apache/mina/proxy/utils/ByteUtilities;->asHex([B)Ljava/lang/String;

    move-result-object v5

    const-string v6, "  Received Token[{}] = {}"

    invoke-interface {v3, v6, v4, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 245
    :cond_3
    const/4 v3, 0x0

    .line 247
    .local v3, "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    invoke-interface {v0}, Lorg/ietf/jgss/GSSContext;->isEstablished()Z

    move-result v4

    if-nez v4, :cond_6

    .line 249
    if-nez v2, :cond_4

    .line 250
    const/16 v4, 0x20

    new-array v2, v4, [B

    .line 253
    :cond_4
    array-length v4, v2

    invoke-interface {v0, v2, v1, v4}, Lorg/ietf/jgss/GSSContext;->initSecContext([BII)[B

    move-result-object v2

    .line 257
    if-eqz v2, :cond_6

    .line 258
    sget-object v1, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 259
    sget-object v1, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->LOGGER:Lorg/slf4j/Logger;

    array-length v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Lorg/apache/mina/proxy/utils/ByteUtilities;->asHex([B)Ljava/lang/String;

    move-result-object v5

    const-string v6, "  Sending Token[{}] = {}"

    invoke-interface {v1, v6, v4, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 262
    :cond_5
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v1

    sget-object v4, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->GSS_TOKEN:Ljava/lang/String;

    invoke-interface {v1, v4, v2}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    array-length v1, v2

    add-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v3

    .line 264
    const/4 v1, 0x2

    new-array v4, v1, [B

    fill-array-data v4, :array_0

    invoke-virtual {v3, v4}, Lorg/apache/mina/core/buffer/IoBuffer;->put([B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 267
    array-length v4, v2

    invoke-static {v4, v1}, Lorg/apache/mina/proxy/utils/ByteUtilities;->intToNetworkByteOrder(II)[B

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->put([B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 268
    invoke-virtual {v3, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->put([B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 272
    :cond_6
    return-object v3

    nop

    :array_0
    .array-data 1
        0x1t
        0x1t
    .end array-data
.end method

.method private encodeInitialGreetingPacket(Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 3
    .param p1, "request"    # Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;

    .line 101
    sget-object v0, Lorg/apache/mina/proxy/handlers/socks/SocksProxyConstants;->SUPPORTED_AUTH_METHODS:[B

    array-length v0, v0

    int-to-byte v0, v0

    .line 102
    .local v0, "nbMethods":B
    add-int/lit8 v1, v0, 0x2

    invoke-static {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v1

    .line 104
    .local v1, "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    invoke-virtual {p1}, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->getProtocolVersion()B

    move-result v2

    invoke-virtual {v1, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 105
    invoke-virtual {v1, v0}, Lorg/apache/mina/core/buffer/IoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 106
    sget-object v2, Lorg/apache/mina/proxy/handlers/socks/SocksProxyConstants;->SUPPORTED_AUTH_METHODS:[B

    invoke-virtual {v1, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->put([B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 108
    return-object v1
.end method

.method private encodeProxyRequestPacket(Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 6
    .param p1, "request"    # Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 120
    const/4 v0, 0x6

    .line 121
    .local v0, "len":I
    invoke-virtual {p1}, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->getEndpointAddress()Ljava/net/InetSocketAddress;

    move-result-object v1

    .line 122
    .local v1, "adr":Ljava/net/InetSocketAddress;
    const/4 v2, 0x0

    .line 123
    .local v2, "addressType":B
    const/4 v3, 0x0

    .line 125
    .local v3, "host":[B
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v4

    if-nez v4, :cond_1

    .line 126
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    instance-of v4, v4, Ljava/net/Inet6Address;

    if-eqz v4, :cond_0

    .line 127
    add-int/lit8 v0, v0, 0x10

    .line 128
    const/4 v2, 0x4

    goto :goto_1

    .line 129
    :cond_0
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    instance-of v4, v4, Ljava/net/Inet4Address;

    if-eqz v4, :cond_3

    .line 130
    add-int/lit8 v0, v0, 0x4

    .line 131
    const/4 v2, 0x1

    goto :goto_1

    .line 134
    :cond_1
    invoke-virtual {p1}, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->getHost()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->getHost()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ASCII"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    move-object v3, v4

    .line 136
    if-eqz v3, :cond_5

    .line 137
    array-length v4, v3

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v0, v4

    .line 138
    const/4 v2, 0x3

    .line 144
    :cond_3
    :goto_1
    invoke-static {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v4

    .line 146
    .local v4, "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    invoke-virtual {p1}, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->getProtocolVersion()B

    move-result v5

    invoke-virtual {v4, v5}, Lorg/apache/mina/core/buffer/IoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 147
    invoke-virtual {p1}, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->getCommandCode()B

    move-result v5

    invoke-virtual {v4, v5}, Lorg/apache/mina/core/buffer/IoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 148
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/apache/mina/core/buffer/IoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 149
    invoke-virtual {v4, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 151
    if-nez v3, :cond_4

    .line 152
    invoke-virtual {p1}, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->getIpAddress()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/mina/core/buffer/IoBuffer;->put([B)Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_2

    .line 154
    :cond_4
    array-length v5, v3

    int-to-byte v5, v5

    invoke-virtual {v4, v5}, Lorg/apache/mina/core/buffer/IoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 155
    invoke-virtual {v4, v3}, Lorg/apache/mina/core/buffer/IoBuffer;->put([B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 158
    :goto_2
    invoke-virtual {p1}, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->getPort()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/mina/core/buffer/IoBuffer;->put([B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 160
    return-object v4

    .line 140
    .end local v4    # "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    :cond_5
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "SocksProxyRequest object has no suitable endpoint information"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private writeRequest(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;I)V
    .locals 2
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "request"    # Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;
    .param p3, "step"    # I

    .line 285
    const/4 v0, 0x0

    .line 287
    .local v0, "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    if-nez p3, :cond_0

    .line 288
    :try_start_0
    invoke-direct {p0, p2}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->encodeInitialGreetingPacket(Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 306
    .end local v0    # "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    :catch_0
    move-exception v0

    goto :goto_1

    .line 289
    .restart local v0    # "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    :cond_0
    const/4 v1, 0x1

    if-ne p3, v1, :cond_1

    .line 291
    invoke-direct {p0, p2}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->encodeAuthenticationPacket(Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v1

    move-object v0, v1

    .line 294
    if-nez v0, :cond_1

    .line 295
    const/4 p3, 0x2

    .line 299
    :cond_1
    :goto_0
    const/4 v1, 0x2

    if-ne p3, v1, :cond_2

    .line 300
    invoke-direct {p0, p2}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->encodeProxyRequestPacket(Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v1

    move-object v0, v1

    .line 303
    :cond_2
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 304
    invoke-virtual {p0, p1, v0}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->writeData(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    nop

    .end local v0    # "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    goto :goto_2

    .line 307
    .local v0, "ex":Ljava/lang/Exception;
    :goto_1
    const-string v1, "Unable to send Socks request: "

    invoke-virtual {p0, v1, v0}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->closeSession(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 309
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_2
    return-void
.end method


# virtual methods
.method protected closeSession(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 458
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v0

    sget-object v1, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->GSS_CONTEXT:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ietf/jgss/GSSContext;

    .line 459
    .local v0, "ctx":Lorg/ietf/jgss/GSSContext;
    if-eqz v0, :cond_0

    .line 461
    :try_start_0
    invoke-interface {v0}, Lorg/ietf/jgss/GSSContext;->dispose()V
    :try_end_0
    .catch Lorg/ietf/jgss/GSSException; {:try_start_0 .. :try_end_0} :catch_0

    .line 466
    goto :goto_0

    .line 462
    :catch_0
    move-exception v1

    .line 463
    .local v1, "e":Lorg/ietf/jgss/GSSException;
    invoke-virtual {v1}, Lorg/ietf/jgss/GSSException;->printStackTrace()V

    .line 464
    invoke-super {p0, p1, v1}, Lorg/apache/mina/proxy/handlers/socks/AbstractSocksLogicHandler;->closeSession(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 465
    return-void

    .line 468
    .end local v1    # "e":Lorg/ietf/jgss/GSSException;
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lorg/apache/mina/proxy/handlers/socks/AbstractSocksLogicHandler;->closeSession(Ljava/lang/String;)V

    .line 469
    return-void
.end method

.method public declared-synchronized doHandshake(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    .locals 3
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    monitor-enter p0

    .line 86
    :try_start_0
    sget-object v0, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    sget-object v0, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, " doHandshake()"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 91
    .end local p0    # "this":Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->request:Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;

    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v1

    sget-object v2, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->HANDSHAKE_STEP:Ljava/lang/String;

    invoke-interface {v1, v2}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->writeRequest(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    monitor-exit p0

    return-void

    .line 85
    .end local p1    # "nextFilter":Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected handleResponse(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/buffer/IoBuffer;I)V
    .locals 9
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "buf"    # Lorg/apache/mina/core/buffer/IoBuffer;
    .param p3, "step"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 347
    const/4 v0, 0x2

    .line 348
    .local v0, "len":I
    const/4 v1, 0x1

    if-nez p3, :cond_1

    .line 350
    invoke-virtual {p2, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result v2

    .line 352
    .local v2, "method":B
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 357
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v3

    sget-object v4, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->SELECTED_AUTH_METHOD:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    .end local v2    # "method":B
    goto/16 :goto_2

    .line 353
    .restart local v2    # "method":B
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "No acceptable authentication method to use with the socks proxy server"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 359
    .end local v2    # "method":B
    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne p3, v1, :cond_9

    .line 361
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v4

    sget-object v5, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->SELECTED_AUTH_METHOD:Ljava/lang/String;

    invoke-interface {v4, v5}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    .line 363
    .local v4, "method":B
    const-string v5, "Authentication failed"

    if-ne v4, v1, :cond_6

    .line 364
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v6

    .line 366
    .local v6, "oldPos":I
    invoke-virtual {p2, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result v2

    if-ne v2, v1, :cond_5

    .line 369
    invoke-virtual {p2, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result v2

    const/16 v5, 0xff

    and-int/2addr v2, v5

    if-eq v2, v5, :cond_4

    .line 373
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v2

    if-lt v2, v3, :cond_3

    .line 374
    new-array v2, v3, [B

    .line 375
    .local v2, "size":[B
    invoke-virtual {p2, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->get([B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 376
    invoke-static {v2}, Lorg/apache/mina/proxy/utils/ByteUtilities;->makeIntFromByte2([B)I

    move-result v3

    .line 377
    .local v3, "s":I
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v5

    if-lt v5, v3, :cond_2

    .line 378
    new-array v5, v3, [B

    .line 379
    .local v5, "token":[B
    invoke-virtual {p2, v5}, Lorg/apache/mina/core/buffer/IoBuffer;->get([B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 380
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v7

    sget-object v8, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->GSS_TOKEN:Ljava/lang/String;

    invoke-interface {v7, v8, v5}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    const/4 v0, 0x0

    .line 382
    .end local v5    # "token":[B
    nop

    .line 385
    .end local v2    # "size":[B
    .end local v3    # "s":I
    goto :goto_0

    .line 383
    .restart local v2    # "size":[B
    .restart local v3    # "s":I
    :cond_2
    return-void

    .line 386
    .end local v2    # "size":[B
    .end local v3    # "s":I
    :cond_3
    invoke-virtual {p2, v6}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 387
    return-void

    .line 370
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Authentication failed: GSS API Security Context Failure"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 367
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 389
    .end local v6    # "oldPos":I
    :cond_6
    invoke-virtual {p2, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result v2

    if-nez v2, :cond_8

    :goto_0
    nop

    .line 393
    .end local v4    # "method":B
    :cond_7
    goto/16 :goto_2

    .line 390
    .restart local v4    # "method":B
    :cond_8
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 393
    .end local v4    # "method":B
    :cond_9
    if-ne p3, v3, :cond_7

    .line 395
    const/4 v3, 0x3

    invoke-virtual {p2, v3}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result v4

    .line 396
    .local v4, "addressType":B
    const/4 v0, 0x6

    .line 397
    const/4 v5, 0x4

    if-ne v4, v5, :cond_a

    .line 398
    add-int/lit8 v0, v0, 0x10

    goto :goto_1

    .line 399
    :cond_a
    if-ne v4, v1, :cond_b

    .line 400
    add-int/2addr v0, v5

    goto :goto_1

    .line 401
    :cond_b
    if-ne v4, v3, :cond_f

    .line 402
    invoke-virtual {p2, v5}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result v3

    add-int/2addr v3, v1

    add-int/2addr v0, v3

    .line 407
    :goto_1
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v3

    if-lt v3, v0, :cond_e

    .line 409
    invoke-virtual {p2, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result v3

    .line 410
    .local v3, "status":B
    sget-object v5, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v5}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 411
    sget-object v5, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->LOGGER:Lorg/slf4j/Logger;

    invoke-static {v3}, Lorg/apache/mina/proxy/handlers/socks/SocksProxyConstants;->getReplyCodeAsString(B)Ljava/lang/String;

    move-result-object v6

    const-string v7, "  response status: {}"

    invoke-interface {v5, v7, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 414
    :cond_c
    if-nez v3, :cond_d

    .line 415
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p2, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 416
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->setHandshakeComplete()V

    .line 417
    return-void

    .line 420
    :cond_d
    new-instance v5, Ljava/lang/Exception;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Proxy handshake failed - Code: 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v1, [B

    aput-byte v3, v1, v2

    invoke-static {v1}, Lorg/apache/mina/proxy/utils/ByteUtilities;->asHex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5

    .line 423
    .end local v3    # "status":B
    :cond_e
    return-void

    .line 404
    :cond_f
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unknwon address type"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 426
    .end local v4    # "addressType":B
    :goto_2
    if-lez v0, :cond_10

    .line 427
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p2, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 432
    :cond_10
    const/4 v2, 0x0

    .line 433
    .local v2, "isAuthenticating":Z
    if-ne p3, v1, :cond_12

    .line 434
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v3

    sget-object v4, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->SELECTED_AUTH_METHOD:Ljava/lang/String;

    invoke-interface {v3, v4}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    .line 435
    .local v3, "method":B
    if-ne v3, v1, :cond_12

    .line 436
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v1

    sget-object v4, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->GSS_CONTEXT:Ljava/lang/String;

    invoke-interface {v1, v4}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ietf/jgss/GSSContext;

    .line 437
    .local v1, "ctx":Lorg/ietf/jgss/GSSContext;
    if-eqz v1, :cond_11

    invoke-interface {v1}, Lorg/ietf/jgss/GSSContext;->isEstablished()Z

    move-result v4

    if-nez v4, :cond_12

    .line 438
    :cond_11
    const/4 v2, 0x1

    .line 443
    .end local v1    # "ctx":Lorg/ietf/jgss/GSSContext;
    .end local v3    # "method":B
    :cond_12
    if-nez v2, :cond_13

    .line 444
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v1

    sget-object v3, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->HANDSHAKE_STEP:Ljava/lang/String;

    add-int/lit8 p3, p3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    :cond_13
    invoke-virtual {p0, p1}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->doHandshake(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V

    .line 448
    return-void
.end method

.method public declared-synchronized messageReceived(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/buffer/IoBuffer;)V
    .locals 4
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "buf"    # Lorg/apache/mina/core/buffer/IoBuffer;

    monitor-enter p0

    .line 321
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v0

    sget-object v1, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->HANDSHAKE_STEP:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 323
    .local v0, "step":I
    const/4 v1, 0x5

    if-nez v0, :cond_1

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result v2

    if-ne v2, v1, :cond_0

    goto :goto_0

    .line 324
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Wrong socks version running on server"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;
    .end local p1    # "nextFilter":Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .end local p2    # "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    throw v1

    .line 327
    .restart local p1    # "nextFilter":Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .restart local p2    # "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    :cond_1
    :goto_0
    const/4 v2, 0x2

    if-eqz v0, :cond_2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_3

    .line 328
    :cond_2
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v3

    if-lt v3, v2, :cond_3

    .line 329
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->handleResponse(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/buffer/IoBuffer;I)V

    goto :goto_1

    .line 330
    :cond_3
    if-ne v0, v2, :cond_4

    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v2

    if-lt v2, v1, :cond_4

    .line 331
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->handleResponse(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/buffer/IoBuffer;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    .end local v0    # "step":I
    :cond_4
    :goto_1
    goto :goto_2

    .line 320
    .end local p1    # "nextFilter":Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .end local p2    # "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    :catchall_0
    move-exception p1

    goto :goto_3

    .line 333
    .restart local p1    # "nextFilter":Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .restart local p2    # "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    :catch_0
    move-exception v0

    .line 334
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string v1, "Proxy handshake failed: "

    invoke-virtual {p0, v1, v0}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->closeSession(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 336
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_2
    monitor-exit p0

    return-void

    .line 320
    .end local p1    # "nextFilter":Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .end local p2    # "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    :goto_3
    monitor-exit p0

    throw p1
.end method
