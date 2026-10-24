.class public Lorg/apache/logging/log4j/core/appender/RandomAccessFileManager;
.super Lorg/apache/logging/log4j/core/appender/OutputStreamManager;
.source "RandomAccessFileManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/appender/RandomAccessFileManager$RandomAccessFileManagerFactory;,
        Lorg/apache/logging/log4j/core/appender/RandomAccessFileManager$FactoryData;
    }
.end annotation


# static fields
.field static final DEFAULT_BUFFER_SIZE:I = 0x40000

.field private static final FACTORY:Lorg/apache/logging/log4j/core/appender/RandomAccessFileManager$RandomAccessFileManagerFactory;


# instance fields
.field private final advertiseURI:Ljava/lang/String;

.field private final randomAccessFile:Ljava/io/RandomAccessFile;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    new-instance v0, Lorg/apache/logging/log4j/core/appender/RandomAccessFileManager$RandomAccessFileManagerFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/appender/RandomAccessFileManager$RandomAccessFileManagerFactory;-><init>(Lorg/apache/logging/log4j/core/appender/RandomAccessFileManager$1;)V

    sput-object v0, Lorg/apache/logging/log4j/core/appender/RandomAccessFileManager;->FACTORY:Lorg/apache/logging/log4j/core/appender/RandomAccessFileManager$RandomAccessFileManagerFactory;

    return-void
.end method

.method protected constructor <init>(Lorg/apache/logging/log4j/core/LoggerContext;Ljava/io/RandomAccessFile;Ljava/lang/String;Ljava/io/OutputStream;ILjava/lang/String;Lorg/apache/logging/log4j/core/Layout;Z)V
    .locals 10
    .param p1, "loggerContext"    # Lorg/apache/logging/log4j/core/LoggerContext;
    .param p2, "file"    # Ljava/io/RandomAccessFile;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "os"    # Ljava/io/OutputStream;
    .param p5, "bufferSize"    # I
    .param p6, "advertiseURI"    # Ljava/lang/String;
    .param p8, "writeHeader"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "loggerContext",
            "file",
            "fileName",
            "os",
            "bufferSize",
            "advertiseURI",
            "layout",
            "writeHeader"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/LoggerContext;",
            "Ljava/io/RandomAccessFile;",
            "Ljava/lang/String;",
            "Ljava/io/OutputStream;",
            "I",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/Layout<",
            "+",
            "Ljava/io/Serializable;",
            ">;Z)V"
        }
    .end annotation

    .line 50
    .local p7, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    move-object v8, p0

    move v9, p5

    new-array v0, v9, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move-object v3, p3

    move-object/from16 v5, p7

    move/from16 v6, p8

    invoke-direct/range {v0 .. v7}, Lorg/apache/logging/log4j/core/appender/OutputStreamManager;-><init>(Lorg/apache/logging/log4j/core/LoggerContext;Ljava/io/OutputStream;Ljava/lang/String;ZLorg/apache/logging/log4j/core/Layout;ZLjava/nio/ByteBuffer;)V

    .line 51
    move-object v0, p2

    iput-object v0, v8, Lorg/apache/logging/log4j/core/appender/RandomAccessFileManager;->randomAccessFile:Ljava/io/RandomAccessFile;

    .line 52
    move-object/from16 v1, p6

    iput-object v1, v8, Lorg/apache/logging/log4j/core/appender/RandomAccessFileManager;->advertiseURI:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public static getFileManager(Ljava/lang/String;ZZILjava/lang/String;Lorg/apache/logging/log4j/core/Layout;Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/appender/RandomAccessFileManager;
    .locals 9
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "append"    # Z
    .param p2, "immediateFlush"    # Z
    .param p3, "bufferSize"    # I
    .param p4, "advertiseURI"    # Ljava/lang/String;
    .param p6, "configuration"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "fileName",
            "append",
            "immediateFlush",
            "bufferSize",
            "advertiseURI",
            "layout",
            "configuration"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZI",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/Layout<",
            "+",
            "Ljava/io/Serializable;",
            ">;",
            "Lorg/apache/logging/log4j/core/config/Configuration;",
            ")",
            "Lorg/apache/logging/log4j/core/appender/RandomAccessFileManager;"
        }
    .end annotation

    .line 72
    .local p5, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    const-class v0, Lorg/apache/logging/log4j/core/appender/RandomAccessFileManager;

    new-instance v8, Lorg/apache/logging/log4j/core/appender/RandomAccessFileManager$FactoryData;

    move-object v1, v8

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lorg/apache/logging/log4j/core/appender/RandomAccessFileManager$FactoryData;-><init>(ZZILjava/lang/String;Lorg/apache/logging/log4j/core/Layout;Lorg/apache/logging/log4j/core/config/Configuration;)V

    sget-object v1, Lorg/apache/logging/log4j/core/appender/RandomAccessFileManager;->FACTORY:Lorg/apache/logging/log4j/core/appender/RandomAccessFileManager$RandomAccessFileManagerFactory;

    invoke-static {p0, v8, v1}, Lorg/apache/logging/log4j/core/appender/RandomAccessFileManager;->getManager(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/logging/log4j/core/appender/ManagerFactory;)Lorg/apache/logging/log4j/core/appender/OutputStreamManager;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/logging/log4j/core/appender/RandomAccessFileManager;->narrow(Ljava/lang/Class;Lorg/apache/logging/log4j/core/appender/AbstractManager;)Lorg/apache/logging/log4j/core/appender/AbstractManager;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/RandomAccessFileManager;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized closeOutputStream()Z
    .locals 2

    monitor-enter p0

    .line 112
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/RandomAccessFileManager;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    :try_start_1
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/RandomAccessFileManager;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 116
    .end local p0    # "this":Lorg/apache/logging/log4j/core/appender/RandomAccessFileManager;
    :catch_0
    move-exception v0

    .line 117
    .local v0, "ex":Ljava/io/IOException;
    :try_start_2
    const-string v1, "Unable to close RandomAccessFile"

    invoke-virtual {p0, v1, v0}, Lorg/apache/logging/log4j/core/appender/RandomAccessFileManager;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 118
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 111
    .end local v0    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized flush()V
    .locals 1

    monitor-enter p0

    .line 107
    :try_start_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/RandomAccessFileManager;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/core/appender/RandomAccessFileManager;->flushBuffer(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    monitor-exit p0

    return-void

    .line 106
    .end local p0    # "this":Lorg/apache/logging/log4j/core/appender/RandomAccessFileManager;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getBufferSize()I
    .locals 1

    .line 136
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/RandomAccessFileManager;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    return v0
.end method

.method public getContentFormat()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 149
    new-instance v0, Ljava/util/HashMap;

    .line 150
    invoke-super {p0}, Lorg/apache/logging/log4j/core/appender/OutputStreamManager;->getContentFormat()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 151
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/RandomAccessFileManager;->advertiseURI:Ljava/lang/String;

    const-string v2, "fileURI"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 128
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/RandomAccessFileManager;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEndOfBatch()Ljava/lang/Boolean;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 83
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setEndOfBatch(Z)V
    .locals 0
    .param p1, "endOfBatch"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "endOfBatch"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 93
    return-void
.end method

.method protected writeToDestination([BII)V
    .locals 3
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "bytes",
            "offset",
            "length"
        }
    .end annotation

    .line 98
    :try_start_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/RandomAccessFileManager;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    nop

    .line 103
    return-void

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error writing to RandomAccessFile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/RandomAccessFileManager;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "msg":Ljava/lang/String;
    new-instance v2, Lorg/apache/logging/log4j/core/appender/AppenderLoggingException;

    invoke-direct {v2, v1, v0}, Lorg/apache/logging/log4j/core/appender/AppenderLoggingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
