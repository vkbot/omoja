.class public Lorg/apache/mina/filter/ssl/SslContextFactory;
.super Ljava/lang/Object;
.source "SslContextFactory.java"


# instance fields
.field private clientSessionCacheSize:I

.field private clientSessionTimeout:I

.field private keyManagerFactory:Ljavax/net/ssl/KeyManagerFactory;

.field private keyManagerFactoryAlgorithm:Ljava/lang/String;

.field private keyManagerFactoryAlgorithmUseDefault:Z

.field private keyManagerFactoryKeyStore:Ljava/security/KeyStore;

.field private keyManagerFactoryKeyStorePassword:[C

.field private keyManagerFactoryProvider:Ljava/lang/String;

.field private protocol:Ljava/lang/String;

.field private provider:Ljava/lang/String;

.field private secureRandom:Ljava/security/SecureRandom;

.field private serverSessionCacheSize:I

.field private serverSessionTimeout:I

.field private trustManagerFactory:Ljavax/net/ssl/TrustManagerFactory;

.field private trustManagerFactoryAlgorithm:Ljava/lang/String;

.field private trustManagerFactoryAlgorithmUseDefault:Z

.field private trustManagerFactoryKeyStore:Ljava/security/KeyStore;

.field private trustManagerFactoryParameters:Ljavax/net/ssl/ManagerFactoryParameters;

.field private trustManagerFactoryProvider:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->provider:Ljava/lang/String;

    .line 55
    const-string v1, "TLSv1.2"

    iput-object v1, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->protocol:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->secureRandom:Ljava/security/SecureRandom;

    .line 59
    iput-object v0, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->keyManagerFactoryKeyStore:Ljava/security/KeyStore;

    .line 61
    iput-object v0, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->keyManagerFactoryKeyStorePassword:[C

    .line 63
    iput-object v0, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->keyManagerFactory:Ljavax/net/ssl/KeyManagerFactory;

    .line 65
    iput-object v0, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->keyManagerFactoryAlgorithm:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->keyManagerFactoryProvider:Ljava/lang/String;

    .line 69
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->keyManagerFactoryAlgorithmUseDefault:Z

    .line 71
    iput-object v0, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->trustManagerFactoryKeyStore:Ljava/security/KeyStore;

    .line 73
    iput-object v0, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->trustManagerFactory:Ljavax/net/ssl/TrustManagerFactory;

    .line 75
    iput-object v0, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->trustManagerFactoryAlgorithm:Ljava/lang/String;

    .line 77
    iput-object v0, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->trustManagerFactoryProvider:Ljava/lang/String;

    .line 79
    iput-boolean v1, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->trustManagerFactoryAlgorithmUseDefault:Z

    .line 81
    iput-object v0, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->trustManagerFactoryParameters:Ljavax/net/ssl/ManagerFactoryParameters;

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->clientSessionCacheSize:I

    .line 85
    iput v0, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->clientSessionTimeout:I

    .line 87
    iput v0, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->serverSessionCacheSize:I

    .line 89
    iput v0, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->serverSessionTimeout:I

    return-void
.end method


# virtual methods
.method public newInstance()Ljavax/net/ssl/SSLContext;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->keyManagerFactory:Ljavax/net/ssl/KeyManagerFactory;

    .line 100
    .local v0, "kmf":Ljavax/net/ssl/KeyManagerFactory;
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->trustManagerFactory:Ljavax/net/ssl/TrustManagerFactory;

    .line 102
    .local v1, "tmf":Ljavax/net/ssl/TrustManagerFactory;
    if-nez v0, :cond_2

    .line 103
    iget-object v2, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->keyManagerFactoryAlgorithm:Ljava/lang/String;

    .line 105
    .local v2, "algorithm":Ljava/lang/String;
    if-nez v2, :cond_0

    iget-boolean v3, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->keyManagerFactoryAlgorithmUseDefault:Z

    if-eqz v3, :cond_0

    .line 106
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v2

    .line 109
    :cond_0
    if-eqz v2, :cond_2

    .line 110
    iget-object v3, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->keyManagerFactoryProvider:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 111
    invoke-static {v2}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v0

    goto :goto_0

    .line 113
    :cond_1
    invoke-static {v2, v3}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v0

    .line 118
    .end local v2    # "algorithm":Ljava/lang/String;
    :cond_2
    :goto_0
    if-nez v1, :cond_5

    .line 119
    iget-object v2, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->trustManagerFactoryAlgorithm:Ljava/lang/String;

    .line 121
    .restart local v2    # "algorithm":Ljava/lang/String;
    if-nez v2, :cond_3

    iget-boolean v3, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->trustManagerFactoryAlgorithmUseDefault:Z

    if-eqz v3, :cond_3

    .line 122
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v2

    .line 125
    :cond_3
    if-eqz v2, :cond_5

    .line 126
    iget-object v3, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->trustManagerFactoryProvider:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 127
    invoke-static {v2}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v1

    goto :goto_1

    .line 129
    :cond_4
    invoke-static {v2, v3}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v1

    .line 134
    .end local v2    # "algorithm":Ljava/lang/String;
    :cond_5
    :goto_1
    const/4 v2, 0x0

    .line 136
    .local v2, "keyManagers":[Ljavax/net/ssl/KeyManager;
    if-eqz v0, :cond_6

    .line 137
    iget-object v3, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->keyManagerFactoryKeyStore:Ljava/security/KeyStore;

    iget-object v4, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->keyManagerFactoryKeyStorePassword:[C

    invoke-virtual {v0, v3, v4}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 138
    invoke-virtual {v0}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v2

    .line 141
    :cond_6
    const/4 v3, 0x0

    .line 143
    .local v3, "trustManagers":[Ljavax/net/ssl/TrustManager;
    if-eqz v1, :cond_8

    .line 144
    iget-object v4, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->trustManagerFactoryParameters:Ljavax/net/ssl/ManagerFactoryParameters;

    if-eqz v4, :cond_7

    .line 145
    invoke-virtual {v1, v4}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljavax/net/ssl/ManagerFactoryParameters;)V

    goto :goto_2

    .line 147
    :cond_7
    iget-object v4, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->trustManagerFactoryKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v1, v4}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 150
    :goto_2
    invoke-virtual {v1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v3

    .line 155
    :cond_8
    iget-object v4, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->provider:Ljava/lang/String;

    if-nez v4, :cond_9

    .line 156
    iget-object v4, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->protocol:Ljava/lang/String;

    invoke-static {v4}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v4

    .local v4, "context":Ljavax/net/ssl/SSLContext;
    goto :goto_3

    .line 158
    .end local v4    # "context":Ljavax/net/ssl/SSLContext;
    :cond_9
    iget-object v5, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->protocol:Ljava/lang/String;

    invoke-static {v5, v4}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v4

    .line 161
    .restart local v4    # "context":Ljavax/net/ssl/SSLContext;
    :goto_3
    iget-object v5, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->secureRandom:Ljava/security/SecureRandom;

    invoke-virtual {v4, v2, v3, v5}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 163
    iget v5, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->clientSessionCacheSize:I

    if-ltz v5, :cond_a

    .line 164
    invoke-virtual {v4}, Ljavax/net/ssl/SSLContext;->getClientSessionContext()Ljavax/net/ssl/SSLSessionContext;

    move-result-object v5

    iget v6, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->clientSessionCacheSize:I

    invoke-interface {v5, v6}, Ljavax/net/ssl/SSLSessionContext;->setSessionCacheSize(I)V

    .line 167
    :cond_a
    iget v5, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->clientSessionTimeout:I

    if-ltz v5, :cond_b

    .line 168
    invoke-virtual {v4}, Ljavax/net/ssl/SSLContext;->getClientSessionContext()Ljavax/net/ssl/SSLSessionContext;

    move-result-object v5

    iget v6, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->clientSessionTimeout:I

    invoke-interface {v5, v6}, Ljavax/net/ssl/SSLSessionContext;->setSessionTimeout(I)V

    .line 171
    :cond_b
    iget v5, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->serverSessionCacheSize:I

    if-ltz v5, :cond_c

    .line 172
    invoke-virtual {v4}, Ljavax/net/ssl/SSLContext;->getServerSessionContext()Ljavax/net/ssl/SSLSessionContext;

    move-result-object v5

    iget v6, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->serverSessionCacheSize:I

    invoke-interface {v5, v6}, Ljavax/net/ssl/SSLSessionContext;->setSessionCacheSize(I)V

    .line 175
    :cond_c
    iget v5, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->serverSessionTimeout:I

    if-ltz v5, :cond_d

    .line 176
    invoke-virtual {v4}, Ljavax/net/ssl/SSLContext;->getServerSessionContext()Ljavax/net/ssl/SSLSessionContext;

    move-result-object v5

    iget v6, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->serverSessionTimeout:I

    invoke-interface {v5, v6}, Ljavax/net/ssl/SSLSessionContext;->setSessionTimeout(I)V

    .line 179
    :cond_d
    return-object v4
.end method

.method public setClientSessionCacheSize(I)V
    .locals 0
    .param p1, "size"    # I

    .line 405
    iput p1, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->clientSessionCacheSize:I

    .line 406
    return-void
.end method

.method public setClientSessionTimeout(I)V
    .locals 0
    .param p1, "seconds"    # I

    .line 415
    iput p1, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->clientSessionTimeout:I

    .line 416
    return-void
.end method

.method public setKeyManagerFactory(Ljavax/net/ssl/KeyManagerFactory;)V
    .locals 0
    .param p1, "factory"    # Ljavax/net/ssl/KeyManagerFactory;

    .line 242
    iput-object p1, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->keyManagerFactory:Ljavax/net/ssl/KeyManagerFactory;

    .line 243
    return-void
.end method

.method public setKeyManagerFactoryAlgorithm(Ljava/lang/String;)V
    .locals 0
    .param p1, "algorithm"    # Ljava/lang/String;

    .line 262
    iput-object p1, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->keyManagerFactoryAlgorithm:Ljava/lang/String;

    .line 263
    return-void
.end method

.method public setKeyManagerFactoryAlgorithmUseDefault(Z)V
    .locals 0
    .param p1, "useDefault"    # Z

    .line 217
    iput-boolean p1, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->keyManagerFactoryAlgorithmUseDefault:Z

    .line 218
    return-void
.end method

.method public setKeyManagerFactoryKeyStore(Ljava/security/KeyStore;)V
    .locals 0
    .param p1, "keyStore"    # Ljava/security/KeyStore;

    .line 292
    iput-object p1, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->keyManagerFactoryKeyStore:Ljava/security/KeyStore;

    .line 293
    return-void
.end method

.method public setKeyManagerFactoryKeyStorePassword(Ljava/lang/String;)V
    .locals 1
    .param p1, "password"    # Ljava/lang/String;

    .line 303
    if-eqz p1, :cond_0

    .line 304
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->keyManagerFactoryKeyStorePassword:[C

    goto :goto_0

    .line 306
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->keyManagerFactoryKeyStorePassword:[C

    .line 308
    :goto_0
    return-void
.end method

.method public setKeyManagerFactoryProvider(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .line 281
    iput-object p1, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->keyManagerFactoryProvider:Ljava/lang/String;

    .line 282
    return-void
.end method

.method public setProtocol(Ljava/lang/String;)V
    .locals 2
    .param p1, "protocol"    # Ljava/lang/String;

    .line 199
    if-eqz p1, :cond_0

    .line 203
    iput-object p1, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->protocol:Ljava/lang/String;

    .line 204
    return-void

    .line 200
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "protocol"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setProvider(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .line 189
    iput-object p1, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->provider:Ljava/lang/String;

    .line 190
    return-void
.end method

.method public setSecureRandom(Ljava/security/SecureRandom;)V
    .locals 0
    .param p1, "secureRandom"    # Ljava/security/SecureRandom;

    .line 395
    iput-object p1, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->secureRandom:Ljava/security/SecureRandom;

    .line 396
    return-void
.end method

.method public setServerSessionCacheSize(I)V
    .locals 0
    .param p1, "serverSessionCacheSize"    # I

    .line 425
    iput p1, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->serverSessionCacheSize:I

    .line 426
    return-void
.end method

.method public setServerSessionTimeout(I)V
    .locals 0
    .param p1, "serverSessionTimeout"    # I

    .line 435
    iput p1, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->serverSessionTimeout:I

    .line 436
    return-void
.end method

.method public setTrustManagerFactory(Ljavax/net/ssl/TrustManagerFactory;)V
    .locals 0
    .param p1, "factory"    # Ljavax/net/ssl/TrustManagerFactory;

    .line 319
    iput-object p1, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->trustManagerFactory:Ljavax/net/ssl/TrustManagerFactory;

    .line 320
    return-void
.end method

.method public setTrustManagerFactoryAlgorithm(Ljava/lang/String;)V
    .locals 0
    .param p1, "algorithm"    # Ljava/lang/String;

    .line 339
    iput-object p1, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->trustManagerFactoryAlgorithm:Ljava/lang/String;

    .line 340
    return-void
.end method

.method public setTrustManagerFactoryAlgorithmUseDefault(Z)V
    .locals 0
    .param p1, "useDefault"    # Z

    .line 231
    iput-boolean p1, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->trustManagerFactoryAlgorithmUseDefault:Z

    .line 232
    return-void
.end method

.method public setTrustManagerFactoryKeyStore(Ljava/security/KeyStore;)V
    .locals 0
    .param p1, "keyStore"    # Ljava/security/KeyStore;

    .line 353
    iput-object p1, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->trustManagerFactoryKeyStore:Ljava/security/KeyStore;

    .line 354
    return-void
.end method

.method public setTrustManagerFactoryParameters(Ljavax/net/ssl/ManagerFactoryParameters;)V
    .locals 0
    .param p1, "parameters"    # Ljavax/net/ssl/ManagerFactoryParameters;

    .line 364
    iput-object p1, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->trustManagerFactoryParameters:Ljavax/net/ssl/ManagerFactoryParameters;

    .line 365
    return-void
.end method

.method public setTrustManagerFactoryProvider(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .line 383
    iput-object p1, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->trustManagerFactoryProvider:Ljava/lang/String;

    .line 384
    return-void
.end method
