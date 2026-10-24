.class public Lorg/apache/logging/log4j/core/lookup/Log4jLookup;
.super Lorg/apache/logging/log4j/core/lookup/AbstractConfigurationAwareLookup;
.source "Log4jLookup.java"


# annotations
.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Lookup"
    name = "log4j"
.end annotation


# static fields
.field public static final KEY_CONFIG_LOCATION:Ljava/lang/String; = "configLocation"

.field public static final KEY_CONFIG_PARENT_LOCATION:Ljava/lang/String; = "configParentLocation"

.field private static final LOGGER:Lorg/apache/logging/log4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/lookup/Log4jLookup;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/lookup/AbstractConfigurationAwareLookup;-><init>()V

    return-void
.end method

.method private static asPath(Ljava/net/URI;)Ljava/lang/String;
    .locals 2
    .param p0, "uri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "uri"
        }
    .end annotation

    .line 41
    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 42
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getParent(Ljava/net/URI;)Ljava/net/URI;
    .locals 4
    .param p0, "uri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "uri"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 48
    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "s":Ljava/lang/String;
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 50
    .local v1, "offset":I
    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    .line 51
    new-instance v2, Ljava/net/URI;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    return-object v2

    .line 53
    :cond_0
    new-instance v2, Ljava/net/URI;

    const-string v3, "../"

    invoke-direct {v2, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method public lookup(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "event",
            "key"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lorg/apache/logging/log4j/core/lookup/Log4jLookup;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    .line 59
    iget-object v0, p0, Lorg/apache/logging/log4j/core/lookup/Log4jLookup;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/config/Configuration;->getConfigurationSource()Lorg/apache/logging/log4j/core/config/ConfigurationSource;

    move-result-object v0

    .line 60
    .local v0, "configSrc":Lorg/apache/logging/log4j/core/config/ConfigurationSource;
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->getFile()Ljava/io/File;

    move-result-object v2

    .line 61
    .local v2, "file":Ljava/io/File;
    const/4 v3, 0x0

    const-string v4, "configParentLocation"

    const-string v5, "configLocation"

    const v6, -0x3d0ac99f

    const v7, -0x4c24dae9

    const/4 v8, -0x1

    const/4 v9, 0x1

    if-eqz v2, :cond_5

    .line 62
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v10

    if-eq v10, v7, :cond_2

    if-eq v10, v6, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v9

    goto :goto_1

    :cond_2
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :goto_0
    move v3, v8

    :goto_1
    if-eqz v3, :cond_4

    if-eq v3, v9, :cond_3

    .line 70
    return-object v1

    .line 67
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 64
    :cond_4
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 74
    :cond_5
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->getURL()Ljava/net/URL;

    move-result-object v10

    .line 75
    .local v10, "url":Ljava/net/URL;
    if-eqz v10, :cond_b

    .line 77
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v11

    if-eq v11, v7, :cond_8

    if-eq v11, v6, :cond_7

    :cond_6
    goto :goto_2

    :cond_7
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v9

    goto :goto_3

    :cond_8
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_3

    :goto_2
    move v3, v8

    :goto_3
    if-eqz v3, :cond_a

    if-eq v3, v9, :cond_9

    .line 85
    return-object v1

    .line 82
    :cond_9
    invoke-virtual {v10}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/logging/log4j/core/lookup/Log4jLookup;->getParent(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/logging/log4j/core/lookup/Log4jLookup;->asPath(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 79
    :cond_a
    invoke-virtual {v10}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/logging/log4j/core/lookup/Log4jLookup;->asPath(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 87
    :catch_0
    move-exception v3

    .line 88
    .local v3, "use":Ljava/net/URISyntaxException;
    sget-object v4, Lorg/apache/logging/log4j/core/lookup/Log4jLookup;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v4, v3}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/Object;)V

    .line 93
    .end local v0    # "configSrc":Lorg/apache/logging/log4j/core/config/ConfigurationSource;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "use":Ljava/net/URISyntaxException;
    .end local v10    # "url":Ljava/net/URL;
    :cond_b
    return-object v1
.end method
