.class public Lorg/apache/logging/log4j/core/appender/OutputStreamManager;
.super Lorg/apache/logging/log4j/core/appender/AbstractManager;
.source "OutputStreamManager.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/layout/ByteBufferDestination;


# instance fields
.field protected byteBuffer:Ljava/nio/ByteBuffer;

.field protected final layout:Lorg/apache/logging/log4j/core/Layout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/logging/log4j/core/Layout<",
            "*>;"
        }
    .end annotation
.end field

.field private volatile outputStream:Ljava/io/OutputStream;

.field private skipFooter:Z


# direct methods
.method protected constructor <init>(Ljava/io/OutputStream;Ljava/lang/String;Lorg/apache/logging/log4j/core/Layout;Z)V
    .locals 6
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "streamName"    # Ljava/lang/String;
    .param p4, "writeHeader"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "os",
            "streamName",
            "layout",
            "writeHeader"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/Layout<",
            "*>;Z)V"
        }
    .end annotation

    .line 45
    .local p3, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<*>;"
    sget v5, Lorg/apache/logging/log4j/core/util/Constants;->ENCODER_BYTE_BUFFER_SIZE:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/logging/log4j/core/appender/OutputStreamManager;-><init>(Ljava/io/OutputStream;Ljava/lang/String;Lorg/apache/logging/log4j/core/Layout;ZI)V

    .line 46
    return-void
.end method

.method protected constructor <init>(Ljava/io/OutputStream;Ljava/lang/String;Lorg/apache/logging/log4j/core/Layout;ZI)V
    .locals 7
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "streamName"    # Ljava/lang/String;
    .param p4, "writeHeader"    # Z
    .param p5, "bufferSize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "os",
            "streamName",
            "layout",
            "writeHeader",
            "bufferSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/Layout<",
            "*>;ZI)V"
        }
    .end annotation

    .line 50
    .local p3, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<*>;"
    new-array v0, p5, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lorg/apache/logging/log4j/core/appender/OutputStreamManager;-><init>(Ljava/io/OutputStream;Ljava/lang/String;Lorg/apache/logging/log4j/core/Layout;ZLjava/nio/ByteBuffer;)V

    .line 51
    return-void
.end method

.method protected constructor <init>(Ljava/io/OutputStream;Ljava/lang/String;Lorg/apache/logging/log4j/core/Layout;ZLjava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "streamName"    # Ljava/lang/String;
    .param p4, "writeHeader"    # Z
    .param p5, "byteBuffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "os",
            "streamName",
            "layout",
            "writeHeader",
            "byteBuffer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/Layout<",
            "*>;Z",
            "Ljava/nio/ByteBuffer;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 60
    .local p3, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<*>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lorg/apache/logging/log4j/core/appender/AbstractManager;-><init>(Lorg/apache/logging/log4j/core/LoggerContext;Ljava/lang/String;)V

    .line 61
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/OutputStreamManager;->outputStream:Ljava/io/OutputStream;

    .line 62
    iput-object p3, p0, Lorg/apache/logging/log4j/core/appender/OutputStreamManager;->layout:Lorg/apache/logging/log4j/core/Layout;

    .line 63
    if-eqz p4, :cond_0

    .line 64
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/core/appender/OutputStreamManager;->writeHeader(Ljava/io/OutputStream;)V

    .line 66
    :cond_0
    const-string v0, "byteBuffer"

    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p5

    check-cast v0, Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/appender/OutputStreamManager;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 67
    return-void
.end method

.method protected constructor <init>(Lorg/apache/logging/log4j/core/LoggerContext;Ljava/io/OutputStream;Ljava/lang/String;ZLorg/apache/logging/log4j/core/Layout;ZLjava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "loggerContext"    # Lorg/apache/logging/log4j/core/LoggerContext;
    .param p2, "os"    # Ljava/io/OutputStream;
    .param p3, "streamName"    # Ljava/lang/String;
    .param p4, "createOnDemand"    # Z
    .param p6, "writeHeader"    # Z
    .param p7, "byteBuffer"    # Ljava/nio/ByteBuffer;
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
            "loggerContext",
            "os",
            "streamName",
            "createOnDemand",
            "layout",
            "writeHeader",
            "byteBuffer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/LoggerContext;",
            "Ljava/io/OutputStream;",
            "Ljava/lang/String;",
            "Z",
            "Lorg/apache/logging/log4j/core/Layout<",
            "+",
            "Ljava/io/Serializable;",
            ">;Z",
            "Ljava/nio/ByteBuffer;",
            ")V"
        }
    .end annotation

    .line 75
    .local p5, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    invoke-direct {p0, p1, p3}, Lorg/apache/logging/log4j/core/appender/AbstractManager;-><init>(Lorg/apache/logging/log4j/core/LoggerContext;Ljava/lang/String;)V

    .line 76
    if-eqz p4, :cond_0

    if-eqz p2, :cond_0

    .line 77
    sget-object v0, Lorg/apache/logging/log4j/core/appender/OutputStreamManager;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v1, "Invalid OutputStreamManager configuration for \'{}\': You cannot both set the OutputStream and request on-demand."

    invoke-interface {v0, v1, p3}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 81
    :cond_0
    iput-object p5, p0, Lorg/apache/logging/log4j/core/appender/OutputStreamManager;->layout:Lorg/apache/logging/log4j/core/Layout;

    .line 82
    const-string v0, "byteBuffer"

    invoke-static {p7, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p7

    check-cast v0, Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/appender/OutputStreamManager;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 83
    iput-object p2, p0, Lorg/apache/logging/log4j/core/appender/OutputStreamManager;->outputStream:Ljava/io/OutputStream;

    .line 84
    if-eqz p6, :cond_1

    .line 85
    invoke-virtual {p0, p2}, Lorg/apache/logging/log4j/core/appender/OutputStreamManager;->writeHeader(Ljava/io/OutputStream;)V

    .line 87
    :cond_1
    return-void
.end method

.method public static getManager(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/logging/log4j/core/appender/ManagerFactory;)Lorg/apache/logging/log4j/core/appender/OutputStreamManager;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "name",
            "data",
            "factory"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Lorg/apache/logging/log4j/core/appender/ManagerFactory<",
            "+",
            "Lorg/apache/logging/log4j/core/appender/OutputStreamManager;",
            "TT;>;)",
            "Lorg/apache/logging/log4j/core/appender/OutputStreamManager;"
        }
    .end annotation

    .line 100
    .local p1, "data":Ljava/lang/Object;, "TT;"
    .local p2, "factory":Lorg/apache/logging/log4j/core/appender/ManagerFactory;, "Lorg/apache/logging/log4j/core/appender/ManagerFactory<+Lorg/apache/logging/log4j/core/appender/OutputStreamManager;TT;>;"
    invoke-static {p0, p2, p1}, Lorg/apache/logging/log4j/core/appender/AbstractManager;->getManager(Ljava/lang/String;Lorg/apache/logging/log4j/core/appender/ManagerFactory;Ljava/lang/Object;)Lorg/apache/logging/log4j/core/appender/AbstractManager;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/OutputStreamManager;

    return-object v0
.end method


# virtual methods
.method protected declared-synchronized closeOutputStream()Z
    .locals 4

    monitor-enter p0

    .line 299
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/OutputStreamManager;->flush()V

    .line 300
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/OutputStreamManager;->outputStream:Ljava/io/OutputStream;

    .line 301
    .local v0, "stream":Ljava/io/OutputStream;
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    if-eq v0, v2, :cond_1

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 305
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 306
    sget-object v2, Lorg/apache/logging/log4j/core/appender/OutputStreamManager;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v3, "OutputStream closed"

    invoke-interface {v2, v3}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 310
    nop

    .line 311
    monitor-exit p0

    return v1

    .line 307
    .end local p0    # "this":Lorg/apache/logging/log4j/core/appender/OutputStreamManager;
    :catch_0
    move-exception v1

    .line 308
    .local v1, "ex":Ljava/io/IOException;
    :try_start_2
    const-string v2, "Unable to close stream"

    invoke-virtual {p0, v2, v1}, Lorg/apache/logging/log4j/core/appender/OutputStreamManager;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 309
    const/4 v2, 0x0

    monitor-exit p0

    return v2

    .line 302
    .end local v1    # "ex":Ljava/io/IOException;
    :cond_1
    :goto_0
    monitor-exit p0

    return v1

    .line 298
    .end local v0    # "stream":Ljava/io/OutputStream;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected createOutputStream()Ljava/io/OutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " must implement createOutputStream()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public drain(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 0
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "buf"
        }
    .end annotation

    .line 343
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/core/appender/OutputStreamManager;->flushBuffer(Ljava/nio/ByteBuffer;)V

    .line 344
    return-object p1
.end method

.method public declared-synchronized flush()V
    .locals 1

    monitor-enter p0

    .line 294
    :try_start_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/OutputStreamManager;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/core/appender/OutputStreamManager;->flushBuffer(Ljava/nio/ByteBuffer;)V

    .line 295
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/OutputStreamManager;->flushDestination()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    monitor-exit p0

    return-void

    .line 293
    .end local p0    # "this":Lorg/apache/logging/log4j/core/appender/OutputStreamManager;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized flushBuffer(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "buf"
        }
    .end annotation

    monitor-enter p0

    .line 280
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 282
    :try_start_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-lez v0, :cond_0

    .line 283
    :try_start_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/logging/log4j/core/appender/OutputStreamManager;->writeToDestination([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 286
    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    :try_start_3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 287
    nop

    .line 288
    monitor-exit p0

    return-void

    .line 286
    .end local p0    # "this":Lorg/apache/logging/log4j/core/appender/OutputStreamManager;
    :catchall_1
    move-exception v0

    :goto_1
    :try_start_4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 279
    .end local p1    # "buf":Ljava/nio/ByteBuffer;
    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized flushDestination()V
    .locals 5

    monitor-enter p0

    .line 261
    :try_start_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/OutputStreamManager;->outputStream:Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    .local v0, "stream":Ljava/io/OutputStream;
    if-eqz v0, :cond_0

    .line 264
    :try_start_1
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 267
    goto :goto_0

    .line 265
    .end local p0    # "this":Lorg/apache/logging/log4j/core/appender/OutputStreamManager;
    :catch_0
    move-exception v1

    .line 266
    .local v1, "ex":Ljava/io/IOException;
    :try_start_2
    new-instance v2, Lorg/apache/logging/log4j/core/appender/AppenderLoggingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error flushing stream "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/OutputStreamManager;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/apache/logging/log4j/core/appender/AppenderLoggingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 269
    .end local v1    # "ex":Ljava/io/IOException;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 260
    .end local v0    # "stream":Ljava/io/OutputStream;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getByteBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 321
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/OutputStreamManager;->byteBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method protected getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/OutputStreamManager;->outputStream:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    .line 165
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/OutputStreamManager;->createOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/appender/OutputStreamManager;->outputStream:Ljava/io/OutputStream;

    .line 167
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/OutputStreamManager;->outputStream:Ljava/io/OutputStream;

    return-object v0
.end method

.method public hasOutputStream()Z
    .locals 1

    .line 160
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/OutputStreamManager;->outputStream:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOpen()Z
    .locals 1

    .line 156
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/OutputStreamManager;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public releaseSub(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "timeout",
            "timeUnit"
        }
    .end annotation

    .line 121
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/OutputStreamManager;->writeFooter()V

    .line 122
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/OutputStreamManager;->closeOutputStream()Z

    move-result v0

    return v0
.end method

.method protected setOutputStream(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "os"
        }
    .end annotation

    .line 171
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/OutputStreamManager;->outputStream:Ljava/io/OutputStream;

    .line 172
    return-void
.end method

.method public skipFooter(Z)V
    .locals 0
    .param p1, "skipFooter"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "skipFooter"
        }
    .end annotation

    .line 113
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/appender/OutputStreamManager;->skipFooter:Z

    .line 114
    return-void
.end method

.method protected write([B)V
    .locals 2
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "bytes"
        }
    .end annotation

    .line 180
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, v1}, Lorg/apache/logging/log4j/core/appender/OutputStreamManager;->write([BIIZ)V

    .line 181
    return-void
.end method

.method protected write([BII)V
    .locals 0
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

    .line 207
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/logging/log4j/core/appender/OutputStreamManager;->writeBytes([BII)V

    .line 208
    return-void
.end method

.method protected declared-synchronized write([BIIZ)V
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "immediateFlush"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "bytes",
            "offset",
            "length",
            "immediateFlush"
        }
    .end annotation

    monitor-enter p0

    .line 220
    if-eqz p4, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/OutputStreamManager;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-nez v0, :cond_0

    .line 221
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/logging/log4j/core/appender/OutputStreamManager;->writeToDestination([BII)V

    .line 222
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/OutputStreamManager;->flushDestination()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    monitor-exit p0

    return-void

    .line 225
    .end local p0    # "this":Lorg/apache/logging/log4j/core/appender/OutputStreamManager;
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/OutputStreamManager;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-lt p3, v0, :cond_1

    .line 227
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/OutputStreamManager;->flush()V

    .line 228
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/logging/log4j/core/appender/OutputStreamManager;->writeToDestination([BII)V

    goto :goto_0

    .line 230
    :cond_1
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/OutputStreamManager;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-le p3, v0, :cond_2

    .line 231
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/OutputStreamManager;->flush()V

    .line 233
    :cond_2
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/OutputStreamManager;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 235
    :goto_0
    if-eqz p4, :cond_3

    .line 236
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/OutputStreamManager;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 238
    :cond_3
    monitor-exit p0

    return-void

    .line 219
    .end local p1    # "bytes":[B
    .end local p2    # "offset":I
    .end local p3    # "length":I
    .end local p4    # "immediateFlush":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected write([BZ)V
    .locals 2
    .param p1, "bytes"    # [B
    .param p2, "immediateFlush"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "bytes",
            "immediateFlush"
        }
    .end annotation

    .line 190
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Lorg/apache/logging/log4j/core/appender/OutputStreamManager;->write([BIIZ)V

    .line 191
    return-void
.end method

.method public writeBytes(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "data"
        }
    .end annotation

    .line 349
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-nez v0, :cond_0

    .line 350
    return-void

    .line 352
    :cond_0
    monitor-enter p0

    .line 353
    :try_start_0
    invoke-static {p1, p0}, Lorg/apache/logging/log4j/core/layout/ByteBufferDestinationHelper;->writeToUnsynchronized(Ljava/nio/ByteBuffer;Lorg/apache/logging/log4j/core/layout/ByteBufferDestination;)V

    .line 354
    monitor-exit p0

    .line 355
    return-void

    .line 354
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public writeBytes([BII)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "data",
            "offset",
            "length"
        }
    .end annotation

    .line 195
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/logging/log4j/core/appender/OutputStreamManager;->write([BIIZ)V

    .line 196
    return-void
.end method

.method protected writeFooter()V
    .locals 2

    .line 142
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/OutputStreamManager;->layout:Lorg/apache/logging/log4j/core/Layout;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lorg/apache/logging/log4j/core/appender/OutputStreamManager;->skipFooter:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 145
    :cond_0
    invoke-interface {v0}, Lorg/apache/logging/log4j/core/Layout;->getFooter()[B

    move-result-object v0

    .line 146
    .local v0, "footer":[B
    if-eqz v0, :cond_1

    .line 147
    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/core/appender/OutputStreamManager;->write([B)V

    .line 149
    :cond_1
    return-void

    .line 143
    .end local v0    # "footer":[B
    :cond_2
    :goto_0
    return-void
.end method

.method protected writeHeader(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "os"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/OutputStreamManager;->layout:Lorg/apache/logging/log4j/core/Layout;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 127
    invoke-interface {v0}, Lorg/apache/logging/log4j/core/Layout;->getHeader()[B

    move-result-object v0

    .line 128
    .local v0, "header":[B
    if-eqz v0, :cond_0

    .line 130
    const/4 v1, 0x0

    :try_start_0
    array-length v2, v0

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    goto :goto_0

    .line 131
    :catch_0
    move-exception v1

    .line 132
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "Unable to write header"

    invoke-virtual {p0, v2, v1}, Lorg/apache/logging/log4j/core/appender/OutputStreamManager;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 136
    .end local v0    # "header":[B
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-void
.end method

.method protected declared-synchronized writeToDestination([BII)V
    .locals 4
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

    monitor-enter p0

    .line 250
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/OutputStreamManager;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    nop

    .line 254
    monitor-exit p0

    return-void

    .line 249
    .end local p0    # "this":Lorg/apache/logging/log4j/core/appender/OutputStreamManager;
    .end local p1    # "bytes":[B
    .end local p2    # "offset":I
    .end local p3    # "length":I
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 251
    .restart local p1    # "bytes":[B
    .restart local p2    # "offset":I
    .restart local p3    # "length":I
    :catch_0
    move-exception v0

    .line 252
    .local v0, "ex":Ljava/io/IOException;
    :try_start_1
    new-instance v1, Lorg/apache/logging/log4j/core/appender/AppenderLoggingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error writing to stream "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/OutputStreamManager;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/logging/log4j/core/appender/AppenderLoggingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 249
    .end local v0    # "ex":Ljava/io/IOException;
    .end local p1    # "bytes":[B
    .end local p2    # "offset":I
    .end local p3    # "length":I
    :goto_0
    monitor-exit p0

    throw p1
.end method
