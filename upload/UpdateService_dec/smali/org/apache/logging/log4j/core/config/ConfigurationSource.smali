.class public Lorg/apache/logging/log4j/core/config/ConfigurationSource;
.super Ljava/lang/Object;
.source "ConfigurationSource.java"


# static fields
.field public static final COMPOSITE_SOURCE:Lorg/apache/logging/log4j/core/config/ConfigurationSource;

.field private static final HTTPS:Ljava/lang/String; = "https"

.field public static final NULL_SOURCE:Lorg/apache/logging/log4j/core/config/ConfigurationSource;


# instance fields
.field private volatile data:[B

.field private final lastModified:J

.field private volatile modifiedMillis:J

.field private volatile source:Lorg/apache/logging/log4j/core/util/Source;

.field private final stream:Ljava/io/InputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 58
    new-instance v0, Lorg/apache/logging/log4j/core/config/ConfigurationSource;

    sget-object v1, Lorg/apache/logging/log4j/util/Constants;->EMPTY_BYTE_ARRAY:[B

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/logging/log4j/core/config/ConfigurationSource;-><init>([BLjava/net/URL;J)V

    sput-object v0, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->NULL_SOURCE:Lorg/apache/logging/log4j/core/config/ConfigurationSource;

    .line 63
    new-instance v0, Lorg/apache/logging/log4j/core/config/ConfigurationSource;

    sget-object v1, Lorg/apache/logging/log4j/util/Constants;->EMPTY_BYTE_ARRAY:[B

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/logging/log4j/core/config/ConfigurationSource;-><init>([BLjava/net/URL;J)V

    sput-object v0, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->COMPOSITE_SOURCE:Lorg/apache/logging/log4j/core/config/ConfigurationSource;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 4
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "stream"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    invoke-static {p1}, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/logging/log4j/core/config/ConfigurationSource;-><init>([BLjava/net/URL;J)V

    .line 151
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/File;)V
    .locals 4
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "stream",
            "file"
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const-string v0, "stream is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljava/io/InputStream;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->stream:Ljava/io/InputStream;

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->data:[B

    .line 83
    new-instance v0, Lorg/apache/logging/log4j/core/util/Source;

    invoke-direct {v0, p2}, Lorg/apache/logging/log4j/core/util/Source;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->source:Lorg/apache/logging/log4j/core/util/Source;

    .line 84
    const-wide/16 v0, 0x0

    .line 86
    .local v0, "modified":J
    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v2

    .line 89
    goto :goto_0

    .line 87
    :catch_0
    move-exception v2

    .line 90
    :goto_0
    iput-wide v0, p0, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->lastModified:J

    .line 91
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/net/URL;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "stream",
            "url"
        }
    .end annotation

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    const-string v0, "stream is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljava/io/InputStream;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->stream:Ljava/io/InputStream;

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->data:[B

    .line 123
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->lastModified:J

    .line 124
    new-instance v0, Lorg/apache/logging/log4j/core/util/Source;

    invoke-direct {v0, p2}, Lorg/apache/logging/log4j/core/util/Source;-><init>(Ljava/net/URL;)V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->source:Lorg/apache/logging/log4j/core/util/Source;

    .line 125
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/net/URL;J)V
    .locals 1
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "url"    # Ljava/net/URL;
    .param p3, "lastModified"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x0
        }
        names = {
            "stream",
            "url",
            "lastModified"
        }
    .end annotation

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    const-string v0, "stream is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljava/io/InputStream;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->stream:Ljava/io/InputStream;

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->data:[B

    .line 138
    iput-wide p3, p0, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->lastModified:J

    .line 139
    new-instance v0, Lorg/apache/logging/log4j/core/util/Source;

    invoke-direct {v0, p2}, Lorg/apache/logging/log4j/core/util/Source;-><init>(Ljava/net/URL;)V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->source:Lorg/apache/logging/log4j/core/util/Source;

    .line 140
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/nio/file/Path;)V
    .locals 4
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "path"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "stream",
            "path"
        }
    .end annotation

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    const-string v0, "stream is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljava/io/InputStream;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->stream:Ljava/io/InputStream;

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->data:[B

    .line 103
    new-instance v0, Lorg/apache/logging/log4j/core/util/Source;

    invoke-direct {v0, p2}, Lorg/apache/logging/log4j/core/util/Source;-><init>(Ljava/nio/file/Path;)V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->source:Lorg/apache/logging/log4j/core/util/Source;

    .line 104
    const-wide/16 v0, 0x0

    .line 106
    .local v0, "modified":J
    const/4 v2, 0x0

    :try_start_0
    new-array v2, v2, [Ljava/nio/file/LinkOption;

    invoke-static {p2, v2}, Ljava/nio/file/Files;->getLastModifiedTime(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileTime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/file/attribute/FileTime;->toMillis()J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v2

    .line 109
    goto :goto_0

    .line 107
    :catch_0
    move-exception v2

    .line 110
    :goto_0
    iput-wide v0, p0, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->lastModified:J

    .line 111
    return-void
.end method

.method public constructor <init>(Lorg/apache/logging/log4j/core/util/Source;[BJ)V
    .locals 1
    .param p1, "source"    # Lorg/apache/logging/log4j/core/util/Source;
    .param p2, "data"    # [B
    .param p3, "lastModified"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x0
        }
        names = {
            "source",
            "data",
            "lastModified"
        }
    .end annotation

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    const-string v0, "source is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 162
    const-string v0, "data is null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, [B

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->data:[B

    .line 163
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->stream:Ljava/io/InputStream;

    .line 164
    iput-wide p3, p0, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->lastModified:J

    .line 165
    iput-object p1, p0, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->source:Lorg/apache/logging/log4j/core/util/Source;

    .line 166
    return-void
.end method

.method private constructor <init>([BLjava/net/URL;J)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "url"    # Ljava/net/URL;
    .param p3, "lastModified"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x0
        }
        names = {
            "data",
            "url",
            "lastModified"
        }
    .end annotation

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    const-string v0, "data is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, [B

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->data:[B

    .line 170
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->stream:Ljava/io/InputStream;

    .line 171
    iput-wide p3, p0, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->lastModified:J

    .line 172
    if-nez p2, :cond_0

    .line 173
    iput-object p1, p0, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->data:[B

    goto :goto_0

    .line 175
    :cond_0
    new-instance v0, Lorg/apache/logging/log4j/core/util/Source;

    invoke-direct {v0, p2}, Lorg/apache/logging/log4j/core/util/Source;-><init>(Ljava/net/URL;)V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->source:Lorg/apache/logging/log4j/core/util/Source;

    .line 177
    :goto_0
    return-void
.end method

.method public static fromResource(Ljava/lang/String;Ljava/lang/ClassLoader;)Lorg/apache/logging/log4j/core/config/ConfigurationSource;
    .locals 2
    .param p0, "resource"    # Ljava/lang/String;
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "resource",
            "loader"
        }
    .end annotation

    .line 362
    invoke-static {p0, p1}, Lorg/apache/logging/log4j/core/util/Loader;->getResource(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/net/URL;

    move-result-object v0

    .line 363
    .local v0, "url":Ljava/net/URL;
    if-nez v0, :cond_0

    .line 364
    const/4 v1, 0x0

    return-object v1

    .line 366
    :cond_0
    invoke-static {v0}, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->getConfigurationSource(Ljava/net/URL;)Lorg/apache/logging/log4j/core/config/ConfigurationSource;

    move-result-object v1

    return-object v1
.end method

.method public static fromUri(Ljava/net/URI;)Lorg/apache/logging/log4j/core/config/ConfigurationSource;
    .locals 9
    .param p0, "configLocation"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "configLocation"
        }
    .end annotation

    .line 322
    invoke-static {p0}, Lorg/apache/logging/log4j/core/util/FileUtils;->fileFromUri(Ljava/net/URI;)Ljava/io/File;

    move-result-object v0

    .line 323
    .local v0, "configFile":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 325
    :try_start_0
    new-instance v1, Lorg/apache/logging/log4j/core/config/ConfigurationSource;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2, v0}, Lorg/apache/logging/log4j/core/config/ConfigurationSource;-><init>(Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 326
    :catch_0
    move-exception v1

    .line 327
    .local v1, "ex":Ljava/io/FileNotFoundException;
    sget-object v2, Lorg/apache/logging/log4j/core/config/ConfigurationFactory;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Cannot locate file {}"

    invoke-interface {v2, v4, v3, v1}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 330
    .end local v1    # "ex":Ljava/io/FileNotFoundException;
    :cond_0
    invoke-static {p0}, Lorg/apache/logging/log4j/core/config/ConfigurationFactory;->isClassLoaderUri(Ljava/net/URI;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 331
    invoke-static {}, Lorg/apache/logging/log4j/util/LoaderUtil;->getThreadContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 332
    .local v1, "loader":Ljava/lang/ClassLoader;
    invoke-static {p0}, Lorg/apache/logging/log4j/core/config/ConfigurationFactory;->extractClassLoaderUriPath(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v2

    .line 333
    .local v2, "path":Ljava/lang/String;
    invoke-static {v2, v1}, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->fromResource(Ljava/lang/String;Ljava/lang/ClassLoader;)Lorg/apache/logging/log4j/core/config/ConfigurationSource;

    move-result-object v3

    return-object v3

    .line 335
    .end local v1    # "loader":Ljava/lang/ClassLoader;
    .end local v2    # "path":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/net/URI;->isAbsolute()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 336
    sget-object v1, Lorg/apache/logging/log4j/core/config/ConfigurationFactory;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "File not found in file system or classpath: {}"

    invoke-interface {v1, v4, v3}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 337
    return-object v2

    .line 340
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v1

    .line 341
    .local v1, "url":Ljava/net/URL;
    invoke-static {v1}, Lorg/apache/logging/log4j/core/net/UrlConnectionFactory;->createConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v3

    .line 342
    .local v3, "urlConnection":Ljava/net/URLConnection;
    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 343
    .local v4, "is":Ljava/io/InputStream;
    invoke-virtual {v3}, Ljava/net/URLConnection;->getLastModified()J

    move-result-wide v5

    .line 344
    .local v5, "lastModified":J
    new-instance v7, Lorg/apache/logging/log4j/core/config/ConfigurationSource;

    invoke-virtual {p0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v8

    invoke-direct {v7, v4, v8, v5, v6}, Lorg/apache/logging/log4j/core/config/ConfigurationSource;-><init>(Ljava/io/InputStream;Ljava/net/URL;J)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v7

    .line 349
    .end local v1    # "url":Ljava/net/URL;
    .end local v3    # "urlConnection":Ljava/net/URLConnection;
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v5    # "lastModified":J
    :catch_1
    move-exception v1

    .line 350
    .local v1, "ex":Ljava/lang/Exception;
    sget-object v3, Lorg/apache/logging/log4j/core/config/ConfigurationFactory;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Unable to access {}"

    invoke-interface {v3, v5, v4, v1}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 347
    .end local v1    # "ex":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 348
    .local v1, "ex":Ljava/net/MalformedURLException;
    sget-object v3, Lorg/apache/logging/log4j/core/config/ConfigurationFactory;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Invalid URL {}"

    invoke-interface {v3, v5, v4, v1}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .end local v1    # "ex":Ljava/net/MalformedURLException;
    goto :goto_0

    .line 345
    :catch_3
    move-exception v1

    .line 346
    .local v1, "ex":Ljava/io/FileNotFoundException;
    sget-object v3, Lorg/apache/logging/log4j/core/config/ConfigurationFactory;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Could not locate file {}"

    invoke-interface {v3, v5, v4}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 351
    .end local v1    # "ex":Ljava/io/FileNotFoundException;
    :goto_0
    nop

    .line 352
    :goto_1
    return-object v2
.end method

.method private static getConfigurationSource(Ljava/net/URL;)Lorg/apache/logging/log4j/core/config/ConfigurationSource;
    .locals 8
    .param p0, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .line 371
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 372
    .local v1, "urlConnection":Ljava/net/URLConnection;
    invoke-static {}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getProperties()Lorg/apache/logging/log4j/util/PropertiesUtil;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/logging/log4j/core/config/ConfigurationFactory;->authorizationProvider(Lorg/apache/logging/log4j/util/PropertiesUtil;)Lorg/apache/logging/log4j/core/util/AuthorizationProvider;

    move-result-object v2

    .line 373
    .local v2, "provider":Lorg/apache/logging/log4j/core/util/AuthorizationProvider;
    invoke-interface {v2, v1}, Lorg/apache/logging/log4j/core/util/AuthorizationProvider;->addAuthorization(Ljava/net/URLConnection;)V

    .line 374
    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    const-string v4, "https"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 375
    invoke-static {}, Lorg/apache/logging/log4j/core/net/ssl/SslConfigurationFactory;->getSslConfiguration()Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;

    move-result-object v3

    .line 376
    .local v3, "sslConfiguration":Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;
    if-eqz v3, :cond_0

    .line 377
    move-object v4, v1

    check-cast v4, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;->getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 378
    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;->isVerifyHostName()Z

    move-result v4

    if-nez v4, :cond_0

    .line 379
    move-object v4, v1

    check-cast v4, Ljavax/net/ssl/HttpsURLConnection;

    sget-object v5, Lorg/apache/logging/log4j/core/net/ssl/LaxHostnameVerifier;->INSTANCE:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v4, v5}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 383
    .end local v3    # "sslConfiguration":Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;
    :cond_0
    invoke-virtual {p0}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/logging/log4j/core/util/FileUtils;->fileFromUri(Ljava/net/URI;)Ljava/io/File;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    .line 385
    .local v3, "file":Ljava/io/File;
    if-eqz v3, :cond_1

    .line 386
    :try_start_1
    new-instance v4, Lorg/apache/logging/log4j/core/config/ConfigurationSource;

    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {p0}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/logging/log4j/core/util/FileUtils;->fileFromUri(Ljava/net/URI;)Ljava/io/File;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/logging/log4j/core/config/ConfigurationSource;-><init>(Ljava/io/InputStream;Ljava/io/File;)V

    return-object v4

    .line 388
    :cond_1
    new-instance v4, Lorg/apache/logging/log4j/core/config/ConfigurationSource;

    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {v1}, Ljava/net/URLConnection;->getLastModified()J

    move-result-wide v6

    invoke-direct {v4, v5, p0, v6, v7}, Lorg/apache/logging/log4j/core/config/ConfigurationSource;-><init>(Ljava/io/InputStream;Ljava/net/URL;J)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v4

    .line 390
    :catch_0
    move-exception v4

    .line 391
    .local v4, "ex":Ljava/io/FileNotFoundException;
    :try_start_2
    sget-object v5, Lorg/apache/logging/log4j/core/config/ConfigurationFactory;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v6, "Unable to locate file {}, ignoring."

    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lorg/apache/logging/log4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_1

    .line 392
    return-object v0

    .line 394
    .end local v1    # "urlConnection":Ljava/net/URLConnection;
    .end local v2    # "provider":Lorg/apache/logging/log4j/core/util/AuthorizationProvider;
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "ex":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 395
    .local v1, "ex":Ljava/lang/Exception;
    sget-object v2, Lorg/apache/logging/log4j/core/config/ConfigurationFactory;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    .line 396
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 395
    const-string v5, "Error accessing {} due to {}, ignoring."

    invoke-interface {v2, v5, v3, v4}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 397
    return-object v0
.end method

.method private isFile()Z
    .locals 2

    .line 210
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->source:Lorg/apache/logging/log4j/core/util/Source;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->source:Lorg/apache/logging/log4j/core/util/Source;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/util/Source;->getFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1
.end method

.method private isLocation()Z
    .locals 2

    .line 218
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->source:Lorg/apache/logging/log4j/core/util/Source;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->source:Lorg/apache/logging/log4j/core/util/Source;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/util/Source;->getLocation()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1
.end method

.method private isURL()Z
    .locals 2

    .line 214
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->source:Lorg/apache/logging/log4j/core/util/Source;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->source:Lorg/apache/logging/log4j/core/util/Source;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/util/Source;->getURI()Ljava/net/URI;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1
.end method

.method private static toByteArray(Ljava/io/InputStream;)[B
    .locals 5
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "inputStream"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    const/16 v1, 0x1000

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 188
    .local v0, "buffSize":I
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 189
    .local v1, "contents":Ljava/io/ByteArrayOutputStream;
    new-array v2, v0, [B

    .line 191
    .local v2, "buff":[B
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 192
    .local v3, "length":I
    :goto_0
    if-lez v3, :cond_0

    .line 193
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 194
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    goto :goto_0

    .line 196
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public getFile()Ljava/io/File;
    .locals 1

    .line 206
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->source:Lorg/apache/logging/log4j/core/util/Source;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->source:Lorg/apache/logging/log4j/core/util/Source;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/util/Source;->getFile()Ljava/io/File;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .line 279
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->stream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getLastModified()J
    .locals 2

    .line 260
    iget-wide v0, p0, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->lastModified:J

    return-wide v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .line 270
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->source:Lorg/apache/logging/log4j/core/util/Source;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->source:Lorg/apache/logging/log4j/core/util/Source;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/util/Source;->getLocation()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getURI()Ljava/net/URI;
    .locals 1

    .line 252
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->source:Lorg/apache/logging/log4j/core/util/Source;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->source:Lorg/apache/logging/log4j/core/util/Source;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/util/Source;->getURI()Ljava/net/URI;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getURL()Ljava/net/URL;
    .locals 1

    .line 228
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->source:Lorg/apache/logging/log4j/core/util/Source;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->source:Lorg/apache/logging/log4j/core/util/Source;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/util/Source;->getURL()Ljava/net/URL;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public resetInputStream()Lorg/apache/logging/log4j/core/config/ConfigurationSource;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 289
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->source:Lorg/apache/logging/log4j/core/util/Source;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->data:[B

    if-eqz v0, :cond_0

    .line 290
    new-instance v0, Lorg/apache/logging/log4j/core/config/ConfigurationSource;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->source:Lorg/apache/logging/log4j/core/util/Source;

    iget-object v2, p0, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->data:[B

    iget-wide v3, p0, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->lastModified:J

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/logging/log4j/core/config/ConfigurationSource;-><init>(Lorg/apache/logging/log4j/core/util/Source;[BJ)V

    return-object v0

    .line 291
    :cond_0
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 292
    new-instance v0, Lorg/apache/logging/log4j/core/config/ConfigurationSource;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/logging/log4j/core/config/ConfigurationSource;-><init>(Ljava/io/InputStream;Ljava/io/File;)V

    return-object v0

    .line 293
    :cond_1
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->isURL()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->data:[B

    if-eqz v0, :cond_3

    .line 295
    new-instance v0, Lorg/apache/logging/log4j/core/config/ConfigurationSource;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->data:[B

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->getURL()Ljava/net/URL;

    move-result-object v2

    iget-wide v3, p0, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->modifiedMillis:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->lastModified:J

    goto :goto_0

    :cond_2
    iget-wide v3, p0, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->modifiedMillis:J

    :goto_0
    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/logging/log4j/core/config/ConfigurationSource;-><init>([BLjava/net/URL;J)V

    return-object v0

    .line 296
    :cond_3
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->isURL()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 297
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->fromUri(Ljava/net/URI;)Lorg/apache/logging/log4j/core/config/ConfigurationSource;

    move-result-object v0

    return-object v0

    .line 298
    :cond_4
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->data:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 299
    new-instance v0, Lorg/apache/logging/log4j/core/config/ConfigurationSource;

    iget-object v2, p0, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->data:[B

    iget-wide v3, p0, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->lastModified:J

    invoke-direct {v0, v2, v1, v3, v4}, Lorg/apache/logging/log4j/core/config/ConfigurationSource;-><init>([BLjava/net/URL;J)V

    return-object v0

    .line 301
    :cond_5
    return-object v1
.end method

.method public setData([B)V
    .locals 0
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 240
    iput-object p1, p0, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->data:[B

    .line 241
    return-void
.end method

.method public setModifiedMillis(J)V
    .locals 0
    .param p1, "modifiedMillis"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modifiedMillis"
        }
    .end annotation

    .line 244
    iput-wide p1, p0, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->modifiedMillis:J

    .line 245
    return-void
.end method

.method public setSource(Lorg/apache/logging/log4j/core/util/Source;)V
    .locals 0
    .param p1, "source"    # Lorg/apache/logging/log4j/core/util/Source;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 236
    iput-object p1, p0, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->source:Lorg/apache/logging/log4j/core/util/Source;

    .line 237
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 306
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->isLocation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->getLocation()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 309
    :cond_0
    sget-object v0, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->NULL_SOURCE:Lorg/apache/logging/log4j/core/config/ConfigurationSource;

    if-ne p0, v0, :cond_1

    .line 310
    const-string v0, "NULL_SOURCE"

    return-object v0

    .line 312
    :cond_1
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->data:[B

    if-nez v0, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->data:[B

    array-length v0, v0

    .line 313
    .local v0, "length":I
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stream ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bytes, unknown location)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
