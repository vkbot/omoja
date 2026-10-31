.class public Lai/onnxruntime/OrtSession$SessionOptions;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lai/onnxruntime/OrtSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SessionOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lai/onnxruntime/OrtSession$SessionOptions$ExecutionMode;,
        Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;
    }
.end annotation


# instance fields
.field private closed:Z

.field private final configEntries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final customLibraryHandles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final nativeHandle:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lai/onnxruntime/OnnxRuntime;->init()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    return-void

    .line 5
    :catch_0
    move-exception v0

    .line 6
    const-string v1, "Failed to load onnx-runtime library"

    .line 7
    .line 8
    invoke-static {v1, v0}, Lai/onnxruntime/b;->o(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lai/onnxruntime/OrtSession$SessionOptions;->closed:Z

    .line 6
    .line 7
    sget-wide v0, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    .line 8
    .line 9
    invoke-direct {p0, v0, v1}, Lai/onnxruntime/OrtSession$SessionOptions;->createOptions(J)J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iput-wide v0, p0, Lai/onnxruntime/OrtSession$SessionOptions;->nativeHandle:J

    .line 14
    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lai/onnxruntime/OrtSession$SessionOptions;->customLibraryHandles:Ljava/util/List;

    .line 21
    .line 22
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lai/onnxruntime/OrtSession$SessionOptions;->configEntries:Ljava/util/Map;

    .line 28
    .line 29
    return-void
.end method

.method private native addACL(JJZ)V
.end method

.method private native addCPU(JJI)V
.end method

.method private native addCUDA(JJI)V
.end method

.method private native addCUDAV2(JJJ)V
.end method

.method private native addConfigEntry(JJLjava/lang/String;Ljava/lang/String;)V
.end method

.method private native addCoreML(JJI)V
.end method

.method private native addDirectML(JJI)V
.end method

.method private native addDnnl(JJI)V
.end method

.method private native addExecutionProvider(JJJ[J[Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method private native addExecutionProvider(JJLjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method private addExecutionProvider(Ljava/lang/String;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Lai/onnxruntime/OrtSession$SessionOptions;->checkClosed()V

    .line 72
    invoke-static {p2}, Lai/onnxruntime/OrtUtil;->unpackMap(Ljava/util/Map;)[[Ljava/lang/String;

    move-result-object p2

    .line 73
    sget-wide v1, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v3, p0, Lai/onnxruntime/OrtSession$SessionOptions;->nativeHandle:J

    const/4 v0, 0x0

    aget-object v6, p2, v0

    const/4 v0, 0x1

    aget-object v7, p2, v0

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v7}, Lai/onnxruntime/OrtSession$SessionOptions;->addExecutionProvider(JJLjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private native addExternalInitializers(JJ[Ljava/lang/String;[J)V
.end method

.method private native addFreeDimensionOverrideByName(JJLjava/lang/String;J)V
.end method

.method private native addInitializer(JJLjava/lang/String;J)V
.end method

.method private native addNnapi(JJI)V
.end method

.method private native addOpenVINO(JJLjava/lang/String;)V
.end method

.method private native addROCM(JJI)V
.end method

.method private native addTensorrt(JJI)V
.end method

.method private native addTensorrtV2(JJJ)V
.end method

.method private native addTvm(JJLjava/lang/String;)V
.end method

.method private checkClosed()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lai/onnxruntime/OrtSession$SessionOptions;->closed:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string v0, "Trying to use a closed SessionOptions"

    .line 7
    .line 8
    invoke-static {v0}, Lj1/i;->l(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private native closeCustomLibraries([J)V
.end method

.method private native closeOptions(JJ)V
.end method

.method private native createOptions(J)J
.end method

.method private native disablePerSessionThreads(JJ)V
.end method

.method private native disableProfiling(JJ)V
.end method

.method private native enableProfiling(JJLjava/lang/String;)V
.end method

.method private native registerCustomOpLibrary(JJLjava/lang/String;)J
.end method

.method private native registerCustomOpsUsingFunction(JJLjava/lang/String;)V
.end method

.method private native setCPUArenaAllocator(JJZ)V
.end method

.method private native setDeterministicCompute(JJZ)V
.end method

.method private native setExecutionMode(JJI)V
.end method

.method private native setInterOpNumThreads(JJI)V
.end method

.method private native setIntraOpNumThreads(JJI)V
.end method

.method private native setLoggerId(JJLjava/lang/String;)V
.end method

.method private native setMemoryPatternOptimization(JJZ)V
.end method

.method private native setOptimizationLevel(JJI)V
.end method

.method private native setOptimizationModelFilePath(JJLjava/lang/String;)V
.end method

.method private native setSessionLogLevel(JJI)V
.end method

.method private native setSessionLogVerbosityLevel(JJI)V
.end method


# virtual methods
.method public addACL(Z)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lai/onnxruntime/OrtSession$SessionOptions;->checkClosed()V

    .line 2
    .line 3
    .line 4
    sget-wide v1, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    .line 5
    .line 6
    iget-wide v3, p0, Lai/onnxruntime/OrtSession$SessionOptions;->nativeHandle:J

    .line 7
    .line 8
    move-object v0, p0

    .line 9
    move v5, p1

    .line 10
    invoke-direct/range {v0 .. v5}, Lai/onnxruntime/OrtSession$SessionOptions;->addACL(JJZ)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public addCPU(Z)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lai/onnxruntime/OrtSession$SessionOptions;->checkClosed()V

    .line 2
    .line 3
    .line 4
    sget-wide v1, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    .line 5
    .line 6
    iget-wide v3, p0, Lai/onnxruntime/OrtSession$SessionOptions;->nativeHandle:J

    .line 7
    .line 8
    move-object v0, p0

    .line 9
    move v5, p1

    .line 10
    invoke-direct/range {v0 .. v5}, Lai/onnxruntime/OrtSession$SessionOptions;->addCPU(JJI)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public addCUDA()V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-virtual {p0, v0}, Lai/onnxruntime/OrtSession$SessionOptions;->addCUDA(I)V

    return-void
.end method

.method public addCUDA(I)V
    .locals 7

    .line 35
    invoke-direct {p0}, Lai/onnxruntime/OrtSession$SessionOptions;->checkClosed()V

    .line 36
    invoke-static {}, Lai/onnxruntime/OnnxRuntime;->extractCUDA()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    sget-wide v2, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v4, p0, Lai/onnxruntime/OrtSession$SessionOptions;->nativeHandle:J

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v1 .. v6}, Lai/onnxruntime/OrtSession$SessionOptions;->addCUDA(JJI)V

    return-void

    .line 38
    :cond_0
    new-instance p1, Lai/onnxruntime/OrtException;

    sget-object v0, Lai/onnxruntime/OrtException$OrtErrorCode;->ORT_EP_FAIL:Lai/onnxruntime/OrtException$OrtErrorCode;

    const-string v1, "Failed to find CUDA shared provider"

    invoke-direct {p1, v0, v1}, Lai/onnxruntime/OrtException;-><init>(Lai/onnxruntime/OrtException$OrtErrorCode;Ljava/lang/String;)V

    throw p1
.end method

.method public addCUDA(Lai/onnxruntime/providers/OrtCUDAProviderOptions;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Lai/onnxruntime/OrtSession$SessionOptions;->checkClosed()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lai/onnxruntime/OnnxRuntime;->extractCUDA()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Lai/onnxruntime/providers/StringConfigProviderOptions;->applyToNative()V

    .line 11
    .line 12
    .line 13
    sget-wide v2, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    .line 14
    .line 15
    iget-wide v4, p0, Lai/onnxruntime/OrtSession$SessionOptions;->nativeHandle:J

    .line 16
    .line 17
    iget-wide v6, p1, Lai/onnxruntime/OrtProviderOptions;->nativeHandle:J

    .line 18
    .line 19
    move-object v1, p0

    .line 20
    invoke-direct/range {v1 .. v7}, Lai/onnxruntime/OrtSession$SessionOptions;->addCUDAV2(JJJ)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    new-instance p1, Lai/onnxruntime/OrtException;

    .line 25
    .line 26
    sget-object v0, Lai/onnxruntime/OrtException$OrtErrorCode;->ORT_EP_FAIL:Lai/onnxruntime/OrtException$OrtErrorCode;

    .line 27
    .line 28
    const-string v1, "Failed to find CUDA shared provider"

    .line 29
    .line 30
    invoke-direct {p1, v0, v1}, Lai/onnxruntime/OrtException;-><init>(Lai/onnxruntime/OrtException$OrtErrorCode;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p1
.end method

.method public addConfigEntry(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Lai/onnxruntime/OrtSession$SessionOptions;->checkClosed()V

    .line 2
    .line 3
    .line 4
    sget-wide v1, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    .line 5
    .line 6
    iget-wide v3, p0, Lai/onnxruntime/OrtSession$SessionOptions;->nativeHandle:J

    .line 7
    .line 8
    move-object v0, p0

    .line 9
    move-object v5, p1

    .line 10
    move-object v6, p2

    .line 11
    invoke-direct/range {v0 .. v6}, Lai/onnxruntime/OrtSession$SessionOptions;->addConfigEntry(JJLjava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, v0, Lai/onnxruntime/OrtSession$SessionOptions;->configEntries:Ljava/util/Map;

    .line 15
    .line 16
    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public addCoreML()V
    .locals 1

    .line 17
    const-class v0, Lai/onnxruntime/providers/CoreMLFlags;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lai/onnxruntime/OrtSession$SessionOptions;->addCoreML(Ljava/util/EnumSet;)V

    return-void
.end method

.method public addCoreML(Ljava/util/EnumSet;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lai/onnxruntime/providers/CoreMLFlags;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lai/onnxruntime/OrtSession$SessionOptions;->checkClosed()V

    .line 2
    .line 3
    .line 4
    sget-wide v1, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    .line 5
    .line 6
    iget-wide v3, p0, Lai/onnxruntime/OrtSession$SessionOptions;->nativeHandle:J

    .line 7
    .line 8
    invoke-static {p1}, Lai/onnxruntime/OrtFlags;->aggregateToInt(Ljava/util/EnumSet;)I

    .line 9
    .line 10
    .line 11
    move-result v5

    .line 12
    move-object v0, p0

    .line 13
    invoke-direct/range {v0 .. v5}, Lai/onnxruntime/OrtSession$SessionOptions;->addCoreML(JJI)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public addCoreML(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 18
    const-string v0, "CoreML"

    .line 19
    invoke-direct {p0, v0, p1}, Lai/onnxruntime/OrtSession$SessionOptions;->addExecutionProvider(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public addDirectML(I)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lai/onnxruntime/OrtSession$SessionOptions;->checkClosed()V

    .line 2
    .line 3
    .line 4
    sget-wide v1, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    .line 5
    .line 6
    iget-wide v3, p0, Lai/onnxruntime/OrtSession$SessionOptions;->nativeHandle:J

    .line 7
    .line 8
    move-object v0, p0

    .line 9
    move v5, p1

    .line 10
    invoke-direct/range {v0 .. v5}, Lai/onnxruntime/OrtSession$SessionOptions;->addDirectML(JJI)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public addDnnl(Z)V
    .locals 7

    .line 1
    invoke-direct {p0}, Lai/onnxruntime/OrtSession$SessionOptions;->checkClosed()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lai/onnxruntime/OnnxRuntime;->extractDNNL()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    sget-wide v2, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    .line 11
    .line 12
    iget-wide v4, p0, Lai/onnxruntime/OrtSession$SessionOptions;->nativeHandle:J

    .line 13
    .line 14
    move-object v1, p0

    .line 15
    move v6, p1

    .line 16
    invoke-direct/range {v1 .. v6}, Lai/onnxruntime/OrtSession$SessionOptions;->addDnnl(JJI)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    new-instance p1, Lai/onnxruntime/OrtException;

    .line 21
    .line 22
    sget-object v0, Lai/onnxruntime/OrtException$OrtErrorCode;->ORT_EP_FAIL:Lai/onnxruntime/OrtException$OrtErrorCode;

    .line 23
    .line 24
    const-string v1, "Failed to find DNNL shared provider"

    .line 25
    .line 26
    invoke-direct {p1, v0, v1}, Lai/onnxruntime/OrtException;-><init>(Lai/onnxruntime/OrtException$OrtErrorCode;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p1
.end method

.method public addExecutionProvider(Ljava/util/List;Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lai/onnxruntime/OrtEpDevice;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lai/onnxruntime/OrtSession$SessionOptions;->checkClosed()V

    .line 2
    .line 3
    .line 4
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    new-array v8, v0, [J

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    move v1, v0

    .line 18
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-ge v1, v2, :cond_0

    .line 23
    .line 24
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Lai/onnxruntime/OrtEpDevice;

    .line 29
    .line 30
    invoke-virtual {v2}, Lai/onnxruntime/OrtEpDevice;->getNativeHandle()J

    .line 31
    .line 32
    .line 33
    move-result-wide v2

    .line 34
    aput-wide v2, v8, v1

    .line 35
    .line 36
    add-int/lit8 v1, v1, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    invoke-static {p2}, Lai/onnxruntime/OrtUtil;->unpackMap(Ljava/util/Map;)[[Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-static {}, Lai/onnxruntime/OrtEnvironment;->getEnvironment()Lai/onnxruntime/OrtEnvironment;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-virtual {p2}, Lai/onnxruntime/OrtEnvironment;->getNativeHandle()J

    .line 48
    .line 49
    .line 50
    move-result-wide v4

    .line 51
    sget-wide v2, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    .line 52
    .line 53
    iget-wide v6, p0, Lai/onnxruntime/OrtSession$SessionOptions;->nativeHandle:J

    .line 54
    .line 55
    aget-object v9, p1, v0

    .line 56
    .line 57
    const/4 p2, 0x1

    .line 58
    aget-object v10, p1, p2

    .line 59
    .line 60
    move-object v1, p0

    .line 61
    invoke-direct/range {v1 .. v10}, Lai/onnxruntime/OrtSession$SessionOptions;->addExecutionProvider(JJJ[J[Ljava/lang/String;[Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_1
    const-string p1, "Must supply at least one OrtEpDevice"

    .line 66
    .line 67
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public addExternalInitializers(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lai/onnxruntime/OnnxTensorLike;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lai/onnxruntime/OrtSession$SessionOptions;->checkClosed()V

    .line 2
    .line 3
    .line 4
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    new-array v6, v0, [Ljava/lang/String;

    .line 16
    .line 17
    invoke-interface {p1}, Ljava/util/Map;->size()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    new-array v7, v0, [J

    .line 22
    .line 23
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const/4 v0, 0x0

    .line 32
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Ljava/util/Map$Entry;

    .line 43
    .line 44
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    check-cast v2, Ljava/lang/String;

    .line 49
    .line 50
    aput-object v2, v6, v0

    .line 51
    .line 52
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    check-cast v1, Lai/onnxruntime/OnnxTensorLike;

    .line 57
    .line 58
    iget-wide v1, v1, Lai/onnxruntime/OnnxTensorLike;->nativeHandle:J

    .line 59
    .line 60
    aput-wide v1, v7, v0

    .line 61
    .line 62
    add-int/lit8 v0, v0, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    sget-wide v2, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    .line 66
    .line 67
    iget-wide v4, p0, Lai/onnxruntime/OrtSession$SessionOptions;->nativeHandle:J

    .line 68
    .line 69
    move-object v1, p0

    .line 70
    invoke-direct/range {v1 .. v7}, Lai/onnxruntime/OrtSession$SessionOptions;->addExternalInitializers(JJ[Ljava/lang/String;[J)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public addInitializer(Ljava/lang/String;Lai/onnxruntime/OnnxTensorLike;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Lai/onnxruntime/OrtSession$SessionOptions;->checkClosed()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    sget-wide v2, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    .line 15
    .line 16
    iget-wide v4, p0, Lai/onnxruntime/OrtSession$SessionOptions;->nativeHandle:J

    .line 17
    .line 18
    invoke-virtual {p2}, Lai/onnxruntime/OnnxTensorLike;->getNativeHandle()J

    .line 19
    .line 20
    .line 21
    move-result-wide v7

    .line 22
    move-object v1, p0

    .line 23
    move-object v6, p1

    .line 24
    invoke-direct/range {v1 .. v8}, Lai/onnxruntime/OrtSession$SessionOptions;->addInitializer(JJLjava/lang/String;J)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    const-string p1, "Initializer name was blank"

    .line 29
    .line 30
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public addNnapi()V
    .locals 1

    .line 17
    const-class v0, Lai/onnxruntime/providers/NNAPIFlags;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lai/onnxruntime/OrtSession$SessionOptions;->addNnapi(Ljava/util/EnumSet;)V

    return-void
.end method

.method public addNnapi(Ljava/util/EnumSet;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lai/onnxruntime/providers/NNAPIFlags;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lai/onnxruntime/OrtSession$SessionOptions;->checkClosed()V

    .line 2
    .line 3
    .line 4
    sget-wide v1, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    .line 5
    .line 6
    iget-wide v3, p0, Lai/onnxruntime/OrtSession$SessionOptions;->nativeHandle:J

    .line 7
    .line 8
    invoke-static {p1}, Lai/onnxruntime/OrtFlags;->aggregateToInt(Ljava/util/EnumSet;)I

    .line 9
    .line 10
    .line 11
    move-result v5

    .line 12
    move-object v0, p0

    .line 13
    invoke-direct/range {v0 .. v5}, Lai/onnxruntime/OrtSession$SessionOptions;->addNnapi(JJI)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public addOpenVINO(Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Lai/onnxruntime/OrtSession$SessionOptions;->checkClosed()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lai/onnxruntime/OnnxRuntime;->extractOpenVINO()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    sget-wide v2, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    .line 11
    .line 12
    iget-wide v4, p0, Lai/onnxruntime/OrtSession$SessionOptions;->nativeHandle:J

    .line 13
    .line 14
    move-object v1, p0

    .line 15
    move-object v6, p1

    .line 16
    invoke-direct/range {v1 .. v6}, Lai/onnxruntime/OrtSession$SessionOptions;->addOpenVINO(JJLjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    new-instance p1, Lai/onnxruntime/OrtException;

    .line 21
    .line 22
    sget-object v0, Lai/onnxruntime/OrtException$OrtErrorCode;->ORT_EP_FAIL:Lai/onnxruntime/OrtException$OrtErrorCode;

    .line 23
    .line 24
    const-string v1, "Failed to find OpenVINO shared provider"

    .line 25
    .line 26
    invoke-direct {p1, v0, v1}, Lai/onnxruntime/OrtException;-><init>(Lai/onnxruntime/OrtException$OrtErrorCode;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p1
.end method

.method public addQnn(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lai/onnxruntime/OnnxRuntime;->extractQNN()Z

    .line 2
    .line 3
    .line 4
    const-string v0, "QNN"

    .line 5
    .line 6
    invoke-direct {p0, v0, p1}, Lai/onnxruntime/OrtSession$SessionOptions;->addExecutionProvider(Ljava/lang/String;Ljava/util/Map;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public addROCM()V
    .locals 1

    const/4 v0, 0x0

    .line 30
    invoke-virtual {p0, v0}, Lai/onnxruntime/OrtSession$SessionOptions;->addROCM(I)V

    return-void
.end method

.method public addROCM(I)V
    .locals 7

    .line 1
    invoke-direct {p0}, Lai/onnxruntime/OrtSession$SessionOptions;->checkClosed()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lai/onnxruntime/OnnxRuntime;->extractROCM()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    sget-wide v2, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    .line 11
    .line 12
    iget-wide v4, p0, Lai/onnxruntime/OrtSession$SessionOptions;->nativeHandle:J

    .line 13
    .line 14
    move-object v1, p0

    .line 15
    move v6, p1

    .line 16
    invoke-direct/range {v1 .. v6}, Lai/onnxruntime/OrtSession$SessionOptions;->addROCM(JJI)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    new-instance p1, Lai/onnxruntime/OrtException;

    .line 21
    .line 22
    sget-object v0, Lai/onnxruntime/OrtException$OrtErrorCode;->ORT_EP_FAIL:Lai/onnxruntime/OrtException$OrtErrorCode;

    .line 23
    .line 24
    const-string v1, "Failed to find ROCM shared provider"

    .line 25
    .line 26
    invoke-direct {p1, v0, v1}, Lai/onnxruntime/OrtException;-><init>(Lai/onnxruntime/OrtException$OrtErrorCode;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p1
.end method

.method public addTensorrt(I)V
    .locals 7

    .line 34
    invoke-direct {p0}, Lai/onnxruntime/OrtSession$SessionOptions;->checkClosed()V

    .line 35
    invoke-static {}, Lai/onnxruntime/OnnxRuntime;->extractTensorRT()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    sget-wide v2, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v4, p0, Lai/onnxruntime/OrtSession$SessionOptions;->nativeHandle:J

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v1 .. v6}, Lai/onnxruntime/OrtSession$SessionOptions;->addTensorrt(JJI)V

    return-void

    .line 37
    :cond_0
    new-instance p1, Lai/onnxruntime/OrtException;

    sget-object v0, Lai/onnxruntime/OrtException$OrtErrorCode;->ORT_EP_FAIL:Lai/onnxruntime/OrtException$OrtErrorCode;

    const-string v1, "Failed to find TensorRT shared provider"

    invoke-direct {p1, v0, v1}, Lai/onnxruntime/OrtException;-><init>(Lai/onnxruntime/OrtException$OrtErrorCode;Ljava/lang/String;)V

    throw p1
.end method

.method public addTensorrt(Lai/onnxruntime/providers/OrtTensorRTProviderOptions;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Lai/onnxruntime/OrtSession$SessionOptions;->checkClosed()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lai/onnxruntime/OnnxRuntime;->extractTensorRT()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Lai/onnxruntime/providers/StringConfigProviderOptions;->applyToNative()V

    .line 11
    .line 12
    .line 13
    sget-wide v2, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    .line 14
    .line 15
    iget-wide v4, p0, Lai/onnxruntime/OrtSession$SessionOptions;->nativeHandle:J

    .line 16
    .line 17
    iget-wide v6, p1, Lai/onnxruntime/OrtProviderOptions;->nativeHandle:J

    .line 18
    .line 19
    move-object v1, p0

    .line 20
    invoke-direct/range {v1 .. v7}, Lai/onnxruntime/OrtSession$SessionOptions;->addTensorrtV2(JJJ)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    new-instance p1, Lai/onnxruntime/OrtException;

    .line 25
    .line 26
    sget-object v0, Lai/onnxruntime/OrtException$OrtErrorCode;->ORT_EP_FAIL:Lai/onnxruntime/OrtException$OrtErrorCode;

    .line 27
    .line 28
    const-string v1, "Failed to find TensorRT shared provider"

    .line 29
    .line 30
    invoke-direct {p1, v0, v1}, Lai/onnxruntime/OrtException;-><init>(Lai/onnxruntime/OrtException$OrtErrorCode;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p1
.end method

.method public addTvm(Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lai/onnxruntime/OrtSession$SessionOptions;->checkClosed()V

    .line 2
    .line 3
    .line 4
    sget-wide v1, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    .line 5
    .line 6
    iget-wide v3, p0, Lai/onnxruntime/OrtSession$SessionOptions;->nativeHandle:J

    .line 7
    .line 8
    move-object v0, p0

    .line 9
    move-object v5, p1

    .line 10
    invoke-direct/range {v0 .. v5}, Lai/onnxruntime/OrtSession$SessionOptions;->addTvm(JJLjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public addWebGPU(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "WebGPU"

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lai/onnxruntime/OrtSession$SessionOptions;->addExecutionProvider(Ljava/lang/String;Ljava/util/Map;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public addXnnpack(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "XNNPACK"

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lai/onnxruntime/OrtSession$SessionOptions;->addExecutionProvider(Ljava/lang/String;Ljava/util/Map;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public close()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lai/onnxruntime/OrtSession$SessionOptions;->closed:Z

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lai/onnxruntime/OrtSession$SessionOptions;->customLibraryHandles:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lai/onnxruntime/OrtSession$SessionOptions;->customLibraryHandles:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    new-array v0, v0, [J

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    :goto_0
    iget-object v2, p0, Lai/onnxruntime/OrtSession$SessionOptions;->customLibraryHandles:Ljava/util/List;

    .line 23
    .line 24
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-ge v1, v2, :cond_0

    .line 29
    .line 30
    iget-object v2, p0, Lai/onnxruntime/OrtSession$SessionOptions;->customLibraryHandles:Ljava/util/List;

    .line 31
    .line 32
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Ljava/lang/Long;

    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 39
    .line 40
    .line 41
    move-result-wide v2

    .line 42
    aput-wide v2, v0, v1

    .line 43
    .line 44
    add-int/lit8 v1, v1, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    invoke-direct {p0, v0}, Lai/onnxruntime/OrtSession$SessionOptions;->closeCustomLibraries([J)V

    .line 48
    .line 49
    .line 50
    :cond_1
    sget-wide v0, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    .line 51
    .line 52
    iget-wide v2, p0, Lai/onnxruntime/OrtSession$SessionOptions;->nativeHandle:J

    .line 53
    .line 54
    invoke-direct {p0, v0, v1, v2, v3}, Lai/onnxruntime/OrtSession$SessionOptions;->closeOptions(JJ)V

    .line 55
    .line 56
    .line 57
    const/4 v0, 0x1

    .line 58
    iput-boolean v0, p0, Lai/onnxruntime/OrtSession$SessionOptions;->closed:Z

    .line 59
    .line 60
    return-void

    .line 61
    :cond_2
    const-string v0, "Trying to close a closed SessionOptions."

    .line 62
    .line 63
    invoke-static {v0}, Lj1/i;->l(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public disablePerSessionThreads()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lai/onnxruntime/OrtSession$SessionOptions;->checkClosed()V

    .line 2
    .line 3
    .line 4
    sget-wide v0, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    .line 5
    .line 6
    iget-wide v2, p0, Lai/onnxruntime/OrtSession$SessionOptions;->nativeHandle:J

    .line 7
    .line 8
    invoke-direct {p0, v0, v1, v2, v3}, Lai/onnxruntime/OrtSession$SessionOptions;->disablePerSessionThreads(JJ)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public disableProfiling()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lai/onnxruntime/OrtSession$SessionOptions;->checkClosed()V

    .line 2
    .line 3
    .line 4
    sget-wide v0, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    .line 5
    .line 6
    iget-wide v2, p0, Lai/onnxruntime/OrtSession$SessionOptions;->nativeHandle:J

    .line 7
    .line 8
    invoke-direct {p0, v0, v1, v2, v3}, Lai/onnxruntime/OrtSession$SessionOptions;->disableProfiling(JJ)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public enableProfiling(Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lai/onnxruntime/OrtSession$SessionOptions;->checkClosed()V

    .line 2
    .line 3
    .line 4
    sget-wide v1, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    .line 5
    .line 6
    iget-wide v3, p0, Lai/onnxruntime/OrtSession$SessionOptions;->nativeHandle:J

    .line 7
    .line 8
    move-object v0, p0

    .line 9
    move-object v5, p1

    .line 10
    invoke-direct/range {v0 .. v5}, Lai/onnxruntime/OrtSession$SessionOptions;->enableProfiling(JJLjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public getConfigEntries()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lai/onnxruntime/OrtSession$SessionOptions;->checkClosed()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lai/onnxruntime/OrtSession$SessionOptions;->configEntries:Ljava/util/Map;

    .line 5
    .line 6
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public getNativeHandle()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lai/onnxruntime/OrtSession$SessionOptions;->nativeHandle:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public registerCustomOpLibrary(Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Lai/onnxruntime/OrtSession$SessionOptions;->checkClosed()V

    .line 2
    .line 3
    .line 4
    const-string v0, "path must not be null"

    .line 5
    .line 6
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    sget-wide v2, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    .line 10
    .line 11
    iget-wide v4, p0, Lai/onnxruntime/OrtSession$SessionOptions;->nativeHandle:J

    .line 12
    .line 13
    move-object v1, p0

    .line 14
    move-object v6, p1

    .line 15
    invoke-direct/range {v1 .. v6}, Lai/onnxruntime/OrtSession$SessionOptions;->registerCustomOpLibrary(JJLjava/lang/String;)J

    .line 16
    .line 17
    .line 18
    move-result-wide v2

    .line 19
    iget-object p1, v1, Lai/onnxruntime/OrtSession$SessionOptions;->customLibraryHandles:Ljava/util/List;

    .line 20
    .line 21
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public registerCustomOpsUsingFunction(Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lai/onnxruntime/OrtSession$SessionOptions;->checkClosed()V

    .line 2
    .line 3
    .line 4
    sget-wide v1, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    .line 5
    .line 6
    iget-wide v3, p0, Lai/onnxruntime/OrtSession$SessionOptions;->nativeHandle:J

    .line 7
    .line 8
    move-object v0, p0

    .line 9
    move-object v5, p1

    .line 10
    invoke-direct/range {v0 .. v5}, Lai/onnxruntime/OrtSession$SessionOptions;->registerCustomOpsUsingFunction(JJLjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setCPUArenaAllocator(Z)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lai/onnxruntime/OrtSession$SessionOptions;->checkClosed()V

    .line 2
    .line 3
    .line 4
    sget-wide v1, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    .line 5
    .line 6
    iget-wide v3, p0, Lai/onnxruntime/OrtSession$SessionOptions;->nativeHandle:J

    .line 7
    .line 8
    move-object v0, p0

    .line 9
    move v5, p1

    .line 10
    invoke-direct/range {v0 .. v5}, Lai/onnxruntime/OrtSession$SessionOptions;->setCPUArenaAllocator(JJZ)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setDeterministicCompute(Z)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lai/onnxruntime/OrtSession$SessionOptions;->checkClosed()V

    .line 2
    .line 3
    .line 4
    sget-wide v1, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    .line 5
    .line 6
    iget-wide v3, p0, Lai/onnxruntime/OrtSession$SessionOptions;->nativeHandle:J

    .line 7
    .line 8
    move-object v0, p0

    .line 9
    move v5, p1

    .line 10
    invoke-direct/range {v0 .. v5}, Lai/onnxruntime/OrtSession$SessionOptions;->setDeterministicCompute(JJZ)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setExecutionMode(Lai/onnxruntime/OrtSession$SessionOptions$ExecutionMode;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lai/onnxruntime/OrtSession$SessionOptions;->checkClosed()V

    .line 2
    .line 3
    .line 4
    sget-wide v1, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    .line 5
    .line 6
    iget-wide v3, p0, Lai/onnxruntime/OrtSession$SessionOptions;->nativeHandle:J

    .line 7
    .line 8
    invoke-virtual {p1}, Lai/onnxruntime/OrtSession$SessionOptions$ExecutionMode;->getID()I

    .line 9
    .line 10
    .line 11
    move-result v5

    .line 12
    move-object v0, p0

    .line 13
    invoke-direct/range {v0 .. v5}, Lai/onnxruntime/OrtSession$SessionOptions;->setExecutionMode(JJI)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public setInterOpNumThreads(I)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lai/onnxruntime/OrtSession$SessionOptions;->checkClosed()V

    .line 2
    .line 3
    .line 4
    sget-wide v1, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    .line 5
    .line 6
    iget-wide v3, p0, Lai/onnxruntime/OrtSession$SessionOptions;->nativeHandle:J

    .line 7
    .line 8
    move-object v0, p0

    .line 9
    move v5, p1

    .line 10
    invoke-direct/range {v0 .. v5}, Lai/onnxruntime/OrtSession$SessionOptions;->setInterOpNumThreads(JJI)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setIntraOpNumThreads(I)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lai/onnxruntime/OrtSession$SessionOptions;->checkClosed()V

    .line 2
    .line 3
    .line 4
    sget-wide v1, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    .line 5
    .line 6
    iget-wide v3, p0, Lai/onnxruntime/OrtSession$SessionOptions;->nativeHandle:J

    .line 7
    .line 8
    move-object v0, p0

    .line 9
    move v5, p1

    .line 10
    invoke-direct/range {v0 .. v5}, Lai/onnxruntime/OrtSession$SessionOptions;->setIntraOpNumThreads(JJI)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setLoggerId(Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lai/onnxruntime/OrtSession$SessionOptions;->checkClosed()V

    .line 2
    .line 3
    .line 4
    sget-wide v1, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    .line 5
    .line 6
    iget-wide v3, p0, Lai/onnxruntime/OrtSession$SessionOptions;->nativeHandle:J

    .line 7
    .line 8
    move-object v0, p0

    .line 9
    move-object v5, p1

    .line 10
    invoke-direct/range {v0 .. v5}, Lai/onnxruntime/OrtSession$SessionOptions;->setLoggerId(JJLjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setMemoryPatternOptimization(Z)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lai/onnxruntime/OrtSession$SessionOptions;->checkClosed()V

    .line 2
    .line 3
    .line 4
    sget-wide v1, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    .line 5
    .line 6
    iget-wide v3, p0, Lai/onnxruntime/OrtSession$SessionOptions;->nativeHandle:J

    .line 7
    .line 8
    move-object v0, p0

    .line 9
    move v5, p1

    .line 10
    invoke-direct/range {v0 .. v5}, Lai/onnxruntime/OrtSession$SessionOptions;->setMemoryPatternOptimization(JJZ)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setOptimizationLevel(Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lai/onnxruntime/OrtSession$SessionOptions;->checkClosed()V

    .line 2
    .line 3
    .line 4
    sget-wide v1, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    .line 5
    .line 6
    iget-wide v3, p0, Lai/onnxruntime/OrtSession$SessionOptions;->nativeHandle:J

    .line 7
    .line 8
    invoke-virtual {p1}, Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;->getID()I

    .line 9
    .line 10
    .line 11
    move-result v5

    .line 12
    move-object v0, p0

    .line 13
    invoke-direct/range {v0 .. v5}, Lai/onnxruntime/OrtSession$SessionOptions;->setOptimizationLevel(JJI)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public setOptimizedModelFilePath(Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lai/onnxruntime/OrtSession$SessionOptions;->checkClosed()V

    .line 2
    .line 3
    .line 4
    sget-wide v1, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    .line 5
    .line 6
    iget-wide v3, p0, Lai/onnxruntime/OrtSession$SessionOptions;->nativeHandle:J

    .line 7
    .line 8
    move-object v0, p0

    .line 9
    move-object v5, p1

    .line 10
    invoke-direct/range {v0 .. v5}, Lai/onnxruntime/OrtSession$SessionOptions;->setOptimizationModelFilePath(JJLjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setSessionLogLevel(Lai/onnxruntime/OrtLoggingLevel;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lai/onnxruntime/OrtSession$SessionOptions;->checkClosed()V

    .line 2
    .line 3
    .line 4
    sget-wide v1, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    .line 5
    .line 6
    iget-wide v3, p0, Lai/onnxruntime/OrtSession$SessionOptions;->nativeHandle:J

    .line 7
    .line 8
    invoke-virtual {p1}, Lai/onnxruntime/OrtLoggingLevel;->getValue()I

    .line 9
    .line 10
    .line 11
    move-result v5

    .line 12
    move-object v0, p0

    .line 13
    invoke-direct/range {v0 .. v5}, Lai/onnxruntime/OrtSession$SessionOptions;->setSessionLogLevel(JJI)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public setSessionLogVerbosityLevel(I)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lai/onnxruntime/OrtSession$SessionOptions;->checkClosed()V

    .line 2
    .line 3
    .line 4
    sget-wide v1, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    .line 5
    .line 6
    iget-wide v3, p0, Lai/onnxruntime/OrtSession$SessionOptions;->nativeHandle:J

    .line 7
    .line 8
    move-object v0, p0

    .line 9
    move v5, p1

    .line 10
    invoke-direct/range {v0 .. v5}, Lai/onnxruntime/OrtSession$SessionOptions;->setSessionLogVerbosityLevel(JJI)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setSymbolicDimensionValue(Ljava/lang/String;J)V
    .locals 8

    .line 1
    invoke-direct {p0}, Lai/onnxruntime/OrtSession$SessionOptions;->checkClosed()V

    .line 2
    .line 3
    .line 4
    sget-wide v1, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    .line 5
    .line 6
    iget-wide v3, p0, Lai/onnxruntime/OrtSession$SessionOptions;->nativeHandle:J

    .line 7
    .line 8
    move-object v0, p0

    .line 9
    move-object v5, p1

    .line 10
    move-wide v6, p2

    .line 11
    invoke-direct/range {v0 .. v7}, Lai/onnxruntime/OrtSession$SessionOptions;->addFreeDimensionOverrideByName(JJLjava/lang/String;J)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
