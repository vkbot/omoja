.class public final Lai/onnxruntime/OrtEnvironment$ThreadingOptions;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lai/onnxruntime/OrtEnvironment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ThreadingOptions"
.end annotation


# instance fields
.field private closed:Z

.field private final nativeHandle:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    :try_start_0
    invoke-static {}, Lai/onnxruntime/OnnxRuntime;->init()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_4

    .line 2
    .line 3
    .line 4
    return-void

    .line 5
    :catch_4
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
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lai/onnxruntime/OrtEnvironment$ThreadingOptions;->closed:Z

    .line 6
    .line 7
    sget-wide v0, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    .line 8
    .line 9
    invoke-static {v0, v1}, Lai/onnxruntime/OrtEnvironment$ThreadingOptions;->createThreadingOptions(J)J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iput-wide v0, p0, Lai/onnxruntime/OrtEnvironment$ThreadingOptions;->nativeHandle:J

    .line 14
    .line 15
    return-void
.end method

.method public static bridge synthetic b(Lai/onnxruntime/OrtEnvironment$ThreadingOptions;)J
    .registers 3

    .line 1
    iget-wide v0, p0, Lai/onnxruntime/OrtEnvironment$ThreadingOptions;->nativeHandle:J

    .line 2
    .line 3
    return-wide v0
.end method

.method private checkClosed()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lai/onnxruntime/OrtEnvironment$ThreadingOptions;->closed:Z

    .line 2
    .line 3
    if-nez v0, :cond_5

    .line 4
    .line 5
    return-void

    .line 6
    :cond_5
    const-string v0, "Trying to use a closed ThreadingOptions"

    .line 7
    .line 8
    invoke-static {v0}, Lj1/i;->l(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private native closeThreadingOptions(JJ)V
.end method

.method private static native createThreadingOptions(J)J
.end method

.method private native setGlobalDenormalAsZero(JJ)V
.end method

.method private native setGlobalInterOpNumThreads(JJI)V
.end method

.method private native setGlobalIntraOpNumThreads(JJI)V
.end method

.method private native setGlobalSpinControl(JJI)V
.end method


# virtual methods
.method public close()V
    .registers 5

    .line 1
    iget-boolean v0, p0, Lai/onnxruntime/OrtEnvironment$ThreadingOptions;->closed:Z

    .line 2
    .line 3
    if-nez v0, :cond_f

    .line 4
    .line 5
    sget-wide v0, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    .line 6
    .line 7
    iget-wide v2, p0, Lai/onnxruntime/OrtEnvironment$ThreadingOptions;->nativeHandle:J

    .line 8
    .line 9
    invoke-direct {p0, v0, v1, v2, v3}, Lai/onnxruntime/OrtEnvironment$ThreadingOptions;->closeThreadingOptions(JJ)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lai/onnxruntime/OrtEnvironment$ThreadingOptions;->closed:Z

    .line 14
    .line 15
    return-void

    .line 16
    :cond_f
    const-string v0, "Trying to close a closed ThreadingOptions."

    .line 17
    .line 18
    invoke-static {v0}, Lj1/i;->l(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public setGlobalDenormalAsZero()V
    .registers 5

    .line 1
    invoke-direct {p0}, Lai/onnxruntime/OrtEnvironment$ThreadingOptions;->checkClosed()V

    .line 2
    .line 3
    .line 4
    sget-wide v0, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    .line 5
    .line 6
    iget-wide v2, p0, Lai/onnxruntime/OrtEnvironment$ThreadingOptions;->nativeHandle:J

    .line 7
    .line 8
    invoke-direct {p0, v0, v1, v2, v3}, Lai/onnxruntime/OrtEnvironment$ThreadingOptions;->setGlobalDenormalAsZero(JJ)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setGlobalInterOpNumThreads(I)V
    .registers 8

    .line 1
    invoke-direct {p0}, Lai/onnxruntime/OrtEnvironment$ThreadingOptions;->checkClosed()V

    .line 2
    .line 3
    .line 4
    if-ltz p1, :cond_f

    .line 5
    .line 6
    sget-wide v1, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    .line 7
    .line 8
    iget-wide v3, p0, Lai/onnxruntime/OrtEnvironment$ThreadingOptions;->nativeHandle:J

    .line 9
    .line 10
    move-object v0, p0

    .line 11
    move v5, p1

    .line 12
    invoke-direct/range {v0 .. v5}, Lai/onnxruntime/OrtEnvironment$ThreadingOptions;->setGlobalInterOpNumThreads(JJI)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_f
    const-string p1, "Number of threads must be non-negative."

    .line 17
    .line 18
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public setGlobalIntraOpNumThreads(I)V
    .registers 8

    .line 1
    invoke-direct {p0}, Lai/onnxruntime/OrtEnvironment$ThreadingOptions;->checkClosed()V

    .line 2
    .line 3
    .line 4
    if-ltz p1, :cond_f

    .line 5
    .line 6
    sget-wide v1, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    .line 7
    .line 8
    iget-wide v3, p0, Lai/onnxruntime/OrtEnvironment$ThreadingOptions;->nativeHandle:J

    .line 9
    .line 10
    move-object v0, p0

    .line 11
    move v5, p1

    .line 12
    invoke-direct/range {v0 .. v5}, Lai/onnxruntime/OrtEnvironment$ThreadingOptions;->setGlobalIntraOpNumThreads(JJI)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_f
    const-string p1, "Number of threads must be non-negative."

    .line 17
    .line 18
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public setGlobalSpinControl(Z)V
    .registers 8

    .line 1
    invoke-direct {p0}, Lai/onnxruntime/OrtEnvironment$ThreadingOptions;->checkClosed()V

    .line 2
    .line 3
    .line 4
    sget-wide v1, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    .line 5
    .line 6
    iget-wide v3, p0, Lai/onnxruntime/OrtEnvironment$ThreadingOptions;->nativeHandle:J

    .line 7
    .line 8
    move-object v0, p0

    .line 9
    move v5, p1

    .line 10
    invoke-direct/range {v0 .. v5}, Lai/onnxruntime/OrtEnvironment$ThreadingOptions;->setGlobalSpinControl(JJI)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
