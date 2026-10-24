.class public Lorg/apache/logging/log4j/core/script/ScriptFile;
.super Lorg/apache/logging/log4j/core/script/AbstractScript;
.source "ScriptFile.java"


# annotations
.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    name = "ScriptFile"
    printObject = true
.end annotation


# instance fields
.field private final filePath:Ljava/nio/file/Path;

.field private final isWatched:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/nio/file/Path;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/nio/file/Path;
    .param p3, "language"    # Ljava/lang/String;
    .param p4, "isWatched"    # Z
    .param p5, "scriptText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "name",
            "filePath",
            "language",
            "isWatched",
            "scriptText"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1, p3, p5}, Lorg/apache/logging/log4j/core/script/AbstractScript;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iput-object p2, p0, Lorg/apache/logging/log4j/core/script/ScriptFile;->filePath:Ljava/nio/file/Path;

    .line 51
    iput-boolean p4, p0, Lorg/apache/logging/log4j/core/script/ScriptFile;->isWatched:Z

    .line 52
    return-void
.end method

.method public static createScript(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/nio/charset/Charset;)Lorg/apache/logging/log4j/core/script/ScriptFile;
    .locals 11
    .param p0, "name"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "name"
        .end annotation
    .end param
    .param p1, "language"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "language"
        .end annotation
    .end param
    .param p2, "filePathOrUri"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "path"
        .end annotation
    .end param
    .param p3, "isWatched"    # Ljava/lang/Boolean;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "isWatched"
        .end annotation
    .end param
    .param p4, "charset"    # Ljava/nio/charset/Charset;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "charset"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x10,
            0x10,
            0x10
        }
        names = {
            "name",
            "language",
            "filePathOrUri",
            "isWatched",
            "charset"
        }
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginFactory;
    .end annotation

    .line 71
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 72
    sget-object v1, Lorg/apache/logging/log4j/core/script/ScriptFile;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v2, "No script path provided for ScriptFile"

    invoke-interface {v1, v2}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 73
    return-object v0

    .line 75
    :cond_0
    if-nez p0, :cond_1

    .line 76
    move-object p0, p2

    .line 78
    :cond_1
    invoke-static {p2}, Lorg/apache/logging/log4j/core/util/NetUtils;->toURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v7

    .line 79
    .local v7, "uri":Ljava/net/URI;
    invoke-static {v7}, Lorg/apache/logging/log4j/core/util/FileUtils;->fileFromUri(Ljava/net/URI;)Ljava/io/File;

    move-result-object v8

    .line 80
    .local v8, "file":Ljava/io/File;
    if-nez p1, :cond_2

    if-eqz v8, :cond_2

    .line 81
    invoke-static {v8}, Lorg/apache/logging/log4j/core/util/FileUtils;->getFileExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, "fileExtension":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 83
    invoke-static {v1}, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;->getByExtension(Ljava/lang/String;)Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;

    move-result-object v2

    .line 84
    .local v2, "mapping":Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;
    if-eqz v2, :cond_2

    .line 85
    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;->getLanguage()Ljava/lang/String;

    move-result-object p1

    .line 89
    .end local v1    # "fileExtension":Ljava/lang/String;
    .end local v2    # "mapping":Lorg/apache/logging/log4j/core/util/ExtensionLanguageMapping;
    :cond_2
    if-nez p1, :cond_3

    .line 90
    sget-object v1, Lorg/apache/logging/log4j/core/script/ScriptFile;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v2, "No script language supplied, defaulting to {}"

    const-string v3, "JavaScript"

    invoke-interface {v1, v2, v3}, Lorg/apache/logging/log4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 91
    const-string p1, "JavaScript"

    .line 94
    :cond_3
    if-nez p4, :cond_4

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    goto :goto_0

    :cond_4
    move-object v1, p4

    :goto_0
    move-object v9, v1

    .line 96
    .local v9, "actualCharset":Ljava/nio/charset/Charset;
    :try_start_0
    new-instance v1, Ljava/io/InputStreamReader;

    if-eqz v8, :cond_5

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    goto :goto_1

    .line 97
    :cond_5
    invoke-virtual {v7}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v2

    :goto_1
    invoke-direct {v1, v2, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .local v1, "reader":Ljava/io/Reader;
    nop

    .line 98
    :try_start_1
    invoke-static {v1}, Lorg/apache/logging/log4j/core/util/IOUtils;->toString(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    .local v6, "scriptText":Ljava/lang/String;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 103
    .end local v1    # "reader":Ljava/io/Reader;
    nop

    .line 104
    if-eqz v8, :cond_6

    invoke-virtual {v8}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v1

    invoke-static {v1}, Ljava/nio/file/Paths;->get(Ljava/net/URI;)Ljava/nio/file/Path;

    move-result-object v1

    goto :goto_2

    :cond_6
    invoke-static {v7}, Ljava/nio/file/Paths;->get(Ljava/net/URI;)Ljava/nio/file/Path;

    move-result-object v1

    :goto_2
    move-object v10, v1

    .line 105
    .local v10, "path":Ljava/nio/file/Path;
    if-nez v10, :cond_7

    .line 106
    sget-object v1, Lorg/apache/logging/log4j/core/script/ScriptFile;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-virtual {v7}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Unable to convert {} to a Path"

    invoke-interface {v1, v3, v2}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 107
    return-object v0

    .line 109
    :cond_7
    new-instance v0, Lorg/apache/logging/log4j/core/script/ScriptFile;

    if-nez p3, :cond_8

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_3

    :cond_8
    move-object v1, p3

    :goto_3
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move-object v1, v0

    move-object v2, p0

    move-object v3, v10

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lorg/apache/logging/log4j/core/script/ScriptFile;-><init>(Ljava/lang/String;Ljava/nio/file/Path;Ljava/lang/String;ZLjava/lang/String;)V

    return-object v0

    .line 96
    .end local v6    # "scriptText":Ljava/lang/String;
    .end local v10    # "path":Ljava/nio/file/Path;
    .restart local v1    # "reader":Ljava/io/Reader;
    :catchall_0
    move-exception v2

    .end local v1    # "reader":Ljava/io/Reader;
    .end local v7    # "uri":Ljava/net/URI;
    .end local v8    # "file":Ljava/io/File;
    .end local v9    # "actualCharset":Ljava/nio/charset/Charset;
    .end local p0    # "name":Ljava/lang/String;
    .end local p1    # "language":Ljava/lang/String;
    .end local p2    # "filePathOrUri":Ljava/lang/String;
    .end local p3    # "isWatched":Ljava/lang/Boolean;
    .end local p4    # "charset":Ljava/nio/charset/Charset;
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 99
    .restart local v1    # "reader":Ljava/io/Reader;
    .restart local v7    # "uri":Ljava/net/URI;
    .restart local v8    # "file":Ljava/io/File;
    .restart local v9    # "actualCharset":Ljava/nio/charset/Charset;
    .restart local p0    # "name":Ljava/lang/String;
    .restart local p1    # "language":Ljava/lang/String;
    .restart local p2    # "filePathOrUri":Ljava/lang/String;
    .restart local p3    # "isWatched":Ljava/lang/Boolean;
    .restart local p4    # "charset":Ljava/nio/charset/Charset;
    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v4

    :try_start_5
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v7    # "uri":Ljava/net/URI;
    .end local v8    # "file":Ljava/io/File;
    .end local v9    # "actualCharset":Ljava/nio/charset/Charset;
    .end local p0    # "name":Ljava/lang/String;
    .end local p1    # "language":Ljava/lang/String;
    .end local p2    # "filePathOrUri":Ljava/lang/String;
    .end local p3    # "isWatched":Ljava/lang/Boolean;
    .end local p4    # "charset":Ljava/nio/charset/Charset;
    :goto_4
    throw v3
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .end local v1    # "reader":Ljava/io/Reader;
    .restart local v7    # "uri":Ljava/net/URI;
    .restart local v8    # "file":Ljava/io/File;
    .restart local v9    # "actualCharset":Ljava/nio/charset/Charset;
    .restart local p0    # "name":Ljava/lang/String;
    .restart local p1    # "language":Ljava/lang/String;
    .restart local p2    # "filePathOrUri":Ljava/lang/String;
    .restart local p3    # "isWatched":Ljava/lang/Boolean;
    .restart local p4    # "charset":Ljava/nio/charset/Charset;
    :catch_0
    move-exception v1

    move-object v10, v1

    .line 100
    .local v10, "e":Ljava/io/IOException;
    sget-object v1, Lorg/apache/logging/log4j/core/script/ScriptFile;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string v2, "{}: language={}, path={}, actualCharset={}"

    move-object v4, p1

    move-object v5, p2

    move-object v6, v9

    invoke-interface/range {v1 .. v6}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 102
    return-object v0
.end method


# virtual methods
.method public getPath()Ljava/nio/file/Path;
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/apache/logging/log4j/core/script/ScriptFile;->filePath:Ljava/nio/file/Path;

    return-object v0
.end method

.method public isWatched()Z
    .locals 1

    .line 59
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/script/ScriptFile;->isWatched:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/script/ScriptFile;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/logging/log4j/core/script/ScriptFile;->filePath:Ljava/nio/file/Path;

    invoke-interface {v2}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 116
    const-string v1, "name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/script/ScriptFile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    :cond_0
    const-string v1, "path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/script/ScriptFile;->filePath:Ljava/nio/file/Path;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/script/ScriptFile;->getLanguage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 120
    const-string v1, ", language="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/script/ScriptFile;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    :cond_1
    const-string v1, ", isWatched="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/apache/logging/log4j/core/script/ScriptFile;->isWatched:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
