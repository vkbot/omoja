.class public Lorg/apache/logging/log4j/util/PropertyFilePropertySource;
.super Lorg/apache/logging/log4j/util/PropertiesPropertySource;
.source "PropertyFilePropertySource.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "fileName"
        }
    .end annotation

    .line 32
    invoke-static {p1}, Lorg/apache/logging/log4j/util/PropertyFilePropertySource;->loadPropertiesFile(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/util/PropertiesPropertySource;-><init>(Ljava/util/Properties;)V

    .line 33
    return-void
.end method

.method private static loadPropertiesFile(Ljava/lang/String;)Ljava/util/Properties;
    .locals 7
    .param p0, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "fileName"
        }
    .end annotation

    .line 36
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 37
    .local v0, "props":Ljava/util/Properties;
    invoke-static {p0}, Lorg/apache/logging/log4j/util/LoaderUtil;->findResources(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/URL;

    .line 38
    .local v2, "url":Ljava/net/URL;
    :try_start_0
    invoke-virtual {v2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .local v3, "in":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v0, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 42
    .end local v3    # "in":Ljava/io/InputStream;
    :cond_0
    goto :goto_2

    .line 38
    .restart local v3    # "in":Ljava/io/InputStream;
    :catchall_0
    move-exception v4

    .end local v0    # "props":Ljava/util/Properties;
    .end local v2    # "url":Ljava/net/URL;
    .end local v3    # "in":Ljava/io/InputStream;
    .end local p0    # "fileName":Ljava/lang/String;
    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 40
    .restart local v0    # "props":Ljava/util/Properties;
    .restart local v2    # "url":Ljava/net/URL;
    .restart local v3    # "in":Ljava/io/InputStream;
    .restart local p0    # "fileName":Ljava/lang/String;
    :catchall_1
    move-exception v5

    if-eqz v3, :cond_1

    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v6

    :try_start_5
    invoke-virtual {v4, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "props":Ljava/util/Properties;
    .end local v2    # "url":Ljava/net/URL;
    .end local p0    # "fileName":Ljava/lang/String;
    :cond_1
    :goto_1
    throw v5
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v0    # "props":Ljava/util/Properties;
    .restart local v2    # "url":Ljava/net/URL;
    .restart local p0    # "fileName":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 41
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to read "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lorg/apache/logging/log4j/util/LowLevelLogUtil;->logException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    .end local v2    # "url":Ljava/net/URL;
    .end local v3    # "e":Ljava/io/IOException;
    :goto_2
    goto :goto_0

    .line 44
    :cond_2
    return-object v0
.end method


# virtual methods
.method public getPriority()I
    .locals 1

    .line 49
    const/4 v0, 0x0

    return v0
.end method
