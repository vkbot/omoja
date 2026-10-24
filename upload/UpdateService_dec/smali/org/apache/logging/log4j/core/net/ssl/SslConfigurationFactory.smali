.class public Lorg/apache/logging/log4j/core/net/ssl/SslConfigurationFactory;
.super Ljava/lang/Object;
.source "SslConfigurationFactory.java"


# static fields
.field private static final LOGGER:Lorg/apache/logging/log4j/Logger;

.field private static final keyStoreKeyManagerFactoryAlgorithm:Ljava/lang/String; = "log4j2.keyStoreKeyManagerFactoryAlgorithm"

.field private static final keyStoreLocation:Ljava/lang/String; = "log4j2.keyStoreLocation"

.field private static final keyStorePassword:Ljava/lang/String; = "log4j2.keyStorePassword"

.field private static final keyStorePasswordEnvVar:Ljava/lang/String; = "log4j2.keyStorePasswordEnvironmentVariable"

.field private static final keyStorePasswordFile:Ljava/lang/String; = "log4j2.keyStorePasswordFile"

.field private static final keyStoreType:Ljava/lang/String; = "log4j2.keyStoreType"

.field private static sslConfiguration:Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration; = null

.field private static final trustStoreKeyManagerFactoryAlgorithm:Ljava/lang/String; = "log4j2.trustStoreKeyManagerFactoryAlgorithm"

.field private static final trustStoreKeyStoreType:Ljava/lang/String; = "log4j2.trustStoreKeyStoreType"

.field private static final trustStorePassword:Ljava/lang/String; = "log4j2.trustStorePassword"

.field private static final trustStorePasswordEnvVar:Ljava/lang/String; = "log4j2.trustStorePasswordEnvironmentVariable"

.field private static final trustStorePasswordFile:Ljava/lang/String; = "log4j2.trustStorePasswordFile"

.field private static final trustStorelocation:Ljava/lang/String; = "log4j2.trustStoreLocation"

.field private static final verifyHostName:Ljava/lang/String; = "log4j2.sslVerifyHostName"


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 28
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/net/ssl/SslConfigurationFactory;->LOGGER:Lorg/apache/logging/log4j/Logger;

    .line 29
    const/4 v0, 0x0

    sput-object v0, Lorg/apache/logging/log4j/core/net/ssl/SslConfigurationFactory;->sslConfiguration:Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;

    .line 46
    invoke-static {}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getProperties()Lorg/apache/logging/log4j/util/PropertiesUtil;

    move-result-object v0

    .line 47
    .local v0, "props":Lorg/apache/logging/log4j/util/PropertiesUtil;
    const/4 v1, 0x0

    .line 48
    .local v1, "keyStoreConfiguration":Lorg/apache/logging/log4j/core/net/ssl/KeyStoreConfiguration;
    const/4 v2, 0x0

    .line 49
    .local v2, "trustStoreConfiguration":Lorg/apache/logging/log4j/core/net/ssl/TrustStoreConfiguration;
    const-string v3, "log4j2.trustStoreLocation"

    invoke-virtual {v0, v3}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 50
    .local v3, "location":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 51
    const-string v4, "log4j2.trustStorePassword"

    invoke-virtual {v0, v4}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 52
    .local v10, "password":Ljava/lang/String;
    const/4 v4, 0x0

    .line 53
    .local v4, "passwordChars":[C
    if-eqz v10, :cond_0

    .line 54
    invoke-virtual {v10}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    move-object v11, v4

    goto :goto_0

    .line 53
    :cond_0
    move-object v11, v4

    .line 57
    .end local v4    # "passwordChars":[C
    .local v11, "passwordChars":[C
    :goto_0
    :try_start_0
    const-string v4, "log4j2.trustStorePasswordEnvironmentVariable"

    .line 58
    invoke-virtual {v0, v4}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v4, "log4j2.trustStorePasswordFile"

    invoke-virtual {v0, v4}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v4, "log4j2.trustStoreKeyStoreType"

    .line 59
    invoke-virtual {v0, v4}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v4, "log4j2.trustStoreKeyManagerFactoryAlgorithm"

    invoke-virtual {v0, v4}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 57
    move-object v4, v3

    move-object v5, v11

    invoke-static/range {v4 .. v9}, Lorg/apache/logging/log4j/core/net/ssl/TrustStoreConfiguration;->createKeyStoreConfiguration(Ljava/lang/String;[CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/core/net/ssl/TrustStoreConfiguration;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v4

    .line 63
    goto :goto_1

    .line 60
    :catch_0
    move-exception v4

    .line 61
    .local v4, "ex":Ljava/lang/Exception;
    sget-object v5, Lorg/apache/logging/log4j/core/net/ssl/SslConfigurationFactory;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 62
    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    .line 61
    const-string v8, "Unable to create trust store configuration due to: {} {}"

    invoke-interface {v5, v8, v6, v7}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 65
    .end local v4    # "ex":Ljava/lang/Exception;
    .end local v10    # "password":Ljava/lang/String;
    .end local v11    # "passwordChars":[C
    :cond_1
    :goto_1
    const-string v4, "log4j2.keyStoreLocation"

    invoke-virtual {v0, v4}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 66
    if-eqz v3, :cond_3

    .line 67
    const-string v4, "log4j2.keyStorePassword"

    invoke-virtual {v0, v4}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 68
    .local v4, "password":Ljava/lang/String;
    const/4 v5, 0x0

    .line 69
    .local v5, "passwordChars":[C
    if-eqz v4, :cond_2

    .line 70
    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    move-object v11, v5

    goto :goto_2

    .line 69
    :cond_2
    move-object v11, v5

    .line 73
    .end local v5    # "passwordChars":[C
    .restart local v11    # "passwordChars":[C
    :goto_2
    :try_start_1
    const-string v5, "log4j2.keyStorePasswordEnvironmentVariable"

    .line 74
    invoke-virtual {v0, v5}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v5, "log4j2.keyStorePasswordFile"

    invoke-virtual {v0, v5}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v5, "log4j2.keyStoreType"

    .line 75
    invoke-virtual {v0, v5}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v5, "log4j2.keyStoreKeyManagerFactoryAlgorithm"

    invoke-virtual {v0, v5}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 73
    move-object v5, v3

    move-object v6, v11

    invoke-static/range {v5 .. v10}, Lorg/apache/logging/log4j/core/net/ssl/KeyStoreConfiguration;->createKeyStoreConfiguration(Ljava/lang/String;[CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/core/net/ssl/KeyStoreConfiguration;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v5

    .line 79
    goto :goto_3

    .line 76
    :catch_1
    move-exception v5

    .line 77
    .local v5, "ex":Ljava/lang/Exception;
    sget-object v6, Lorg/apache/logging/log4j/core/net/ssl/SslConfigurationFactory;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    .line 78
    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    .line 77
    const-string v9, "Unable to create key store configuration due to: {} {}"

    invoke-interface {v6, v9, v7, v8}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 81
    .end local v4    # "password":Ljava/lang/String;
    .end local v5    # "ex":Ljava/lang/Exception;
    .end local v11    # "passwordChars":[C
    :cond_3
    :goto_3
    if-nez v2, :cond_4

    if-eqz v1, :cond_5

    .line 82
    :cond_4
    const/4 v4, 0x0

    const-string v5, "log4j2.sslVerifyHostName"

    invoke-virtual {v0, v5, v4}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v4

    .line 83
    .local v4, "isVerifyHostName":Z
    const-string v5, "https"

    invoke-static {v5, v1, v2, v4}, Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;->createSSLConfiguration(Ljava/lang/String;Lorg/apache/logging/log4j/core/net/ssl/KeyStoreConfiguration;Lorg/apache/logging/log4j/core/net/ssl/TrustStoreConfiguration;Z)Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;

    move-result-object v5

    sput-object v5, Lorg/apache/logging/log4j/core/net/ssl/SslConfigurationFactory;->sslConfiguration:Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;

    .line 86
    .end local v0    # "props":Lorg/apache/logging/log4j/util/PropertiesUtil;
    .end local v1    # "keyStoreConfiguration":Lorg/apache/logging/log4j/core/net/ssl/KeyStoreConfiguration;
    .end local v2    # "trustStoreConfiguration":Lorg/apache/logging/log4j/core/net/ssl/TrustStoreConfiguration;
    .end local v3    # "location":Ljava/lang/String;
    .end local v4    # "isVerifyHostName":Z
    :cond_5
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSslConfiguration()Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;
    .locals 1

    .line 89
    sget-object v0, Lorg/apache/logging/log4j/core/net/ssl/SslConfigurationFactory;->sslConfiguration:Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;

    return-object v0
.end method
