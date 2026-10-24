.class public Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager;
.super Lorg/apache/logging/log4j/core/appender/OutputStreamManager;
.source "MemoryMappedFileManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager$MemoryMappedFileManagerFactory;,
        Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager$FactoryData;
    }
.end annotation


# static fields
.field static final DEFAULT_REGION_LENGTH:I = 0x2000000

.field private static final FACTORY:Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager$MemoryMappedFileManagerFactory;

.field private static final MAX_REMAP_COUNT:I = 0xa

.field private static final NANOS_PER_MILLISEC:D = 1000000.0


# instance fields
.field private final advertiseURI:Ljava/lang/String;

.field private final immediateFlush:Z

.field private mappedBuffer:Ljava/nio/MappedByteBuffer;

.field private mappingOffset:J

.field private final randomAccessFile:Ljava/io/RandomAccessFile;

.field private final regionLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 66
    new-instance v0, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager$MemoryMappedFileManagerFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager$MemoryMappedFileManagerFactory;-><init>(Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager$1;)V

    sput-object v0, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager;->FACTORY:Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager$MemoryMappedFileManagerFactory;

    return-void
.end method

.method protected constructor <init>(Ljava/io/RandomAccessFile;Ljava/lang/String;Ljava/io/OutputStream;ZJILjava/lang/String;Lorg/apache/logging/log4j/core/Layout;Z)V
    .locals 11
    .param p1, "file"    # Ljava/io/RandomAccessFile;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "os"    # Ljava/io/OutputStream;
    .param p4, "immediateFlush"    # Z
    .param p5, "position"    # J
    .param p7, "regionLength"    # I
    .param p8, "advertiseURI"    # Ljava/lang/String;
    .param p10, "writeHeader"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
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
            "file",
            "fileName",
            "os",
            "immediateFlush",
            "position",
            "regionLength",
            "advertiseURI",
            "layout",
            "writeHeader"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/RandomAccessFile;",
            "Ljava/lang/String;",
            "Ljava/io/OutputStream;",
            "ZJI",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/Layout<",
            "+",
            "Ljava/io/Serializable;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    .local p9, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    move-object v6, p0

    move-object v7, p1

    move-wide/from16 v8, p5

    move/from16 v10, p7

    sget-object v0, Lorg/apache/logging/log4j/util/Constants;->EMPTY_BYTE_ARRAY:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    move-object v0, p0

    move-object v1, p3

    move-object v2, p2

    move-object/from16 v3, p9

    move/from16 v4, p10

    invoke-direct/range {v0 .. v5}, Lorg/apache/logging/log4j/core/appender/OutputStreamManager;-><init>(Ljava/io/OutputStream;Ljava/lang/String;Lorg/apache/logging/log4j/core/Layout;ZLjava/nio/ByteBuffer;)V

    .line 80
    move v0, p4

    iput-boolean v0, v6, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager;->immediateFlush:Z

    .line 81
    const-string v1, "RandomAccessFile"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v1, v7

    check-cast v1, Ljava/io/RandomAccessFile;

    iput-object v1, v6, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager;->randomAccessFile:Ljava/io/RandomAccessFile;

    .line 82
    iput v10, v6, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager;->regionLength:I

    .line 83
    move-object/from16 v2, p8

    iput-object v2, v6, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager;->advertiseURI:Ljava/lang/String;

    .line 84
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v8, v9, v10}, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager;->mmap(Ljava/nio/channels/FileChannel;Ljava/lang/String;JI)Ljava/nio/MappedByteBuffer;

    move-result-object v1

    iput-object v1, v6, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager;->mappedBuffer:Ljava/nio/MappedByteBuffer;

    .line 85
    iput-object v1, v6, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 86
    iput-wide v8, v6, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager;->mappingOffset:J

    .line 87
    return-void
.end method

.method public static getFileManager(Ljava/lang/String;ZZILjava/lang/String;Lorg/apache/logging/log4j/core/Layout;)Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager;
    .locals 8
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "append"    # Z
    .param p2, "immediateFlush"    # Z
    .param p3, "regionLength"    # I
    .param p4, "advertiseURI"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
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
            "regionLength",
            "advertiseURI",
            "layout"
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
            ">;)",
            "Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager;"
        }
    .end annotation

    .line 103
    .local p5, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    const-class v0, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager;

    new-instance v7, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager$FactoryData;

    move-object v1, v7

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager$FactoryData;-><init>(ZZILjava/lang/String;Lorg/apache/logging/log4j/core/Layout;)V

    sget-object v1, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager;->FACTORY:Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager$MemoryMappedFileManagerFactory;

    invoke-static {p0, v7, v1}, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager;->getManager(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/logging/log4j/core/appender/ManagerFactory;)Lorg/apache/logging/log4j/core/appender/OutputStreamManager;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager;->narrow(Ljava/lang/Class;Lorg/apache/logging/log4j/core/appender/AbstractManager;)Lorg/apache/logging/log4j/core/appender/AbstractManager;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager;

    return-object v0
.end method

.method static synthetic lambda$unsafeUnmap$0(Ljava/nio/MappedByteBuffer;)Ljava/lang/Object;
    .locals 6
    .param p0, "mbb"    # Ljava/nio/MappedByteBuffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "mbb"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 227
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "cleaner"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 228
    .local v0, "getCleanerMethod":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 229
    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 230
    .local v2, "cleaner":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Class;

    const-string v5, "clean"

    invoke-virtual {v3, v5, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 231
    .local v3, "cleanMethod":Ljava/lang/reflect/Method;
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    const/4 v1, 0x0

    return-object v1
.end method

.method public static mmap(Ljava/nio/channels/FileChannel;Ljava/lang/String;JI)Ljava/nio/MappedByteBuffer;
    .locals 9
    .param p0, "fileChannel"    # Ljava/nio/channels/FileChannel;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "start"    # J
    .param p4, "size"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "fileChannel",
            "fileName",
            "start",
            "size"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 192
    const/4 v0, 0x1

    .line 194
    .local v0, "i":I
    :goto_0
    :try_start_0
    sget-object v1, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v2, "MMapAppender remapping {} start={}, size={}"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v2, p1, v3, v4}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 196
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 197
    .local v1, "startNanos":J
    sget-object v4, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    int-to-long v7, p4

    move-object v3, p0

    move-wide v5, p2

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v3

    .line 198
    .local v3, "map":Ljava/nio/MappedByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/MappedByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 200
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v1

    long-to-double v4, v4

    const-wide v6, 0x412e848000000000L    # 1000000.0

    div-double/2addr v4, v6

    double-to-float v4, v4

    .line 201
    .local v4, "millis":F
    sget-object v5, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v6, "MMapAppender remapped {} OK in {} millis"

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-interface {v5, v6, p1, v7}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    return-object v3

    .line 204
    .end local v1    # "startNanos":J
    .end local v3    # "map":Ljava/nio/MappedByteBuffer;
    .end local v4    # "millis":F
    :catch_0
    move-exception v1

    .line 205
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "user-mapped section open"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 208
    sget-object v2, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "Remap attempt {}/{} failed. Retrying..."

    invoke-interface {v2, v6, v3, v5, v1}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 209
    if-ge v0, v4, :cond_0

    .line 210
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_1

    .line 213
    :cond_0
    const-wide/16 v2, 0x1

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 217
    nop

    .line 192
    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 214
    .restart local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 215
    .local v2, "ignored":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 216
    throw v1

    .line 206
    .end local v2    # "ignored":Ljava/lang/InterruptedException;
    :cond_1
    throw v1
.end method

.method private declared-synchronized remap()V
    .locals 14

    monitor-enter p0

    .line 142
    :try_start_0
    iget-wide v0, p0, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager;->mappingOffset:J

    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager;->mappedBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v2}, Ljava/nio/MappedByteBuffer;->position()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 143
    .local v0, "offset":J
    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager;->mappedBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v2}, Ljava/nio/MappedByteBuffer;->remaining()I

    move-result v2

    iget v3, p0, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager;->regionLength:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v2, v3

    .line 145
    .local v2, "length":I
    :try_start_1
    iget-object v3, p0, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager;->mappedBuffer:Ljava/nio/MappedByteBuffer;

    invoke-static {v3}, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager;->unsafeUnmap(Ljava/nio/MappedByteBuffer;)V

    .line 146
    iget-object v3, p0, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    iget v5, p0, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager;->regionLength:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    .line 147
    .local v3, "fileLength":J
    sget-object v5, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v6, "{} {} extending {} by {} bytes to {}"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager;->getFileName()Ljava/lang/String;

    move-result-object v9

    iget v10, p0, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager;->regionLength:I

    .line 148
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 147
    invoke-interface/range {v5 .. v11}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 150
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    .line 151
    .local v5, "startNanos":J
    iget-object v7, p0, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v7, v3, v4}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 152
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    sub-long/2addr v7, v5

    long-to-double v7, v7

    const-wide v9, 0x412e848000000000L    # 1000000.0

    div-double/2addr v7, v9

    double-to-float v7, v7

    .line 153
    .local v7, "millis":F
    sget-object v8, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v9, "{} {} extended {} OK in {} millis"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager;->getFileName()Ljava/lang/String;

    move-result-object v12

    .line 154
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    .line 153
    invoke-interface/range {v8 .. v13}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 156
    iget-object v8, p0, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v8

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager;->getFileName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v0, v1, v2}, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager;->mmap(Ljava/nio/channels/FileChannel;Ljava/lang/String;JI)Ljava/nio/MappedByteBuffer;

    move-result-object v8

    iput-object v8, p0, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager;->mappedBuffer:Ljava/nio/MappedByteBuffer;

    .line 157
    iput-object v8, p0, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 158
    iput-wide v0, p0, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager;->mappingOffset:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    .end local v3    # "fileLength":J
    .end local v5    # "startNanos":J
    .end local v7    # "millis":F
    goto :goto_0

    .line 159
    .end local p0    # "this":Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager;
    :catch_0
    move-exception v3

    .line 160
    .local v3, "ex":Ljava/lang/Exception;
    :try_start_2
    const-string v4, "Unable to remap"

    invoke-virtual {p0, v4, v3}, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 162
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    monitor-exit p0

    return-void

    .line 141
    .end local v0    # "offset":J
    .end local v2    # "length":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static unsafeUnmap(Ljava/nio/MappedByteBuffer;)V
    .locals 6
    .param p0, "mbb"    # Ljava/nio/MappedByteBuffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "mbb"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/PrivilegedActionException;
        }
    .end annotation

    .line 224
    sget-object v0, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v1, "MMapAppender unmapping old buffer..."

    invoke-interface {v0, v1}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;)V

    .line 225
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 226
    .local v0, "startNanos":J
    new-instance v2, Lorg/apache/logging/log4j/core/appender/-$$Lambda$MemoryMappedFileManager$4vgsRn9wik1FKVsskIRDz5a_qZg;

    invoke-direct {v2, p0}, Lorg/apache/logging/log4j/core/appender/-$$Lambda$MemoryMappedFileManager$4vgsRn9wik1FKVsskIRDz5a_qZg;-><init>(Ljava/nio/MappedByteBuffer;)V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    .line 234
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    long-to-double v2, v2

    const-wide v4, 0x412e848000000000L    # 1000000.0

    div-double/2addr v2, v4

    double-to-float v2, v2

    .line 235
    .local v2, "millis":F
    sget-object v3, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const-string v5, "MMapAppender unmapped buffer OK in {} millis"

    invoke-interface {v3, v5, v4}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 236
    return-void
.end method


# virtual methods
.method public declared-synchronized closeOutputStream()Z
    .locals 12

    monitor-enter p0

    .line 171
    :try_start_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager;->mappedBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v0}, Ljava/nio/MappedByteBuffer;->position()I

    move-result v0

    int-to-long v0, v0

    .line 172
    .local v0, "position":J
    iget-wide v2, p0, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager;->mappingOffset:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-long/2addr v2, v0

    .line 174
    .local v2, "length":J
    :try_start_1
    iget-object v4, p0, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager;->mappedBuffer:Ljava/nio/MappedByteBuffer;

    invoke-static {v4}, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager;->unsafeUnmap(Ljava/nio/MappedByteBuffer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    goto :goto_0

    .line 175
    .end local p0    # "this":Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager;
    :catch_0
    move-exception v4

    .line 176
    .local v4, "ex":Ljava/lang/Exception;
    :try_start_2
    const-string v5, "Unable to unmap MappedBuffer"

    invoke-virtual {p0, v5, v4}, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 179
    .end local v4    # "ex":Ljava/lang/Exception;
    :goto_0
    :try_start_3
    sget-object v6, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v7, "MMapAppender closing. Setting {} length to {} (offset {} + position {})"

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager;->getFileName()Ljava/lang/String;

    move-result-object v8

    .line 180
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iget-wide v4, p0, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager;->mappingOffset:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 179
    invoke-interface/range {v6 .. v11}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 181
    iget-object v4, p0, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v4, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 182
    iget-object v4, p0, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 183
    const/4 v4, 0x1

    monitor-exit p0

    return v4

    .line 184
    :catch_1
    move-exception v4

    .line 185
    .local v4, "ex":Ljava/io/IOException;
    :try_start_4
    const-string v5, "Unable to close MemoryMappedFile"

    invoke-virtual {p0, v5, v4}, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 186
    const/4 v5, 0x0

    monitor-exit p0

    return v5

    .line 170
    .end local v0    # "position":J
    .end local v2    # "length":J
    .end local v4    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public drain(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "buf"
        }
    .end annotation

    .line 293
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager;->remap()V

    .line 294
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager;->mappedBuffer:Ljava/nio/MappedByteBuffer;

    return-object v0
.end method

.method public declared-synchronized flush()V
    .locals 1

    monitor-enter p0

    .line 166
    :try_start_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager;->mappedBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v0}, Ljava/nio/MappedByteBuffer;->force()Ljava/nio/MappedByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    monitor-exit p0

    return-void

    .line 165
    .end local p0    # "this":Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected flushBuffer(Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "buffer"
        }
    .end annotation

    .line 284
    return-void
.end method

.method public getByteBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 288
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager;->mappedBuffer:Ljava/nio/MappedByteBuffer;

    return-object v0
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

    .line 276
    new-instance v0, Ljava/util/HashMap;

    invoke-super {p0}, Lorg/apache/logging/log4j/core/appender/OutputStreamManager;->getContentFormat()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 277
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager;->advertiseURI:Ljava/lang/String;

    const-string v2, "fileURI"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 244
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRegionLength()I
    .locals 1

    .line 253
    iget v0, p0, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager;->regionLength:I

    return v0
.end method

.method public isEndOfBatch()Ljava/lang/Boolean;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 114
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isImmediateFlush()Z
    .locals 1

    .line 263
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager;->immediateFlush:Z

    return v0
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

    .line 124
    return-void
.end method

.method protected declared-synchronized write([BIIZ)V
    .locals 2
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "immediateFlush"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0,
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

    .line 128
    :goto_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager;->mappedBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v0}, Ljava/nio/MappedByteBuffer;->remaining()I

    move-result v0

    if-le p3, v0, :cond_0

    .line 129
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager;->mappedBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v0}, Ljava/nio/MappedByteBuffer;->remaining()I

    move-result v0

    .line 130
    .local v0, "chunk":I
    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager;->mappedBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v1, p1, p2, v0}, Ljava/nio/MappedByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 131
    add-int/2addr p2, v0

    .line 132
    sub-int/2addr p3, v0

    .line 133
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager;->remap()V

    .line 134
    .end local v0    # "chunk":I
    goto :goto_0

    .line 135
    .end local p0    # "this":Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager;
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager;->mappedBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/MappedByteBuffer;->put([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    monitor-exit p0

    return-void

    .line 127
    .end local p1    # "bytes":[B
    .end local p2    # "offset":I
    .end local p3    # "length":I
    .end local p4    # "immediateFlush":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
