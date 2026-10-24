.class public final Lorg/apache/logging/log4j/core/appender/rolling/action/ZipCompressAction;
.super Lorg/apache/logging/log4j/core/appender/rolling/action/AbstractAction;
.source "ZipCompressAction.java"


# static fields
.field private static final BUF_SIZE:I = 0x2000


# instance fields
.field private final deleteSource:Z

.field private final destination:Ljava/io/File;

.field private final level:I

.field private final source:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/io/File;ZI)V
    .locals 1
    .param p1, "source"    # Ljava/io/File;
    .param p2, "destination"    # Ljava/io/File;
    .param p3, "deleteSource"    # Z
    .param p4, "level"    # I
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
            "level"
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/appender/rolling/action/AbstractAction;-><init>()V

    .line 64
    const-string v0, "source"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 65
    const-string v0, "destination"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 67
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/ZipCompressAction;->source:Ljava/io/File;

    .line 68
    iput-object p2, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/ZipCompressAction;->destination:Ljava/io/File;

    .line 69
    iput-boolean p3, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/ZipCompressAction;->deleteSource:Z

    .line 70
    iput p4, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/ZipCompressAction;->level:I

    .line 71
    return-void
.end method

.method public static execute(Ljava/io/File;Ljava/io/File;ZI)Z
    .locals 8
    .param p0, "source"    # Ljava/io/File;
    .param p1, "destination"    # Ljava/io/File;
    .param p2, "deleteSource"    # Z
    .param p3, "level"    # I
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
            "level"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 98
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 99
    .local v0, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/util/zip/ZipOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 98
    .local v2, "zos":Ljava/util/zip/ZipOutputStream;
    nop

    .line 100
    :try_start_1
    invoke-virtual {v2, p3}, Ljava/util/zip/ZipOutputStream;->setLevel(I)V

    .line 102
    new-instance v3, Ljava/util/zip/ZipEntry;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 103
    .local v3, "zipEntry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v2, v3}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 105
    const/16 v4, 0x2000

    new-array v4, v4, [B

    .line 108
    .local v4, "inbuf":[B
    :goto_0
    invoke-virtual {v0, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    move v6, v5

    .local v6, "n":I
    const/4 v7, -0x1

    if-eq v5, v7, :cond_0

    .line 109
    invoke-virtual {v2, v4, v1, v6}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 111
    .end local v3    # "zipEntry":Ljava/util/zip/ZipEntry;
    .end local v4    # "inbuf":[B
    .end local v6    # "n":I
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .end local v2    # "zos":Ljava/util/zip/ZipOutputStream;
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 113
    .end local v0    # "fis":Ljava/io/FileInputStream;
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_1

    .line 114
    sget-object v0, Lorg/apache/logging/log4j/core/appender/rolling/action/ZipCompressAction;->LOGGER:Lorg/apache/logging/log4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to delete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;)V

    .line 117
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 98
    .restart local v0    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "zos":Ljava/util/zip/ZipOutputStream;
    :catchall_0
    move-exception v1

    .end local v0    # "fis":Ljava/io/FileInputStream;
    .end local v2    # "zos":Ljava/util/zip/ZipOutputStream;
    .end local p0    # "source":Ljava/io/File;
    .end local p1    # "destination":Ljava/io/File;
    .end local p2    # "deleteSource":Z
    .end local p3    # "level":I
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 111
    .restart local v0    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "zos":Ljava/util/zip/ZipOutputStream;
    .restart local p0    # "source":Ljava/io/File;
    .restart local p1    # "destination":Ljava/io/File;
    .restart local p2    # "deleteSource":Z
    .restart local p3    # "level":I
    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v4

    :try_start_5
    invoke-virtual {v1, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "fis":Ljava/io/FileInputStream;
    .end local p0    # "source":Ljava/io/File;
    .end local p1    # "destination":Ljava/io/File;
    .end local p2    # "deleteSource":Z
    .end local p3    # "level":I
    :goto_1
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 98
    .end local v2    # "zos":Ljava/util/zip/ZipOutputStream;
    .restart local v0    # "fis":Ljava/io/FileInputStream;
    .restart local p0    # "source":Ljava/io/File;
    .restart local p1    # "destination":Ljava/io/File;
    .restart local p2    # "deleteSource":Z
    .restart local p3    # "level":I
    :catchall_3
    move-exception v1

    .end local v0    # "fis":Ljava/io/FileInputStream;
    .end local p0    # "source":Ljava/io/File;
    .end local p1    # "destination":Ljava/io/File;
    .end local p2    # "deleteSource":Z
    .end local p3    # "level":I
    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 111
    .restart local v0    # "fis":Ljava/io/FileInputStream;
    .restart local p0    # "source":Ljava/io/File;
    .restart local p1    # "destination":Ljava/io/File;
    .restart local p2    # "deleteSource":Z
    .restart local p3    # "level":I
    :catchall_4
    move-exception v2

    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v2

    .line 120
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

    .line 81
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/ZipCompressAction;->source:Ljava/io/File;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/ZipCompressAction;->destination:Ljava/io/File;

    iget-boolean v2, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/ZipCompressAction;->deleteSource:Z

    iget v3, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/ZipCompressAction;->level:I

    invoke-static {v0, v1, v2, v3}, Lorg/apache/logging/log4j/core/appender/rolling/action/ZipCompressAction;->execute(Ljava/io/File;Ljava/io/File;ZI)Z

    move-result v0

    return v0
.end method

.method public getDestination()Ljava/io/File;
    .locals 1

    .line 144
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/ZipCompressAction;->destination:Ljava/io/File;

    return-object v0
.end method

.method public getLevel()I
    .locals 1

    .line 152
    iget v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/ZipCompressAction;->level:I

    return v0
.end method

.method public getSource()Ljava/io/File;
    .locals 1

    .line 140
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/ZipCompressAction;->source:Ljava/io/File;

    return-object v0
.end method

.method public isDeleteSource()Z
    .locals 1

    .line 148
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/ZipCompressAction;->deleteSource:Z

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

    .line 130
    sget-object v0, Lorg/apache/logging/log4j/core/appender/rolling/action/ZipCompressAction;->LOGGER:Lorg/apache/logging/log4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception during compression of \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/ZipCompressAction;->source:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 131
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/apache/logging/log4j/core/appender/rolling/action/ZipCompressAction;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/ZipCompressAction;->source:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/ZipCompressAction;->destination:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/ZipCompressAction;->level:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", deleteSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/ZipCompressAction;->deleteSource:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
