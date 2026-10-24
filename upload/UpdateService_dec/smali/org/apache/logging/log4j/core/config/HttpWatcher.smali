.class public Lorg/apache/logging/log4j/core/config/HttpWatcher;
.super Lorg/apache/logging/log4j/core/util/AbstractWatcher;
.source "HttpWatcher.java"


# annotations
.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Watcher"
    elementType = "watcher"
    name = "http"
    printObject = true
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAliases;
    value = {
        "https"
    }
.end annotation


# static fields
.field private static final BUF_SIZE:I = 0x400

.field private static final HTTP:Ljava/lang/String; = "http"

.field private static final HTTPS:Ljava/lang/String; = "https"

.field private static final NOT_MODIFIED:I = 0x130

.field private static final OK:I = 0xc8


# instance fields
.field private LOGGER:Lorg/apache/logging/log4j/Logger;

.field private volatile lastModifiedMillis:J

.field private sslConfiguration:Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;

.field private url:Ljava/net/URL;


# direct methods
.method public constructor <init>(Lorg/apache/logging/log4j/core/config/Configuration;Lorg/apache/logging/log4j/core/config/Reconfigurable;Ljava/util/List;J)V
    .locals 1
    .param p1, "configuration"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .param p2, "reconfigurable"    # Lorg/apache/logging/log4j/core/config/Reconfigurable;
    .param p4, "lastModifiedMillis"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x0
        }
        names = {
            "configuration",
            "reconfigurable",
            "configurationListeners",
            "lastModifiedMillis"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/config/Configuration;",
            "Lorg/apache/logging/log4j/core/config/Reconfigurable;",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/config/ConfigurationListener;",
            ">;J)V"
        }
    .end annotation

    .line 58
    .local p3, "configurationListeners":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/config/ConfigurationListener;>;"
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/logging/log4j/core/util/AbstractWatcher;-><init>(Lorg/apache/logging/log4j/core/config/Configuration;Lorg/apache/logging/log4j/core/config/Reconfigurable;Ljava/util/List;)V

    .line 45
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/HttpWatcher;->LOGGER:Lorg/apache/logging/log4j/Logger;

    .line 59
    invoke-static {}, Lorg/apache/logging/log4j/core/net/ssl/SslConfigurationFactory;->getSslConfiguration()Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/HttpWatcher;->sslConfiguration:Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;

    .line 60
    iput-wide p4, p0, Lorg/apache/logging/log4j/core/config/HttpWatcher;->lastModifiedMillis:J

    .line 61
    return-void
.end method

.method private readStream(Ljava/io/InputStream;)[B
    .locals 5
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "is"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 147
    .local v0, "result":Ljava/io/ByteArrayOutputStream;
    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 149
    .local v1, "buffer":[B
    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    move v3, v2

    .local v3, "length":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 150
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 152
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method

.method private refreshConfiguration()Z
    .locals 9

    .line 99
    const-string v0, "Error accessing configuration at {}: {}"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lorg/apache/logging/log4j/core/config/HttpWatcher;->url:Ljava/net/URL;

    iget-wide v3, p0, Lorg/apache/logging/log4j/core/config/HttpWatcher;->lastModifiedMillis:J

    iget-object v5, p0, Lorg/apache/logging/log4j/core/config/HttpWatcher;->sslConfiguration:Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;

    invoke-static {v2, v3, v4, v5}, Lorg/apache/logging/log4j/core/net/UrlConnectionFactory;->createConnection(Ljava/net/URL;JLorg/apache/logging/log4j/core/net/ssl/SslConfiguration;)Ljava/net/HttpURLConnection;

    move-result-object v2

    .line 101
    .local v2, "urlConnection":Ljava/net/HttpURLConnection;
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 104
    :try_start_1
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 105
    .local v3, "code":I
    const/16 v4, 0xc8

    if-eq v3, v4, :cond_2

    const/16 v4, 0x130

    if-eq v3, v4, :cond_1

    .line 128
    if-gez v3, :cond_0

    .line 129
    iget-object v4, p0, Lorg/apache/logging/log4j/core/config/HttpWatcher;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v5, "Invalid response code returned"

    invoke-interface {v4, v5}, Lorg/apache/logging/log4j/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 131
    :cond_0
    iget-object v4, p0, Lorg/apache/logging/log4j/core/config/HttpWatcher;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v5, "Unexpected response code returned {}"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lorg/apache/logging/log4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 133
    :goto_0
    return v1

    .line 107
    :cond_1
    iget-object v4, p0, Lorg/apache/logging/log4j/core/config/HttpWatcher;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v5, "Configuration Not Modified"

    invoke-interface {v4, v5}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 108
    return v1

    .line 111
    :cond_2
    :try_start_2
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 112
    .local v4, "is":Ljava/io/InputStream;
    :try_start_3
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/config/HttpWatcher;->getConfiguration()Lorg/apache/logging/log4j/core/config/Configuration;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/logging/log4j/core/config/Configuration;->getConfigurationSource()Lorg/apache/logging/log4j/core/config/ConfigurationSource;

    move-result-object v5

    .line 113
    .local v5, "configSource":Lorg/apache/logging/log4j/core/config/ConfigurationSource;
    invoke-direct {p0, v4}, Lorg/apache/logging/log4j/core/config/HttpWatcher;->readStream(Ljava/io/InputStream;)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->setData([B)V

    .line 114
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getLastModified()J

    move-result-wide v6

    iput-wide v6, p0, Lorg/apache/logging/log4j/core/config/HttpWatcher;->lastModifiedMillis:J

    .line 115
    iget-wide v6, p0, Lorg/apache/logging/log4j/core/config/HttpWatcher;->lastModifiedMillis:J

    invoke-virtual {v5, v6, v7}, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->setModifiedMillis(J)V

    .line 116
    iget-object v6, p0, Lorg/apache/logging/log4j/core/config/HttpWatcher;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v7, "Content was modified for {}"

    iget-object v8, p0, Lorg/apache/logging/log4j/core/config/HttpWatcher;->url:Ljava/net/URL;

    invoke-virtual {v8}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 117
    const/4 v6, 0x1

    .line 118
    if-eqz v4, :cond_3

    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 117
    :cond_3
    return v6

    .line 111
    .end local v5    # "configSource":Lorg/apache/logging/log4j/core/config/ConfigurationSource;
    :catchall_0
    move-exception v5

    .end local v2    # "urlConnection":Ljava/net/HttpURLConnection;
    .end local v3    # "code":I
    .end local v4    # "is":Ljava/io/InputStream;
    .end local p0    # "this":Lorg/apache/logging/log4j/core/config/HttpWatcher;
    :try_start_5
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 118
    .restart local v2    # "urlConnection":Ljava/net/HttpURLConnection;
    .restart local v3    # "code":I
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local p0    # "this":Lorg/apache/logging/log4j/core/config/HttpWatcher;
    :catchall_1
    move-exception v6

    if-eqz v4, :cond_4

    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v7

    :try_start_7
    invoke-virtual {v5, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v2    # "urlConnection":Ljava/net/HttpURLConnection;
    .end local v3    # "code":I
    .end local p0    # "this":Lorg/apache/logging/log4j/core/config/HttpWatcher;
    :cond_4
    :goto_1
    throw v6
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v2    # "urlConnection":Ljava/net/HttpURLConnection;
    .restart local v3    # "code":I
    .restart local p0    # "this":Lorg/apache/logging/log4j/core/config/HttpWatcher;
    :catch_0
    move-exception v4

    .line 119
    .local v4, "e":Ljava/io/IOException;
    :try_start_8
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v5
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    .line 120
    .local v5, "es":Ljava/io/InputStream;
    :try_start_9
    iget-object v6, p0, Lorg/apache/logging/log4j/core/config/HttpWatcher;->LOGGER:Lorg/apache/logging/log4j/Logger;

    iget-object v7, p0, Lorg/apache/logging/log4j/core/config/HttpWatcher;->url:Ljava/net/URL;

    invoke-direct {p0, v5}, Lorg/apache/logging/log4j/core/config/HttpWatcher;->readStream(Ljava/io/InputStream;)[B

    move-result-object v8

    invoke-interface {v6, v0, v7, v8}, Lorg/apache/logging/log4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 121
    if-eqz v5, :cond_5

    :try_start_a
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    .line 123
    .end local v5    # "es":Ljava/io/InputStream;
    :cond_5
    goto :goto_3

    .line 119
    .restart local v5    # "es":Ljava/io/InputStream;
    :catchall_3
    move-exception v6

    .end local v2    # "urlConnection":Ljava/net/HttpURLConnection;
    .end local v3    # "code":I
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "es":Ljava/io/InputStream;
    .end local p0    # "this":Lorg/apache/logging/log4j/core/config/HttpWatcher;
    :try_start_b
    throw v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 121
    .restart local v2    # "urlConnection":Ljava/net/HttpURLConnection;
    .restart local v3    # "code":I
    .restart local v4    # "e":Ljava/io/IOException;
    .restart local v5    # "es":Ljava/io/InputStream;
    .restart local p0    # "this":Lorg/apache/logging/log4j/core/config/HttpWatcher;
    :catchall_4
    move-exception v7

    if-eqz v5, :cond_6

    :try_start_c
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception v8

    :try_start_d
    invoke-virtual {v6, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v2    # "urlConnection":Ljava/net/HttpURLConnection;
    .end local v3    # "code":I
    .end local v4    # "e":Ljava/io/IOException;
    .end local p0    # "this":Lorg/apache/logging/log4j/core/config/HttpWatcher;
    :cond_6
    :goto_2
    throw v7
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1

    .end local v5    # "es":Ljava/io/InputStream;
    .restart local v2    # "urlConnection":Ljava/net/HttpURLConnection;
    .restart local v3    # "code":I
    .restart local v4    # "e":Ljava/io/IOException;
    .restart local p0    # "this":Lorg/apache/logging/log4j/core/config/HttpWatcher;
    :catch_1
    move-exception v5

    .line 122
    .local v5, "ioe":Ljava/io/IOException;
    :try_start_e
    iget-object v6, p0, Lorg/apache/logging/log4j/core/config/HttpWatcher;->LOGGER:Lorg/apache/logging/log4j/Logger;

    iget-object v7, p0, Lorg/apache/logging/log4j/core/config/HttpWatcher;->url:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v0, v7, v8}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2

    .line 124
    .end local v5    # "ioe":Ljava/io/IOException;
    :goto_3
    return v1

    .line 136
    .end local v3    # "code":I
    .end local v4    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 137
    .local v3, "ioe":Ljava/io/IOException;
    :try_start_f
    iget-object v4, p0, Lorg/apache/logging/log4j/core/config/HttpWatcher;->LOGGER:Lorg/apache/logging/log4j/Logger;

    iget-object v5, p0, Lorg/apache/logging/log4j/core/config/HttpWatcher;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v0, v5, v6}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_3

    .line 141
    .end local v2    # "urlConnection":Ljava/net/HttpURLConnection;
    .end local v3    # "ioe":Ljava/io/IOException;
    goto :goto_4

    .line 139
    :catch_3
    move-exception v0

    .line 140
    .local v0, "ioe":Ljava/io/IOException;
    iget-object v2, p0, Lorg/apache/logging/log4j/core/config/HttpWatcher;->LOGGER:Lorg/apache/logging/log4j/Logger;

    iget-object v3, p0, Lorg/apache/logging/log4j/core/config/HttpWatcher;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Error connecting to configuration at {}: {}"

    invoke-interface {v2, v5, v3, v4}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 142
    .end local v0    # "ioe":Ljava/io/IOException;
    :goto_4
    return v1
.end method


# virtual methods
.method public getLastModified()J
    .locals 2

    .line 65
    iget-wide v0, p0, Lorg/apache/logging/log4j/core/config/HttpWatcher;->lastModifiedMillis:J

    return-wide v0
.end method

.method public isModified()Z
    .locals 1

    .line 70
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/config/HttpWatcher;->refreshConfiguration()Z

    move-result v0

    return v0
.end method

.method public newWatcher(Lorg/apache/logging/log4j/core/config/Reconfigurable;Ljava/util/List;J)Lorg/apache/logging/log4j/core/util/Watcher;
    .locals 7
    .param p1, "reconfigurable"    # Lorg/apache/logging/log4j/core/config/Reconfigurable;
    .param p3, "lastModifiedMillis"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "reconfigurable",
            "listeners",
            "lastModifiedMillis"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/config/Reconfigurable;",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/config/ConfigurationListener;",
            ">;J)",
            "Lorg/apache/logging/log4j/core/util/Watcher;"
        }
    .end annotation

    .line 90
    .local p2, "listeners":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/config/ConfigurationListener;>;"
    new-instance v6, Lorg/apache/logging/log4j/core/config/HttpWatcher;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/config/HttpWatcher;->getConfiguration()Lorg/apache/logging/log4j/core/config/Configuration;

    move-result-object v1

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/logging/log4j/core/config/HttpWatcher;-><init>(Lorg/apache/logging/log4j/core/config/Configuration;Lorg/apache/logging/log4j/core/config/Reconfigurable;Ljava/util/List;J)V

    .line 91
    .local v0, "watcher":Lorg/apache/logging/log4j/core/config/HttpWatcher;
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/config/HttpWatcher;->getSource()Lorg/apache/logging/log4j/core/util/Source;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 92
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/config/HttpWatcher;->getSource()Lorg/apache/logging/log4j/core/util/Source;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/config/HttpWatcher;->watching(Lorg/apache/logging/log4j/core/util/Source;)V

    .line 94
    :cond_0
    return-object v0
.end method

.method public watching(Lorg/apache/logging/log4j/core/util/Source;)V
    .locals 4
    .param p1, "source"    # Lorg/apache/logging/log4j/core/util/Source;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .line 75
    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/util/Source;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/util/Source;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 76
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HttpWatcher requires a url using the HTTP or HTTPS protocol, not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/util/Source;->getURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/util/Source;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/HttpWatcher;->url:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    nop

    .line 84
    invoke-super {p0, p1}, Lorg/apache/logging/log4j/core/util/AbstractWatcher;->watching(Lorg/apache/logging/log4j/core/util/Source;)V

    .line 85
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "ex":Ljava/net/MalformedURLException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid URL for HttpWatcher "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/util/Source;->getURI()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
