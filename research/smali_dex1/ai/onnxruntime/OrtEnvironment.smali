.class public final Lai/onnxruntime/OrtEnvironment;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lai/onnxruntime/OrtEnvironment$ThreadingOptions;,
        Lai/onnxruntime/OrtEnvironment$OrtEnvCloser;,
        Lai/onnxruntime/OrtEnvironment$OrtCompiledModelCompatibility;
    }
.end annotation


# static fields
.field public static final DEFAULT_NAME:Ljava/lang/String; = "ort-java"

.field private static volatile INSTANCE:Lai/onnxruntime/OrtEnvironment;

.field private static volatile curLogLevel:Lai/onnxruntime/OrtLoggingLevel;

.field private static volatile curLoggingName:Ljava/lang/String;

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field final defaultAllocator:Lai/onnxruntime/OrtAllocator;

.field final nativeHandle:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    const-class v0, Lai/onnxruntime/OrtEnvironment;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lai/onnxruntime/OrtEnvironment;->logger:Ljava/util/logging/Logger;

    .line 12
    .line 13
    :try_start_c
    invoke-static {}, Lai/onnxruntime/OnnxRuntime;->init()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_f} :catch_10

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :catch_10
    move-exception v0

    .line 18
    const-string v1, "Failed to load onnx-runtime library"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lai/onnxruntime/b;->o(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 60
    sget-object v0, Lai/onnxruntime/OrtLoggingLevel;->ORT_LOGGING_LEVEL_WARNING:Lai/onnxruntime/OrtLoggingLevel;

    const-string v1, "java-default"

    invoke-direct {p0, v0, v1}, Lai/onnxruntime/OrtEnvironment;-><init>(Lai/onnxruntime/OrtLoggingLevel;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lai/onnxruntime/OrtLoggingLevel;Ljava/lang/String;)V
    .registers 8

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    sget-wide v0, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    invoke-virtual {p1}, Lai/onnxruntime/OrtLoggingLevel;->getValue()I

    move-result p1

    invoke-static {v0, v1, p1, p2}, Lai/onnxruntime/OrtEnvironment;->createHandle(JILjava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lai/onnxruntime/OrtEnvironment;->nativeHandle:J

    .line 57
    new-instance v0, Lai/onnxruntime/OrtAllocator;

    sget-wide v1, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    invoke-static {v1, v2}, Lai/onnxruntime/OrtEnvironment;->getDefaultAllocator(J)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lai/onnxruntime/OrtAllocator;-><init>(JZ)V

    iput-object v0, p0, Lai/onnxruntime/OrtEnvironment;->defaultAllocator:Lai/onnxruntime/OrtAllocator;

    .line 58
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lai/onnxruntime/OrtEnvironment$OrtEnvCloser;

    sget-wide v3, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    invoke-direct {v2, v3, v4, p1, p2}, Lai/onnxruntime/OrtEnvironment$OrtEnvCloser;-><init>(JJ)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    return-void
.end method

.method private constructor <init>(Lai/onnxruntime/OrtLoggingLevel;Ljava/lang/String;Lai/onnxruntime/OrtEnvironment$ThreadingOptions;)V
    .registers 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-wide v0, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    .line 5
    .line 6
    invoke-virtual {p1}, Lai/onnxruntime/OrtLoggingLevel;->getValue()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    invoke-static {p3}, Lai/onnxruntime/OrtEnvironment$ThreadingOptions;->b(Lai/onnxruntime/OrtEnvironment$ThreadingOptions;)J

    .line 11
    .line 12
    .line 13
    move-result-wide v4

    .line 14
    move-object v3, p2

    .line 15
    invoke-static/range {v0 .. v5}, Lai/onnxruntime/OrtEnvironment;->createHandle(JILjava/lang/String;J)J

    .line 16
    .line 17
    .line 18
    move-result-wide p1

    .line 19
    iput-wide p1, p0, Lai/onnxruntime/OrtEnvironment;->nativeHandle:J

    .line 20
    .line 21
    new-instance p3, Lai/onnxruntime/OrtAllocator;

    .line 22
    .line 23
    sget-wide v0, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    .line 24
    .line 25
    invoke-static {v0, v1}, Lai/onnxruntime/OrtEnvironment;->getDefaultAllocator(J)J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    const/4 v2, 0x1

    .line 30
    invoke-direct {p3, v0, v1, v2}, Lai/onnxruntime/OrtAllocator;-><init>(JZ)V

    .line 31
    .line 32
    .line 33
    iput-object p3, p0, Lai/onnxruntime/OrtEnvironment;->defaultAllocator:Lai/onnxruntime/OrtAllocator;

    .line 34
    .line 35
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 36
    .line 37
    .line 38
    move-result-object p3

    .line 39
    new-instance v0, Ljava/lang/Thread;

    .line 40
    .line 41
    new-instance v1, Lai/onnxruntime/OrtEnvironment$OrtEnvCloser;

    .line 42
    .line 43
    sget-wide v2, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    .line 44
    .line 45
    invoke-direct {v1, v2, v3, p1, p2}, Lai/onnxruntime/OrtEnvironment$OrtEnvCloser;-><init>(JJ)V

    .line 46
    .line 47
    .line 48
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p3, v0}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public static bridge synthetic b(JJ)V
    .registers 4

    .line 1
    invoke-static {p0, p1, p2, p3}, Lai/onnxruntime/OrtEnvironment;->close(JJ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static native close(JJ)V
.end method

.method private static native createHandle(JILjava/lang/String;)J
.end method

.method private static native createHandle(JILjava/lang/String;J)J
.end method

.method public static getAvailableProviders()Ljava/util/EnumSet;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lai/onnxruntime/OrtProvider;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lai/onnxruntime/OnnxRuntime;->providers:Ljava/util/EnumSet;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/EnumSet;->clone()Ljava/util/EnumSet;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method private static native getDefaultAllocator(J)J
.end method

.method public static declared-synchronized getEnvironment()Lai/onnxruntime/OrtEnvironment;
    .registers 3

    const-class v0, Lai/onnxruntime/OrtEnvironment;

    monitor-enter v0

    .line 66
    :try_start_3
    sget-object v1, Lai/onnxruntime/OrtEnvironment;->INSTANCE:Lai/onnxruntime/OrtEnvironment;

    if-nez v1, :cond_13

    .line 67
    sget-object v1, Lai/onnxruntime/OrtLoggingLevel;->ORT_LOGGING_LEVEL_WARNING:Lai/onnxruntime/OrtLoggingLevel;

    const-string v2, "ort-java"

    invoke-static {v1, v2}, Lai/onnxruntime/OrtEnvironment;->getEnvironment(Lai/onnxruntime/OrtLoggingLevel;Ljava/lang/String;)Lai/onnxruntime/OrtEnvironment;

    move-result-object v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_11

    monitor-exit v0

    return-object v1

    :catchall_11
    move-exception v1

    goto :goto_17

    .line 68
    :cond_13
    :try_start_13
    sget-object v1, Lai/onnxruntime/OrtEnvironment;->INSTANCE:Lai/onnxruntime/OrtEnvironment;
    :try_end_15
    .catchall {:try_start_13 .. :try_end_15} :catchall_11

    monitor-exit v0

    return-object v1

    :goto_17
    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_11

    throw v1
.end method

.method public static getEnvironment(Lai/onnxruntime/OrtLoggingLevel;)Lai/onnxruntime/OrtEnvironment;
    .registers 2

    .line 65
    const-string v0, "ort-java"

    invoke-static {p0, v0}, Lai/onnxruntime/OrtEnvironment;->getEnvironment(Lai/onnxruntime/OrtLoggingLevel;Ljava/lang/String;)Lai/onnxruntime/OrtEnvironment;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized getEnvironment(Lai/onnxruntime/OrtLoggingLevel;Ljava/lang/String;)Lai/onnxruntime/OrtEnvironment;
    .registers 4

    .line 1
    const-class v0, Lai/onnxruntime/OrtEnvironment;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    sget-object v1, Lai/onnxruntime/OrtEnvironment;->INSTANCE:Lai/onnxruntime/OrtEnvironment;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_13

    .line 5
    .line 6
    if-nez v1, :cond_1e

    .line 7
    .line 8
    :try_start_7
    new-instance v1, Lai/onnxruntime/OrtEnvironment;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1}, Lai/onnxruntime/OrtEnvironment;-><init>(Lai/onnxruntime/OrtLoggingLevel;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lai/onnxruntime/OrtEnvironment;->INSTANCE:Lai/onnxruntime/OrtEnvironment;

    .line 14
    .line 15
    sput-object p0, Lai/onnxruntime/OrtEnvironment;->curLogLevel:Lai/onnxruntime/OrtLoggingLevel;

    .line 16
    .line 17
    sput-object p1, Lai/onnxruntime/OrtEnvironment;->curLoggingName:Ljava/lang/String;
    :try_end_12
    .catch Lai/onnxruntime/OrtException; {:try_start_7 .. :try_end_12} :catch_15
    .catchall {:try_start_7 .. :try_end_12} :catchall_13

    .line 18
    .line 19
    goto :goto_39

    .line 20
    :catchall_13
    move-exception p0

    .line 21
    goto :goto_3d

    .line 22
    :catch_15
    move-exception p0

    .line 23
    :try_start_16
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 24
    .line 25
    const-string v1, "Failed to create OrtEnvironment"

    .line 26
    .line 27
    invoke-direct {p1, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    .line 29
    .line 30
    throw p1

    .line 31
    :cond_1e
    invoke-virtual {p0}, Lai/onnxruntime/OrtLoggingLevel;->getValue()I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    sget-object v1, Lai/onnxruntime/OrtEnvironment;->curLogLevel:Lai/onnxruntime/OrtLoggingLevel;

    .line 36
    .line 37
    invoke-virtual {v1}, Lai/onnxruntime/OrtLoggingLevel;->getValue()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-ne p0, v1, :cond_32

    .line 42
    .line 43
    sget-object p0, Lai/onnxruntime/OrtEnvironment;->curLoggingName:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    if-nez p0, :cond_39

    .line 50
    .line 51
    :cond_32
    sget-object p0, Lai/onnxruntime/OrtEnvironment;->logger:Ljava/util/logging/Logger;

    .line 52
    .line 53
    const-string p1, "Tried to change OrtEnvironment\'s logging level or name while a reference exists."

    .line 54
    .line 55
    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :cond_39
    :goto_39
    sget-object p0, Lai/onnxruntime/OrtEnvironment;->INSTANCE:Lai/onnxruntime/OrtEnvironment;
    :try_end_3b
    .catchall {:try_start_16 .. :try_end_3b} :catchall_13

    .line 59
    .line 60
    monitor-exit v0

    .line 61
    return-object p0

    .line 62
    :goto_3d
    :try_start_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_13

    .line 63
    throw p0
.end method

.method public static declared-synchronized getEnvironment(Lai/onnxruntime/OrtLoggingLevel;Ljava/lang/String;Lai/onnxruntime/OrtEnvironment$ThreadingOptions;)Lai/onnxruntime/OrtEnvironment;
    .registers 5

    const-class v0, Lai/onnxruntime/OrtEnvironment;

    monitor-enter v0

    .line 69
    :try_start_3
    sget-object v1, Lai/onnxruntime/OrtEnvironment;->INSTANCE:Lai/onnxruntime/OrtEnvironment;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_16

    if-nez v1, :cond_21

    .line 70
    :try_start_7
    new-instance v1, Lai/onnxruntime/OrtEnvironment;

    invoke-direct {v1, p0, p1, p2}, Lai/onnxruntime/OrtEnvironment;-><init>(Lai/onnxruntime/OrtLoggingLevel;Ljava/lang/String;Lai/onnxruntime/OrtEnvironment$ThreadingOptions;)V

    sput-object v1, Lai/onnxruntime/OrtEnvironment;->INSTANCE:Lai/onnxruntime/OrtEnvironment;

    .line 71
    sput-object p0, Lai/onnxruntime/OrtEnvironment;->curLogLevel:Lai/onnxruntime/OrtLoggingLevel;

    .line 72
    sput-object p1, Lai/onnxruntime/OrtEnvironment;->curLoggingName:Ljava/lang/String;
    :try_end_12
    .catch Lai/onnxruntime/OrtException; {:try_start_7 .. :try_end_12} :catch_18
    .catchall {:try_start_7 .. :try_end_12} :catchall_16

    .line 73
    :try_start_12
    sget-object p0, Lai/onnxruntime/OrtEnvironment;->INSTANCE:Lai/onnxruntime/OrtEnvironment;
    :try_end_14
    .catchall {:try_start_12 .. :try_end_14} :catchall_16

    monitor-exit v0

    return-object p0

    :catchall_16
    move-exception p0

    goto :goto_29

    :catch_18
    move-exception p0

    .line 74
    :try_start_19
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Failed to create OrtEnvironment"

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 75
    :cond_21
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Tried to specify the thread pool when creating an OrtEnvironment, but one already exists."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_19 .. :try_end_2a} :catchall_16

    throw p0
.end method

.method public static getEnvironment(Ljava/lang/String;)Lai/onnxruntime/OrtEnvironment;
    .registers 2

    .line 64
    sget-object v0, Lai/onnxruntime/OrtLoggingLevel;->ORT_LOGGING_LEVEL_WARNING:Lai/onnxruntime/OrtLoggingLevel;

    invoke-static {v0, p0}, Lai/onnxruntime/OrtEnvironment;->getEnvironment(Lai/onnxruntime/OrtLoggingLevel;Ljava/lang/String;)Lai/onnxruntime/OrtEnvironment;

    move-result-object p0

    return-object p0
.end method

.method private static native getEpDevices(JJ)[J
.end method

.method private static native getModelCompatibilityForEpDevices(J[JLjava/lang/String;)I
.end method

.method private static native registerExecutionProviderLibrary(JJLjava/lang/String;Ljava/lang/String;)V
.end method

.method private static native setTelemetry(JJZ)V
.end method

.method private static native unregisterExecutionProviderLibrary(JJLjava/lang/String;)V
.end method


# virtual methods
.method public close()V
    .registers 1

    .line 1
    return-void
.end method

.method public createSession(Ljava/lang/String;)Lai/onnxruntime/OrtSession;
    .registers 3

    .line 45
    new-instance v0, Lai/onnxruntime/OrtSession$SessionOptions;

    invoke-direct {v0}, Lai/onnxruntime/OrtSession$SessionOptions;-><init>()V

    invoke-virtual {p0, p1, v0}, Lai/onnxruntime/OrtEnvironment;->createSession(Ljava/lang/String;Lai/onnxruntime/OrtSession$SessionOptions;)Lai/onnxruntime/OrtSession;

    move-result-object p1

    return-object p1
.end method

.method public createSession(Ljava/lang/String;Lai/onnxruntime/OrtAllocator;Lai/onnxruntime/OrtSession$SessionOptions;)Lai/onnxruntime/OrtSession;
    .registers 5

    .line 41
    const-string v0, "model path must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 42
    new-instance v0, Lai/onnxruntime/OrtSession;

    invoke-direct {v0, p0, p1, p2, p3}, Lai/onnxruntime/OrtSession;-><init>(Lai/onnxruntime/OrtEnvironment;Ljava/lang/String;Lai/onnxruntime/OrtAllocator;Lai/onnxruntime/OrtSession$SessionOptions;)V

    return-object v0
.end method

.method public createSession(Ljava/lang/String;Lai/onnxruntime/OrtSession$SessionOptions;)Lai/onnxruntime/OrtSession;
    .registers 4

    .line 40
    iget-object v0, p0, Lai/onnxruntime/OrtEnvironment;->defaultAllocator:Lai/onnxruntime/OrtAllocator;

    invoke-virtual {p0, p1, v0, p2}, Lai/onnxruntime/OrtEnvironment;->createSession(Ljava/lang/String;Lai/onnxruntime/OrtAllocator;Lai/onnxruntime/OrtSession$SessionOptions;)Lai/onnxruntime/OrtSession;

    move-result-object p1

    return-object p1
.end method

.method public createSession(Ljava/nio/ByteBuffer;)Lai/onnxruntime/OrtSession;
    .registers 3

    .line 44
    new-instance v0, Lai/onnxruntime/OrtSession$SessionOptions;

    invoke-direct {v0}, Lai/onnxruntime/OrtSession$SessionOptions;-><init>()V

    invoke-virtual {p0, p1, v0}, Lai/onnxruntime/OrtEnvironment;->createSession(Ljava/nio/ByteBuffer;Lai/onnxruntime/OrtSession$SessionOptions;)Lai/onnxruntime/OrtSession;

    move-result-object p1

    return-object p1
.end method

.method public createSession(Ljava/nio/ByteBuffer;Lai/onnxruntime/OrtAllocator;Lai/onnxruntime/OrtSession$SessionOptions;)Lai/onnxruntime/OrtSession;
    .registers 5

    .line 1
    const-string v0, "model array must not be null"

    .line 2
    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1f

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_17

    .line 17
    .line 18
    new-instance v0, Lai/onnxruntime/OrtSession;

    .line 19
    .line 20
    invoke-direct {v0, p0, p1, p2, p3}, Lai/onnxruntime/OrtSession;-><init>(Lai/onnxruntime/OrtEnvironment;Ljava/nio/ByteBuffer;Lai/onnxruntime/OrtAllocator;Lai/onnxruntime/OrtSession$SessionOptions;)V

    .line 21
    .line 22
    .line 23
    return-object v0

    .line 24
    :cond_17
    new-instance p1, Lai/onnxruntime/OrtException;

    .line 25
    .line 26
    const-string p2, "ByteBuffer is not direct."

    .line 27
    .line 28
    invoke-direct {p1, p2}, Lai/onnxruntime/OrtException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p1

    .line 32
    :cond_1f
    new-instance p1, Lai/onnxruntime/OrtException;

    .line 33
    .line 34
    const-string p2, "Invalid model buffer, no elements remaining."

    .line 35
    .line 36
    invoke-direct {p1, p2}, Lai/onnxruntime/OrtException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p1
.end method

.method public createSession(Ljava/nio/ByteBuffer;Lai/onnxruntime/OrtSession$SessionOptions;)Lai/onnxruntime/OrtSession;
    .registers 4

    .line 43
    iget-object v0, p0, Lai/onnxruntime/OrtEnvironment;->defaultAllocator:Lai/onnxruntime/OrtAllocator;

    invoke-virtual {p0, p1, v0, p2}, Lai/onnxruntime/OrtEnvironment;->createSession(Ljava/nio/ByteBuffer;Lai/onnxruntime/OrtAllocator;Lai/onnxruntime/OrtSession$SessionOptions;)Lai/onnxruntime/OrtSession;

    move-result-object p1

    return-object p1
.end method

.method public createSession([B)Lai/onnxruntime/OrtSession;
    .registers 3

    .line 47
    new-instance v0, Lai/onnxruntime/OrtSession$SessionOptions;

    invoke-direct {v0}, Lai/onnxruntime/OrtSession$SessionOptions;-><init>()V

    invoke-virtual {p0, p1, v0}, Lai/onnxruntime/OrtEnvironment;->createSession([BLai/onnxruntime/OrtSession$SessionOptions;)Lai/onnxruntime/OrtSession;

    move-result-object p1

    return-object p1
.end method

.method public createSession([BLai/onnxruntime/OrtAllocator;Lai/onnxruntime/OrtSession$SessionOptions;)Lai/onnxruntime/OrtSession;
    .registers 5

    .line 48
    const-string v0, "model array must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 49
    new-instance v0, Lai/onnxruntime/OrtSession;

    invoke-direct {v0, p0, p1, p2, p3}, Lai/onnxruntime/OrtSession;-><init>(Lai/onnxruntime/OrtEnvironment;[BLai/onnxruntime/OrtAllocator;Lai/onnxruntime/OrtSession$SessionOptions;)V

    return-object v0
.end method

.method public createSession([BLai/onnxruntime/OrtSession$SessionOptions;)Lai/onnxruntime/OrtSession;
    .registers 4

    .line 46
    iget-object v0, p0, Lai/onnxruntime/OrtEnvironment;->defaultAllocator:Lai/onnxruntime/OrtAllocator;

    invoke-virtual {p0, p1, v0, p2}, Lai/onnxruntime/OrtEnvironment;->createSession([BLai/onnxruntime/OrtAllocator;Lai/onnxruntime/OrtSession$SessionOptions;)Lai/onnxruntime/OrtSession;

    move-result-object p1

    return-object p1
.end method

.method public createTrainingSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lai/onnxruntime/OrtTrainingSession;
    .registers 11

    .line 34
    new-instance v5, Lai/onnxruntime/OrtSession$SessionOptions;

    invoke-direct {v5}, Lai/onnxruntime/OrtSession$SessionOptions;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lai/onnxruntime/OrtEnvironment;->createTrainingSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lai/onnxruntime/OrtSession$SessionOptions;)Lai/onnxruntime/OrtTrainingSession;

    move-result-object p1

    return-object p1
.end method

.method public createTrainingSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lai/onnxruntime/OrtAllocator;Lai/onnxruntime/OrtSession$SessionOptions;)Lai/onnxruntime/OrtTrainingSession;
    .registers 16

    .line 1
    sget-boolean v0, Lai/onnxruntime/OnnxRuntime;->trainingEnabled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_19

    .line 4
    .line 5
    const-string v0, "train path must not be null"

    .line 6
    .line 7
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;->loadCheckpoint(Ljava/lang/String;)Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;

    .line 11
    .line 12
    .line 13
    move-result-object v5

    .line 14
    new-instance v1, Lai/onnxruntime/OrtTrainingSession;

    .line 15
    .line 16
    move-object v2, p0

    .line 17
    move-object v6, p2

    .line 18
    move-object v7, p3

    .line 19
    move-object v8, p4

    .line 20
    move-object v3, p5

    .line 21
    move-object v4, p6

    .line 22
    invoke-direct/range {v1 .. v8}, Lai/onnxruntime/OrtTrainingSession;-><init>(Lai/onnxruntime/OrtEnvironment;Lai/onnxruntime/OrtAllocator;Lai/onnxruntime/OrtSession$SessionOptions;Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-object v1

    .line 26
    :cond_19
    const-string p1, "Training is not enabled in this build of ONNX Runtime."

    .line 27
    .line 28
    invoke-static {p1}, Lj1/i;->l(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const/4 p1, 0x0

    .line 32
    return-object p1
.end method

.method public createTrainingSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lai/onnxruntime/OrtSession$SessionOptions;)Lai/onnxruntime/OrtTrainingSession;
    .registers 13

    .line 33
    iget-object v5, p0, Lai/onnxruntime/OrtEnvironment;->defaultAllocator:Lai/onnxruntime/OrtAllocator;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lai/onnxruntime/OrtEnvironment;->createTrainingSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lai/onnxruntime/OrtAllocator;Lai/onnxruntime/OrtSession$SessionOptions;)Lai/onnxruntime/OrtTrainingSession;

    move-result-object p1

    return-object p1
.end method

.method public getEpDevices()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lai/onnxruntime/OrtEpDevice;",
            ">;"
        }
    .end annotation

    .line 1
    sget-wide v0, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    .line 2
    .line 3
    iget-wide v2, p0, Lai/onnxruntime/OrtEnvironment;->nativeHandle:J

    .line 4
    .line 5
    invoke-static {v0, v1, v2, v3}, Lai/onnxruntime/OrtEnvironment;->getEpDevices(JJ)[J

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    array-length v2, v0

    .line 15
    const/4 v3, 0x0

    .line 16
    :goto_f
    if-ge v3, v2, :cond_1e

    .line 17
    .line 18
    aget-wide v4, v0, v3

    .line 19
    .line 20
    new-instance v6, Lai/onnxruntime/OrtEpDevice;

    .line 21
    .line 22
    invoke-direct {v6, v4, v5}, Lai/onnxruntime/OrtEpDevice;-><init>(J)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    add-int/lit8 v3, v3, 0x1

    .line 29
    .line 30
    goto :goto_f

    .line 31
    :cond_1e
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0
.end method

.method public getModelCompatibilityForEpDevices(Ljava/util/List;Ljava/lang/String;)Lai/onnxruntime/OrtEnvironment$OrtCompiledModelCompatibility;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lai/onnxruntime/OrtEpDevice;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lai/onnxruntime/OrtEnvironment$OrtCompiledModelCompatibility;"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_2f

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_2f

    .line 8
    .line 9
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    new-array v0, v0, [J

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    :goto_f
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-ge v1, v2, :cond_24

    .line 21
    .line 22
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Lai/onnxruntime/OrtEpDevice;

    .line 27
    .line 28
    invoke-virtual {v2}, Lai/onnxruntime/OrtEpDevice;->getNativeHandle()J

    .line 29
    .line 30
    .line 31
    move-result-wide v2

    .line 32
    aput-wide v2, v0, v1

    .line 33
    .line 34
    add-int/lit8 v1, v1, 0x1

    .line 35
    .line 36
    goto :goto_f

    .line 37
    :cond_24
    sget-wide v1, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    .line 38
    .line 39
    invoke-static {v1, v2, v0, p2}, Lai/onnxruntime/OrtEnvironment;->getModelCompatibilityForEpDevices(J[JLjava/lang/String;)I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    invoke-static {p1}, Lai/onnxruntime/OrtEnvironment$OrtCompiledModelCompatibility;->mapFromInt(I)Lai/onnxruntime/OrtEnvironment$OrtCompiledModelCompatibility;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    return-object p1

    .line 48
    :cond_2f
    const-string p1, "Must supply at least one OrtEpDevice"

    .line 49
    .line 50
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const/4 p1, 0x0

    .line 54
    return-object p1
.end method

.method public getNativeHandle()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lai/onnxruntime/OrtEnvironment;->nativeHandle:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {}, Lai/onnxruntime/OnnxRuntime;->version()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public isTrainingEnabled()Z
    .registers 2

    .line 1
    sget-boolean v0, Lai/onnxruntime/OnnxRuntime;->trainingEnabled:Z

    .line 2
    .line 3
    return v0
.end method

.method public registerExecutionProviderLibrary(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 1
    sget-wide v0, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    .line 2
    .line 3
    iget-wide v2, p0, Lai/onnxruntime/OrtEnvironment;->nativeHandle:J

    .line 4
    .line 5
    move-object v4, p1

    .line 6
    move-object v5, p2

    .line 7
    invoke-static/range {v0 .. v5}, Lai/onnxruntime/OrtEnvironment;->registerExecutionProviderLibrary(JJLjava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setTelemetry(Z)V
    .registers 6

    .line 1
    sget-wide v0, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    .line 2
    .line 3
    iget-wide v2, p0, Lai/onnxruntime/OrtEnvironment;->nativeHandle:J

    .line 4
    .line 5
    invoke-static {v0, v1, v2, v3, p1}, Lai/onnxruntime/OrtEnvironment;->setTelemetry(JJZ)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "OrtEnvironment(name="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v1, Lai/onnxruntime/OrtEnvironment;->curLoggingName:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ",logLevel="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    sget-object v1, Lai/onnxruntime/OrtEnvironment;->curLogLevel:Lai/onnxruntime/OrtLoggingLevel;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ",version="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lai/onnxruntime/OrtEnvironment;->getVersion()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v1, ")"

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    return-object v0
.end method

.method public unregisterExecutionProviderLibrary(Ljava/lang/String;)V
    .registers 6

    .line 1
    sget-wide v0, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    .line 2
    .line 3
    iget-wide v2, p0, Lai/onnxruntime/OrtEnvironment;->nativeHandle:J

    .line 4
    .line 5
    invoke-static {v0, v1, v2, v3, p1}, Lai/onnxruntime/OrtEnvironment;->unregisterExecutionProviderLibrary(JJLjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
