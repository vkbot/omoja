.class public Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;
.super Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;
.source "HttpDigestAuthLogicHandler.java"


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;

.field private static rnd:Ljava/security/SecureRandom;


# instance fields
.field private directives:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private response:Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 51
    const-class v0, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->LOGGER:Lorg/slf4j/Logger;

    .line 68
    :try_start_0
    const-string v0, "SHA1PRNG"

    invoke-static {v0}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->rnd:Ljava/security/SecureRandom;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    nop

    .line 72
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Lorg/apache/mina/proxy/session/ProxyIoSession;)V
    .locals 3
    .param p1, "proxyIoSession"    # Lorg/apache/mina/proxy/session/ProxyIoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/mina/proxy/ProxyAuthException;
        }
    .end annotation

    .line 81
    invoke-direct {p0, p1}, Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;-><init>(Lorg/apache/mina/proxy/session/ProxyIoSession;)V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->directives:Ljava/util/Map;

    .line 83
    iget-object v0, p0, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->request:Lorg/apache/mina/proxy/handlers/ProxyRequest;

    check-cast v0, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;

    const-string v1, "USER"

    const-string v2, "PWD"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->checkRequiredProperties([Ljava/lang/String;)V

    .line 85
    return-void
.end method


# virtual methods
.method public doHandshake(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    .locals 16
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/mina/proxy/ProxyAuthException;
        }
    .end annotation

    .line 92
    move-object/from16 v1, p0

    sget-object v0, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    sget-object v0, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v2, " doHandshake()"

    invoke-interface {v0, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 96
    :cond_0
    iget v0, v1, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->step:I

    if-lez v0, :cond_2

    iget-object v0, v1, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->directives:Ljava/util/Map;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 97
    :cond_1
    new-instance v0, Lorg/apache/mina/proxy/ProxyAuthException;

    const-string v2, "Authentication challenge not received"

    invoke-direct {v0, v2}, Lorg/apache/mina/proxy/ProxyAuthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_2
    :goto_0
    iget-object v0, v1, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->request:Lorg/apache/mina/proxy/handlers/ProxyRequest;

    move-object v2, v0

    check-cast v2, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;

    .line 101
    .local v2, "req":Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;
    invoke-virtual {v2}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->getHeaders()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v2}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->getHeaders()Ljava/util/Map;

    move-result-object v0

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_1
    move-object v3, v0

    .line 104
    .local v3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget v0, v1, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->step:I

    const/4 v4, 0x1

    if-lez v0, :cond_10

    .line 105
    sget-object v0, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 106
    sget-object v0, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v5, "  sending DIGEST challenge response"

    invoke-interface {v0, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 110
    :cond_4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v11, v0

    .line 111
    .local v11, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v2}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->getProperties()Ljava/util/Map;

    move-result-object v0

    const-string v5, "USER"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v5, "username"

    invoke-virtual {v11, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v0, v1, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->directives:Ljava/util/Map;

    const-string v5, "realm"

    invoke-static {v0, v11, v5}, Lorg/apache/mina/proxy/utils/StringUtilities;->copyDirective(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 113
    iget-object v0, v1, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->directives:Ljava/util/Map;

    const-string v5, "uri"

    invoke-static {v0, v11, v5}, Lorg/apache/mina/proxy/utils/StringUtilities;->copyDirective(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 114
    iget-object v0, v1, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->directives:Ljava/util/Map;

    const-string v6, "opaque"

    invoke-static {v0, v11, v6}, Lorg/apache/mina/proxy/utils/StringUtilities;->copyDirective(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 115
    iget-object v0, v1, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->directives:Ljava/util/Map;

    const-string v6, "nonce"

    invoke-static {v0, v11, v6}, Lorg/apache/mina/proxy/utils/StringUtilities;->copyDirective(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 116
    iget-object v0, v1, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->directives:Ljava/util/Map;

    const-string v6, "algorithm"

    invoke-static {v0, v11, v6}, Lorg/apache/mina/proxy/utils/StringUtilities;->copyDirective(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 119
    .local v12, "algorithm":Ljava/lang/String;
    if-eqz v12, :cond_6

    const-string v0, "md5"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "md5-sess"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    .line 120
    :cond_5
    new-instance v0, Lorg/apache/mina/proxy/ProxyAuthException;

    const-string v4, "Unknown algorithm required by server"

    invoke-direct {v0, v4}, Lorg/apache/mina/proxy/ProxyAuthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_6
    :goto_2
    iget-object v0, v1, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->directives:Ljava/util/Map;

    const-string v13, "qop"

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Ljava/lang/String;

    .line 126
    .local v14, "qop":Ljava/lang/String;
    if-eqz v14, :cond_b

    .line 127
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v6, ","

    invoke-direct {v0, v14, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v0

    .line 128
    .local v6, "st":Ljava/util/StringTokenizer;
    const/4 v0, 0x0

    move-object v7, v0

    .line 130
    .local v7, "token":Ljava/lang/String;
    :goto_3
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 131
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "tk":Ljava/lang/String;
    const-string v8, "auth"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 134
    goto :goto_4

    .line 137
    :cond_7
    sget-object v8, Lorg/apache/mina/proxy/handlers/http/digest/DigestUtilities;->SUPPORTED_QOPS:[Ljava/lang/String;

    invoke-static {v8, v0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v8

    .line 139
    .local v8, "pos":I
    const/4 v9, -0x1

    if-le v8, v9, :cond_8

    .line 140
    move-object v7, v0

    .line 142
    .end local v0    # "tk":Ljava/lang/String;
    .end local v8    # "pos":I
    :cond_8
    goto :goto_3

    .line 144
    :cond_9
    :goto_4
    if-eqz v7, :cond_a

    .line 145
    invoke-virtual {v11, v13, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const/16 v0, 0x8

    new-array v8, v0, [B

    .line 148
    .local v8, "nonce":[B
    sget-object v0, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->rnd:Ljava/security/SecureRandom;

    invoke-virtual {v0, v8}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 151
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-static {v8}, Lorg/apache/mina/util/Base64;->encodeBase64([B)[B

    move-result-object v9

    iget-object v10, v1, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->proxyIoSession:Lorg/apache/mina/proxy/session/ProxyIoSession;

    invoke-virtual {v10}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getCharsetName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v9, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 152
    .local v0, "cnonce":Ljava/lang/String;
    const-string v9, "cnonce"

    invoke-virtual {v11, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    nop

    .line 156
    .end local v0    # "cnonce":Ljava/lang/String;
    .end local v8    # "nonce":[B
    goto :goto_5

    .line 153
    .restart local v8    # "nonce":[B
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v4, Lorg/apache/mina/proxy/ProxyAuthException;

    const-string v5, "Unable to encode cnonce"

    invoke-direct {v4, v5, v0}, Lorg/apache/mina/proxy/ProxyAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 157
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v8    # "nonce":[B
    :cond_a
    new-instance v0, Lorg/apache/mina/proxy/ProxyAuthException;

    const-string v4, "No supported qop option available"

    invoke-direct {v0, v4}, Lorg/apache/mina/proxy/ProxyAuthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    .end local v6    # "st":Ljava/util/StringTokenizer;
    .end local v7    # "token":Ljava/lang/String;
    :cond_b
    :goto_5
    const-string v0, "nc"

    const-string v6, "00000001"

    invoke-virtual {v11, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    invoke-virtual {v2}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->getHttpURI()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    :try_start_1
    const-string v15, "response"

    iget-object v5, v1, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->proxyIoSession:Lorg/apache/mina/proxy/session/ProxyIoSession;

    invoke-virtual {v5}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v5

    .line 167
    invoke-virtual {v2}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->getHttpVerb()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->getProperties()Ljava/util/Map;

    move-result-object v6

    const-string v8, "PWD"

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Ljava/lang/String;

    iget-object v6, v1, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->proxyIoSession:Lorg/apache/mina/proxy/session/ProxyIoSession;

    .line 168
    invoke-virtual {v6}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getCharsetName()Ljava/lang/String;

    move-result-object v9

    iget-object v6, v1, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->response:Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;

    invoke-virtual {v6}, Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;->getBody()Ljava/lang/String;

    move-result-object v10

    .line 166
    move-object v6, v11

    invoke-static/range {v5 .. v10}, Lorg/apache/mina/proxy/handlers/http/digest/DigestUtilities;->computeResponseValue(Lorg/apache/mina/core/session/IoSession;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v15, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 172
    nop

    .line 176
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Digest "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 177
    .local v5, "sb":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .line 179
    .local v6, "addSeparator":Z
    invoke-virtual {v11}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 180
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 182
    .local v9, "key":Ljava/lang/String;
    if-eqz v6, :cond_c

    .line 183
    const-string v10, ", "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 185
    :cond_c
    const/4 v6, 0x1

    .line 188
    :goto_7
    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_d

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_d

    move v10, v4

    goto :goto_8

    :cond_d
    const/4 v10, 0x0

    .line 189
    .local v10, "quotedValue":Z
    :goto_8
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    if-eqz v10, :cond_e

    .line 192
    const-string v15, "=\""

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v15, 0x22

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 194
    :cond_e
    const/16 v15, 0x3d

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "key":Ljava/lang/String;
    .end local v10    # "quotedValue":Z
    :goto_9
    goto :goto_6

    .line 198
    :cond_f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "Proxy-Authorization"

    invoke-static {v3, v7, v0, v4}, Lorg/apache/mina/proxy/utils/StringUtilities;->addValueToHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_a

    .line 170
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    .end local v6    # "addSeparator":Z
    :catch_1
    move-exception v0

    .line 171
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Lorg/apache/mina/proxy/ProxyAuthException;

    const-string v5, "Digest response computing failed"

    invoke-direct {v4, v5, v0}, Lorg/apache/mina/proxy/ProxyAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 201
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v11    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12    # "algorithm":Ljava/lang/String;
    .end local v14    # "qop":Ljava/lang/String;
    :cond_10
    :goto_a
    invoke-static {v3}, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->addKeepAliveHeaders(Ljava/util/Map;)V

    .line 202
    invoke-virtual {v2, v3}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->setHeaders(Ljava/util/Map;)V

    .line 204
    move-object/from16 v5, p1

    invoke-virtual {v1, v5, v2}, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->writeRequest(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;)V

    .line 205
    iget v0, v1, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->step:I

    add-int/2addr v0, v4

    iput v0, v1, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->step:I

    .line 206
    return-void
.end method

.method public handleResponse(Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;)V
    .locals 5
    .param p1, "response"    # Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/mina/proxy/ProxyAuthException;
        }
    .end annotation

    .line 210
    iput-object p1, p0, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->response:Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;

    .line 212
    iget v0, p0, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->step:I

    const-string v1, ")."

    const-string v2, "Received unexpected response code ("

    if-nez v0, :cond_5

    .line 213
    invoke-virtual {p1}, Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;->getStatusCode()I

    move-result v0

    const/16 v3, 0x191

    if-eq v0, v3, :cond_1

    invoke-virtual {p1}, Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;->getStatusCode()I

    move-result v0

    const/16 v3, 0x197

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 214
    :cond_0
    new-instance v0, Lorg/apache/mina/proxy/ProxyAuthException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;->getStatusLine()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/mina/proxy/ProxyAuthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;->getHeaders()Ljava/util/Map;

    move-result-object v0

    const-string v1, "Proxy-Authenticate"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 220
    .local v0, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 222
    .local v1, "challengeResponse":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 223
    .local v3, "s":Ljava/lang/String;
    const-string v4, "Digest"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 224
    move-object v1, v3

    .line 225
    goto :goto_2

    .line 227
    .end local v3    # "s":Ljava/lang/String;
    :cond_2
    goto :goto_1

    .line 229
    :cond_3
    :goto_2
    if-eqz v1, :cond_4

    .line 234
    const/4 v2, 0x7

    :try_start_0
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->proxyIoSession:Lorg/apache/mina/proxy/session/ProxyIoSession;

    .line 235
    invoke-virtual {v3}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getCharsetName()Ljava/lang/String;

    move-result-object v3

    .line 234
    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lorg/apache/mina/proxy/utils/StringUtilities;->parseDirectives([B)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->directives:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    nop

    .line 239
    const/4 v2, 0x1

    iput v2, p0, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->step:I

    .line 240
    .end local v0    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "challengeResponse":Ljava/lang/String;
    nop

    .line 243
    return-void

    .line 236
    .restart local v0    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "challengeResponse":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 237
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Lorg/apache/mina/proxy/ProxyAuthException;

    const-string v4, "Parsing of server digest directives failed"

    invoke-direct {v3, v4, v2}, Lorg/apache/mina/proxy/ProxyAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 230
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    new-instance v2, Lorg/apache/mina/proxy/ProxyAuthException;

    const-string v3, "Server doesn\'t support digest authentication method !"

    invoke-direct {v2, v3}, Lorg/apache/mina/proxy/ProxyAuthException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 241
    .end local v0    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "challengeResponse":Ljava/lang/String;
    :cond_5
    new-instance v0, Lorg/apache/mina/proxy/ProxyAuthException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;->getStatusLine()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/mina/proxy/ProxyAuthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
