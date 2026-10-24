.class public Lorg/apache/mina/proxy/handlers/http/ntlm/HttpNTLMAuthLogicHandler;
.super Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;
.source "HttpNTLMAuthLogicHandler.java"


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;


# instance fields
.field private challengePacket:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const-class v0, Lorg/apache/mina/proxy/handlers/http/ntlm/HttpNTLMAuthLogicHandler;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/proxy/handlers/http/ntlm/HttpNTLMAuthLogicHandler;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/proxy/session/ProxyIoSession;)V
    .locals 5
    .param p1, "proxyIoSession"    # Lorg/apache/mina/proxy/session/ProxyIoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/mina/proxy/ProxyAuthException;
        }
    .end annotation

    .line 61
    invoke-direct {p0, p1}, Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;-><init>(Lorg/apache/mina/proxy/session/ProxyIoSession;)V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/mina/proxy/handlers/http/ntlm/HttpNTLMAuthLogicHandler;->challengePacket:[B

    .line 63
    iget-object v0, p0, Lorg/apache/mina/proxy/handlers/http/ntlm/HttpNTLMAuthLogicHandler;->request:Lorg/apache/mina/proxy/handlers/ProxyRequest;

    check-cast v0, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;

    const-string v1, "USER"

    const-string v2, "PWD"

    const-string v3, "DOMAIN"

    const-string v4, "WORKSTATION"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->checkRequiredProperties([Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method private getNTLMHeader(Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;)Ljava/lang/String;
    .locals 4
    .param p1, "response"    # Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;

    .line 128
    invoke-virtual {p1}, Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;->getHeaders()Ljava/util/Map;

    move-result-object v0

    const-string v1, "Proxy-Authenticate"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 130
    .local v0, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 131
    .local v2, "s":Ljava/lang/String;
    const-string v3, "NTLM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 132
    return-object v2

    .line 134
    .end local v2    # "s":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 136
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public doHandshake(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    .locals 19
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/mina/proxy/ProxyAuthException;
        }
    .end annotation

    .line 73
    move-object/from16 v0, p0

    sget-object v1, Lorg/apache/mina/proxy/handlers/http/ntlm/HttpNTLMAuthLogicHandler;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    sget-object v1, Lorg/apache/mina/proxy/handlers/http/ntlm/HttpNTLMAuthLogicHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v2, " doHandshake()"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 77
    :cond_0
    iget v1, v0, Lorg/apache/mina/proxy/handlers/http/ntlm/HttpNTLMAuthLogicHandler;->step:I

    if-lez v1, :cond_2

    iget-object v1, v0, Lorg/apache/mina/proxy/handlers/http/ntlm/HttpNTLMAuthLogicHandler;->challengePacket:[B

    if-eqz v1, :cond_1

    goto :goto_0

    .line 78
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "NTLM Challenge packet not received"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 81
    :cond_2
    :goto_0
    iget-object v1, v0, Lorg/apache/mina/proxy/handlers/http/ntlm/HttpNTLMAuthLogicHandler;->request:Lorg/apache/mina/proxy/handlers/ProxyRequest;

    check-cast v1, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;

    .line 82
    .local v1, "req":Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;
    invoke-virtual {v1}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->getHeaders()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->getHeaders()Ljava/util/Map;

    move-result-object v2

    goto :goto_1

    :cond_3
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 85
    .local v2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :goto_1
    invoke-virtual {v1}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->getProperties()Ljava/util/Map;

    move-result-object v3

    const-string v4, "DOMAIN"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 86
    .local v3, "domain":Ljava/lang/String;
    invoke-virtual {v1}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->getProperties()Ljava/util/Map;

    move-result-object v4

    const-string v5, "WORKSTATION"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Ljava/lang/String;

    .line 88
    .local v11, "workstation":Ljava/lang/String;
    iget v4, v0, Lorg/apache/mina/proxy/handlers/http/ntlm/HttpNTLMAuthLogicHandler;->step:I

    const-string v12, "NTLM "

    const-string v13, "Proxy-Authorization"

    const/4 v14, 0x1

    if-lez v4, :cond_5

    .line 89
    sget-object v4, Lorg/apache/mina/proxy/handlers/http/ntlm/HttpNTLMAuthLogicHandler;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v4}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 90
    sget-object v4, Lorg/apache/mina/proxy/handlers/http/ntlm/HttpNTLMAuthLogicHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v5, "  sending NTLM challenge response"

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 93
    :cond_4
    iget-object v4, v0, Lorg/apache/mina/proxy/handlers/http/ntlm/HttpNTLMAuthLogicHandler;->challengePacket:[B

    invoke-static {v4}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMUtilities;->extractChallengeFromType2Message([B)[B

    move-result-object v15

    .line 94
    .local v15, "challenge":[B
    iget-object v4, v0, Lorg/apache/mina/proxy/handlers/http/ntlm/HttpNTLMAuthLogicHandler;->challengePacket:[B

    invoke-static {v4}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMUtilities;->extractFlagsFromType2Message([B)I

    move-result v16

    .line 96
    .local v16, "serverFlags":I
    invoke-virtual {v1}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->getProperties()Ljava/util/Map;

    move-result-object v4

    const-string v5, "USER"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v17, v4

    check-cast v17, Ljava/lang/String;

    .line 97
    .local v17, "username":Ljava/lang/String;
    invoke-virtual {v1}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->getProperties()Ljava/util/Map;

    move-result-object v4

    const-string v5, "PWD"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v18, v4

    check-cast v18, Ljava/lang/String;

    .line 99
    .local v18, "password":Ljava/lang/String;
    nop

    .line 100
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    .line 99
    move-object/from16 v4, v17

    move-object/from16 v5, v18

    move-object v6, v15

    move-object v7, v3

    move-object v8, v11

    invoke-static/range {v4 .. v10}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMUtilities;->createType3Message(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;[B)[B

    move-result-object v4

    .line 102
    .local v4, "authenticationPacket":[B
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/String;

    .line 103
    invoke-static {v4}, Lorg/apache/mina/util/Base64;->encodeBase64([B)[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 102
    invoke-static {v2, v13, v5, v14}, Lorg/apache/mina/proxy/utils/StringUtilities;->addValueToHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 105
    .end local v4    # "authenticationPacket":[B
    .end local v15    # "challenge":[B
    .end local v16    # "serverFlags":I
    .end local v17    # "username":Ljava/lang/String;
    .end local v18    # "password":Ljava/lang/String;
    goto :goto_2

    .line 106
    :cond_5
    sget-object v4, Lorg/apache/mina/proxy/handlers/http/ntlm/HttpNTLMAuthLogicHandler;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v4}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 107
    sget-object v4, Lorg/apache/mina/proxy/handlers/http/ntlm/HttpNTLMAuthLogicHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v5, "  sending NTLM negotiation packet"

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 110
    :cond_6
    const/4 v4, 0x0

    invoke-static {v11, v3, v4, v4}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMUtilities;->createType1Message(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;[B)[B

    move-result-object v4

    .line 111
    .local v4, "negotiationPacket":[B
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/String;

    .line 112
    invoke-static {v4}, Lorg/apache/mina/util/Base64;->encodeBase64([B)[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 111
    invoke-static {v2, v13, v5, v14}, Lorg/apache/mina/proxy/utils/StringUtilities;->addValueToHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 115
    .end local v4    # "negotiationPacket":[B
    :goto_2
    invoke-static {v2}, Lorg/apache/mina/proxy/handlers/http/ntlm/HttpNTLMAuthLogicHandler;->addKeepAliveHeaders(Ljava/util/Map;)V

    .line 116
    invoke-virtual {v1, v2}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->setHeaders(Ljava/util/Map;)V

    .line 118
    move-object/from16 v4, p1

    invoke-virtual {v0, v4, v1}, Lorg/apache/mina/proxy/handlers/http/ntlm/HttpNTLMAuthLogicHandler;->writeRequest(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;)V

    .line 119
    iget v5, v0, Lorg/apache/mina/proxy/handlers/http/ntlm/HttpNTLMAuthLogicHandler;->step:I

    add-int/2addr v5, v14

    iput v5, v0, Lorg/apache/mina/proxy/handlers/http/ntlm/HttpNTLMAuthLogicHandler;->step:I

    .line 120
    return-void
.end method

.method public handleResponse(Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;)V
    .locals 4
    .param p1, "response"    # Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/mina/proxy/ProxyAuthException;
        }
    .end annotation

    .line 144
    iget v0, p0, Lorg/apache/mina/proxy/handlers/http/ntlm/HttpNTLMAuthLogicHandler;->step:I

    const/4 v1, 0x1

    const/4 v2, 0x5

    if-nez v0, :cond_1

    .line 145
    invoke-direct {p0, p1}, Lorg/apache/mina/proxy/handlers/http/ntlm/HttpNTLMAuthLogicHandler;->getNTLMHeader(Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;)Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "challengeResponse":Ljava/lang/String;
    iput v1, p0, Lorg/apache/mina/proxy/handlers/http/ntlm/HttpNTLMAuthLogicHandler;->step:I

    .line 148
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v2, :cond_1

    .line 151
    :cond_0
    return-void

    .line 157
    .end local v0    # "challengeResponse":Ljava/lang/String;
    :cond_1
    iget v0, p0, Lorg/apache/mina/proxy/handlers/http/ntlm/HttpNTLMAuthLogicHandler;->step:I

    if-ne v0, v1, :cond_3

    .line 160
    invoke-direct {p0, p1}, Lorg/apache/mina/proxy/handlers/http/ntlm/HttpNTLMAuthLogicHandler;->getNTLMHeader(Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;)Ljava/lang/String;

    move-result-object v0

    .line 162
    .restart local v0    # "challengeResponse":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v2, :cond_2

    .line 167
    :try_start_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/mina/proxy/handlers/http/ntlm/HttpNTLMAuthLogicHandler;->proxyIoSession:Lorg/apache/mina/proxy/session/ProxyIoSession;

    .line 168
    invoke-virtual {v2}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getCharsetName()Ljava/lang/String;

    move-result-object v2

    .line 167
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lorg/apache/mina/util/Base64;->decodeBase64([B)[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/mina/proxy/handlers/http/ntlm/HttpNTLMAuthLogicHandler;->challengePacket:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    nop

    .line 172
    const/4 v1, 0x2

    iput v1, p0, Lorg/apache/mina/proxy/handlers/http/ntlm/HttpNTLMAuthLogicHandler;->step:I

    .line 173
    .end local v0    # "challengeResponse":Ljava/lang/String;
    nop

    .line 176
    return-void

    .line 169
    .restart local v0    # "challengeResponse":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 170
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lorg/apache/mina/proxy/ProxyAuthException;

    const-string v3, "Unable to decode the base64 encoded NTLM challenge"

    invoke-direct {v2, v3, v1}, Lorg/apache/mina/proxy/ProxyAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 163
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    new-instance v1, Lorg/apache/mina/proxy/ProxyAuthException;

    const-string v2, "Unexpected error while reading server challenge !"

    invoke-direct {v1, v2}, Lorg/apache/mina/proxy/ProxyAuthException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 174
    .end local v0    # "challengeResponse":Ljava/lang/String;
    :cond_3
    new-instance v0, Lorg/apache/mina/proxy/ProxyAuthException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received unexpected response code ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;->getStatusLine()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/mina/proxy/ProxyAuthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
