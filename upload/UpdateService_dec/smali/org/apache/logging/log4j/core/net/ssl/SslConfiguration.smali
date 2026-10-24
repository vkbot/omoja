.class public Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;
.super Ljava/lang/Object;
.source "SslConfiguration.java"


# annotations
.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    name = "Ssl"
    printObject = true
.end annotation


# static fields
.field private static final LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;


# instance fields
.field private final keyStoreConfig:Lorg/apache/logging/log4j/core/net/ssl/KeyStoreConfiguration;

.field private final protocol:Ljava/lang/String;

.field private final sslContext:Ljavax/net/ssl/SSLContext;

.field private final trustStoreConfig:Lorg/apache/logging/log4j/core/net/ssl/TrustStoreConfiguration;

.field private final verifyHostName:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;->LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/net/ssl/KeyStoreConfiguration;Lorg/apache/logging/log4j/core/net/ssl/TrustStoreConfiguration;Z)V
    .locals 1
    .param p1, "protocol"    # Ljava/lang/String;
    .param p2, "keyStoreConfig"    # Lorg/apache/logging/log4j/core/net/ssl/KeyStoreConfiguration;
    .param p3, "trustStoreConfig"    # Lorg/apache/logging/log4j/core/net/ssl/TrustStoreConfiguration;
    .param p4, "verifyHostName"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x0
        }
        names = {
            "protocol",
            "keyStoreConfig",
            "trustStoreConfig",
            "verifyHostName"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p2, p0, Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;->keyStoreConfig:Lorg/apache/logging/log4j/core/net/ssl/KeyStoreConfiguration;

    .line 55
    iput-object p3, p0, Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;->trustStoreConfig:Lorg/apache/logging/log4j/core/net/ssl/TrustStoreConfiguration;

    .line 56
    if-nez p1, :cond_0

    const-string v0, "SSL"

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;->protocol:Ljava/lang/String;

    .line 57
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;->createSslContext()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;->sslContext:Ljavax/net/ssl/SSLContext;

    .line 58
    iput-boolean p4, p0, Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;->verifyHostName:Z

    .line 59
    return-void
.end method

.method private createDefaultSslContext()Ljavax/net/ssl/SSLContext;
    .locals 3

    .line 150
    :try_start_0
    invoke-static {}, Ljavax/net/ssl/SSLContext;->getDefault()Ljavax/net/ssl/SSLContext;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    sget-object v1, Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;->LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;

    const-string v2, "Failed to create an SSLContext with default configuration"

    invoke-virtual {v1, v2, v0}, Lorg/apache/logging/log4j/status/StatusLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 153
    const/4 v1, 0x0

    return-object v1
.end method

.method public static createSSLConfiguration(Ljava/lang/String;Lorg/apache/logging/log4j/core/net/ssl/KeyStoreConfiguration;Lorg/apache/logging/log4j/core/net/ssl/TrustStoreConfiguration;)Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;
    .locals 2
    .param p0, "protocol"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "protocol"
        .end annotation
    .end param
    .param p1, "keyStoreConfig"    # Lorg/apache/logging/log4j/core/net/ssl/KeyStoreConfiguration;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginElement;
            value = "KeyStore"
        .end annotation
    .end param
    .param p2, "trustStoreConfig"    # Lorg/apache/logging/log4j/core/net/ssl/TrustStoreConfiguration;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginElement;
            value = "TrustStore"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "protocol",
            "keyStoreConfig",
            "trustStoreConfig"
        }
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginFactory;
    .end annotation

    .line 238
    new-instance v0, Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/net/ssl/KeyStoreConfiguration;Lorg/apache/logging/log4j/core/net/ssl/TrustStoreConfiguration;Z)V

    return-object v0
.end method

.method public static createSSLConfiguration(Ljava/lang/String;Lorg/apache/logging/log4j/core/net/ssl/KeyStoreConfiguration;Lorg/apache/logging/log4j/core/net/ssl/TrustStoreConfiguration;Z)Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;
    .locals 1
    .param p0, "protocol"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "protocol"
        .end annotation
    .end param
    .param p1, "keyStoreConfig"    # Lorg/apache/logging/log4j/core/net/ssl/KeyStoreConfiguration;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginElement;
            value = "KeyStore"
        .end annotation
    .end param
    .param p2, "trustStoreConfig"    # Lorg/apache/logging/log4j/core/net/ssl/TrustStoreConfiguration;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginElement;
            value = "TrustStore"
        .end annotation
    .end param
    .param p3, "verifyHostName"    # Z
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "verifyHostName"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "protocol",
            "keyStoreConfig",
            "trustStoreConfig",
            "verifyHostName"
        }
    .end annotation

    .line 258
    new-instance v0, Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/net/ssl/KeyStoreConfiguration;Lorg/apache/logging/log4j/core/net/ssl/TrustStoreConfiguration;Z)V

    return-object v0
.end method

.method private createSslContext()Ljavax/net/ssl/SSLContext;
    .locals 3

    .line 82
    const/4 v0, 0x0

    .line 85
    .local v0, "context":Ljavax/net/ssl/SSLContext;
    :try_start_0
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;->createSslContextBasedOnConfiguration()Ljavax/net/ssl/SSLContext;

    move-result-object v1

    move-object v0, v1

    .line 86
    sget-object v1, Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;->LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;

    const-string v2, "Creating SSLContext with the given parameters"

    invoke-virtual {v1, v2}, Lorg/apache/logging/log4j/status/StatusLogger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/logging/log4j/core/net/ssl/TrustStoreConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/logging/log4j/core/net/ssl/KeyStoreConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 91
    :catch_0
    move-exception v1

    .line 92
    .local v1, "e":Lorg/apache/logging/log4j/core/net/ssl/KeyStoreConfigurationException;
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;->createSslContextWithKeyStoreFailure()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    goto :goto_1

    .line 88
    .end local v1    # "e":Lorg/apache/logging/log4j/core/net/ssl/KeyStoreConfigurationException;
    :catch_1
    move-exception v1

    .line 89
    .local v1, "e":Lorg/apache/logging/log4j/core/net/ssl/TrustStoreConfigurationException;
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;->createSslContextWithTrustStoreFailure()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 93
    .end local v1    # "e":Lorg/apache/logging/log4j/core/net/ssl/TrustStoreConfigurationException;
    :goto_0
    nop

    .line 94
    :goto_1
    return-object v0
.end method

.method private createSslContext(ZZ)Ljavax/net/ssl/SSLContext;
    .locals 5
    .param p1, "loadDefaultKeyManagerFactory"    # Z
    .param p2, "loadDefaultTrustManagerFactory"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "loadDefaultKeyManagerFactory",
            "loadDefaultTrustManagerFactory"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/logging/log4j/core/net/ssl/KeyStoreConfigurationException;,
            Lorg/apache/logging/log4j/core/net/ssl/TrustStoreConfigurationException;
        }
    .end annotation

    .line 160
    const/4 v0, 0x0

    .line 161
    .local v0, "kManagers":[Ljavax/net/ssl/KeyManager;
    const/4 v1, 0x0

    .line 163
    .local v1, "tManagers":[Ljavax/net/ssl/TrustManager;
    :try_start_0
    iget-object v2, p0, Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;->protocol:Ljava/lang/String;

    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v2

    .line 164
    .local v2, "newSslContext":Ljavax/net/ssl/SSLContext;
    if-nez p1, :cond_0

    .line 165
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;->loadKeyManagerFactory()Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v3

    .line 166
    .local v3, "kmFactory":Ljavax/net/ssl/KeyManagerFactory;
    invoke-virtual {v3}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v4

    move-object v0, v4

    .line 168
    .end local v3    # "kmFactory":Ljavax/net/ssl/KeyManagerFactory;
    :cond_0
    if-nez p2, :cond_1

    .line 169
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;->loadTrustManagerFactory()Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v3

    .line 170
    .local v3, "tmFactory":Ljavax/net/ssl/TrustManagerFactory;
    invoke-virtual {v3}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v4

    move-object v1, v4

    .line 173
    .end local v3    # "tmFactory":Ljavax/net/ssl/TrustManagerFactory;
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    return-object v2

    .line 180
    .end local v0    # "kManagers":[Ljavax/net/ssl/KeyManager;
    .end local v1    # "tManagers":[Ljavax/net/ssl/TrustManager;
    .end local v2    # "newSslContext":Ljavax/net/ssl/SSLContext;
    :catch_0
    move-exception v0

    .line 181
    .local v0, "e":Ljava/security/KeyManagementException;
    sget-object v1, Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;->LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;

    const-string v2, "Failed to initialize the SSLContext"

    invoke-virtual {v1, v2, v0}, Lorg/apache/logging/log4j/status/StatusLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 182
    new-instance v1, Lorg/apache/logging/log4j/core/net/ssl/KeyStoreConfigurationException;

    invoke-direct {v1, v0}, Lorg/apache/logging/log4j/core/net/ssl/KeyStoreConfigurationException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 176
    .end local v0    # "e":Ljava/security/KeyManagementException;
    :catch_1
    move-exception v0

    .line 177
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    sget-object v1, Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;->LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;

    const-string v2, "No Provider supports a TrustManagerFactorySpi implementation for the specified protocol"

    invoke-virtual {v1, v2, v0}, Lorg/apache/logging/log4j/status/StatusLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 178
    new-instance v1, Lorg/apache/logging/log4j/core/net/ssl/TrustStoreConfigurationException;

    invoke-direct {v1, v0}, Lorg/apache/logging/log4j/core/net/ssl/TrustStoreConfigurationException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method private createSslContextBasedOnConfiguration()Ljavax/net/ssl/SSLContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/logging/log4j/core/net/ssl/KeyStoreConfigurationException;,
            Lorg/apache/logging/log4j/core/net/ssl/TrustStoreConfigurationException;
        }
    .end annotation

    .line 126
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;->createSslContext(ZZ)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    return-object v0
.end method

.method private createSslContextWithDefaultKeyManagerFactory()Ljavax/net/ssl/SSLContext;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/logging/log4j/core/net/ssl/TrustStoreConfigurationException;
        }
    .end annotation

    .line 131
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v0, v1}, Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;->createSslContext(ZZ)Ljavax/net/ssl/SSLContext;

    move-result-object v0
    :try_end_0
    .catch Lorg/apache/logging/log4j/core/net/ssl/KeyStoreConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, "dummy":Lorg/apache/logging/log4j/core/net/ssl/KeyStoreConfigurationException;
    sget-object v1, Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;->LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;

    const-string v2, "Exception occurred while using default keystore. This should be a BUG"

    invoke-virtual {v1, v2}, Lorg/apache/logging/log4j/status/StatusLogger;->debug(Ljava/lang/String;)V

    .line 134
    const/4 v1, 0x0

    return-object v1
.end method

.method private createSslContextWithDefaultTrustManagerFactory()Ljavax/net/ssl/SSLContext;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/logging/log4j/core/net/ssl/KeyStoreConfigurationException;
        }
    .end annotation

    .line 140
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, v0, v1}, Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;->createSslContext(ZZ)Ljavax/net/ssl/SSLContext;

    move-result-object v0
    :try_end_0
    .catch Lorg/apache/logging/log4j/core/net/ssl/TrustStoreConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "dummy":Lorg/apache/logging/log4j/core/net/ssl/TrustStoreConfigurationException;
    sget-object v1, Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;->LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;

    const-string v2, "Exception occurred while using default truststore. This should be a BUG"

    invoke-virtual {v1, v2}, Lorg/apache/logging/log4j/status/StatusLogger;->debug(Ljava/lang/String;)V

    .line 144
    const/4 v1, 0x0

    return-object v1
.end method

.method private createSslContextWithKeyStoreFailure()Ljavax/net/ssl/SSLContext;
    .locals 4

    .line 115
    :try_start_0
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;->createSslContextWithDefaultKeyManagerFactory()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 116
    .local v0, "context":Ljavax/net/ssl/SSLContext;
    sget-object v1, Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;->LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;

    const-string v2, "Creating SSLContext with default keystore"

    invoke-virtual {v1, v2}, Lorg/apache/logging/log4j/status/StatusLogger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/logging/log4j/core/net/ssl/TrustStoreConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    goto :goto_0

    .line 118
    .end local v0    # "context":Ljavax/net/ssl/SSLContext;
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Lorg/apache/logging/log4j/core/net/ssl/TrustStoreConfigurationException;
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;->createDefaultSslContext()Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 120
    .local v1, "context":Ljavax/net/ssl/SSLContext;
    sget-object v2, Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;->LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;

    const-string v3, "Creating SSLContext with default configuration"

    invoke-virtual {v2, v3}, Lorg/apache/logging/log4j/status/StatusLogger;->debug(Ljava/lang/String;)V

    move-object v0, v1

    .line 122
    .end local v1    # "context":Ljavax/net/ssl/SSLContext;
    .local v0, "context":Ljavax/net/ssl/SSLContext;
    :goto_0
    return-object v0
.end method

.method private createSslContextWithTrustStoreFailure()Ljavax/net/ssl/SSLContext;
    .locals 4

    .line 101
    :try_start_0
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;->createSslContextWithDefaultTrustManagerFactory()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 102
    .local v0, "context":Ljavax/net/ssl/SSLContext;
    sget-object v1, Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;->LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;

    const-string v2, "Creating SSLContext with default truststore"

    invoke-virtual {v1, v2}, Lorg/apache/logging/log4j/status/StatusLogger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/logging/log4j/core/net/ssl/KeyStoreConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    goto :goto_0

    .line 104
    .end local v0    # "context":Ljavax/net/ssl/SSLContext;
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Lorg/apache/logging/log4j/core/net/ssl/KeyStoreConfigurationException;
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;->createDefaultSslContext()Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 106
    .local v1, "context":Ljavax/net/ssl/SSLContext;
    sget-object v2, Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;->LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;

    const-string v3, "Creating SSLContext with default configuration"

    invoke-virtual {v2, v3}, Lorg/apache/logging/log4j/status/StatusLogger;->debug(Ljava/lang/String;)V

    move-object v0, v1

    .line 108
    .end local v1    # "context":Ljavax/net/ssl/SSLContext;
    .local v0, "context":Ljavax/net/ssl/SSLContext;
    :goto_0
    return-object v0
.end method

.method private loadKeyManagerFactory()Ljavax/net/ssl/KeyManagerFactory;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/logging/log4j/core/net/ssl/KeyStoreConfigurationException;
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;->keyStoreConfig:Lorg/apache/logging/log4j/core/net/ssl/KeyStoreConfiguration;

    if-eqz v0, :cond_0

    .line 209
    :try_start_0
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/net/ssl/KeyStoreConfiguration;->initKeyManagerFactory()Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Ljava/security/UnrecoverableKeyException;
    sget-object v1, Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;->LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;

    const-string v2, "The key cannot be recovered (e.g. the given password is wrong)"

    invoke-virtual {v1, v2, v0}, Lorg/apache/logging/log4j/status/StatusLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 219
    new-instance v1, Lorg/apache/logging/log4j/core/net/ssl/KeyStoreConfigurationException;

    invoke-direct {v1, v0}, Lorg/apache/logging/log4j/core/net/ssl/KeyStoreConfigurationException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 214
    .end local v0    # "e":Ljava/security/UnrecoverableKeyException;
    :catch_1
    move-exception v0

    .line 215
    .local v0, "e":Ljava/security/KeyStoreException;
    sget-object v1, Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;->LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;

    const-string v2, "Failed to initialize the TrustManagerFactory"

    invoke-virtual {v1, v2, v0}, Lorg/apache/logging/log4j/status/StatusLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 216
    new-instance v1, Lorg/apache/logging/log4j/core/net/ssl/KeyStoreConfigurationException;

    invoke-direct {v1, v0}, Lorg/apache/logging/log4j/core/net/ssl/KeyStoreConfigurationException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 211
    .end local v0    # "e":Ljava/security/KeyStoreException;
    :catch_2
    move-exception v0

    .line 212
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    sget-object v1, Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;->LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;

    const-string v2, "The specified algorithm is not available from the specified provider"

    invoke-virtual {v1, v2, v0}, Lorg/apache/logging/log4j/status/StatusLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 213
    new-instance v1, Lorg/apache/logging/log4j/core/net/ssl/KeyStoreConfigurationException;

    invoke-direct {v1, v0}, Lorg/apache/logging/log4j/core/net/ssl/KeyStoreConfigurationException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 205
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_0
    new-instance v0, Lorg/apache/logging/log4j/core/net/ssl/KeyStoreConfigurationException;

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "The keyStoreConfiguration is null"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/net/ssl/KeyStoreConfigurationException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method private loadTrustManagerFactory()Ljavax/net/ssl/TrustManagerFactory;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/logging/log4j/core/net/ssl/TrustStoreConfigurationException;
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;->trustStoreConfig:Lorg/apache/logging/log4j/core/net/ssl/TrustStoreConfiguration;

    if-eqz v0, :cond_0

    .line 192
    :try_start_0
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/net/ssl/TrustStoreConfiguration;->initTrustManagerFactory()Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Ljava/security/KeyStoreException;
    sget-object v1, Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;->LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;

    const-string v2, "Failed to initialize the TrustManagerFactory"

    invoke-virtual {v1, v2, v0}, Lorg/apache/logging/log4j/status/StatusLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 199
    new-instance v1, Lorg/apache/logging/log4j/core/net/ssl/TrustStoreConfigurationException;

    invoke-direct {v1, v0}, Lorg/apache/logging/log4j/core/net/ssl/TrustStoreConfigurationException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 194
    .end local v0    # "e":Ljava/security/KeyStoreException;
    :catch_1
    move-exception v0

    .line 195
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    sget-object v1, Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;->LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;

    const-string v2, "The specified algorithm is not available from the specified provider"

    invoke-virtual {v1, v2, v0}, Lorg/apache/logging/log4j/status/StatusLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 196
    new-instance v1, Lorg/apache/logging/log4j/core/net/ssl/TrustStoreConfigurationException;

    invoke-direct {v1, v0}, Lorg/apache/logging/log4j/core/net/ssl/TrustStoreConfigurationException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 188
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_0
    new-instance v0, Lorg/apache/logging/log4j/core/net/ssl/TrustStoreConfigurationException;

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "The trustStoreConfiguration is null"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/net/ssl/TrustStoreConfigurationException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method


# virtual methods
.method public clearSecrets()V
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;->keyStoreConfig:Lorg/apache/logging/log4j/core/net/ssl/KeyStoreConfiguration;

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/net/ssl/KeyStoreConfiguration;->clearSecrets()V

    .line 68
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;->trustStoreConfig:Lorg/apache/logging/log4j/core/net/ssl/TrustStoreConfiguration;

    if-eqz v0, :cond_1

    .line 69
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/net/ssl/TrustStoreConfiguration;->clearSecrets()V

    .line 71
    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "obj"
        }
    .end annotation

    .line 268
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 269
    return v0

    .line 271
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 272
    return v1

    .line 274
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 275
    return v1

    .line 277
    :cond_2
    move-object v2, p1

    check-cast v2, Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;

    .line 278
    .local v2, "other":Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;
    iget-object v3, p0, Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;->keyStoreConfig:Lorg/apache/logging/log4j/core/net/ssl/KeyStoreConfiguration;

    iget-object v4, v2, Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;->keyStoreConfig:Lorg/apache/logging/log4j/core/net/ssl/KeyStoreConfiguration;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 279
    return v1

    .line 281
    :cond_3
    iget-object v3, p0, Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;->protocol:Ljava/lang/String;

    iget-object v4, v2, Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;->protocol:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 282
    return v1

    .line 284
    :cond_4
    iget-object v3, p0, Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;->sslContext:Ljavax/net/ssl/SSLContext;

    iget-object v4, v2, Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;->sslContext:Ljavax/net/ssl/SSLContext;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 285
    return v1

    .line 287
    :cond_5
    iget-object v3, p0, Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;->trustStoreConfig:Lorg/apache/logging/log4j/core/net/ssl/TrustStoreConfiguration;

    iget-object v4, v2, Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;->trustStoreConfig:Lorg/apache/logging/log4j/core/net/ssl/TrustStoreConfiguration;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 288
    return v1

    .line 290
    :cond_6
    return v0
.end method

.method public getKeyStoreConfig()Lorg/apache/logging/log4j/core/net/ssl/KeyStoreConfiguration;
    .locals 1

    .line 294
    iget-object v0, p0, Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;->keyStoreConfig:Lorg/apache/logging/log4j/core/net/ssl/KeyStoreConfiguration;

    return-object v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    .line 306
    iget-object v0, p0, Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;->protocol:Ljava/lang/String;

    return-object v0
.end method

.method public getSslContext()Ljavax/net/ssl/SSLContext;
    .locals 1

    .line 302
    iget-object v0, p0, Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;->sslContext:Ljavax/net/ssl/SSLContext;

    return-object v0
.end method

.method public getSslServerSocketFactory()Ljavax/net/ssl/SSLServerSocketFactory;
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;->sslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getServerSocketFactory()Ljavax/net/ssl/SSLServerSocketFactory;

    move-result-object v0

    return-object v0
.end method

.method public getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;->sslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    return-object v0
.end method

.method public getTrustStoreConfig()Lorg/apache/logging/log4j/core/net/ssl/TrustStoreConfiguration;
    .locals 1

    .line 298
    iget-object v0, p0, Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;->trustStoreConfig:Lorg/apache/logging/log4j/core/net/ssl/TrustStoreConfiguration;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 263
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;->keyStoreConfig:Lorg/apache/logging/log4j/core/net/ssl/KeyStoreConfiguration;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;->protocol:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;->sslContext:Ljavax/net/ssl/SSLContext;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;->trustStoreConfig:Lorg/apache/logging/log4j/core/net/ssl/TrustStoreConfiguration;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isVerifyHostName()Z
    .locals 1

    .line 310
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;->verifyHostName:Z

    return v0
.end method
