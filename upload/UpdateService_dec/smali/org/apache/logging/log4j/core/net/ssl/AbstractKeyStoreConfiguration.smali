.class public Lorg/apache/logging/log4j/core/net/ssl/AbstractKeyStoreConfiguration;
.super Lorg/apache/logging/log4j/core/net/ssl/StoreConfiguration;
.source "AbstractKeyStoreConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/logging/log4j/core/net/ssl/StoreConfiguration<",
        "Ljava/security/KeyStore;",
        ">;"
    }
.end annotation


# instance fields
.field private final keyStore:Ljava/security/KeyStore;

.field private final keyStoreType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "keyStoreType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "location",
            "password",
            "keyStoreType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/logging/log4j/core/net/ssl/StoreConfigurationException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 61
    new-instance v0, Lorg/apache/logging/log4j/core/net/ssl/MemoryPasswordProvider;

    if-nez p2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    :goto_0
    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/net/ssl/MemoryPasswordProvider;-><init>([C)V

    invoke-direct {p0, p1, v0, p3}, Lorg/apache/logging/log4j/core/net/ssl/AbstractKeyStoreConfiguration;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/net/ssl/PasswordProvider;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/net/ssl/PasswordProvider;Ljava/lang/String;)V
    .locals 1
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "passwordProvider"    # Lorg/apache/logging/log4j/core/net/ssl/PasswordProvider;
    .param p3, "keyStoreType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "location",
            "passwordProvider",
            "keyStoreType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/logging/log4j/core/net/ssl/StoreConfigurationException;
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Lorg/apache/logging/log4j/core/net/ssl/StoreConfiguration;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/net/ssl/PasswordProvider;)V

    .line 42
    if-nez p3, :cond_0

    const-string v0, "JKS"

    goto :goto_0

    :cond_0
    move-object v0, p3

    :goto_0
    iput-object v0, p0, Lorg/apache/logging/log4j/core/net/ssl/AbstractKeyStoreConfiguration;->keyStoreType:Ljava/lang/String;

    .line 43
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/net/ssl/AbstractKeyStoreConfiguration;->load()Ljava/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/net/ssl/AbstractKeyStoreConfiguration;->keyStore:Ljava/security/KeyStore;

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[CLjava/lang/String;)V
    .locals 1
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "password"    # [C
    .param p3, "keyStoreType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "location",
            "password",
            "keyStoreType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/logging/log4j/core/net/ssl/StoreConfigurationException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 52
    new-instance v0, Lorg/apache/logging/log4j/core/net/ssl/MemoryPasswordProvider;

    invoke-direct {v0, p2}, Lorg/apache/logging/log4j/core/net/ssl/MemoryPasswordProvider;-><init>([C)V

    invoke-direct {p0, p1, v0, p3}, Lorg/apache/logging/log4j/core/net/ssl/AbstractKeyStoreConfiguration;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/net/ssl/PasswordProvider;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method private openInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .param p1, "filePathOrUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "filePathOrUri"
        }
    .end annotation

    .line 104
    invoke-static {p1}, Lorg/apache/logging/log4j/core/util/NetUtils;->toURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->fromUri(Ljava/net/URI;)Lorg/apache/logging/log4j/core/config/ConfigurationSource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method


# virtual methods
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

    .line 122
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 123
    return v0

    .line 125
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/logging/log4j/core/net/ssl/StoreConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 126
    return v2

    .line 128
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v1, v3, :cond_2

    .line 129
    return v2

    .line 131
    :cond_2
    move-object v1, p1

    check-cast v1, Lorg/apache/logging/log4j/core/net/ssl/AbstractKeyStoreConfiguration;

    .line 132
    .local v1, "other":Lorg/apache/logging/log4j/core/net/ssl/AbstractKeyStoreConfiguration;
    iget-object v3, p0, Lorg/apache/logging/log4j/core/net/ssl/AbstractKeyStoreConfiguration;->keyStore:Ljava/security/KeyStore;

    iget-object v4, v1, Lorg/apache/logging/log4j/core/net/ssl/AbstractKeyStoreConfiguration;->keyStore:Ljava/security/KeyStore;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 133
    return v2

    .line 135
    :cond_3
    iget-object v3, p0, Lorg/apache/logging/log4j/core/net/ssl/AbstractKeyStoreConfiguration;->keyStoreType:Ljava/lang/String;

    iget-object v4, v1, Lorg/apache/logging/log4j/core/net/ssl/AbstractKeyStoreConfiguration;->keyStoreType:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 136
    return v2

    .line 138
    :cond_4
    return v0
.end method

.method public getKeyStore()Ljava/security/KeyStore;
    .locals 1

    .line 108
    iget-object v0, p0, Lorg/apache/logging/log4j/core/net/ssl/AbstractKeyStoreConfiguration;->keyStore:Ljava/security/KeyStore;

    return-object v0
.end method

.method public getKeyStoreType()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lorg/apache/logging/log4j/core/net/ssl/AbstractKeyStoreConfiguration;->keyStoreType:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 113
    const/16 v0, 0x1f

    .line 114
    .local v0, "prime":I
    invoke-super {p0}, Lorg/apache/logging/log4j/core/net/ssl/StoreConfiguration;->hashCode()I

    move-result v1

    .line 115
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/apache/logging/log4j/core/net/ssl/AbstractKeyStoreConfiguration;->keyStore:Ljava/security/KeyStore;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    .line 116
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Lorg/apache/logging/log4j/core/net/ssl/AbstractKeyStoreConfiguration;->keyStoreType:Ljava/lang/String;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    :goto_1
    add-int/2addr v1, v4

    .line 117
    .end local v2    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method protected bridge synthetic load()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/logging/log4j/core/net/ssl/StoreConfigurationException;
        }
    .end annotation

    .line 35
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/net/ssl/AbstractKeyStoreConfiguration;->load()Ljava/security/KeyStore;

    move-result-object v0

    return-object v0
.end method

.method protected load()Ljava/security/KeyStore;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/logging/log4j/core/net/ssl/StoreConfigurationException;
        }
    .end annotation

    .line 66
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/net/ssl/AbstractKeyStoreConfiguration;->getLocation()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "loadLocation":Ljava/lang/String;
    sget-object v1, Lorg/apache/logging/log4j/core/net/ssl/AbstractKeyStoreConfiguration;->LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;

    const-string v2, "Loading keystore from location {}"

    invoke-virtual {v1, v2, v0}, Lorg/apache/logging/log4j/status/StatusLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 69
    if-eqz v0, :cond_4

    .line 72
    :try_start_0
    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/core/net/ssl/AbstractKeyStoreConfiguration;->openInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .local v1, "fin":Ljava/io/InputStream;
    :try_start_1
    iget-object v2, p0, Lorg/apache/logging/log4j/core/net/ssl/AbstractKeyStoreConfiguration;->keyStoreType:Ljava/lang/String;

    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    .line 74
    .local v2, "ks":Ljava/security/KeyStore;
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/net/ssl/AbstractKeyStoreConfiguration;->getPasswordAsCharArray()[C

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 76
    .local v3, "password":[C
    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {v2, v1, v3}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    if-eqz v3, :cond_0

    .line 79
    :try_start_3
    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([CC)V

    .line 82
    :cond_0
    sget-object v4, Lorg/apache/logging/log4j/core/net/ssl/AbstractKeyStoreConfiguration;->LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;

    const-string v5, "KeyStore successfully loaded from location {}"

    invoke-virtual {v4, v5, v0}, Lorg/apache/logging/log4j/status/StatusLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 83
    nop

    .line 84
    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/security/cert/CertificateException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/security/KeyStoreException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 83
    :cond_1
    return-object v2

    .line 78
    :catchall_0
    move-exception v5

    if-eqz v3, :cond_2

    .line 79
    :try_start_5
    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([CC)V

    :cond_2
    nop

    .end local v0    # "loadLocation":Ljava/lang/String;
    .end local v1    # "fin":Ljava/io/InputStream;
    .end local p0    # "this":Lorg/apache/logging/log4j/core/net/ssl/AbstractKeyStoreConfiguration;
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 72
    .end local v2    # "ks":Ljava/security/KeyStore;
    .end local v3    # "password":[C
    .restart local v0    # "loadLocation":Ljava/lang/String;
    .restart local v1    # "fin":Ljava/io/InputStream;
    .restart local p0    # "this":Lorg/apache/logging/log4j/core/net/ssl/AbstractKeyStoreConfiguration;
    :catchall_1
    move-exception v2

    .end local v0    # "loadLocation":Ljava/lang/String;
    .end local v1    # "fin":Ljava/io/InputStream;
    .end local p0    # "this":Lorg/apache/logging/log4j/core/net/ssl/AbstractKeyStoreConfiguration;
    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 84
    .restart local v0    # "loadLocation":Ljava/lang/String;
    .restart local v1    # "fin":Ljava/io/InputStream;
    .restart local p0    # "this":Lorg/apache/logging/log4j/core/net/ssl/AbstractKeyStoreConfiguration;
    :catchall_2
    move-exception v3

    if-eqz v1, :cond_3

    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_0

    :catchall_3
    move-exception v4

    :try_start_8
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "loadLocation":Ljava/lang/String;
    .end local p0    # "this":Lorg/apache/logging/log4j/core/net/ssl/AbstractKeyStoreConfiguration;
    :cond_3
    :goto_0
    throw v3

    .line 97
    .end local v1    # "fin":Ljava/io/InputStream;
    .restart local v0    # "loadLocation":Ljava/lang/String;
    .restart local p0    # "this":Lorg/apache/logging/log4j/core/net/ssl/AbstractKeyStoreConfiguration;
    :catch_0
    move-exception v1

    goto :goto_1

    .line 94
    :catch_1
    move-exception v1

    goto :goto_2

    .line 91
    :catch_2
    move-exception v1

    goto :goto_3

    .line 88
    :catch_3
    move-exception v1

    goto :goto_4

    .line 85
    :catch_4
    move-exception v1

    goto :goto_5

    .line 70
    :cond_4
    new-instance v1, Ljava/io/IOException;

    const-string v2, "The location is null"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "loadLocation":Ljava/lang/String;
    .end local p0    # "this":Lorg/apache/logging/log4j/core/net/ssl/AbstractKeyStoreConfiguration;
    throw v1
    :try_end_8
    .catch Ljava/security/cert/CertificateException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/security/KeyStoreException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 98
    .restart local v0    # "loadLocation":Ljava/lang/String;
    .local v1, "e":Ljava/io/IOException;
    .restart local p0    # "this":Lorg/apache/logging/log4j/core/net/ssl/AbstractKeyStoreConfiguration;
    :goto_1
    sget-object v2, Lorg/apache/logging/log4j/core/net/ssl/AbstractKeyStoreConfiguration;->LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;

    const-string v3, "Something is wrong with the format of the keystore or the given password for location {}"

    invoke-virtual {v2, v3, v0, v1}, Lorg/apache/logging/log4j/status/StatusLogger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 99
    new-instance v2, Lorg/apache/logging/log4j/core/net/ssl/StoreConfigurationException;

    invoke-direct {v2, v0, v1}, Lorg/apache/logging/log4j/core/net/ssl/StoreConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 95
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_2
    sget-object v2, Lorg/apache/logging/log4j/core/net/ssl/AbstractKeyStoreConfiguration;->LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;

    const-string v3, "The keystore file {} is not found"

    invoke-virtual {v2, v3, v0, v1}, Lorg/apache/logging/log4j/status/StatusLogger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 96
    new-instance v2, Lorg/apache/logging/log4j/core/net/ssl/StoreConfigurationException;

    invoke-direct {v2, v0, v1}, Lorg/apache/logging/log4j/core/net/ssl/StoreConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 92
    .local v1, "e":Ljava/security/KeyStoreException;
    :goto_3
    sget-object v2, Lorg/apache/logging/log4j/core/net/ssl/AbstractKeyStoreConfiguration;->LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;

    const-string v3, "KeyStoreException for location {}"

    invoke-virtual {v2, v3, v0, v1}, Lorg/apache/logging/log4j/status/StatusLogger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 93
    new-instance v2, Lorg/apache/logging/log4j/core/net/ssl/StoreConfigurationException;

    invoke-direct {v2, v0, v1}, Lorg/apache/logging/log4j/core/net/ssl/StoreConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 89
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    :goto_4
    sget-object v2, Lorg/apache/logging/log4j/core/net/ssl/AbstractKeyStoreConfiguration;->LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;

    const-string v3, "The algorithm used to check the integrity of the keystore cannot be found for location {}"

    invoke-virtual {v2, v3, v0, v1}, Lorg/apache/logging/log4j/status/StatusLogger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 90
    new-instance v2, Lorg/apache/logging/log4j/core/net/ssl/StoreConfigurationException;

    invoke-direct {v2, v0, v1}, Lorg/apache/logging/log4j/core/net/ssl/StoreConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 86
    .local v1, "e":Ljava/security/cert/CertificateException;
    :goto_5
    sget-object v2, Lorg/apache/logging/log4j/core/net/ssl/AbstractKeyStoreConfiguration;->LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;

    iget-object v3, p0, Lorg/apache/logging/log4j/core/net/ssl/AbstractKeyStoreConfiguration;->keyStoreType:Ljava/lang/String;

    const-string v4, "No Provider supports a KeyStoreSpi implementation for the specified type {} for location {}"

    invoke-virtual {v2, v4, v3, v0, v1}, Lorg/apache/logging/log4j/status/StatusLogger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 87
    new-instance v2, Lorg/apache/logging/log4j/core/net/ssl/StoreConfigurationException;

    invoke-direct {v2, v0, v1}, Lorg/apache/logging/log4j/core/net/ssl/StoreConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method
