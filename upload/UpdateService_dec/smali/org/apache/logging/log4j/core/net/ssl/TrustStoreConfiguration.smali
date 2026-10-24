.class public Lorg/apache/logging/log4j/core/net/ssl/TrustStoreConfiguration;
.super Lorg/apache/logging/log4j/core/net/ssl/AbstractKeyStoreConfiguration;
.source "TrustStoreConfiguration.java"


# annotations
.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    name = "TrustStore"
    printObject = true
.end annotation


# instance fields
.field private final trustManagerFactoryAlgorithm:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "keyStoreType"    # Ljava/lang/String;
    .param p4, "trustManagerFactoryAlgorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "location",
            "password",
            "keyStoreType",
            "trustManagerFactoryAlgorithm"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/logging/log4j/core/net/ssl/StoreConfigurationException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 66
    new-instance v0, Lorg/apache/logging/log4j/core/net/ssl/MemoryPasswordProvider;

    if-nez p2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    :goto_0
    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/net/ssl/MemoryPasswordProvider;-><init>([C)V

    invoke-direct {p0, p1, v0, p3, p4}, Lorg/apache/logging/log4j/core/net/ssl/TrustStoreConfiguration;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/net/ssl/PasswordProvider;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/net/ssl/PasswordProvider;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "passwordProvider"    # Lorg/apache/logging/log4j/core/net/ssl/PasswordProvider;
    .param p3, "keyStoreType"    # Ljava/lang/String;
    .param p4, "trustManagerFactoryAlgorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "location",
            "passwordProvider",
            "keyStoreType",
            "trustManagerFactoryAlgorithm"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/logging/log4j/core/net/ssl/StoreConfigurationException;
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/logging/log4j/core/net/ssl/AbstractKeyStoreConfiguration;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/net/ssl/PasswordProvider;Ljava/lang/String;)V

    .line 44
    if-nez p4, :cond_0

    .line 45
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p4

    :goto_0
    iput-object v0, p0, Lorg/apache/logging/log4j/core/net/ssl/TrustStoreConfiguration;->trustManagerFactoryAlgorithm:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[CLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "password"    # [C
    .param p3, "keyStoreType"    # Ljava/lang/String;
    .param p4, "trustManagerFactoryAlgorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "location",
            "password",
            "keyStoreType",
            "trustManagerFactoryAlgorithm"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/logging/log4j/core/net/ssl/StoreConfigurationException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 54
    new-instance v0, Lorg/apache/logging/log4j/core/net/ssl/MemoryPasswordProvider;

    invoke-direct {v0, p2}, Lorg/apache/logging/log4j/core/net/ssl/MemoryPasswordProvider;-><init>([C)V

    invoke-direct {p0, p1, v0, p3, p4}, Lorg/apache/logging/log4j/core/net/ssl/TrustStoreConfiguration;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/net/ssl/PasswordProvider;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    if-eqz p2, :cond_0

    .line 56
    const/4 v0, 0x0

    invoke-static {p2, v0}, Ljava/util/Arrays;->fill([CC)V

    .line 58
    :cond_0
    return-void
.end method

.method public static createKeyStoreConfiguration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/core/net/ssl/TrustStoreConfiguration;
    .locals 7
    .param p0, "location"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "keyStoreType"    # Ljava/lang/String;
    .param p3, "trustManagerFactoryAlgorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "location",
            "password",
            "keyStoreType",
            "trustManagerFactoryAlgorithm"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/logging/log4j/core/net/ssl/StoreConfigurationException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 150
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    :goto_0
    move-object v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Lorg/apache/logging/log4j/core/net/ssl/TrustStoreConfiguration;->createKeyStoreConfiguration(Ljava/lang/String;[CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/core/net/ssl/TrustStoreConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public static createKeyStoreConfiguration(Ljava/lang/String;[CLjava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/core/net/ssl/TrustStoreConfiguration;
    .locals 6
    .param p0, "location"    # Ljava/lang/String;
    .param p1, "password"    # [C
    .param p2, "keyStoreType"    # Ljava/lang/String;
    .param p3, "trustManagerFactoryAlgorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "location",
            "password",
            "keyStoreType",
            "trustManagerFactoryAlgorithm"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/logging/log4j/core/net/ssl/StoreConfigurationException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 127
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lorg/apache/logging/log4j/core/net/ssl/TrustStoreConfiguration;->createKeyStoreConfiguration(Ljava/lang/String;[CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/core/net/ssl/TrustStoreConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public static createKeyStoreConfiguration(Ljava/lang/String;[CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/core/net/ssl/TrustStoreConfiguration;
    .locals 3
    .param p0, "location"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "location"
        .end annotation
    .end param
    .param p1, "password"    # [C
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            sensitive = true
            value = "password"
        .end annotation
    .end param
    .param p2, "passwordEnvironmentVariable"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "passwordEnvironmentVariable"
        .end annotation
    .end param
    .param p3, "passwordFile"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "passwordFile"
        .end annotation
    .end param
    .param p4, "keyStoreType"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "type"
        .end annotation
    .end param
    .param p5, "trustManagerFactoryAlgorithm"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "trustManagerFactoryAlgorithm"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "location",
            "password",
            "passwordEnvironmentVariable",
            "passwordFile",
            "keyStoreType",
            "trustManagerFactoryAlgorithm"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/logging/log4j/core/net/ssl/StoreConfigurationException;
        }
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginFactory;
    .end annotation

    .line 95
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You MUST set only one of \'password\', \'passwordEnvironmentVariable\' or \'passwordFile\'."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    :try_start_0
    new-instance v0, Lorg/apache/logging/log4j/core/net/ssl/FilePasswordProvider;

    invoke-direct {v0, p3}, Lorg/apache/logging/log4j/core/net/ssl/FilePasswordProvider;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 111
    :catch_0
    move-exception v0

    goto :goto_2

    .line 100
    :cond_2
    if-eqz p2, :cond_3

    new-instance v0, Lorg/apache/logging/log4j/core/net/ssl/EnvironmentPasswordProvider;

    invoke-direct {v0, p2}, Lorg/apache/logging/log4j/core/net/ssl/EnvironmentPasswordProvider;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    new-instance v0, Lorg/apache/logging/log4j/core/net/ssl/MemoryPasswordProvider;

    invoke-direct {v0, p1}, Lorg/apache/logging/log4j/core/net/ssl/MemoryPasswordProvider;-><init>([C)V

    .line 107
    .local v0, "provider":Lorg/apache/logging/log4j/core/net/ssl/PasswordProvider;
    :goto_1
    if-eqz p1, :cond_4

    .line 108
    const/4 v1, 0x0

    invoke-static {p1, v1}, Ljava/util/Arrays;->fill([CC)V

    .line 110
    :cond_4
    new-instance v1, Lorg/apache/logging/log4j/core/net/ssl/TrustStoreConfiguration;

    invoke-direct {v1, p0, v0, p4, p5}, Lorg/apache/logging/log4j/core/net/ssl/TrustStoreConfiguration;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/net/ssl/PasswordProvider;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 112
    .local v0, "ex":Ljava/lang/Exception;
    :goto_2
    new-instance v1, Lorg/apache/logging/log4j/core/net/ssl/StoreConfigurationException;

    const-string v2, "Could not configure TrustStore"

    invoke-direct {v1, v2, v0}, Lorg/apache/logging/log4j/core/net/ssl/StoreConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
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

    .line 171
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 172
    return v0

    .line 174
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/logging/log4j/core/net/ssl/AbstractKeyStoreConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 175
    return v2

    .line 177
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v1, v3, :cond_2

    .line 178
    return v2

    .line 180
    :cond_2
    move-object v1, p1

    check-cast v1, Lorg/apache/logging/log4j/core/net/ssl/TrustStoreConfiguration;

    .line 181
    .local v1, "other":Lorg/apache/logging/log4j/core/net/ssl/TrustStoreConfiguration;
    iget-object v3, p0, Lorg/apache/logging/log4j/core/net/ssl/TrustStoreConfiguration;->trustManagerFactoryAlgorithm:Ljava/lang/String;

    iget-object v4, v1, Lorg/apache/logging/log4j/core/net/ssl/TrustStoreConfiguration;->trustManagerFactoryAlgorithm:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 182
    return v2

    .line 184
    :cond_3
    return v0
.end method

.method public getTrustManagerFactoryAlgorithm()Ljava/lang/String;
    .locals 1

    .line 188
    iget-object v0, p0, Lorg/apache/logging/log4j/core/net/ssl/TrustStoreConfiguration;->trustManagerFactoryAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 162
    const/16 v0, 0x1f

    .line 163
    .local v0, "prime":I
    invoke-super {p0}, Lorg/apache/logging/log4j/core/net/ssl/AbstractKeyStoreConfiguration;->hashCode()I

    move-result v1

    .line 164
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/apache/logging/log4j/core/net/ssl/TrustStoreConfiguration;->trustManagerFactoryAlgorithm:Ljava/lang/String;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    .line 165
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    .line 166
    .end local v1    # "result":I
    .local v2, "result":I
    return v2
.end method

.method public initTrustManagerFactory()Ljavax/net/ssl/TrustManagerFactory;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lorg/apache/logging/log4j/core/net/ssl/TrustStoreConfiguration;->trustManagerFactoryAlgorithm:Ljava/lang/String;

    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    .line 156
    .local v0, "tmFactory":Ljavax/net/ssl/TrustManagerFactory;
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/net/ssl/TrustStoreConfiguration;->getKeyStore()Ljava/security/KeyStore;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 157
    return-object v0
.end method
