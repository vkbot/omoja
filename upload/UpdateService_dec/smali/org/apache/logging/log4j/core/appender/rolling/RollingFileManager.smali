.class public Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;
.super Lorg/apache/logging/log4j/core/appender/FileManager;
.source "RollingFileManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$EmptyQueue;,
        Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$RollingFileManagerFactory;,
        Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;,
        Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$AsyncAction;
    }
.end annotation


# static fields
.field private static final EPOCH:Ljava/nio/file/attribute/FileTime;

.field private static final MAX_TRIES:I = 0x3

.field private static final MIN_DURATION:I = 0x64

.field private static factory:Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$RollingFileManagerFactory;

.field private static final patternProcessorUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;",
            "Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;",
            ">;"
        }
    .end annotation
.end field

.field private static final rolloverStrategyUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;",
            "Lorg/apache/logging/log4j/core/appender/rolling/RolloverStrategy;",
            ">;"
        }
    .end annotation
.end field

.field private static final triggeringPolicyUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;",
            "Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final asyncExecutor:Ljava/util/concurrent/ExecutorService;

.field private final directWrite:Z

.field private volatile fileName:Ljava/lang/String;

.field private initialTime:J

.field private volatile initialized:Z

.field private volatile patternProcessor:Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;

.field private volatile renameEmptyFiles:Z

.field private final rolloverListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lorg/apache/logging/log4j/core/appender/rolling/RolloverListener;",
            ">;"
        }
    .end annotation
.end field

.field private volatile rolloverStrategy:Lorg/apache/logging/log4j/core/appender/rolling/RolloverStrategy;

.field private final semaphore:Ljava/util/concurrent/Semaphore;

.field protected size:J

.field private final threadFactory:Lorg/apache/logging/log4j/core/util/Log4jThreadFactory;

.field private volatile triggeringPolicy:Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 59
    const-class v0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;

    new-instance v1, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$RollingFileManagerFactory;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$RollingFileManagerFactory;-><init>(Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$1;)V

    sput-object v1, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->factory:Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$RollingFileManagerFactory;

    .line 62
    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/nio/file/attribute/FileTime;->fromMillis(J)Ljava/nio/file/attribute/FileTime;

    move-result-object v1

    sput-object v1, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->EPOCH:Ljava/nio/file/attribute/FileTime;

    .line 82
    const-class v1, Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;

    .line 83
    const-string v2, "triggeringPolicy"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    sput-object v1, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->triggeringPolicyUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 85
    const-class v1, Lorg/apache/logging/log4j/core/appender/rolling/RolloverStrategy;

    .line 86
    const-string v2, "rolloverStrategy"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    sput-object v1, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->rolloverStrategyUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 88
    const-class v1, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;

    .line 89
    const-string v2, "patternProcessor"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->patternProcessorUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 88
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;ZJJLorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;Lorg/apache/logging/log4j/core/appender/rolling/RolloverStrategy;Ljava/lang/String;Lorg/apache/logging/log4j/core/Layout;IZ)V
    .locals 16
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "pattern"    # Ljava/lang/String;
    .param p3, "os"    # Ljava/io/OutputStream;
    .param p4, "append"    # Z
    .param p5, "size"    # J
    .param p7, "initialTime"    # J
    .param p9, "triggeringPolicy"    # Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;
    .param p10, "rolloverStrategy"    # Lorg/apache/logging/log4j/core/appender/rolling/RolloverStrategy;
    .param p11, "advertiseURI"    # Ljava/lang/String;
    .param p13, "bufferSize"    # I
    .param p14, "writeHeader"    # Z
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
            0x10
        }
        names = {
            "fileName",
            "pattern",
            "os",
            "append",
            "size",
            "initialTime",
            "triggeringPolicy",
            "rolloverStrategy",
            "advertiseURI",
            "layout",
            "bufferSize",
            "writeHeader"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/io/OutputStream;",
            "ZJJ",
            "Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;",
            "Lorg/apache/logging/log4j/core/appender/rolling/RolloverStrategy;",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/Layout<",
            "+",
            "Ljava/io/Serializable;",
            ">;IZ)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 96
    .local p12, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    sget v0, Lorg/apache/logging/log4j/core/util/Constants;->ENCODER_BYTE_BUFFER_SIZE:I

    new-array v0, v0, [B

    .line 97
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v15

    .line 96
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move/from16 v14, p14

    invoke-direct/range {v1 .. v15}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;ZJJLorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;Lorg/apache/logging/log4j/core/appender/rolling/RolloverStrategy;Ljava/lang/String;Lorg/apache/logging/log4j/core/Layout;ZLjava/nio/ByteBuffer;)V

    .line 98
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;ZJJLorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;Lorg/apache/logging/log4j/core/appender/rolling/RolloverStrategy;Ljava/lang/String;Lorg/apache/logging/log4j/core/Layout;ZLjava/nio/ByteBuffer;)V
    .locals 14
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "pattern"    # Ljava/lang/String;
    .param p3, "os"    # Ljava/io/OutputStream;
    .param p4, "append"    # Z
    .param p5, "size"    # J
    .param p7, "initialTime"    # J
    .param p9, "triggeringPolicy"    # Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;
    .param p10, "rolloverStrategy"    # Lorg/apache/logging/log4j/core/appender/rolling/RolloverStrategy;
    .param p11, "advertiseURI"    # Ljava/lang/String;
    .param p13, "writeHeader"    # Z
    .param p14, "buffer"    # Ljava/nio/ByteBuffer;
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
            0x10
        }
        names = {
            "fileName",
            "pattern",
            "os",
            "append",
            "size",
            "initialTime",
            "triggeringPolicy",
            "rolloverStrategy",
            "advertiseURI",
            "layout",
            "writeHeader",
            "buffer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/io/OutputStream;",
            "ZJJ",
            "Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;",
            "Lorg/apache/logging/log4j/core/appender/rolling/RolloverStrategy;",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/Layout<",
            "+",
            "Ljava/io/Serializable;",
            ">;Z",
            "Ljava/nio/ByteBuffer;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 105
    .local p12, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    move-object v9, p0

    move-object v10, p1

    move-wide/from16 v11, p7

    move-object/from16 v13, p10

    if-eqz v10, :cond_0

    move-object v1, v10

    goto :goto_0

    :cond_0
    move-object/from16 v1, p2

    :goto_0
    const/4 v4, 0x0

    move-object v0, p0

    move-object/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v5, p11

    move-object/from16 v6, p12

    move/from16 v7, p13

    move-object/from16 v8, p14

    invoke-direct/range {v0 .. v8}, Lorg/apache/logging/log4j/core/appender/FileManager;-><init>(Ljava/lang/String;Ljava/io/OutputStream;ZZLjava/lang/String;Lorg/apache/logging/log4j/core/Layout;ZLjava/nio/ByteBuffer;)V

    .line 67
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, v9, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->semaphore:Ljava/util/concurrent/Semaphore;

    .line 68
    const-string v0, "RollingFileManager"

    invoke-static {v0}, Lorg/apache/logging/log4j/core/util/Log4jThreadFactory;->createThreadFactory(Ljava/lang/String;)Lorg/apache/logging/log4j/core/util/Log4jThreadFactory;

    move-result-object v0

    iput-object v0, v9, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->threadFactory:Lorg/apache/logging/log4j/core/util/Log4jThreadFactory;

    .line 75
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, v9, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->rolloverListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 79
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const-wide/16 v4, 0x0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$EmptyQueue;

    invoke-direct {v7}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$EmptyQueue;-><init>()V

    iget-object v8, v9, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->threadFactory:Lorg/apache/logging/log4j/core/util/Log4jThreadFactory;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, v9, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->asyncExecutor:Ljava/util/concurrent/ExecutorService;

    .line 107
    move-wide/from16 v0, p5

    iput-wide v0, v9, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->size:J

    .line 108
    iput-wide v11, v9, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->initialTime:J

    .line 109
    move-object/from16 v2, p9

    iput-object v2, v9, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->triggeringPolicy:Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;

    .line 110
    iput-object v13, v9, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->rolloverStrategy:Lorg/apache/logging/log4j/core/appender/rolling/RolloverStrategy;

    .line 111
    new-instance v3, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;

    move-object/from16 v4, p2

    invoke-direct {v3, v4}, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;-><init>(Ljava/lang/String;)V

    iput-object v3, v9, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->patternProcessor:Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;

    .line 112
    iget-object v3, v9, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->patternProcessor:Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;

    invoke-virtual {v3, v11, v12}, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->setPrevFileTime(J)V

    .line 113
    iput-object v10, v9, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->fileName:Ljava/lang/String;

    .line 114
    instance-of v3, v13, Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy;

    iput-boolean v3, v9, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->directWrite:Z

    .line 115
    return-void
.end method

.method protected constructor <init>(Lorg/apache/logging/log4j/core/LoggerContext;Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;ZZJJLorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;Lorg/apache/logging/log4j/core/appender/rolling/RolloverStrategy;Ljava/lang/String;Lorg/apache/logging/log4j/core/Layout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/nio/ByteBuffer;)V
    .locals 16
    .param p1, "loggerContext"    # Lorg/apache/logging/log4j/core/LoggerContext;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "pattern"    # Ljava/lang/String;
    .param p4, "os"    # Ljava/io/OutputStream;
    .param p5, "append"    # Z
    .param p6, "createOnDemand"    # Z
    .param p7, "size"    # J
    .param p9, "initialTime"    # J
    .param p11, "triggeringPolicy"    # Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;
    .param p12, "rolloverStrategy"    # Lorg/apache/logging/log4j/core/appender/rolling/RolloverStrategy;
    .param p13, "advertiseURI"    # Ljava/lang/String;
    .param p15, "filePermissions"    # Ljava/lang/String;
    .param p16, "fileOwner"    # Ljava/lang/String;
    .param p17, "fileGroup"    # Ljava/lang/String;
    .param p18, "writeHeader"    # Z
    .param p19, "buffer"    # Ljava/nio/ByteBuffer;
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
            0x10
        }
        names = {
            "loggerContext",
            "fileName",
            "pattern",
            "os",
            "append",
            "createOnDemand",
            "size",
            "initialTime",
            "triggeringPolicy",
            "rolloverStrategy",
            "advertiseURI",
            "layout",
            "filePermissions",
            "fileOwner",
            "fileGroup",
            "writeHeader",
            "buffer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/LoggerContext;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/io/OutputStream;",
            "ZZJJ",
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
            "Z",
            "Ljava/nio/ByteBuffer;",
            ")V"
        }
    .end annotation

    .line 143
    .local p14, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    move-object/from16 v14, p0

    move-object/from16 v15, p2

    move-wide/from16 v12, p9

    move-object/from16 v11, p12

    if-eqz v15, :cond_0

    move-object v2, v15

    goto :goto_0

    :cond_0
    move-object/from16 v2, p3

    :goto_0
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p4

    move/from16 v4, p5

    move/from16 v6, p6

    move-object/from16 v7, p13

    move-object/from16 v8, p14

    move-object/from16 v9, p15

    move-object/from16 v10, p16

    move-object/from16 v11, p17

    move/from16 v12, p18

    move-object/from16 v13, p19

    invoke-direct/range {v0 .. v13}, Lorg/apache/logging/log4j/core/appender/FileManager;-><init>(Lorg/apache/logging/log4j/core/LoggerContext;Ljava/lang/String;Ljava/io/OutputStream;ZZZLjava/lang/String;Lorg/apache/logging/log4j/core/Layout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/nio/ByteBuffer;)V

    .line 67
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, v14, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->semaphore:Ljava/util/concurrent/Semaphore;

    .line 68
    const-string v0, "RollingFileManager"

    invoke-static {v0}, Lorg/apache/logging/log4j/core/util/Log4jThreadFactory;->createThreadFactory(Ljava/lang/String;)Lorg/apache/logging/log4j/core/util/Log4jThreadFactory;

    move-result-object v0

    iput-object v0, v14, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->threadFactory:Lorg/apache/logging/log4j/core/util/Log4jThreadFactory;

    .line 75
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, v14, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->rolloverListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 79
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const-wide/16 v4, 0x0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$EmptyQueue;

    invoke-direct {v7}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$EmptyQueue;-><init>()V

    iget-object v8, v14, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->threadFactory:Lorg/apache/logging/log4j/core/util/Log4jThreadFactory;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, v14, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->asyncExecutor:Ljava/util/concurrent/ExecutorService;

    .line 145
    move-wide/from16 v0, p7

    iput-wide v0, v14, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->size:J

    .line 146
    move-wide/from16 v2, p9

    iput-wide v2, v14, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->initialTime:J

    .line 147
    new-instance v4, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;

    move-object/from16 v5, p3

    invoke-direct {v4, v5}, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;-><init>(Ljava/lang/String;)V

    iput-object v4, v14, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->patternProcessor:Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;

    .line 148
    iget-object v4, v14, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->patternProcessor:Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;

    invoke-virtual {v4, v2, v3}, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->setPrevFileTime(J)V

    .line 149
    move-object/from16 v4, p11

    iput-object v4, v14, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->triggeringPolicy:Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;

    .line 150
    move-object/from16 v6, p12

    iput-object v6, v14, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->rolloverStrategy:Lorg/apache/logging/log4j/core/appender/rolling/RolloverStrategy;

    .line 151
    iput-object v15, v14, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->fileName:Ljava/lang/String;

    .line 152
    instance-of v7, v6, Lorg/apache/logging/log4j/core/appender/rolling/DirectFileRolloverStrategy;

    iput-boolean v7, v14, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->directWrite:Z

    .line 153
    return-void
.end method

.method protected constructor <init>(Lorg/apache/logging/log4j/core/LoggerContext;Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;ZZJJLorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;Lorg/apache/logging/log4j/core/appender/rolling/RolloverStrategy;Ljava/lang/String;Lorg/apache/logging/log4j/core/Layout;ZLjava/nio/ByteBuffer;)V
    .locals 16
    .param p1, "loggerContext"    # Lorg/apache/logging/log4j/core/LoggerContext;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "pattern"    # Ljava/lang/String;
    .param p4, "os"    # Ljava/io/OutputStream;
    .param p5, "append"    # Z
    .param p6, "createOnDemand"    # Z
    .param p7, "size"    # J
    .param p9, "initialTime"    # J
    .param p11, "triggeringPolicy"    # Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;
    .param p12, "rolloverStrategy"    # Lorg/apache/logging/log4j/core/appender/rolling/RolloverStrategy;
    .param p13, "advertiseURI"    # Ljava/lang/String;
    .param p15, "writeHeader"    # Z
    .param p16, "buffer"    # Ljava/nio/ByteBuffer;
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
            0x10
        }
        names = {
            "loggerContext",
            "fileName",
            "pattern",
            "os",
            "append",
            "createOnDemand",
            "size",
            "initialTime",
            "triggeringPolicy",
            "rolloverStrategy",
            "advertiseURI",
            "layout",
            "writeHeader",
            "buffer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/LoggerContext;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/io/OutputStream;",
            "ZZJJ",
            "Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;",
            "Lorg/apache/logging/log4j/core/appender/rolling/RolloverStrategy;",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/Layout<",
            "+",
            "Ljava/io/Serializable;",
            ">;Z",
            "Ljava/nio/ByteBuffer;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 122
    .local p14, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    move-object/from16 v11, p0

    move-object/from16 v12, p2

    move-wide/from16 v13, p9

    move-object/from16 v15, p12

    if-eqz v12, :cond_0

    move-object v2, v12

    goto :goto_0

    :cond_0
    move-object/from16 v2, p3

    :goto_0
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p4

    move/from16 v4, p5

    move/from16 v6, p6

    move-object/from16 v7, p13

    move-object/from16 v8, p14

    move/from16 v9, p15

    move-object/from16 v10, p16

    invoke-direct/range {v0 .. v10}, Lorg/apache/logging/log4j/core/appender/FileManager;-><init>(Lorg/apache/logging/log4j/core/LoggerContext;Ljava/lang/String;Ljava/io/OutputStream;ZZZLjava/lang/String;Lorg/apache/logging/log4j/core/Layout;ZLjava/nio/ByteBuffer;)V

    .line 67
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, v11, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->semaphore:Ljava/util/concurrent/Semaphore;

    .line 68
    const-string v0, "RollingFileManager"

    invoke-static {v0}, Lorg/apache/logging/log4j/core/util/Log4jThreadFactory;->createThreadFactory(Ljava/lang/String;)Lorg/apache/logging/log4j/core/util/Log4jThreadFactory;

    move-result-object v0

    iput-object v0, v11, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->threadFactory:Lorg/apache/logging/log4j/core/util/Log4jThreadFactory;

    .line 75
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, v11, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->rolloverListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 79
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const-wide/16 v4, 0x0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$EmptyQueue;

    invoke-direct {v7}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$EmptyQueue;-><init>()V

    iget-object v8, v11, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->threadFactory:Lorg/apache/logging/log4j/core/util/Log4jThreadFactory;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, v11, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->asyncExecutor:Ljava/util/concurrent/ExecutorService;

    .line 124
    move-wide/from16 v0, p7

    iput-wide v0, v11, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->size:J

    .line 125
    iput-wide v13, v11, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->initialTime:J

    .line 126
    move-object/from16 v2, p11

    iput-object v2, v11, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->triggeringPolicy:Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;

    .line 127
    iput-object v15, v11, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->rolloverStrategy:Lorg/apache/logging/log4j/core/appender/rolling/RolloverStrategy;

    .line 128
    new-instance v3, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;

    move-object/from16 v4, p3

    invoke-direct {v3, v4}, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;-><init>(Ljava/lang/String;)V

    iput-object v3, v11, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->patternProcessor:Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;

    .line 129
    iget-object v3, v11, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->patternProcessor:Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;

    invoke-virtual {v3, v13, v14}, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->setPrevFileTime(J)V

    .line 130
    iput-object v12, v11, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->fileName:Ljava/lang/String;

    .line 131
    instance-of v3, v15, Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy;

    iput-boolean v3, v11, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->directWrite:Z

    .line 132
    return-void
.end method

.method static synthetic access$100(Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;)Ljava/util/concurrent/Semaphore;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;

    .line 57
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->semaphore:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$1800(Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;Ljava/nio/file/Path;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;
    .param p1, "x1"    # Ljava/nio/file/Path;

    .line 57
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->defineAttributeView(Ljava/nio/file/Path;)V

    return-void
.end method

.method static synthetic access$1900()Lorg/apache/logging/log4j/Logger;
    .locals 1

    .line 57
    sget-object v0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-object v0
.end method

.method static synthetic access$400()Lorg/apache/logging/log4j/Logger;
    .locals 1

    .line 57
    sget-object v0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-object v0
.end method

.method static synthetic access$500()Lorg/apache/logging/log4j/Logger;
    .locals 1

    .line 57
    sget-object v0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-object v0
.end method

.method static synthetic access$900(Ljava/io/File;)J
    .locals 2
    .param p0, "x0"    # Ljava/io/File;

    .line 57
    invoke-static {p0}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->initialFileTime(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFileManager(Ljava/lang/String;Ljava/lang/String;ZZLorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;Lorg/apache/logging/log4j/core/appender/rolling/RolloverStrategy;Ljava/lang/String;Lorg/apache/logging/log4j/core/Layout;IZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;
    .locals 19
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "append"    # Z
    .param p3, "bufferedIO"    # Z
    .param p4, "policy"    # Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;
    .param p5, "strategy"    # Lorg/apache/logging/log4j/core/appender/rolling/RolloverStrategy;
    .param p6, "advertiseURI"    # Ljava/lang/String;
    .param p8, "bufferSize"    # I
    .param p9, "immediateFlush"    # Z
    .param p10, "createOnDemand"    # Z
    .param p11, "filePermissions"    # Ljava/lang/String;
    .param p12, "fileOwner"    # Ljava/lang/String;
    .param p13, "fileGroup"    # Ljava/lang/String;
    .param p14, "configuration"    # Lorg/apache/logging/log4j/core/config/Configuration;
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
            "fileName",
            "pattern",
            "append",
            "bufferedIO",
            "policy",
            "strategy",
            "advertiseURI",
            "layout",
            "bufferSize",
            "immediateFlush",
            "createOnDemand",
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
            "ZZ",
            "Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;",
            "Lorg/apache/logging/log4j/core/appender/rolling/RolloverStrategy;",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/Layout<",
            "+",
            "Ljava/io/Serializable;",
            ">;IZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/config/Configuration;",
            ")",
            "Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;"
        }
    .end annotation

    .line 212
    .local p7, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    move-object/from16 v15, p5

    instance-of v0, v15, Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 213
    sget-object v0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v1, "The fileName attribute must not be specified with the DirectWriteRolloverStrategy"

    invoke-interface {v0, v1}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 214
    const/4 v0, 0x0

    return-object v0

    .line 216
    :cond_0
    if-nez p0, :cond_1

    move-object/from16 v0, p1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    :goto_0
    move-object v14, v0

    .line 217
    .local v14, "name":Ljava/lang/String;
    const-class v13, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;

    new-instance v12, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;

    move-object v0, v12

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v16, v12

    move-object/from16 v12, p11

    move-object/from16 v17, v13

    move-object/from16 v13, p12

    move-object/from16 v18, v14

    .end local v14    # "name":Ljava/lang/String;
    .local v18, "name":Ljava/lang/String;
    move-object/from16 v14, p13

    move-object/from16 v15, p14

    invoke-direct/range {v0 .. v15}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;-><init>(Ljava/lang/String;Ljava/lang/String;ZZLorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;Lorg/apache/logging/log4j/core/appender/rolling/RolloverStrategy;Ljava/lang/String;Lorg/apache/logging/log4j/core/Layout;IZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/logging/log4j/core/config/Configuration;)V

    sget-object v0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->factory:Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$RollingFileManagerFactory;

    move-object/from16 v2, v16

    move-object/from16 v1, v18

    .end local v18    # "name":Ljava/lang/String;
    .local v1, "name":Ljava/lang/String;
    invoke-static {v1, v2, v0}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->getManager(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/logging/log4j/core/appender/ManagerFactory;)Lorg/apache/logging/log4j/core/appender/OutputStreamManager;

    move-result-object v0

    move-object/from16 v2, v17

    invoke-static {v2, v0}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->narrow(Ljava/lang/Class;Lorg/apache/logging/log4j/core/appender/AbstractManager;)Lorg/apache/logging/log4j/core/appender/AbstractManager;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;

    return-object v0
.end method

.method private static initialFileTime(Ljava/io/File;)J
    .locals 6
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "file"
        }
    .end annotation

    .line 767
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    .line 768
    .local v0, "path":Ljava/nio/file/Path;
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/nio/file/LinkOption;

    invoke-static {v0, v2}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 770
    :try_start_0
    const-class v2, Ljava/nio/file/attribute/BasicFileAttributes;

    new-array v1, v1, [Ljava/nio/file/LinkOption;

    invoke-static {v0, v2, v1}, Ljava/nio/file/Files;->readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v1

    .line 771
    .local v1, "attrs":Ljava/nio/file/attribute/BasicFileAttributes;
    invoke-interface {v1}, Ljava/nio/file/attribute/BasicFileAttributes;->creationTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v2

    .line 772
    .local v2, "fileTime":Ljava/nio/file/attribute/FileTime;
    sget-object v3, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->EPOCH:Ljava/nio/file/attribute/FileTime;

    invoke-virtual {v2, v3}, Ljava/nio/file/attribute/FileTime;->compareTo(Ljava/nio/file/attribute/FileTime;)I

    move-result v3

    if-lez v3, :cond_0

    .line 773
    sget-object v3, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v4, "Returning file creation time for {}"

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 774
    invoke-virtual {v2}, Ljava/nio/file/attribute/FileTime;->toMillis()J

    move-result-wide v3

    return-wide v3

    .line 776
    :cond_0
    sget-object v3, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->LOGGER:Lorg/apache/logging/log4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to obtain file creation time for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/logging/log4j/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 779
    .end local v1    # "attrs":Ljava/nio/file/attribute/BasicFileAttributes;
    .end local v2    # "fileTime":Ljava/nio/file/attribute/FileTime;
    goto :goto_0

    .line 777
    :catch_0
    move-exception v1

    .line 778
    .local v1, "ex":Ljava/lang/Exception;
    sget-object v2, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->LOGGER:Lorg/apache/logging/log4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to calculate file creation time for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/logging/log4j/Logger;->info(Ljava/lang/String;)V

    .line 781
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    return-wide v1
.end method

.method private rollover(Lorg/apache/logging/log4j/core/appender/rolling/RolloverStrategy;)Z
    .locals 6
    .param p1, "strategy"    # Lorg/apache/logging/log4j/core/appender/rolling/RolloverStrategy;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "strategy"
        }
    .end annotation

    .line 489
    const/4 v0, 0x0

    .line 492
    .local v0, "releaseRequired":Z
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 493
    const/4 v0, 0x1

    .line 497
    nop

    .line 499
    const/4 v2, 0x1

    .line 502
    .local v2, "success":Z
    :try_start_1
    invoke-interface {p1, p0}, Lorg/apache/logging/log4j/core/appender/rolling/RolloverStrategy;->rollover(Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;)Lorg/apache/logging/log4j/core/appender/rolling/RolloverDescription;

    move-result-object v3

    .line 503
    .local v3, "descriptor":Lorg/apache/logging/log4j/core/appender/rolling/RolloverDescription;
    if-eqz v3, :cond_3

    .line 504
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->writeFooter()V

    .line 505
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->closeOutputStream()Z

    .line 506
    invoke-interface {v3}, Lorg/apache/logging/log4j/core/appender/rolling/RolloverDescription;->getSynchronous()Lorg/apache/logging/log4j/core/appender/rolling/action/Action;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 507
    sget-object v1, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v4, "RollingFileManager executing synchronous {}"

    invoke-interface {v3}, Lorg/apache/logging/log4j/core/appender/rolling/RolloverDescription;->getSynchronous()Lorg/apache/logging/log4j/core/appender/rolling/action/Action;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 509
    :try_start_2
    invoke-interface {v3}, Lorg/apache/logging/log4j/core/appender/rolling/RolloverDescription;->getSynchronous()Lorg/apache/logging/log4j/core/appender/rolling/action/Action;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/logging/log4j/core/appender/rolling/action/Action;->execute()Z

    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v2, v1

    .line 513
    goto :goto_0

    .line 510
    :catch_0
    move-exception v1

    .line 511
    .local v1, "ex":Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 512
    :try_start_3
    const-string v4, "Caught error in synchronous task"

    invoke-virtual {p0, v4, v1}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 516
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    invoke-interface {v3}, Lorg/apache/logging/log4j/core/appender/rolling/RolloverDescription;->getAsynchronous()Lorg/apache/logging/log4j/core/appender/rolling/action/Action;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 517
    sget-object v1, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v4, "RollingFileManager executing async {}"

    invoke-interface {v3}, Lorg/apache/logging/log4j/core/appender/rolling/RolloverDescription;->getAsynchronous()Lorg/apache/logging/log4j/core/appender/rolling/action/Action;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 518
    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->asyncExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$AsyncAction;

    invoke-interface {v3}, Lorg/apache/logging/log4j/core/appender/rolling/RolloverDescription;->getAsynchronous()Lorg/apache/logging/log4j/core/appender/rolling/action/Action;

    move-result-object v5

    invoke-direct {v4, v5, p0}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$AsyncAction;-><init>(Lorg/apache/logging/log4j/core/appender/rolling/action/Action;Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;)V

    invoke-interface {v1, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 519
    const/4 v0, 0x0

    .line 521
    :cond_1
    const/4 v1, 0x1

    .line 525
    if-eqz v0, :cond_2

    .line 526
    iget-object v4, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 521
    :cond_2
    return v1

    .line 523
    :cond_3
    nop

    .line 525
    if-eqz v0, :cond_4

    .line 526
    iget-object v4, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 523
    :cond_4
    return v1

    .line 525
    .end local v3    # "descriptor":Lorg/apache/logging/log4j/core/appender/rolling/RolloverDescription;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_5

    .line 526
    iget-object v3, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V

    :cond_5
    throw v1

    .line 494
    .end local v2    # "success":Z
    :catch_1
    move-exception v2

    .line 495
    .local v2, "e":Ljava/lang/InterruptedException;
    const-string v3, "Thread interrupted while attempting to check rollover"

    invoke-virtual {p0, v3, v2}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 496
    return v1
.end method


# virtual methods
.method public addRolloverListener(Lorg/apache/logging/log4j/core/appender/rolling/RolloverListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/apache/logging/log4j/core/appender/rolling/RolloverListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 227
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->rolloverListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    return-void
.end method

.method public declared-synchronized checkRollover(Lorg/apache/logging/log4j/core/LogEvent;)V
    .locals 1
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "event"
        }
    .end annotation

    monitor-enter p0

    .line 307
    :try_start_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->triggeringPolicy:Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;

    invoke-interface {v0, p1}, Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;->isTriggeringEvent(Lorg/apache/logging/log4j/core/LogEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->rollover()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    .end local p0    # "this":Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;
    :cond_0
    monitor-exit p0

    return-void

    .line 306
    .end local p1    # "event":Lorg/apache/logging/log4j/core/LogEvent;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected createFileAfterRollover()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 419
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->createOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->setOutputStream(Ljava/io/OutputStream;)V

    .line 420
    return-void
.end method

.method protected createParentDir(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    .line 252
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->directWrite:Z

    if-eqz v0, :cond_0

    .line 253
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 255
    :cond_0
    return-void
.end method

.method public getFileExtension()Lorg/apache/logging/log4j/core/appender/rolling/FileExtension;
    .locals 1

    .line 262
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->patternProcessor:Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->getFileExtension()Lorg/apache/logging/log4j/core/appender/rolling/FileExtension;

    move-result-object v0

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 244
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->directWrite:Z

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->rolloverStrategy:Lorg/apache/logging/log4j/core/appender/rolling/RolloverStrategy;

    check-cast v0, Lorg/apache/logging/log4j/core/appender/rolling/DirectFileRolloverStrategy;

    invoke-interface {v0, p0}, Lorg/apache/logging/log4j/core/appender/rolling/DirectFileRolloverStrategy;->getCurrentFileName(Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->fileName:Ljava/lang/String;

    .line 247
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()J
    .locals 4

    .line 291
    iget-wide v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->size:J

    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getFileTime()J
    .locals 2

    .line 299
    iget-wide v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->initialTime:J

    return-wide v0
.end method

.method public getPatternProcessor()Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;
    .locals 1

    .line 427
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->patternProcessor:Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;

    return-object v0
.end method

.method public getRolloverStrategy()Lorg/apache/logging/log4j/core/appender/rolling/RolloverStrategy;
    .locals 1

    .line 484
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->rolloverStrategy:Lorg/apache/logging/log4j/core/appender/rolling/RolloverStrategy;

    return-object v0
.end method

.method getSemaphore()Ljava/util/concurrent/Semaphore;
    .locals 1

    .line 476
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->semaphore:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method public getTriggeringPolicy()Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;",
            ">()TT;"
        }
    .end annotation

    .line 467
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->triggeringPolicy:Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;

    return-object v0
.end method

.method public initialize()V
    .locals 3

    .line 157
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->initialized:Z

    if-nez v0, :cond_4

    .line 158
    sget-object v0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->LOGGER:Lorg/apache/logging/log4j/Logger;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->triggeringPolicy:Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;

    const-string v2, "Initializing triggering policy {}"

    invoke-interface {v0, v2, v1}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 159
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->initialized:Z

    .line 161
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->directWrite:Z

    if-eqz v0, :cond_1

    .line 163
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 164
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->size:J

    goto :goto_0

    .line 167
    :cond_0
    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->rolloverStrategy:Lorg/apache/logging/log4j/core/appender/rolling/RolloverStrategy;

    check-cast v1, Lorg/apache/logging/log4j/core/appender/rolling/DirectFileRolloverStrategy;

    invoke-interface {v1}, Lorg/apache/logging/log4j/core/appender/rolling/DirectFileRolloverStrategy;->clearCurrentFileName()V

    .line 170
    .end local v0    # "file":Ljava/io/File;
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->triggeringPolicy:Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;

    invoke-interface {v0, p0}, Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;->initialize(Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;)V

    .line 171
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->triggeringPolicy:Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;

    instance-of v0, v0, Lorg/apache/logging/log4j/core/LifeCycle;

    if-eqz v0, :cond_2

    .line 172
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->triggeringPolicy:Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;

    check-cast v0, Lorg/apache/logging/log4j/core/LifeCycle;

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/LifeCycle;->start()V

    .line 174
    :cond_2
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->directWrite:Z

    if-eqz v0, :cond_4

    .line 176
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 177
    .restart local v0    # "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 178
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->size:J

    goto :goto_1

    .line 180
    :cond_3
    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->rolloverStrategy:Lorg/apache/logging/log4j/core/appender/rolling/RolloverStrategy;

    check-cast v1, Lorg/apache/logging/log4j/core/appender/rolling/DirectFileRolloverStrategy;

    invoke-interface {v1}, Lorg/apache/logging/log4j/core/appender/rolling/DirectFileRolloverStrategy;->clearCurrentFileName()V

    .line 184
    .end local v0    # "file":Ljava/io/File;
    :cond_4
    :goto_1
    return-void
.end method

.method public isDirectWrite()Z
    .locals 1

    .line 258
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->directWrite:Z

    return v0
.end method

.method public isRenameEmptyFiles()Z
    .locals 1

    .line 279
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->renameEmptyFiles:Z

    return v0
.end method

.method public releaseSub(JLjava/util/concurrent/TimeUnit;)Z
    .locals 17
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

    .line 314
    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    const-string v5, "RollingFileManager stopped but some asynchronous services may not have completed."

    const-string v6, "All asynchronous threads have terminated"

    sget-object v0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Shutting down RollingFileManager {}"

    invoke-interface {v0, v8, v7}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 315
    const/4 v0, 0x1

    .line 316
    .local v0, "stopped":Z
    iget-object v7, v1, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->triggeringPolicy:Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;

    instance-of v7, v7, Lorg/apache/logging/log4j/core/LifeCycle2;

    if-eqz v7, :cond_0

    .line 317
    iget-object v7, v1, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->triggeringPolicy:Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;

    check-cast v7, Lorg/apache/logging/log4j/core/LifeCycle2;

    invoke-interface {v7, v2, v3, v4}, Lorg/apache/logging/log4j/core/LifeCycle2;->stop(JLjava/util/concurrent/TimeUnit;)Z

    move-result v7

    and-int/2addr v0, v7

    move v7, v0

    goto :goto_0

    .line 318
    :cond_0
    iget-object v7, v1, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->triggeringPolicy:Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;

    instance-of v7, v7, Lorg/apache/logging/log4j/core/LifeCycle;

    if-eqz v7, :cond_1

    .line 319
    iget-object v7, v1, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->triggeringPolicy:Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;

    check-cast v7, Lorg/apache/logging/log4j/core/LifeCycle;

    invoke-interface {v7}, Lorg/apache/logging/log4j/core/LifeCycle;->stop()V

    .line 320
    and-int/lit8 v0, v0, 0x1

    move v7, v0

    goto :goto_0

    .line 318
    :cond_1
    move v7, v0

    .line 322
    .end local v0    # "stopped":Z
    .local v7, "stopped":Z
    :goto_0
    invoke-super/range {p0 .. p3}, Lorg/apache/logging/log4j/core/appender/FileManager;->releaseSub(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz v7, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    move v8, v0

    .line 323
    .local v8, "status":Z
    iget-object v0, v1, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->asyncExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 326
    :try_start_0
    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v9

    .line 327
    .local v9, "millis":J
    const-wide/16 v11, 0x64

    cmp-long v0, v11, v9

    if-gez v0, :cond_3

    move-wide v11, v9

    .line 329
    .local v11, "waitInterval":J
    :cond_3
    const/4 v0, 0x1

    .local v0, "count":I
    :goto_2
    const/4 v13, 0x3

    if-gt v0, v13, :cond_4

    iget-object v13, v1, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->asyncExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v13}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v13

    if-nez v13, :cond_4

    .line 330
    iget-object v13, v1, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->asyncExecutor:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    int-to-long v14, v0

    mul-long/2addr v14, v11

    move/from16 v16, v7

    .end local v7    # "stopped":Z
    .local v16, "stopped":Z
    :try_start_1
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v13, v14, v15, v7}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    .line 329
    add-int/lit8 v0, v0, 0x1

    move/from16 v7, v16

    goto :goto_2

    .end local v16    # "stopped":Z
    .restart local v7    # "stopped":Z
    :cond_4
    move/from16 v16, v7

    .line 332
    .end local v0    # "count":I
    .end local v7    # "stopped":Z
    .restart local v16    # "stopped":Z
    iget-object v0, v1, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->asyncExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 333
    sget-object v0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v0, v6}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;)V

    goto :goto_4

    .line 335
    :cond_5
    iget-object v0, v1, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->asyncExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 337
    :try_start_2
    iget-object v0, v1, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->asyncExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v2, v3, v4}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    .line 338
    iget-object v0, v1, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->asyncExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 339
    sget-object v0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v0, v6}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;)V

    goto :goto_3

    .line 341
    :cond_6
    sget-object v0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v7, "RollingFileManager shutting down but some asynchronous services may not have completed"

    invoke-interface {v0, v7}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 345
    :goto_3
    goto :goto_4

    .line 343
    :catch_0
    move-exception v0

    .line 344
    .local v0, "inner":Ljava/lang/InterruptedException;
    :try_start_3
    sget-object v7, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v7, v5}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    .line 359
    .end local v0    # "inner":Ljava/lang/InterruptedException;
    .end local v9    # "millis":J
    .end local v11    # "waitInterval":J
    :goto_4
    goto :goto_7

    .line 347
    :catch_1
    move-exception v0

    goto :goto_5

    .end local v16    # "stopped":Z
    .restart local v7    # "stopped":Z
    :catch_2
    move-exception v0

    move/from16 v16, v7

    .end local v7    # "stopped":Z
    .restart local v16    # "stopped":Z
    :goto_5
    move-object v7, v0

    .line 348
    .local v7, "ie":Ljava/lang/InterruptedException;
    iget-object v0, v1, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->asyncExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 350
    :try_start_4
    iget-object v0, v1, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->asyncExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v2, v3, v4}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    .line 351
    iget-object v0, v1, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->asyncExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 352
    sget-object v0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v0, v6}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_3

    .line 356
    :cond_7
    goto :goto_6

    .line 354
    :catch_3
    move-exception v0

    .line 355
    .restart local v0    # "inner":Ljava/lang/InterruptedException;
    sget-object v6, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v6, v5}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;)V

    .line 358
    .end local v0    # "inner":Ljava/lang/InterruptedException;
    :goto_6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 360
    .end local v7    # "ie":Ljava/lang/InterruptedException;
    :goto_7
    sget-object v0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v6, "RollingFileManager shutdown completed with status {}"

    invoke-interface {v0, v6, v5}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 361
    return v8
.end method

.method public removeRolloverListener(Lorg/apache/logging/log4j/core/appender/rolling/RolloverListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/apache/logging/log4j/core/appender/rolling/RolloverListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 235
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->rolloverListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 236
    return-void
.end method

.method public declared-synchronized rollover()V
    .locals 10

    monitor-enter p0

    .line 371
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->hasOutputStream()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->isCreateOnDemand()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->isDirectWrite()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    .line 372
    monitor-exit p0

    return-void

    .line 374
    .end local p0    # "this":Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->fileName:Ljava/lang/String;

    .line 375
    .local v0, "currentFileName":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->rolloverListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 376
    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->rolloverListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/core/appender/rolling/RolloverListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 378
    .local v2, "listener":Lorg/apache/logging/log4j/core/appender/rolling/RolloverListener;
    :try_start_2
    invoke-interface {v2, v0}, Lorg/apache/logging/log4j/core/appender/rolling/RolloverListener;->rolloverTriggered(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 382
    goto :goto_1

    .line 379
    :catch_0
    move-exception v3

    .line 380
    .local v3, "ex":Ljava/lang/Exception;
    :try_start_3
    sget-object v4, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v5, "Rollover Listener {} failed with {}: {}"

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    .line 381
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    .line 380
    invoke-interface {v4, v5, v6, v7, v8}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 383
    .end local v2    # "listener":Lorg/apache/logging/log4j/core/appender/rolling/RolloverListener;
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_1
    goto :goto_0

    .line 386
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 388
    .local v1, "interrupted":Z
    if-eqz v1, :cond_2

    .line 389
    :try_start_4
    sget-object v2, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v3, "RollingFileManager cleared thread interrupted state, continue to rollover"

    invoke-interface {v2, v3}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;)V

    .line 392
    :cond_2
    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->rolloverStrategy:Lorg/apache/logging/log4j/core/appender/rolling/RolloverStrategy;

    invoke-direct {p0, v2}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->rollover(Lorg/apache/logging/log4j/core/appender/rolling/RolloverStrategy;)Z

    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v2, :cond_3

    .line 394
    const-wide/16 v2, 0x0

    :try_start_5
    iput-wide v2, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->size:J

    .line 395
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->initialTime:J

    .line 396
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->createFileAfterRollover()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 399
    goto :goto_2

    .line 397
    :catch_1
    move-exception v2

    .line 398
    .local v2, "e":Ljava/io/IOException;
    :try_start_6
    const-string v3, "Failed to create file after rollover"

    invoke-virtual {p0, v3, v2}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 402
    .end local v2    # "e":Ljava/io/IOException;
    :cond_3
    :goto_2
    if-eqz v1, :cond_4

    .line 403
    :try_start_7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 406
    :cond_4
    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->rolloverListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 407
    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->rolloverListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/logging/log4j/core/appender/rolling/RolloverListener;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 409
    .local v3, "listener":Lorg/apache/logging/log4j/core/appender/rolling/RolloverListener;
    :try_start_8
    invoke-interface {v3, v0}, Lorg/apache/logging/log4j/core/appender/rolling/RolloverListener;->rolloverComplete(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 413
    goto :goto_4

    .line 410
    :catch_2
    move-exception v4

    .line 411
    .local v4, "ex":Ljava/lang/Exception;
    :try_start_9
    sget-object v5, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v6, "Rollover Listener {} failed with {}: {}"

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    .line 412
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    .line 411
    invoke-interface {v5, v6, v7, v8, v9}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 414
    .end local v3    # "listener":Lorg/apache/logging/log4j/core/appender/rolling/RolloverListener;
    .end local v4    # "ex":Ljava/lang/Exception;
    :goto_4
    goto :goto_3

    .line 416
    :cond_5
    monitor-exit p0

    return-void

    .line 402
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_6

    .line 403
    :try_start_a
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    :cond_6
    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 370
    .end local v0    # "currentFileName":Ljava/lang/String;
    .end local v1    # "interrupted":Z
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized rollover(Ljava/util/Date;Ljava/util/Date;)V
    .locals 3
    .param p1, "prevFileTime"    # Ljava/util/Date;
    .param p2, "prevRollTime"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "prevFileTime",
            "prevRollTime"
        }
    .end annotation

    monitor-enter p0

    .line 365
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->getPatternProcessor()Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->setPrevFileTime(J)V

    .line 366
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->getPatternProcessor()Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;

    move-result-object v0

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->setCurrentFileTime(J)V

    .line 367
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->rollover()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 368
    monitor-exit p0

    return-void

    .line 364
    .end local p0    # "this":Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;
    .end local p1    # "prevFileTime":Ljava/util/Date;
    .end local p2    # "prevRollTime":Ljava/util/Date;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setPatternProcessor(Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;)V
    .locals 2
    .param p1, "patternProcessor"    # Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "patternProcessor"
        }
    .end annotation

    .line 456
    sget-object v0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->patternProcessorUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->patternProcessor:Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;

    invoke-virtual {v0, p0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 457
    return-void
.end method

.method public setRenameEmptyFiles(Z)V
    .locals 0
    .param p1, "renameEmptyFiles"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "renameEmptyFiles"
        }
    .end annotation

    .line 283
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->renameEmptyFiles:Z

    .line 284
    return-void
.end method

.method public setRolloverStrategy(Lorg/apache/logging/log4j/core/appender/rolling/RolloverStrategy;)V
    .locals 2
    .param p1, "rolloverStrategy"    # Lorg/apache/logging/log4j/core/appender/rolling/RolloverStrategy;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "rolloverStrategy"
        }
    .end annotation

    .line 452
    sget-object v0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->rolloverStrategyUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->rolloverStrategy:Lorg/apache/logging/log4j/core/appender/rolling/RolloverStrategy;

    invoke-virtual {v0, p0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 453
    return-void
.end method

.method public setTriggeringPolicy(Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;)V
    .locals 5
    .param p1, "triggeringPolicy"    # Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "triggeringPolicy"
        }
    .end annotation

    .line 431
    invoke-interface {p1, p0}, Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;->initialize(Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;)V

    .line 432
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->triggeringPolicy:Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;

    .line 433
    .local v0, "policy":Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;
    const/4 v1, 0x0

    .line 434
    .local v1, "count":I
    const/4 v2, 0x0

    .line 436
    .local v2, "policyUpdated":Z
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 437
    sget-object v3, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->triggeringPolicyUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    iget-object v4, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->triggeringPolicy:Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;

    invoke-virtual {v3, p0, v4, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    move v2, v3

    if-nez v3, :cond_1

    const/4 v3, 0x3

    if-lt v1, v3, :cond_0

    .line 439
    :cond_1
    if-eqz v2, :cond_3

    .line 440
    instance-of v3, p1, Lorg/apache/logging/log4j/core/LifeCycle;

    if-eqz v3, :cond_2

    .line 441
    move-object v3, p1

    check-cast v3, Lorg/apache/logging/log4j/core/LifeCycle;

    invoke-interface {v3}, Lorg/apache/logging/log4j/core/LifeCycle;->start()V

    .line 443
    :cond_2
    instance-of v3, v0, Lorg/apache/logging/log4j/core/LifeCycle;

    if-eqz v3, :cond_4

    .line 444
    move-object v3, v0

    check-cast v3, Lorg/apache/logging/log4j/core/LifeCycle;

    invoke-interface {v3}, Lorg/apache/logging/log4j/core/LifeCycle;->stop()V

    goto :goto_0

    .line 446
    :cond_3
    instance-of v3, p1, Lorg/apache/logging/log4j/core/LifeCycle;

    if-eqz v3, :cond_4

    .line 447
    move-object v3, p1

    check-cast v3, Lorg/apache/logging/log4j/core/LifeCycle;

    invoke-interface {v3}, Lorg/apache/logging/log4j/core/LifeCycle;->stop()V

    .line 449
    :cond_4
    :goto_0
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

    .line 707
    move-object v0, p1

    check-cast v0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;

    .line 708
    .local v0, "factoryData":Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;->getRolloverStrategy()Lorg/apache/logging/log4j/core/appender/rolling/RolloverStrategy;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->setRolloverStrategy(Lorg/apache/logging/log4j/core/appender/rolling/RolloverStrategy;)V

    .line 709
    new-instance v1, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;->getPattern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->getPatternProcessor()Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;)V

    invoke-virtual {p0, v1}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->setPatternProcessor(Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;)V

    .line 710
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$FactoryData;->getTriggeringPolicy()Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->setTriggeringPolicy(Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;)V

    .line 711
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

    .line 269
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/logging/log4j/core/appender/FileManager;->write([BIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    monitor-exit p0

    return-void

    .line 268
    .end local p0    # "this":Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;
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

    .line 274
    :try_start_0
    iget-wide v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->size:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->size:J

    .line 275
    invoke-super {p0, p1, p2, p3}, Lorg/apache/logging/log4j/core/appender/FileManager;->writeToDestination([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    monitor-exit p0

    return-void

    .line 273
    .end local p0    # "this":Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;
    .end local p1    # "bytes":[B
    .end local p2    # "offset":I
    .end local p3    # "length":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
