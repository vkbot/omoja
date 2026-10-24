.class public Lorg/apache/ftpserver/ssl/SslConfigurationFactory;
.super Ljava/lang/Object;
.source "SslConfigurationFactory.java"


# instance fields
.field private final LOG:Lorg/slf4j/Logger;

.field private clientAuth:Lorg/apache/ftpserver/ssl/ClientAuth;

.field private enabledCipherSuites:[Ljava/lang/String;

.field private keyAlias:Ljava/lang/String;

.field private keyPass:Ljava/lang/String;

.field private keystoreAlgorithm:Ljava/lang/String;

.field private keystoreFile:Ljava/io/File;

.field private keystorePass:Ljava/lang/String;

.field private keystoreType:Ljava/lang/String;

.field private sslProtocol:Ljava/lang/String;

.field private trustStoreAlgorithm:Ljava/lang/String;

.field private trustStoreFile:Ljava/io/File;

.field private trustStorePass:Ljava/lang/String;

.field private trustStoreType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-class v0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->LOG:Lorg/slf4j/Logger;

    .line 47
    new-instance v0, Ljava/io/File;

    const-string v1, "./res/.keystore"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->keystoreFile:Ljava/io/File;

    .line 51
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->keystoreType:Ljava/lang/String;

    .line 53
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->keystoreAlgorithm:Ljava/lang/String;

    .line 59
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->trustStoreType:Ljava/lang/String;

    .line 61
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->trustStoreAlgorithm:Ljava/lang/String;

    .line 63
    const-string v0, "TLSv1.2"

    iput-object v0, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->sslProtocol:Ljava/lang/String;

    .line 65
    sget-object v0, Lorg/apache/ftpserver/ssl/ClientAuth;->NONE:Lorg/apache/ftpserver/ssl/ClientAuth;

    iput-object v0, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->clientAuth:Lorg/apache/ftpserver/ssl/ClientAuth;

    return-void
.end method

.method private loadStore(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;
    .locals 4
    .param p1, "storeFile"    # Ljava/io/File;
    .param p2, "storeType"    # Ljava/lang/String;
    .param p3, "storePass"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 297
    const/4 v0, 0x0

    .line 299
    .local v0, "fin":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 300
    iget-object v1, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Trying to load store from file"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 301
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v1

    goto :goto_0

    .line 303
    :cond_0
    iget-object v1, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Trying to load store from classpath"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 304
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    move-object v0, v1

    .line 306
    if-eqz v0, :cond_1

    .line 311
    :goto_0
    invoke-static {p2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    .line 312
    .local v1, "store":Ljava/security/KeyStore;
    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    nop

    .line 316
    invoke-static {v0}, Lorg/apache/ftpserver/util/IoUtils;->close(Ljava/io/InputStream;)V

    .line 314
    return-object v1

    .line 307
    .end local v1    # "store":Ljava/security/KeyStore;
    :cond_1
    :try_start_1
    new-instance v1, Lorg/apache/ftpserver/FtpServerConfigurationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Key store could not be loaded from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/ftpserver/FtpServerConfigurationException;-><init>(Ljava/lang/String;)V

    .end local v0    # "fin":Ljava/io/InputStream;
    .end local p0    # "this":Lorg/apache/ftpserver/ssl/SslConfigurationFactory;
    .end local p1    # "storeFile":Ljava/io/File;
    .end local p2    # "storeType":Ljava/lang/String;
    .end local p3    # "storePass":Ljava/lang/String;
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 316
    .restart local v0    # "fin":Ljava/io/InputStream;
    .restart local p0    # "this":Lorg/apache/ftpserver/ssl/SslConfigurationFactory;
    .restart local p1    # "storeFile":Ljava/io/File;
    .restart local p2    # "storeType":Ljava/lang/String;
    .restart local p3    # "storePass":Ljava/lang/String;
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lorg/apache/ftpserver/util/IoUtils;->close(Ljava/io/InputStream;)V

    .line 317
    throw v1
.end method


# virtual methods
.method public createSslConfiguration()Lorg/apache/ftpserver/ssl/SslConfiguration;
    .locals 13

    .line 328
    :try_start_0
    iget-object v0, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Loading key store from \"{}\", using the key store type \"{}\""

    iget-object v2, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->keystoreFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->keystoreType:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 329
    iget-object v0, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->keystoreFile:Ljava/io/File;

    iget-object v1, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->keystoreType:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->keystorePass:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->loadStore(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 333
    .local v0, "keyStore":Ljava/security/KeyStore;
    iget-object v1, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->trustStoreFile:Ljava/io/File;

    if-eqz v1, :cond_0

    .line 334
    iget-object v1, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Loading trust store from \"{}\", using the key store type \"{}\""

    iget-object v3, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->trustStoreFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->trustStoreType:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 335
    iget-object v1, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->trustStoreFile:Ljava/io/File;

    iget-object v2, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->trustStoreType:Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->trustStorePass:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->loadStore(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    .local v1, "trustStore":Ljava/security/KeyStore;
    goto :goto_0

    .line 337
    .end local v1    # "trustStore":Ljava/security/KeyStore;
    :cond_0
    move-object v1, v0

    .line 342
    .restart local v1    # "trustStore":Ljava/security/KeyStore;
    :goto_0
    iget-object v2, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->keyPass:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 343
    iget-object v2, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->keystorePass:Ljava/lang/String;

    .local v2, "keyPassToUse":Ljava/lang/String;
    goto :goto_1

    .line 345
    .end local v2    # "keyPassToUse":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->keyPass:Ljava/lang/String;

    .line 349
    .restart local v2    # "keyPassToUse":Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->keystoreAlgorithm:Ljava/lang/String;

    invoke-static {v3}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v3

    .line 350
    .local v3, "keyManagerFactory":Ljavax/net/ssl/KeyManagerFactory;
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 353
    iget-object v4, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->trustStoreAlgorithm:Ljava/lang/String;

    invoke-static {v4}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v4

    move-object v11, v4

    .line 354
    .local v11, "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    invoke-virtual {v11, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 356
    new-instance v12, Lorg/apache/ftpserver/ssl/impl/DefaultSslConfiguration;

    iget-object v7, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->clientAuth:Lorg/apache/ftpserver/ssl/ClientAuth;

    iget-object v8, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->sslProtocol:Ljava/lang/String;

    iget-object v9, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->enabledCipherSuites:[Ljava/lang/String;

    iget-object v10, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->keyAlias:Ljava/lang/String;

    move-object v4, v12

    move-object v5, v3

    move-object v6, v11

    invoke-direct/range {v4 .. v10}, Lorg/apache/ftpserver/ssl/impl/DefaultSslConfiguration;-><init>(Ljavax/net/ssl/KeyManagerFactory;Ljavax/net/ssl/TrustManagerFactory;Lorg/apache/ftpserver/ssl/ClientAuth;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v12

    .line 358
    .end local v0    # "keyStore":Ljava/security/KeyStore;
    .end local v1    # "trustStore":Ljava/security/KeyStore;
    .end local v2    # "keyPassToUse":Ljava/lang/String;
    .end local v3    # "keyManagerFactory":Ljavax/net/ssl/KeyManagerFactory;
    .end local v11    # "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    :catch_0
    move-exception v0

    .line 359
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v1, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->LOG:Lorg/slf4j/Logger;

    const-string v2, "DefaultSsl.configure()"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 360
    new-instance v1, Lorg/apache/ftpserver/FtpServerConfigurationException;

    invoke-direct {v1, v2, v0}, Lorg/apache/ftpserver/FtpServerConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getClientAuth()Lorg/apache/ftpserver/ssl/ClientAuth;
    .locals 1

    .line 371
    iget-object v0, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->clientAuth:Lorg/apache/ftpserver/ssl/ClientAuth;

    return-object v0
.end method

.method public getEnabledCipherSuites()[Ljava/lang/String;
    .locals 1

    .line 381
    iget-object v0, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->enabledCipherSuites:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 382
    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    .line 384
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getKeyAlias()Ljava/lang/String;
    .locals 1

    .line 408
    iget-object v0, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->keyAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyPassword()Ljava/lang/String;
    .locals 1

    .line 207
    iget-object v0, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->keyPass:Ljava/lang/String;

    return-object v0
.end method

.method public getKeystoreAlgorithm()Ljava/lang/String;
    .locals 1

    .line 144
    iget-object v0, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->keystoreAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getKeystoreFile()Ljava/io/File;
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->keystoreFile:Ljava/io/File;

    return-object v0
.end method

.method public getKeystorePassword()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->keystorePass:Ljava/lang/String;

    return-object v0
.end method

.method public getKeystoreType()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->keystoreType:Ljava/lang/String;

    return-object v0
.end method

.method public getSslProtocol()Ljava/lang/String;
    .locals 1

    .line 167
    iget-object v0, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->sslProtocol:Ljava/lang/String;

    return-object v0
.end method

.method public getTruststoreAlgorithm()Ljava/lang/String;
    .locals 1

    .line 283
    iget-object v0, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->trustStoreAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getTruststoreFile()Ljava/io/File;
    .locals 1

    .line 226
    iget-object v0, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->trustStoreFile:Ljava/io/File;

    return-object v0
.end method

.method public getTruststorePassword()Ljava/lang/String;
    .locals 1

    .line 245
    iget-object v0, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->trustStorePass:Ljava/lang/String;

    return-object v0
.end method

.method public getTruststoreType()Ljava/lang/String;
    .locals 1

    .line 264
    iget-object v0, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->trustStoreType:Ljava/lang/String;

    return-object v0
.end method

.method public setClientAuthentication(Ljava/lang/String;)V
    .locals 1
    .param p1, "clientAuthReqd"    # Ljava/lang/String;

    .line 192
    const-string v0, "true"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "yes"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "need"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 194
    :cond_0
    const-string v0, "want"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    sget-object v0, Lorg/apache/ftpserver/ssl/ClientAuth;->WANT:Lorg/apache/ftpserver/ssl/ClientAuth;

    iput-object v0, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->clientAuth:Lorg/apache/ftpserver/ssl/ClientAuth;

    goto :goto_1

    .line 197
    :cond_1
    sget-object v0, Lorg/apache/ftpserver/ssl/ClientAuth;->NONE:Lorg/apache/ftpserver/ssl/ClientAuth;

    iput-object v0, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->clientAuth:Lorg/apache/ftpserver/ssl/ClientAuth;

    goto :goto_1

    .line 193
    :cond_2
    :goto_0
    sget-object v0, Lorg/apache/ftpserver/ssl/ClientAuth;->NEED:Lorg/apache/ftpserver/ssl/ClientAuth;

    iput-object v0, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->clientAuth:Lorg/apache/ftpserver/ssl/ClientAuth;

    .line 199
    :goto_1
    return-void
.end method

.method public setEnabledCipherSuites([Ljava/lang/String;)V
    .locals 1
    .param p1, "enabledCipherSuites"    # [Ljava/lang/String;

    .line 395
    if-eqz p1, :cond_0

    .line 396
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->enabledCipherSuites:[Ljava/lang/String;

    goto :goto_0

    .line 398
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->enabledCipherSuites:[Ljava/lang/String;

    .line 400
    :goto_0
    return-void
.end method

.method public setKeyAlias(Ljava/lang/String;)V
    .locals 0
    .param p1, "keyAlias"    # Ljava/lang/String;

    .line 419
    iput-object p1, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->keyAlias:Ljava/lang/String;

    .line 420
    return-void
.end method

.method public setKeyPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "keyPass"    # Ljava/lang/String;

    .line 217
    iput-object p1, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->keyPass:Ljava/lang/String;

    .line 218
    return-void
.end method

.method public setKeystoreAlgorithm(Ljava/lang/String;)V
    .locals 2
    .param p1, "keystoreAlgorithm"    # Ljava/lang/String;

    .line 154
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iput-object p1, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->keystoreAlgorithm:Ljava/lang/String;

    .line 159
    return-void

    .line 155
    :cond_0
    new-instance v0, Lorg/apache/ftpserver/FtpServerConfigurationException;

    const-string v1, "KeystoreAlgorithm must not be null or zero length"

    invoke-direct {v0, v1}, Lorg/apache/ftpserver/FtpServerConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setKeystoreFile(Ljava/io/File;)V
    .locals 4
    .param p1, "keyStoreFile"    # Ljava/io/File;

    .line 89
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 93
    iput-object p1, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->keystoreFile:Ljava/io/File;

    .line 94
    return-void

    .line 90
    :cond_0
    new-instance v0, Lorg/apache/ftpserver/FtpServerConfigurationException;

    const-string v1, "KeystoreFile must not be null or zero length"

    invoke-direct {v0, v1}, Lorg/apache/ftpserver/FtpServerConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setKeystorePassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "keystorePass"    # Ljava/lang/String;

    .line 112
    iput-object p1, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->keystorePass:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setKeystoreType(Ljava/lang/String;)V
    .locals 2
    .param p1, "keystoreType"    # Ljava/lang/String;

    .line 131
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iput-object p1, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->keystoreType:Ljava/lang/String;

    .line 136
    return-void

    .line 132
    :cond_0
    new-instance v0, Lorg/apache/ftpserver/FtpServerConfigurationException;

    const-string v1, "KeystoreType must not be null or zero length"

    invoke-direct {v0, v1}, Lorg/apache/ftpserver/FtpServerConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSslProtocol(Ljava/lang/String;)V
    .locals 2
    .param p1, "sslProtocol"    # Ljava/lang/String;

    .line 177
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    iput-object p1, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->sslProtocol:Ljava/lang/String;

    .line 182
    return-void

    .line 178
    :cond_0
    new-instance v0, Lorg/apache/ftpserver/FtpServerConfigurationException;

    const-string v1, "SslProcotol must not be null or zero length"

    invoke-direct {v0, v1}, Lorg/apache/ftpserver/FtpServerConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTruststoreAlgorithm(Ljava/lang/String;)V
    .locals 0
    .param p1, "trustStoreAlgorithm"    # Ljava/lang/String;

    .line 293
    iput-object p1, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->trustStoreAlgorithm:Ljava/lang/String;

    .line 294
    return-void
.end method

.method public setTruststoreFile(Ljava/io/File;)V
    .locals 0
    .param p1, "trustStoreFile"    # Ljava/io/File;

    .line 236
    iput-object p1, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->trustStoreFile:Ljava/io/File;

    .line 237
    return-void
.end method

.method public setTruststorePassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "trustStorePass"    # Ljava/lang/String;

    .line 255
    iput-object p1, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->trustStorePass:Ljava/lang/String;

    .line 256
    return-void
.end method

.method public setTruststoreType(Ljava/lang/String;)V
    .locals 0
    .param p1, "trustStoreType"    # Ljava/lang/String;

    .line 274
    iput-object p1, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->trustStoreType:Ljava/lang/String;

    .line 275
    return-void
.end method
