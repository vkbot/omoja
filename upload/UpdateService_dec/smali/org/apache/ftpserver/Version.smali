.class public Lorg/apache/ftpserver/Version;
.super Ljava/lang/Object;
.source "Version.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 5

    .line 40
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 41
    .local v0, "props":Ljava/util/Properties;
    const/4 v1, 0x0

    .line 44
    .local v1, "in":Ljava/io/InputStream;
    :try_start_0
    const-class v2, Lorg/apache/ftpserver/Version;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-string v3, "org/apache/ftpserver/ftpserver.properties"

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    move-object v1, v2

    .line 45
    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 46
    const-string v2, "ftpserver.version"

    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    invoke-static {v1}, Lorg/apache/ftpserver/util/IoUtils;->close(Ljava/io/InputStream;)V

    .line 46
    return-object v2

    .line 50
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 47
    :catch_0
    move-exception v2

    .line 48
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Failed to read version"

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "props":Ljava/util/Properties;
    .end local v1    # "in":Ljava/io/InputStream;
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "props":Ljava/util/Properties;
    .restart local v1    # "in":Ljava/io/InputStream;
    :goto_0
    invoke-static {v1}, Lorg/apache/ftpserver/util/IoUtils;->close(Ljava/io/InputStream;)V

    .line 51
    throw v2
.end method
