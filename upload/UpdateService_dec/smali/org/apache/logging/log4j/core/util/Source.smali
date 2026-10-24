.class public Lorg/apache/logging/log4j/core/util/Source;
.super Ljava/lang/Object;
.source "Source.java"


# instance fields
.field private final file:Ljava/io/File;

.field private final location:Ljava/lang/String;

.field private final uri:Ljava/net/URI;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "file"
        }
    .end annotation

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const-string v0, "file"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljava/io/File;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/util/Source;->file:Ljava/io/File;

    .line 92
    invoke-static {p1}, Lorg/apache/logging/log4j/core/util/Source;->normalize(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/util/Source;->location:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/util/Source;->uri:Ljava/net/URI;

    .line 94
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 2
    .param p1, "uri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "uri"
        }
    .end annotation

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    const-string v0, "uri"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->normalize()Ljava/net/URI;

    move-result-object v0

    .line 115
    .local v0, "normUri":Ljava/net/URI;
    iput-object v0, p0, Lorg/apache/logging/log4j/core/util/Source;->uri:Ljava/net/URI;

    .line 116
    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/logging/log4j/core/util/Source;->location:Ljava/lang/String;

    .line 117
    invoke-static {v0}, Lorg/apache/logging/log4j/core/util/Source;->toFile(Ljava/net/URI;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/logging/log4j/core/util/Source;->file:Ljava/io/File;

    .line 118
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;J)V
    .locals 0
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "lastModified"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "uri",
            "lastModified"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 129
    invoke-direct {p0, p1}, Lorg/apache/logging/log4j/core/util/Source;-><init>(Ljava/net/URI;)V

    .line 130
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "url"
        }
    .end annotation

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    invoke-static {p1}, Lorg/apache/logging/log4j/core/util/Source;->toURI(Ljava/net/URL;)Ljava/net/URI;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/util/Source;->uri:Ljava/net/URI;

    .line 141
    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/util/Source;->location:Ljava/lang/String;

    .line 142
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/Source;->uri:Ljava/net/URI;

    invoke-static {v0}, Lorg/apache/logging/log4j/core/util/Source;->toFile(Ljava/net/URI;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/util/Source;->file:Ljava/io/File;

    .line 143
    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;)V
    .locals 2
    .param p1, "path"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "path"
        }
    .end annotation

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const-string v0, "path"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljava/nio/file/Path;

    invoke-interface {v0}, Ljava/nio/file/Path;->normalize()Ljava/nio/file/Path;

    move-result-object v0

    .line 103
    .local v0, "normPath":Ljava/nio/file/Path;
    invoke-static {v0}, Lorg/apache/logging/log4j/core/util/Source;->toFile(Ljava/nio/file/Path;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/logging/log4j/core/util/Source;->file:Ljava/io/File;

    .line 104
    invoke-interface {v0}, Ljava/nio/file/Path;->toUri()Ljava/net/URI;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/logging/log4j/core/util/Source;->uri:Ljava/net/URI;

    .line 105
    invoke-interface {v0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/logging/log4j/core/util/Source;->location:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public constructor <init>(Lorg/apache/logging/log4j/core/config/ConfigurationSource;)V
    .locals 1
    .param p1, "source"    # Lorg/apache/logging/log4j/core/config/ConfigurationSource;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "source"
        }
    .end annotation

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->getFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/util/Source;->file:Ljava/io/File;

    .line 80
    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->getURI()Ljava/net/URI;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/util/Source;->uri:Ljava/net/URI;

    .line 81
    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->getLocation()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/util/Source;->location:Ljava/lang/String;

    .line 82
    return-void
.end method

.method private static normalize(Ljava/io/File;)Ljava/lang/String;
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "file"
        }
    .end annotation

    .line 39
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static toFile(Ljava/net/URI;)Ljava/io/File;
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

    .line 55
    :try_start_0
    const-string v0, "uri"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Ljava/net/URI;

    invoke-static {v0}, Ljava/nio/file/Paths;->get(Ljava/net/URI;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/logging/log4j/core/util/Source;->toFile(Ljava/nio/file/Path;)Ljava/io/File;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method private static toFile(Ljava/nio/file/Path;)Ljava/io/File;
    .locals 2
    .param p0, "path"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "path"
        }
    .end annotation

    .line 47
    :try_start_0
    const-string v0, "path"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Ljava/nio/file/Path;

    invoke-interface {v0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private static toURI(Ljava/net/URL;)Ljava/net/URI;
    .locals 2
    .param p0, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "url"
        }
    .end annotation

    .line 63
    :try_start_0
    const-string v0, "url"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 147
    if-ne p0, p1, :cond_0

    .line 148
    const/4 v0, 0x1

    return v0

    .line 150
    :cond_0
    instance-of v0, p1, Lorg/apache/logging/log4j/core/util/Source;

    if-nez v0, :cond_1

    .line 151
    const/4 v0, 0x0

    return v0

    .line 153
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/apache/logging/log4j/core/util/Source;

    .line 154
    .local v0, "other":Lorg/apache/logging/log4j/core/util/Source;
    iget-object v1, p0, Lorg/apache/logging/log4j/core/util/Source;->location:Ljava/lang/String;

    iget-object v2, v0, Lorg/apache/logging/log4j/core/util/Source;->location:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .line 164
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/Source;->file:Ljava/io/File;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .line 174
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/Source;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/nio/file/Path;
    .locals 2

    .line 183
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/Source;->file:Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/Source;->uri:Ljava/net/URI;

    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/nio/file/Paths;->get(Ljava/net/URI;)Ljava/nio/file/Path;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/Source;->location:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getURI()Ljava/net/URI;
    .locals 1

    .line 193
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/Source;->uri:Ljava/net/URI;

    return-object v0
.end method

.method public getURL()Ljava/net/URL;
    .locals 2

    .line 203
    :try_start_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/Source;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, "e":Ljava/net/MalformedURLException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public hashCode()I
    .locals 3

    .line 211
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/util/Source;->location:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 216
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/Source;->location:Ljava/lang/String;

    return-object v0
.end method
