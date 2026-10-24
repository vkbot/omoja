.class public Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager;
.super Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;
.source "RollingRandomAccessFileManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$FactoryData;,
        Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$RollingRandomAccessFileManagerFactory;
    }
.end annotation


# static fields
.field public static final DEFAULT_BUFFER_SIZE:I = 0x40000

.field private static final FACTORY:Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$RollingRandomAccessFileManagerFactory;


# instance fields
.field private randomAccessFile:Ljava/io/RandomAccessFile;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 46
    new-instance v0, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$RollingRandomAccessFileManagerFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$RollingRandomAccessFileManagerFactory;-><init>(Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$1;)V

    sput-object v0, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager;->FACTORY:Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$RollingRandomAccessFileManagerFactory;

    return-void
.end method

.method public constructor <init>(Lorg/apache/logging/log4j/core/LoggerContext;Ljava/io/RandomAccessFile;Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;ZZIJJLorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;Lorg/apache/logging/log4j/core/appender/rolling/RolloverStrategy;Ljava/lang/String;Lorg/apache/logging/log4j/core/Layout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 21
    .param p1, "loggerContext"    # Lorg/apache/logging/log4j/core/LoggerContext;
    .param p2, "raf"    # Ljava/io/RandomAccessFile;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "pattern"    # Ljava/lang/String;
    .param p5, "os"    # Ljava/io/OutputStream;
    .param p6, "append"    # Z
    .param p7, "immediateFlush"    # Z
    .param p8, "bufferSize"    # I
    .param p9, "size"    # J
    .param p11, "initialTime"    # J
    .param p13, "policy"    # Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;
    .param p14, "strategy"    # Lorg/apache/logging/log4j/core/appender/rolling/RolloverStrategy;
    .param p15, "advertiseURI"    # Ljava/lang/String;
    .param p17, "filePermissions"    # Ljava/lang/String;
    .param p18, "fileOwner"    # Ljava/lang/String;
    .param p19, "fileGroup"    # Ljava/lang/String;
    .param p20, "writeHeader"    # Z
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
            0x10,
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
            "loggerContext",
            "raf",
            "fileName",
            "pattern",
            "os",
            "append",
            "immediateFlush",
            "bufferSize",
            "size",
            "initialTime",
            "policy",
            "strategy",
            "advertiseURI",
            "layout",
            "filePermissions",
            "fileOwner",
            "fileGroup",
            "writeHeader"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/LoggerContext;",
            "Ljava/io/RandomAccessFile;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/io/OutputStream;",
            "ZZIJJ",
            "Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;",
            "Lorg/apache/logging/log4j/core/appender/rolling/RolloverStrategy;",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/Layout<",
            "+",
            "Ljava/io/Serializable;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .local p16, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move/from16 v5, p6

    move-wide/from16 v7, p9

    move-wide/from16 v9, p11

    move-object/from16 v11, p13

    move-object/from16 v12, p14

    move-object/from16 v13, p15

    move-object/from16 v14, p16

    move-object/from16 v15, p17

    move-object/from16 v16, p18

    move-object/from16 v17, p19

    move/from16 v18, p20

    .line 70
    move/from16 v6, p8

    move-object/from16 v20, v0

    new-array v0, v6, [B

    .line 71
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v19

    .line 70
    const/4 v0, 0x0

    move v6, v0

    move-object/from16 v0, v20

    invoke-direct/range {v0 .. v19}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;-><init>(Lorg/apache/logging/log4j/core/LoggerContext;Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;ZZJJLorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;Lorg/apache/logging/log4j/core/appender/rolling/RolloverStrategy;Ljava/lang/String;Lorg/apache/logging/log4j/core/Layout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/nio/ByteBuffer;)V

    .line 72
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iput-object v1, v0, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager;->randomAccessFile:Ljava/io/RandomAccessFile;

    .line 73
    invoke-direct/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager;->writeHeader()V

    .line 74
    return-void
.end method

.method public constructor <init>(Lorg/apache/logging/log4j/core/LoggerContext;Ljava/io/RandomAccessFile;Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;ZZIJJLorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;Lorg/apache/logging/log4j/core/appender/rolling/RolloverStrategy;Ljava/lang/String;Lorg/apache/logging/log4j/core/Layout;Z)V
    .locals 21
    .param p1, "loggerContext"    # Lorg/apache/logging/log4j/core/LoggerContext;
    .param p2, "raf"    # Ljava/io/RandomAccessFile;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "pattern"    # Ljava/lang/String;
    .param p5, "os"    # Ljava/io/OutputStream;
    .param p6, "append"    # Z
    .param p7, "immediateFlush"    # Z
    .param p8, "bufferSize"    # I
    .param p9, "size"    # J
    .param p11, "time"    # J
    .param p13, "policy"    # Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;
    .param p14, "strategy"    # Lorg/apache/logging/log4j/core/appender/rolling/RolloverStrategy;
    .param p15, "advertiseURI"    # Ljava/lang/String;
    .param p17, "writeHeader"    # Z
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
            "raf",
            "fileName",
            "pattern",
            "os",
            "append",
            "immediateFlush",
            "bufferSize",
            "size",
            "time",
            "policy",
            "strategy",
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
            "Ljava/lang/String;",
            "Ljava/io/OutputStream;",
            "ZZIJJ",
            "Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;",
            "Lorg/apache/logging/log4j/core/appender/rolling/RolloverStrategy;",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/Layout<",
            "+",
            "Ljava/io/Serializable;",
            ">;Z)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .local p16, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move/from16 v20, p17

    .line 56
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v0 .. v20}, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager;-><init>(Lorg/apache/logging/log4j/core/LoggerContext;Ljava/io/RandomAccessFile;Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;ZZIJJLorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;Lorg/apache/logging/log4j/core/appender/rolling/RolloverStrategy;Ljava/lang/String;Lorg/apache/logging/log4j/core/Layout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 58
    return-void
.end method

.method static synthetic access$1700(Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager;Ljava/nio/file/Path;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager;
    .param p1, "x1"    # Ljava/nio/file/Path;

    .line 40
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager;->defineAttributeView(Ljava/nio/file/Path;)V

    return-void
.end method

.method static synthetic access$300()Lorg/apache/logging/log4j/Logger;
    .locals 1

    .line 40
    sget-object v0, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-object v0
.end method

.method static synthetic access$400()Lorg/apache/logging/log4j/Logger;
    .locals 1

    .line 40
    sget-object v0, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-object v0
.end method

.method static synthetic access$500()Lorg/apache/logging/log4j/Logger;
    .locals 1

    .line 40
    sget-object v0, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-object v0
.end method

.method static synthetic access$600()Lorg/apache/logging/log4j/Logger;
    .locals 1

    .line 40
    sget-object v0, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-object v0
.end method

.method private createFileAfterRollover(Ljava/lang/String;)V
    .locals 3
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "fileName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager;->randomAccessFile:Ljava/io/RandomAccessFile;

    .line 162
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager;->isAttributeViewEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager;->defineAttributeView(Ljava/nio/file/Path;)V

    .line 165
    :cond_0
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager;->isAppend()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 168
    :cond_1
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager;->writeHeader()V

    .line 169
    return-void
.end method

.method public static getRollingRandomAccessFileManager(Ljava/lang/String;Ljava/lang/String;ZZILorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;Lorg/apache/logging/log4j/core/appender/rolling/RolloverStrategy;Ljava/lang/String;Lorg/apache/logging/log4j/core/Layout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager;
    .locals 17
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "filePattern"    # Ljava/lang/String;
    .param p2, "isAppend"    # Z
    .param p3, "immediateFlush"    # Z
    .param p4, "bufferSize"    # I
    .param p5, "policy"    # Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;
    .param p6, "strategy"    # Lorg/apache/logging/log4j/core/appender/rolling/RolloverStrategy;
    .param p7, "advertiseURI"    # Ljava/lang/String;
    .param p9, "filePermissions"    # Ljava/lang/String;
    .param p10, "fileOwner"    # Ljava/lang/String;
    .param p11, "fileGroup"    # Ljava/lang/String;
    .param p12, "configuration"    # Lorg/apache/logging/log4j/core/config/Configuration;
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
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "fileName",
            "filePattern",
            "isAppend",
            "immediateFlush",
            "bufferSize",
            "policy",
            "strategy",
            "advertiseURI",
            "layout",
            "filePermissions",
            "fileOwner",
            "fileGroup",
            "configuration"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZI",
            "Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;",
            "Lorg/apache/logging/log4j/core/appender/rolling/RolloverStrategy;",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/Layout<",
            "+",
            "Ljava/io/Serializable;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/config/Configuration;",
            ")",
            "Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager;"
        }
    .end annotation

    .line 102
    .local p8, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    move-object/from16 v14, p6

    instance-of v0, v14, Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 103
    sget-object v0, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v1, "The fileName attribute must not be specified with the DirectWriteRolloverStrategy"

    invoke-interface {v0, v1}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 104
    const/4 v0, 0x0

    return-object v0

    .line 106
    :cond_0
    if-nez p0, :cond_1

    move-object/from16 v0, p1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    :goto_0
    move-object v15, v0

    .line 107
    .local v15, "name":Ljava/lang/String;
    const-class v13, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager;

    new-instance v12, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$FactoryData;

    move-object v0, v12

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object v14, v12

    move-object/from16 v12, p11

    move-object/from16 v16, v13

    move-object/from16 v13, p12

    invoke-direct/range {v0 .. v13}, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$FactoryData;-><init>(Ljava/lang/String;Ljava/lang/String;ZZILorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;Lorg/apache/logging/log4j/core/appender/rolling/RolloverStrategy;Ljava/lang/String;Lorg/apache/logging/log4j/core/Layout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/logging/log4j/core/config/Configuration;)V

    sget-object v0, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager;->FACTORY:Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$RollingRandomAccessFileManagerFactory;

    invoke-static {v15, v14, v0}, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager;->getManager(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/logging/log4j/core/appender/ManagerFactory;)Lorg/apache/logging/log4j/core/appender/OutputStreamManager;

    move-result-object v0

    move-object/from16 v1, v16

    invoke-static {v1, v0}, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager;->narrow(Ljava/lang/Class;Lorg/apache/logging/log4j/core/appender/AbstractManager;)Lorg/apache/logging/log4j/core/appender/AbstractManager;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager;

    return-object v0
.end method

.method private writeHeader()V
    .locals 5

    .line 80
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager;->layout:Lorg/apache/logging/log4j/core/Layout;

    if-nez v0, :cond_0

    .line 81
    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager;->layout:Lorg/apache/logging/log4j/core/Layout;

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/Layout;->getHeader()[B

    move-result-object v0

    .line 84
    .local v0, "header":[B
    if-nez v0, :cond_1

    .line 85
    return-void

    .line 88
    :cond_1
    :try_start_0
    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager;->randomAccessFile:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 90
    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager;->randomAccessFile:Ljava/io/RandomAccessFile;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :cond_2
    goto :goto_0

    .line 92
    :catch_0
    move-exception v1

    .line 93
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "Unable to write header"

    invoke-virtual {p0, v2, v1}, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 95
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method


# virtual methods
.method public declared-synchronized closeOutputStream()Z
    .locals 2

    monitor-enter p0

    .line 178
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager;->flush()V

    .line 179
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager;->randomAccessFile:Ljava/io/RandomAccessFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 181
    :try_start_1
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    monitor-exit p0

    return v1

    .line 183
    .end local p0    # "this":Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager;
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    const-string v1, "Unable to close RandomAccessFile"

    invoke-virtual {p0, v1, v0}, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 185
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 188
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    monitor-exit p0

    return v1

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected createFileAfterRollover()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager;->createFileAfterRollover(Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public declared-synchronized flush()V
    .locals 1

    monitor-enter p0

    .line 173
    :try_start_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager;->flushBuffer(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    monitor-exit p0

    return-void

    .line 172
    .end local p0    # "this":Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getBufferSize()I
    .locals 1

    .line 198
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    return v0
.end method

.method public isEndOfBatch()Ljava/lang/Boolean;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 119
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

    .line 129
    return-void
.end method

.method public updateData(Ljava/lang/Object;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "data"
        }
    .end annotation

    .line 341
    move-object v0, p1

    check-cast v0, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$FactoryData;

    .line 342
    .local v0, "factoryData":Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$FactoryData;
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$FactoryData;->getRolloverStrategy()Lorg/apache/logging/log4j/core/appender/rolling/RolloverStrategy;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager;->setRolloverStrategy(Lorg/apache/logging/log4j/core/appender/rolling/RolloverStrategy;)V

    .line 343
    new-instance v1, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$FactoryData;->getPattern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager;->getPatternProcessor()Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;)V

    invoke-virtual {p0, v1}, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager;->setPatternProcessor(Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;)V

    .line 344
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager$FactoryData;->getTriggeringPolicy()Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager;->setTriggeringPolicy(Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;)V

    .line 345
    return-void
.end method

.method protected declared-synchronized write([BIIZ)V
    .locals 0
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

    .line 135
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->write([BIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    monitor-exit p0

    return-void

    .line 134
    .end local p0    # "this":Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager;
    .end local p1    # "bytes":[B
    .end local p2    # "offset":I
    .end local p3    # "length":I
    .end local p4    # "immediateFlush":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
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

    .line 141
    :try_start_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager;->randomAccessFile:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_0

    .line 142
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, "fileName":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 144
    .local v1, "file":Ljava/io/File;
    invoke-static {v1}, Lorg/apache/logging/log4j/core/util/FileUtils;->makeParentDirs(Ljava/io/File;)V

    .line 145
    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager;->createFileAfterRollover(Ljava/lang/String;)V

    .line 147
    .end local v0    # "fileName":Ljava/lang/String;
    .end local v1    # "file":Ljava/io/File;
    .end local p0    # "this":Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager;
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 148
    iget-wide v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager;->size:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager;->size:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    nop

    .line 153
    monitor-exit p0

    return-void

    .line 140
    .end local p1    # "bytes":[B
    .end local p2    # "offset":I
    .end local p3    # "length":I
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 149
    .restart local p1    # "bytes":[B
    .restart local p2    # "offset":I
    .restart local p3    # "length":I
    :catch_0
    move-exception v0

    .line 150
    .local v0, "ex":Ljava/io/IOException;
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error writing to RandomAccessFile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, "msg":Ljava/lang/String;
    new-instance v2, Lorg/apache/logging/log4j/core/appender/AppenderLoggingException;

    invoke-direct {v2, v1, v0}, Lorg/apache/logging/log4j/core/appender/AppenderLoggingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    .end local v0    # "ex":Ljava/io/IOException;
    .end local v1    # "msg":Ljava/lang/String;
    .end local p1    # "bytes":[B
    .end local p2    # "offset":I
    .end local p3    # "length":I
    :goto_0
    monitor-exit p0

    throw p1
.end method
