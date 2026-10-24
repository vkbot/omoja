.class public Lorg/apache/logging/log4j/core/appender/rolling/action/FileRenameAction;
.super Lorg/apache/logging/log4j/core/appender/rolling/action/AbstractAction;
.source "FileRenameAction.java"


# instance fields
.field private final destination:Ljava/io/File;

.field private final renameEmptyFiles:Z

.field private final source:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/io/File;Z)V
    .locals 0
    .param p1, "src"    # Ljava/io/File;
    .param p2, "dst"    # Ljava/io/File;
    .param p3, "renameEmptyFiles"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "src",
            "dst",
            "renameEmptyFiles"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/appender/rolling/action/AbstractAction;-><init>()V

    .line 56
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/FileRenameAction;->source:Ljava/io/File;

    .line 57
    iput-object p2, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/FileRenameAction;->destination:Ljava/io/File;

    .line 58
    iput-boolean p3, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/FileRenameAction;->renameEmptyFiles:Z

    .line 59
    return-void
.end method

.method public static execute(Ljava/io/File;Ljava/io/File;Z)Z
    .locals 11
    .param p0, "source"    # Ljava/io/File;
    .param p1, "destination"    # Ljava/io/File;
    .param p2, "renameEmptyFiles"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "source",
            "destination",
            "renameEmptyFiles"
        }
    .end annotation

    .line 107
    const/4 v0, 0x0

    if-nez p2, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    goto :goto_0

    .line 166
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    goto/16 :goto_4

    .line 167
    :catch_0
    move-exception v1

    .line 168
    .local v1, "exDelete":Ljava/lang/Exception;
    sget-object v2, Lorg/apache/logging/log4j/core/appender/rolling/action/FileRenameAction;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 169
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 168
    const-string v6, "Unable to delete empty file {}: {} {}"

    invoke-interface {v2, v6, v3, v4, v5}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 108
    .end local v1    # "exDelete":Ljava/lang/Exception;
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 109
    .local v1, "parent":Ljava/io/File;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 113
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 114
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 115
    sget-object v2, Lorg/apache/logging/log4j/core/appender/rolling/action/FileRenameAction;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Unable to create directory {}"

    invoke-interface {v2, v4, v3}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 116
    return v0

    .line 121
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/logging/log4j/core/appender/rolling/action/FileRenameAction;->moveFile(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z

    move-result v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    return v0

    .line 160
    :catch_1
    move-exception v2

    goto/16 :goto_3

    .line 122
    :catch_2
    move-exception v2

    .line 123
    .local v2, "exMove":Ljava/io/IOException;
    :try_start_2
    sget-object v3, Lorg/apache/logging/log4j/core/appender/rolling/action/FileRenameAction;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v4, "Unable to move file {} to {}: {} {} - will try to copy and delete"

    .line 124
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    .line 125
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    .line 123
    invoke-interface/range {v3 .. v8}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 126
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 127
    .local v3, "result":Z
    if-nez v3, :cond_3

    .line 129
    :try_start_3
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v4

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    new-array v6, v0, [Ljava/lang/String;

    invoke-static {v5, v6}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/nio/file/CopyOption;

    sget-object v7, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    aput-object v7, v6, v0

    invoke-static {v4, v5, v6}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    .line 132
    :try_start_4
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v4

    invoke-static {v4}, Ljava/nio/file/Files;->delete(Ljava/nio/file/Path;)V

    .line 133
    const/4 v3, 0x1

    .line 134
    sget-object v4, Lorg/apache/logging/log4j/core/appender/rolling/action/FileRenameAction;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v5, "Renamed file {} to {} using copy and delete"

    .line 135
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    .line 134
    invoke-interface {v4, v5, v6, v7}, Lorg/apache/logging/log4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    .line 149
    goto :goto_1

    .line 136
    :catch_3
    move-exception v4

    .line 137
    .local v4, "exDelete":Ljava/io/IOException;
    :try_start_5
    sget-object v5, Lorg/apache/logging/log4j/core/appender/rolling/action/FileRenameAction;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v6, "Unable to delete file {}: {} {}"

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    .line 138
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    .line 137
    invoke-interface {v5, v6, v7, v8, v9}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    .line 140
    const/4 v3, 0x1

    .line 141
    :try_start_6
    new-instance v5, Ljava/io/PrintWriter;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/PrintWriter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/PrintWriter;->close()V

    .line 142
    sget-object v5, Lorg/apache/logging/log4j/core/appender/rolling/action/FileRenameAction;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v6, "Renamed file {} to {} with copy and truncation"

    .line 143
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    .line 142
    invoke-interface {v5, v6, v7, v8}, Lorg/apache/logging/log4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1

    .line 148
    goto :goto_1

    .line 144
    :catch_4
    move-exception v5

    .line 145
    .local v5, "exOwerwrite":Ljava/io/IOException;
    :try_start_7
    sget-object v6, Lorg/apache/logging/log4j/core/appender/rolling/action/FileRenameAction;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v7, "Unable to overwrite file {}: {} {}"

    .line 146
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    .line 147
    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    .line 145
    invoke-interface {v6, v7, v8, v9, v10}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1

    .line 150
    .end local v4    # "exDelete":Ljava/io/IOException;
    .end local v5    # "exOwerwrite":Ljava/io/IOException;
    :catch_5
    move-exception v4

    .line 151
    .local v4, "exCopy":Ljava/io/IOException;
    :try_start_8
    sget-object v5, Lorg/apache/logging/log4j/core/appender/rolling/action/FileRenameAction;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v6, "Unable to copy file {} to {}: {} {}"

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    .line 152
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    .line 151
    invoke-interface/range {v5 .. v10}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 153
    .end local v4    # "exCopy":Ljava/io/IOException;
    :goto_1
    goto :goto_2

    .line 155
    :cond_3
    sget-object v4, Lorg/apache/logging/log4j/core/appender/rolling/action/FileRenameAction;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v5, "Renamed file {} to {} with source.renameTo"

    .line 156
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    .line 155
    invoke-interface {v4, v5, v6, v7}, Lorg/apache/logging/log4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_1

    .line 158
    :goto_2
    return v3

    .line 161
    .end local v3    # "result":Z
    .local v2, "ex":Ljava/lang/RuntimeException;
    :goto_3
    sget-object v3, Lorg/apache/logging/log4j/core/appender/rolling/action/FileRenameAction;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 162
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v8

    .line 161
    const-string v4, "Unable to rename file {} to {}: {} {}"

    invoke-interface/range {v3 .. v8}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 164
    .end local v1    # "parent":Ljava/io/File;
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    nop

    .line 173
    :goto_4
    return v0
.end method

.method private static moveFile(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z
    .locals 6
    .param p0, "source"    # Ljava/nio/file/Path;
    .param p1, "target"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "source",
            "target"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 178
    const-string v0, "Renamed file {} to {} with Files.move"

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    new-array v1, v1, [Ljava/nio/file/CopyOption;

    sget-object v4, Ljava/nio/file/StandardCopyOption;->ATOMIC_MOVE:Ljava/nio/file/StandardCopyOption;

    aput-object v4, v1, v2

    sget-object v4, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    aput-object v4, v1, v3

    invoke-static {p0, p1, v1}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    .line 180
    sget-object v1, Lorg/apache/logging/log4j/core/appender/rolling/action/FileRenameAction;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 181
    invoke-interface {p1}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 180
    invoke-interface {v1, v0, v4, v5}, Lorg/apache/logging/log4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/nio/file/AtomicMoveNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    return v3

    .line 183
    :catch_0
    move-exception v1

    .line 184
    .local v1, "ex":Ljava/nio/file/AtomicMoveNotSupportedException;
    new-array v4, v3, [Ljava/nio/file/CopyOption;

    sget-object v5, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    aput-object v5, v4, v2

    invoke-static {p0, p1, v4}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    .line 185
    sget-object v2, Lorg/apache/logging/log4j/core/appender/rolling/action/FileRenameAction;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 186
    invoke-interface {p1}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 185
    invoke-interface {v2, v0, v4, v5}, Lorg/apache/logging/log4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 187
    return v3
.end method


# virtual methods
.method public execute()Z
    .locals 3

    .line 68
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/FileRenameAction;->source:Ljava/io/File;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/FileRenameAction;->destination:Ljava/io/File;

    iget-boolean v2, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/FileRenameAction;->renameEmptyFiles:Z

    invoke-static {v0, v1, v2}, Lorg/apache/logging/log4j/core/appender/rolling/action/FileRenameAction;->execute(Ljava/io/File;Ljava/io/File;Z)Z

    move-result v0

    return v0
.end method

.method public getDestination()Ljava/io/File;
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/FileRenameAction;->destination:Ljava/io/File;

    return-object v0
.end method

.method public getSource()Ljava/io/File;
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/FileRenameAction;->source:Ljava/io/File;

    return-object v0
.end method

.method public isRenameEmptyFiles()Z
    .locals 1

    .line 95
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/FileRenameAction;->renameEmptyFiles:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/apache/logging/log4j/core/appender/rolling/action/FileRenameAction;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/FileRenameAction;->source:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/FileRenameAction;->destination:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", renameEmptyFiles="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/FileRenameAction;->renameEmptyFiles:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
