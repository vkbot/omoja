.class public final Lorg/apache/logging/log4j/core/appender/rolling/action/GzCompressAction;
.super Lorg/apache/logging/log4j/core/appender/rolling/action/AbstractAction;
.source "GzCompressAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/appender/rolling/action/GzCompressAction$ConfigurableLevelGZIPOutputStream;
    }
.end annotation


# static fields
.field private static final BUF_SIZE:I = 0x2000


# instance fields
.field private final compressionLevel:I

.field private final deleteSource:Z

.field private final destination:Ljava/io/File;

.field private final source:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/io/File;Z)V
    .locals 1
    .param p1, "source"    # Ljava/io/File;
    .param p2, "destination"    # Ljava/io/File;
    .param p3, "deleteSource"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "source",
            "destination",
            "deleteSource"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 86
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/logging/log4j/core/appender/rolling/action/GzCompressAction;-><init>(Ljava/io/File;Ljava/io/File;ZI)V

    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/File;ZI)V
    .locals 1
    .param p1, "source"    # Ljava/io/File;
    .param p2, "destination"    # Ljava/io/File;
    .param p3, "deleteSource"    # Z
    .param p4, "compressionLevel"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "source",
            "destination",
            "deleteSource",
            "compressionLevel"
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/appender/rolling/action/AbstractAction;-><init>()V

    .line 70
    const-string v0, "source"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 71
    const-string v0, "destination"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 73
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/GzCompressAction;->source:Ljava/io/File;

    .line 74
    iput-object p2, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/GzCompressAction;->destination:Ljava/io/File;

    .line 75
    iput-boolean p3, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/GzCompressAction;->deleteSource:Z

    .line 76
    iput p4, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/GzCompressAction;->compressionLevel:I

    .line 77
    return-void
.end method

.method public static execute(Ljava/io/File;Ljava/io/File;Z)Z
    .locals 1
    .param p0, "source"    # Ljava/io/File;
    .param p1, "destination"    # Ljava/io/File;
    .param p2, "deleteSource"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 114
    const/4 v0, -0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/logging/log4j/core/appender/rolling/action/GzCompressAction;->execute(Ljava/io/File;Ljava/io/File;ZI)Z

    move-result v0

    return v0
.end method

.method public static execute(Ljava/io/File;Ljava/io/File;ZI)Z
    .locals 9
    .param p0, "source"    # Ljava/io/File;
    .param p1, "destination"    # Ljava/io/File;
    .param p2, "deleteSource"    # Z
    .param p3, "compressionLevel"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "source",
            "destination",
            "deleteSource",
            "compressionLevel"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 135
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 136
    .local v0, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    .line 135
    .local v2, "fos":Ljava/io/OutputStream;
    nop

    .line 137
    :try_start_1
    new-instance v3, Lorg/apache/logging/log4j/core/appender/rolling/action/GzCompressAction$ConfigurableLevelGZIPOutputStream;

    const/16 v4, 0x2000

    invoke-direct {v3, v2, v4, p3}, Lorg/apache/logging/log4j/core/appender/rolling/action/GzCompressAction$ConfigurableLevelGZIPOutputStream;-><init>(Ljava/io/OutputStream;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    .line 135
    .local v3, "gzipOut":Ljava/io/OutputStream;
    nop

    .line 140
    :try_start_2
    new-instance v5, Ljava/io/BufferedOutputStream;

    invoke-direct {v5, v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 135
    .local v5, "os":Ljava/io/OutputStream;
    nop

    .line 141
    :try_start_3
    new-array v4, v4, [B

    .line 144
    .local v4, "inbuf":[B
    :goto_0
    invoke-virtual {v0, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    move v7, v6

    .local v7, "n":I
    const/4 v8, -0x1

    if-eq v6, v8, :cond_0

    .line 145
    invoke-virtual {v5, v4, v1, v7}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 147
    .end local v4    # "inbuf":[B
    .end local v7    # "n":I
    :cond_0
    :try_start_4
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .end local v5    # "os":Ljava/io/OutputStream;
    :try_start_5
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    .end local v3    # "gzipOut":Ljava/io/OutputStream;
    :try_start_6
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_9

    .end local v2    # "fos":Ljava/io/OutputStream;
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 149
    .end local v0    # "fis":Ljava/io/FileInputStream;
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_1

    .line 150
    sget-object v0, Lorg/apache/logging/log4j/core/appender/rolling/action/GzCompressAction;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v1, "Unable to delete {}."

    invoke-interface {v0, v1, p0}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 153
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 135
    .restart local v0    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fos":Ljava/io/OutputStream;
    .restart local v3    # "gzipOut":Ljava/io/OutputStream;
    .restart local v5    # "os":Ljava/io/OutputStream;
    :catchall_0
    move-exception v1

    .end local v0    # "fis":Ljava/io/FileInputStream;
    .end local v2    # "fos":Ljava/io/OutputStream;
    .end local v3    # "gzipOut":Ljava/io/OutputStream;
    .end local v5    # "os":Ljava/io/OutputStream;
    .end local p0    # "source":Ljava/io/File;
    .end local p1    # "destination":Ljava/io/File;
    .end local p2    # "deleteSource":Z
    .end local p3    # "compressionLevel":I
    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 147
    .restart local v0    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fos":Ljava/io/OutputStream;
    .restart local v3    # "gzipOut":Ljava/io/OutputStream;
    .restart local v5    # "os":Ljava/io/OutputStream;
    .restart local p0    # "source":Ljava/io/File;
    .restart local p1    # "destination":Ljava/io/File;
    .restart local p2    # "deleteSource":Z
    .restart local p3    # "compressionLevel":I
    :catchall_1
    move-exception v4

    :try_start_8
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v6

    :try_start_9
    invoke-virtual {v1, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "fis":Ljava/io/FileInputStream;
    .end local v2    # "fos":Ljava/io/OutputStream;
    .end local v3    # "gzipOut":Ljava/io/OutputStream;
    .end local p0    # "source":Ljava/io/File;
    .end local p1    # "destination":Ljava/io/File;
    .end local p2    # "deleteSource":Z
    .end local p3    # "compressionLevel":I
    :goto_1
    throw v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 135
    .end local v5    # "os":Ljava/io/OutputStream;
    .restart local v0    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fos":Ljava/io/OutputStream;
    .restart local v3    # "gzipOut":Ljava/io/OutputStream;
    .restart local p0    # "source":Ljava/io/File;
    .restart local p1    # "destination":Ljava/io/File;
    .restart local p2    # "deleteSource":Z
    .restart local p3    # "compressionLevel":I
    :catchall_3
    move-exception v1

    .end local v0    # "fis":Ljava/io/FileInputStream;
    .end local v2    # "fos":Ljava/io/OutputStream;
    .end local v3    # "gzipOut":Ljava/io/OutputStream;
    .end local p0    # "source":Ljava/io/File;
    .end local p1    # "destination":Ljava/io/File;
    .end local p2    # "deleteSource":Z
    .end local p3    # "compressionLevel":I
    :try_start_a
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 147
    .restart local v0    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fos":Ljava/io/OutputStream;
    .restart local v3    # "gzipOut":Ljava/io/OutputStream;
    .restart local p0    # "source":Ljava/io/File;
    .restart local p1    # "destination":Ljava/io/File;
    .restart local p2    # "deleteSource":Z
    .restart local p3    # "compressionLevel":I
    :catchall_4
    move-exception v4

    :try_start_b
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception v5

    :try_start_c
    invoke-virtual {v1, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "fis":Ljava/io/FileInputStream;
    .end local v2    # "fos":Ljava/io/OutputStream;
    .end local p0    # "source":Ljava/io/File;
    .end local p1    # "destination":Ljava/io/File;
    .end local p2    # "deleteSource":Z
    .end local p3    # "compressionLevel":I
    :goto_2
    throw v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 135
    .end local v3    # "gzipOut":Ljava/io/OutputStream;
    .restart local v0    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fos":Ljava/io/OutputStream;
    .restart local p0    # "source":Ljava/io/File;
    .restart local p1    # "destination":Ljava/io/File;
    .restart local p2    # "deleteSource":Z
    .restart local p3    # "compressionLevel":I
    :catchall_6
    move-exception v1

    .end local v0    # "fis":Ljava/io/FileInputStream;
    .end local v2    # "fos":Ljava/io/OutputStream;
    .end local p0    # "source":Ljava/io/File;
    .end local p1    # "destination":Ljava/io/File;
    .end local p2    # "deleteSource":Z
    .end local p3    # "compressionLevel":I
    :try_start_d
    throw v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    .line 147
    .restart local v0    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fos":Ljava/io/OutputStream;
    .restart local p0    # "source":Ljava/io/File;
    .restart local p1    # "destination":Ljava/io/File;
    .restart local p2    # "deleteSource":Z
    .restart local p3    # "compressionLevel":I
    :catchall_7
    move-exception v3

    :try_start_e
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    goto :goto_3

    :catchall_8
    move-exception v4

    :try_start_f
    invoke-virtual {v1, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "fis":Ljava/io/FileInputStream;
    .end local p0    # "source":Ljava/io/File;
    .end local p1    # "destination":Ljava/io/File;
    .end local p2    # "deleteSource":Z
    .end local p3    # "compressionLevel":I
    :goto_3
    throw v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    .line 135
    .end local v2    # "fos":Ljava/io/OutputStream;
    .restart local v0    # "fis":Ljava/io/FileInputStream;
    .restart local p0    # "source":Ljava/io/File;
    .restart local p1    # "destination":Ljava/io/File;
    .restart local p2    # "deleteSource":Z
    .restart local p3    # "compressionLevel":I
    :catchall_9
    move-exception v1

    .end local v0    # "fis":Ljava/io/FileInputStream;
    .end local p0    # "source":Ljava/io/File;
    .end local p1    # "destination":Ljava/io/File;
    .end local p2    # "deleteSource":Z
    .end local p3    # "compressionLevel":I
    :try_start_10
    throw v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_a

    .line 147
    .restart local v0    # "fis":Ljava/io/FileInputStream;
    .restart local p0    # "source":Ljava/io/File;
    .restart local p1    # "destination":Ljava/io/File;
    .restart local p2    # "deleteSource":Z
    .restart local p3    # "compressionLevel":I
    :catchall_a
    move-exception v2

    :try_start_11
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_b

    goto :goto_4

    :catchall_b
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v2

    .line 156
    .end local v0    # "fis":Ljava/io/FileInputStream;
    :cond_2
    return v1
.end method


# virtual methods
.method public execute()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/GzCompressAction;->source:Ljava/io/File;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/GzCompressAction;->destination:Ljava/io/File;

    iget-boolean v2, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/GzCompressAction;->deleteSource:Z

    iget v3, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/GzCompressAction;->compressionLevel:I

    invoke-static {v0, v1, v2, v3}, Lorg/apache/logging/log4j/core/appender/rolling/action/GzCompressAction;->execute(Ljava/io/File;Ljava/io/File;ZI)Z

    move-result v0

    return v0
.end method

.method public getDestination()Ljava/io/File;
    .locals 1

    .line 188
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/GzCompressAction;->destination:Ljava/io/File;

    return-object v0
.end method

.method public getSource()Ljava/io/File;
    .locals 1

    .line 184
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/GzCompressAction;->source:Ljava/io/File;

    return-object v0
.end method

.method public isDeleteSource()Z
    .locals 1

    .line 192
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/GzCompressAction;->deleteSource:Z

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

    .line 174
    sget-object v0, Lorg/apache/logging/log4j/core/appender/rolling/action/GzCompressAction;->LOGGER:Lorg/apache/logging/log4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception during compression of \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/GzCompressAction;->source:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 175
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/apache/logging/log4j/core/appender/rolling/action/GzCompressAction;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/GzCompressAction;->source:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/GzCompressAction;->destination:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", deleteSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/GzCompressAction;->deleteSource:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
