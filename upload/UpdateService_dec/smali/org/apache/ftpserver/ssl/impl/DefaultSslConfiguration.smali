.class public Lorg/apache/ftpserver/ssl/impl/DefaultSslConfiguration;
.super Ljava/lang/Object;
.source "DefaultSslConfiguration.java"

# interfaces
.implements Lorg/apache/ftpserver/ssl/SslConfiguration;


# instance fields
.field private final clientAuth:Lorg/apache/ftpserver/ssl/ClientAuth;

.field private final enabledCipherSuites:[Ljava/lang/String;

.field private enabledProtocol:Ljava/lang/String;

.field private final keyAlias:Ljava/lang/String;

.field private final keyManagerFactory:Ljavax/net/ssl/KeyManagerFactory;

.field private final socketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private final sslContext:Ljavax/net/ssl/SSLContext;

.field private final trustManagerFactory:Ljavax/net/ssl/TrustManagerFactory;


# direct methods
.method public constructor <init>(Ljavax/net/ssl/KeyManagerFactory;Ljavax/net/ssl/TrustManagerFactory;Lorg/apache/ftpserver/ssl/ClientAuth;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "keyManagerFactory"    # Ljavax/net/ssl/KeyManagerFactory;
    .param p2, "trustManagerFactory"    # Ljavax/net/ssl/TrustManagerFactory;
    .param p3, "clientAuthReqd"    # Lorg/apache/ftpserver/ssl/ClientAuth;
    .param p4, "sslProtocol"    # Ljava/lang/String;
    .param p5, "enabledCipherSuites"    # [Ljava/lang/String;
    .param p6, "keyAlias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-string v0, "SSLv1.2"

    iput-object v0, p0, Lorg/apache/ftpserver/ssl/impl/DefaultSslConfiguration;->enabledProtocol:Ljava/lang/String;

    .line 71
    iput-object p3, p0, Lorg/apache/ftpserver/ssl/impl/DefaultSslConfiguration;->clientAuth:Lorg/apache/ftpserver/ssl/ClientAuth;

    .line 72
    iput-object p5, p0, Lorg/apache/ftpserver/ssl/impl/DefaultSslConfiguration;->enabledCipherSuites:[Ljava/lang/String;

    .line 73
    iput-object p6, p0, Lorg/apache/ftpserver/ssl/impl/DefaultSslConfiguration;->keyAlias:Ljava/lang/String;

    .line 74
    iput-object p1, p0, Lorg/apache/ftpserver/ssl/impl/DefaultSslConfiguration;->keyManagerFactory:Ljavax/net/ssl/KeyManagerFactory;

    .line 75
    iput-object p4, p0, Lorg/apache/ftpserver/ssl/impl/DefaultSslConfiguration;->enabledProtocol:Ljava/lang/String;

    .line 76
    iput-object p2, p0, Lorg/apache/ftpserver/ssl/impl/DefaultSslConfiguration;->trustManagerFactory:Ljavax/net/ssl/TrustManagerFactory;

    .line 77
    invoke-direct {p0}, Lorg/apache/ftpserver/ssl/impl/DefaultSslConfiguration;->initContext()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/ssl/impl/DefaultSslConfiguration;->sslContext:Ljavax/net/ssl/SSLContext;

    .line 78
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/ssl/impl/DefaultSslConfiguration;->socketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 79
    return-void
.end method

.method private initContext()Ljavax/net/ssl/SSLContext;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lorg/apache/ftpserver/ssl/impl/DefaultSslConfiguration;->keyManagerFactory:Ljavax/net/ssl/KeyManagerFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v0

    .line 129
    .local v0, "keyManagers":[Ljavax/net/ssl/KeyManager;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 130
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "javax.net.ssl.X509ExtendedKeyManager"

    invoke-static {v2, v3}, Lorg/apache/ftpserver/util/ClassUtils;->extendsClass(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 131
    new-instance v2, Lorg/apache/ftpserver/ssl/impl/ExtendedAliasKeyManager;

    aget-object v3, v0, v1

    iget-object v4, p0, Lorg/apache/ftpserver/ssl/impl/DefaultSslConfiguration;->keyAlias:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/ftpserver/ssl/impl/ExtendedAliasKeyManager;-><init>(Ljavax/net/ssl/KeyManager;Ljava/lang/String;)V

    aput-object v2, v0, v1

    goto :goto_1

    .line 132
    :cond_0
    aget-object v2, v0, v1

    instance-of v2, v2, Ljavax/net/ssl/X509KeyManager;

    if-eqz v2, :cond_1

    .line 133
    new-instance v2, Lorg/apache/ftpserver/ssl/impl/AliasKeyManager;

    aget-object v3, v0, v1

    iget-object v4, p0, Lorg/apache/ftpserver/ssl/impl/DefaultSslConfiguration;->keyAlias:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/ftpserver/ssl/impl/AliasKeyManager;-><init>(Ljavax/net/ssl/KeyManager;Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 129
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 138
    .end local v1    # "i":I
    :cond_2
    iget-object v1, p0, Lorg/apache/ftpserver/ssl/impl/DefaultSslConfiguration;->enabledProtocol:Ljava/lang/String;

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 139
    .local v1, "ctx":Ljavax/net/ssl/SSLContext;
    iget-object v2, p0, Lorg/apache/ftpserver/ssl/impl/DefaultSslConfiguration;->trustManagerFactory:Ljavax/net/ssl/TrustManagerFactory;

    invoke-virtual {v2}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 142
    return-object v1
.end method


# virtual methods
.method public getClientAuth()Lorg/apache/ftpserver/ssl/ClientAuth;
    .locals 1

    .line 103
    iget-object v0, p0, Lorg/apache/ftpserver/ssl/impl/DefaultSslConfiguration;->clientAuth:Lorg/apache/ftpserver/ssl/ClientAuth;

    return-object v0
.end method

.method public getEnabledCipherSuites()[Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lorg/apache/ftpserver/ssl/impl/DefaultSslConfiguration;->enabledCipherSuites:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    .line 120
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEnabledProtocol()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lorg/apache/ftpserver/ssl/impl/DefaultSslConfiguration;->enabledProtocol:Ljava/lang/String;

    return-object v0
.end method

.method public getSSLContext()Ljavax/net/ssl/SSLContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lorg/apache/ftpserver/ssl/impl/DefaultSslConfiguration;->enabledProtocol:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/ftpserver/ssl/impl/DefaultSslConfiguration;->getSSLContext(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    return-object v0
.end method

.method public getSSLContext(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;
    .locals 1
    .param p1, "enabledProtocol"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lorg/apache/ftpserver/ssl/impl/DefaultSslConfiguration;->sslContext:Ljavax/net/ssl/SSLContext;

    return-object v0
.end method

.method public getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lorg/apache/ftpserver/ssl/impl/DefaultSslConfiguration;->socketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method
