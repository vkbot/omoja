.class public final Lorg/apache/logging/log4j/core/appender/rolling/action/CommonsCompressAction;
.super Lorg/apache/logging/log4j/core/appender/rolling/action/AbstractAction;
.source "CommonsCompressAction.java"


# static fields
.field private static final BUF_SIZE:I = 0x2000


# instance fields
.field private final deleteSource:Z

.field private final destination:Ljava/io/File;

.field private final name:Ljava/lang/String;

.field private final source:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/File;Ljava/io/File;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/io/File;
    .param p3, "destination"    # Ljava/io/File;
    .param p4, "deleteSource"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "name",
            "source",
            "destination",
            "deleteSource"
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/appender/rolling/action/AbstractAction;-><init>()V

    .line 69
    const-string v0, "source"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 70
    const-string v0, "destination"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 71
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/CommonsCompressAction;->name:Ljava/lang/String;

    .line 72
    iput-object p2, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/CommonsCompressAction;->source:Ljava/io/File;

    .line 73
    iput-object p3, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/CommonsCompressAction;->destination:Ljava/io/File;

    .line 74
    iput-boolean p4, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/CommonsCompressAction;->deleteSource:Z

    .line 75
    return-void
.end method

.method public static execute(Ljava/lang/String;Ljava/io/File;Ljava/io/File;Z)Z
    .locals 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "source"    # Ljava/io/File;
    .param p2, "destination"    # Ljava/io/File;
    .param p3, "deleteSource"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "name",
            "source",
            "destination",
            "deleteSource"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    const/4 v0, 0x0

    return v0

    .line 105
    :cond_0
    sget-object v0, Lorg/apache/logging/log4j/core/appender/rolling/action/CommonsCompressAction;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Starting {} compression of {}"

    invoke-interface {v0, v2, p0, v1}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 106
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lorg/apache/commons/compress/compressors/CompressorException; {:try_start_0 .. :try_end_0} :catch_1

    .line 107
    .local v0, "input":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;

    invoke-direct {v2}, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;-><init>()V

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 108
    invoke-virtual {v2, p0, v3}, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->createCompressorOutputStream(Ljava/lang/String;Ljava/io/OutputStream;)Lorg/apache/commons/compress/compressors/CompressorOutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 106
    .local v1, "output":Ljava/io/BufferedOutputStream;
    nop

    .line 110
    const/16 v2, 0x2000

    :try_start_2
    invoke-static {v0, v1, v2}, Lorg/apache/commons/compress/utils/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)J

    .line 111
    sget-object v2, Lorg/apache/logging/log4j/core/appender/rolling/action/CommonsCompressAction;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v3, "Finished {} compression of {}"

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, p0, v4}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 112
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .end local v1    # "output":Ljava/io/BufferedOutputStream;
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Lorg/apache/commons/compress/compressors/CompressorException; {:try_start_4 .. :try_end_4} :catch_1

    .line 114
    .end local v0    # "input":Ljava/io/FileInputStream;
    nop

    .line 116
    if-eqz p3, :cond_2

    .line 118
    :try_start_5
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Files;->deleteIfExists(Ljava/nio/file/Path;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    sget-object v0, Lorg/apache/logging/log4j/core/appender/rolling/action/CommonsCompressAction;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v1, "Deleted {}"

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 121
    :cond_1
    sget-object v0, Lorg/apache/logging/log4j/core/appender/rolling/action/CommonsCompressAction;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v1, "Unable to delete {} after {} compression. File did not exist"

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p0}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 125
    :goto_0
    goto :goto_1

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v1, Lorg/apache/logging/log4j/core/appender/rolling/action/CommonsCompressAction;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Unable to delete {} after {} compression, {}"

    invoke-interface {v1, v4, v2, p0, v3}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 128
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_2
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 106
    .local v0, "input":Ljava/io/FileInputStream;
    .restart local v1    # "output":Ljava/io/BufferedOutputStream;
    :catchall_0
    move-exception v2

    .end local v0    # "input":Ljava/io/FileInputStream;
    .end local v1    # "output":Ljava/io/BufferedOutputStream;
    .end local p0    # "name":Ljava/lang/String;
    .end local p1    # "source":Ljava/io/File;
    .end local p2    # "destination":Ljava/io/File;
    .end local p3    # "deleteSource":Z
    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 112
    .restart local v0    # "input":Ljava/io/FileInputStream;
    .restart local v1    # "output":Ljava/io/BufferedOutputStream;
    .restart local p0    # "name":Ljava/lang/String;
    .restart local p1    # "source":Ljava/io/File;
    .restart local p2    # "destination":Ljava/io/File;
    .restart local p3    # "deleteSource":Z
    :catchall_1
    move-exception v3

    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v4

    :try_start_8
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "input":Ljava/io/FileInputStream;
    .end local p0    # "name":Ljava/lang/String;
    .end local p1    # "source":Ljava/io/File;
    .end local p2    # "destination":Ljava/io/File;
    .end local p3    # "deleteSource":Z
    :goto_2
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 106
    .end local v1    # "output":Ljava/io/BufferedOutputStream;
    .restart local v0    # "input":Ljava/io/FileInputStream;
    .restart local p0    # "name":Ljava/lang/String;
    .restart local p1    # "source":Ljava/io/File;
    .restart local p2    # "destination":Ljava/io/File;
    .restart local p3    # "deleteSource":Z
    :catchall_3
    move-exception v1

    .end local v0    # "input":Ljava/io/FileInputStream;
    .end local p0    # "name":Ljava/lang/String;
    .end local p1    # "source":Ljava/io/File;
    .end local p2    # "destination":Ljava/io/File;
    .end local p3    # "deleteSource":Z
    :try_start_9
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 112
    .restart local v0    # "input":Ljava/io/FileInputStream;
    .restart local p0    # "name":Ljava/lang/String;
    .restart local p1    # "source":Ljava/io/File;
    .restart local p2    # "destination":Ljava/io/File;
    .restart local p3    # "deleteSource":Z
    :catchall_4
    move-exception v2

    :try_start_a
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    goto :goto_3

    :catchall_5
    move-exception v3

    :try_start_b
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "name":Ljava/lang/String;
    .end local p1    # "source":Ljava/io/File;
    .end local p2    # "destination":Ljava/io/File;
    .end local p3    # "deleteSource":Z
    :goto_3
    throw v2
    :try_end_b
    .catch Lorg/apache/commons/compress/compressors/CompressorException; {:try_start_b .. :try_end_b} :catch_1

    .end local v0    # "input":Ljava/io/FileInputStream;
    .restart local p0    # "name":Ljava/lang/String;
    .restart local p1    # "source":Ljava/io/File;
    .restart local p2    # "destination":Ljava/io/File;
    .restart local p3    # "deleteSource":Z
    :catch_1
    move-exception v0

    .line 113
    .local v0, "e":Lorg/apache/commons/compress/compressors/CompressorException;
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public execute()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/CommonsCompressAction;->name:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/CommonsCompressAction;->source:Ljava/io/File;

    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/CommonsCompressAction;->destination:Ljava/io/File;

    iget-boolean v3, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/CommonsCompressAction;->deleteSource:Z

    invoke-static {v0, v1, v2, v3}, Lorg/apache/logging/log4j/core/appender/rolling/action/CommonsCompressAction;->execute(Ljava/lang/String;Ljava/io/File;Ljava/io/File;Z)Z

    move-result v0

    return v0
.end method

.method public getDestination()Ljava/io/File;
    .locals 1

    .line 156
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/CommonsCompressAction;->destination:Ljava/io/File;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/CommonsCompressAction;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/io/File;
    .locals 1

    .line 152
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/CommonsCompressAction;->source:Ljava/io/File;

    return-object v0
.end method

.method public isDeleteSource()Z
    .locals 1

    .line 160
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/CommonsCompressAction;->deleteSource:Z

    return v0
.end method

.method protected reportException(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "ex"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "ex"
        }
    .end annotation

    .line 138
    sget-object v0, Lorg/apache/logging/log4j/core/appender/rolling/action/CommonsCompressAction;->LOGGER:Lorg/apache/logging/log4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception during "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/CommonsCompressAction;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " compression of \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/CommonsCompressAction;->source:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 139
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/apache/logging/log4j/core/appender/rolling/action/CommonsCompressAction;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/CommonsCompressAction;->source:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/CommonsCompressAction;->destination:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", deleteSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/CommonsCompressAction;->deleteSource:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
