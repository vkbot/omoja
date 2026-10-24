.class public Lorg/apache/mina/proxy/handlers/http/HttpSmartProxyHandler;
.super Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;
.source "HttpSmartProxyHandler.java"


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;


# instance fields
.field private authHandler:Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;

.field private requestSent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const-class v0, Lorg/apache/mina/proxy/handlers/http/HttpSmartProxyHandler;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/proxy/handlers/http/HttpSmartProxyHandler;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/proxy/session/ProxyIoSession;)V
    .locals 1
    .param p1, "proxyIoSession"    # Lorg/apache/mina/proxy/session/ProxyIoSession;

    .line 59
    invoke-direct {p0, p1}, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;-><init>(Lorg/apache/mina/proxy/session/ProxyIoSession;)V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/mina/proxy/handlers/http/HttpSmartProxyHandler;->requestSent:Z

    .line 60
    return-void
.end method

.method private autoSelectAuthHandler(Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;)V
    .locals 12
    .param p1, "response"    # Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/mina/proxy/ProxyAuthException;
        }
    .end annotation

    .line 108
    invoke-virtual {p1}, Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;->getHeaders()Ljava/util/Map;

    move-result-object v0

    const-string v1, "Proxy-Authenticate"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 109
    .local v0, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/http/HttpSmartProxyHandler;->getProxyIoSession()Lorg/apache/mina/proxy/session/ProxyIoSession;

    move-result-object v1

    .line 111
    .local v1, "proxyIoSession":Lorg/apache/mina/proxy/session/ProxyIoSession;
    if-eqz v0, :cond_f

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_8

    .line 114
    :cond_0
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/http/HttpSmartProxyHandler;->getProxyIoSession()Lorg/apache/mina/proxy/session/ProxyIoSession;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getPreferedOrder()Ljava/util/List;

    move-result-object v2

    const-string v3, "Following exception occured:"

    const-string v4, "basic"

    const-string v5, "digest"

    const-string v6, "ntlm"

    if-nez v2, :cond_7

    .line 116
    const/4 v2, -0x1

    .line 120
    .local v2, "method":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, -0x1

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 121
    .local v8, "proxyAuthHeader":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 123
    invoke-virtual {v8, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 124
    sget-object v4, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->NTLM:Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

    invoke-virtual {v4}, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->getId()I

    move-result v2

    .line 125
    goto :goto_2

    .line 126
    :cond_1
    invoke-virtual {v8, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    sget-object v10, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->NTLM:Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

    invoke-virtual {v10}, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->getId()I

    move-result v10

    if-eq v2, v10, :cond_2

    .line 127
    sget-object v9, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->DIGEST:Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

    invoke-virtual {v9}, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->getId()I

    move-result v2

    goto :goto_1

    .line 128
    :cond_2
    invoke-virtual {v8, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    if-ne v2, v9, :cond_3

    .line 129
    sget-object v9, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->BASIC:Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

    invoke-virtual {v9}, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->getId()I

    move-result v2

    .line 131
    .end local v8    # "proxyAuthHeader":Ljava/lang/String;
    :cond_3
    :goto_1
    goto :goto_0

    .line 133
    :cond_4
    :goto_2
    if-eq v2, v9, :cond_5

    .line 135
    :try_start_0
    invoke-static {v2, v1}, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->getNewHandler(ILorg/apache/mina/proxy/session/ProxyIoSession;)Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/mina/proxy/handlers/http/HttpSmartProxyHandler;->authHandler:Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    goto :goto_3

    .line 136
    :catch_0
    move-exception v4

    .line 137
    .local v4, "ex":Ljava/lang/Exception;
    sget-object v5, Lorg/apache/mina/proxy/handlers/http/HttpSmartProxyHandler;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v5}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 138
    sget-object v5, Lorg/apache/mina/proxy/handlers/http/HttpSmartProxyHandler;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v5, v3, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 143
    .end local v4    # "ex":Ljava/lang/Exception;
    :cond_5
    :goto_3
    iget-object v3, p0, Lorg/apache/mina/proxy/handlers/http/HttpSmartProxyHandler;->authHandler:Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;

    if-nez v3, :cond_6

    .line 144
    sget-object v3, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->NO_AUTH:Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

    invoke-virtual {v3, v1}, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->getNewHandler(Lorg/apache/mina/proxy/session/ProxyIoSession;)Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/mina/proxy/handlers/http/HttpSmartProxyHandler;->authHandler:Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;

    .line 147
    .end local v2    # "method":I
    :cond_6
    goto/16 :goto_9

    .line 148
    :cond_7
    invoke-virtual {v1}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getPreferedOrder()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

    .line 149
    .local v7, "method":Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;
    iget-object v8, p0, Lorg/apache/mina/proxy/handlers/http/HttpSmartProxyHandler;->authHandler:Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;

    if-eqz v8, :cond_8

    .line 150
    goto/16 :goto_9

    .line 153
    :cond_8
    sget-object v8, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->NO_AUTH:Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

    if-ne v7, v8, :cond_9

    .line 154
    sget-object v2, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->NO_AUTH:Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

    invoke-virtual {v2, v1}, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->getNewHandler(Lorg/apache/mina/proxy/session/ProxyIoSession;)Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/mina/proxy/handlers/http/HttpSmartProxyHandler;->authHandler:Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;

    .line 155
    goto :goto_9

    .line 158
    :cond_9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 159
    .local v9, "proxyAuthHeader":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    .line 163
    :try_start_1
    invoke-virtual {v9, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_a

    sget-object v10, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->BASIC:Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

    if-ne v7, v10, :cond_a

    .line 164
    sget-object v10, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->BASIC:Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

    invoke-virtual {v10, v1}, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->getNewHandler(Lorg/apache/mina/proxy/session/ProxyIoSession;)Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;

    move-result-object v10

    iput-object v10, p0, Lorg/apache/mina/proxy/handlers/http/HttpSmartProxyHandler;->authHandler:Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;

    .line 165
    goto :goto_7

    .line 166
    :cond_a
    invoke-virtual {v9, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_b

    sget-object v10, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->DIGEST:Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

    if-ne v7, v10, :cond_b

    .line 167
    sget-object v10, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->DIGEST:Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

    invoke-virtual {v10, v1}, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->getNewHandler(Lorg/apache/mina/proxy/session/ProxyIoSession;)Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;

    move-result-object v10

    iput-object v10, p0, Lorg/apache/mina/proxy/handlers/http/HttpSmartProxyHandler;->authHandler:Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;

    .line 168
    goto :goto_7

    .line 169
    :cond_b
    invoke-virtual {v9, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_c

    sget-object v10, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->NTLM:Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

    if-ne v7, v10, :cond_c

    .line 170
    sget-object v10, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->NTLM:Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

    invoke-virtual {v10, v1}, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->getNewHandler(Lorg/apache/mina/proxy/session/ProxyIoSession;)Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;

    move-result-object v10

    iput-object v10, p0, Lorg/apache/mina/proxy/handlers/http/HttpSmartProxyHandler;->authHandler:Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 171
    goto :goto_7

    .line 177
    :cond_c
    goto :goto_6

    .line 173
    :catch_1
    move-exception v10

    .line 174
    .local v10, "ex":Ljava/lang/Exception;
    sget-object v11, Lorg/apache/mina/proxy/handlers/http/HttpSmartProxyHandler;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v11}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v11

    if-eqz v11, :cond_d

    .line 175
    sget-object v11, Lorg/apache/mina/proxy/handlers/http/HttpSmartProxyHandler;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v11, v3, v10}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 178
    .end local v9    # "proxyAuthHeader":Ljava/lang/String;
    .end local v10    # "ex":Ljava/lang/Exception;
    :cond_d
    :goto_6
    goto :goto_5

    .line 179
    .end local v7    # "method":Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;
    :cond_e
    :goto_7
    goto :goto_4

    .line 112
    :cond_f
    :goto_8
    sget-object v2, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->NO_AUTH:Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

    invoke-virtual {v2, v1}, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->getNewHandler(Lorg/apache/mina/proxy/session/ProxyIoSession;)Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/mina/proxy/handlers/http/HttpSmartProxyHandler;->authHandler:Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;

    .line 183
    :cond_10
    :goto_9
    iget-object v2, p0, Lorg/apache/mina/proxy/handlers/http/HttpSmartProxyHandler;->authHandler:Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;

    if-eqz v2, :cond_11

    .line 186
    return-void

    .line 184
    :cond_11
    new-instance v2, Lorg/apache/mina/proxy/ProxyAuthException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown authentication mechanism(s): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/mina/proxy/ProxyAuthException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public doHandshake(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    .locals 3
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/mina/proxy/ProxyAuthException;
        }
    .end annotation

    .line 69
    sget-object v0, Lorg/apache/mina/proxy/handlers/http/HttpSmartProxyHandler;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    sget-object v0, Lorg/apache/mina/proxy/handlers/http/HttpSmartProxyHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, " doHandshake()"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 73
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/proxy/handlers/http/HttpSmartProxyHandler;->authHandler:Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;

    if-eqz v0, :cond_1

    .line 74
    invoke-virtual {v0, p1}, Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;->doHandshake(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V

    goto :goto_1

    .line 76
    :cond_1
    iget-boolean v0, p0, Lorg/apache/mina/proxy/handlers/http/HttpSmartProxyHandler;->requestSent:Z

    if-nez v0, :cond_4

    .line 81
    sget-object v0, Lorg/apache/mina/proxy/handlers/http/HttpSmartProxyHandler;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 82
    sget-object v0, Lorg/apache/mina/proxy/handlers/http/HttpSmartProxyHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "  sending HTTP request"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 86
    :cond_2
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/http/HttpSmartProxyHandler;->getProxyIoSession()Lorg/apache/mina/proxy/session/ProxyIoSession;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getRequest()Lorg/apache/mina/proxy/handlers/ProxyRequest;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;

    .line 87
    .local v0, "req":Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;
    invoke-virtual {v0}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->getHeaders()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->getHeaders()Ljava/util/Map;

    move-result-object v1

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 90
    .local v1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :goto_0
    invoke-static {v1}, Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;->addKeepAliveHeaders(Ljava/util/Map;)V

    .line 91
    invoke-virtual {v0, v1}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->setHeaders(Ljava/util/Map;)V

    .line 94
    invoke-virtual {p0, p1, v0}, Lorg/apache/mina/proxy/handlers/http/HttpSmartProxyHandler;->writeRequest(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;)V

    .line 95
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/mina/proxy/handlers/http/HttpSmartProxyHandler;->requestSent:Z

    .line 97
    .end local v0    # "req":Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;
    .end local v1    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :goto_1
    return-void

    .line 78
    :cond_4
    new-instance v0, Lorg/apache/mina/proxy/ProxyAuthException;

    const-string v1, "Authentication request already sent"

    invoke-direct {v0, v1}, Lorg/apache/mina/proxy/ProxyAuthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public handleResponse(Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;)V
    .locals 3
    .param p1, "response"    # Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/mina/proxy/ProxyAuthException;
        }
    .end annotation

    .line 195
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/http/HttpSmartProxyHandler;->isHandshakeComplete()Z

    move-result v0

    if-nez v0, :cond_1

    .line 196
    invoke-virtual {p1}, Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;->getHeaders()Ljava/util/Map;

    move-result-object v0

    const-string v1, "Proxy-Connection"

    invoke-static {v0, v1}, Lorg/apache/mina/proxy/utils/StringUtilities;->getSingleValuedHeader(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "close"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    invoke-virtual {p1}, Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;->getHeaders()Ljava/util/Map;

    move-result-object v0

    .line 197
    const-string v2, "Connection"

    invoke-static {v0, v2}, Lorg/apache/mina/proxy/utils/StringUtilities;->getSingleValuedHeader(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    :cond_0
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/http/HttpSmartProxyHandler;->getProxyIoSession()Lorg/apache/mina/proxy/session/ProxyIoSession;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/mina/proxy/session/ProxyIoSession;->setReconnectionNeeded(Z)V

    .line 202
    :cond_1
    invoke-virtual {p1}, Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;->getStatusCode()I

    move-result v0

    const/16 v1, 0x197

    if-ne v0, v1, :cond_3

    .line 203
    iget-object v0, p0, Lorg/apache/mina/proxy/handlers/http/HttpSmartProxyHandler;->authHandler:Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;

    if-nez v0, :cond_2

    .line 204
    invoke-direct {p0, p1}, Lorg/apache/mina/proxy/handlers/http/HttpSmartProxyHandler;->autoSelectAuthHandler(Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;)V

    .line 206
    :cond_2
    iget-object v0, p0, Lorg/apache/mina/proxy/handlers/http/HttpSmartProxyHandler;->authHandler:Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;

    invoke-virtual {v0, p1}, Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;->handleResponse(Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;)V

    .line 211
    return-void

    .line 208
    :cond_3
    new-instance v0, Lorg/apache/mina/proxy/ProxyAuthException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: unexpected response code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;->getStatusLine()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " received from proxy."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/mina/proxy/ProxyAuthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
