.class public Lai/onnxruntime/OrtSession$RunOptions;
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
    name = "RunOptions"
.end annotation


# instance fields
.field private closed:Z

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
    iput-boolean v0, p0, Lai/onnxruntime/OrtSession$RunOptions;->closed:Z

    .line 6
    .line 7
    sget-wide v0, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    .line 8
    .line 9
    invoke-static {v0, v1}, Lai/onnxruntime/OrtSession$RunOptions;->createRunOptions(J)J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iput-wide v0, p0, Lai/onnxruntime/OrtSession$RunOptions;->nativeHandle:J

    .line 14
    .line 15
    return-void
.end method

.method private native addActiveLoraAdapter(JJJ)V
.end method

.method private native addRunConfigEntry(JJLjava/lang/String;Ljava/lang/String;)V
.end method

.method private checkClosed()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lai/onnxruntime/OrtSession$RunOptions;->closed:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string v0, "Trying to use a closed RunOptions"

    .line 7
    .line 8
    invoke-static {v0}, Lj1/i;->l(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private static native close(JJ)V
.end method

.method private static native createRunOptions(J)J
.end method

.method private native getLogLevel(JJ)I
.end method

.method private native getLogVerbosityLevel(JJ)I
.end method

.method private native getRunTag(JJ)Ljava/lang/String;
.end method

.method private native setLogLevel(JJI)V
.end method

.method private native setLogVerbosityLevel(JJI)V
.end method

.method private native setRunTag(JJLjava/lang/String;)V
.end method

.method private native setTerminate(JJZ)V
.end method


# virtual methods
.method public addActiveLoraAdapter(Lai/onnxruntime/OrtLoraAdapter;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Lai/onnxruntime/OrtSession$RunOptions;->checkClosed()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lai/onnxruntime/OrtLoraAdapter;->checkClosed()V

    .line 5
    .line 6
    .line 7
    sget-wide v1, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    .line 8
    .line 9
    iget-wide v3, p0, Lai/onnxruntime/OrtSession$RunOptions;->nativeHandle:J

    .line 10
    .line 11
    invoke-virtual {p1}, Lai/onnxruntime/OrtLoraAdapter;->getNativeHandle()J

    .line 12
    .line 13
    .line 14
    move-result-wide v5

    .line 15
    move-object v0, p0

    .line 16
    invoke-direct/range {v0 .. v6}, Lai/onnxruntime/OrtSession$RunOptions;->addActiveLoraAdapter(JJJ)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public addRunConfigEntry(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Lai/onnxruntime/OrtSession$RunOptions;->checkClosed()V

    .line 2
    .line 3
    .line 4
    sget-wide v1, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    .line 5
    .line 6
    iget-wide v3, p0, Lai/onnxruntime/OrtSession$RunOptions;->nativeHandle:J

    .line 7
    .line 8
    move-object v0, p0

    .line 9
    move-object v5, p1

    .line 10
    move-object v6, p2

    .line 11
    invoke-direct/range {v0 .. v6}, Lai/onnxruntime/OrtSession$RunOptions;->addRunConfigEntry(JJLjava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public close()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lai/onnxruntime/OrtSession$RunOptions;->closed:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-wide v0, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    .line 6
    .line 7
    iget-wide v2, p0, Lai/onnxruntime/OrtSession$RunOptions;->nativeHandle:J

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3}, Lai/onnxruntime/OrtSession$RunOptions;->close(JJ)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lai/onnxruntime/OrtSession$RunOptions;->closed:Z

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    const-string v0, "Trying to close an already closed RunOptions"

    .line 17
    .line 18
    invoke-static {v0}, Lj1/i;->l(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public getLogLevel()Lai/onnxruntime/OrtLoggingLevel;
    .locals 4

    .line 1
    invoke-direct {p0}, Lai/onnxruntime/OrtSession$RunOptions;->checkClosed()V

    .line 2
    .line 3
    .line 4
    sget-wide v0, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    .line 5
    .line 6
    iget-wide v2, p0, Lai/onnxruntime/OrtSession$RunOptions;->nativeHandle:J

    .line 7
    .line 8
    invoke-direct {p0, v0, v1, v2, v3}, Lai/onnxruntime/OrtSession$RunOptions;->getLogLevel(JJ)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-static {v0}, Lai/onnxruntime/OrtLoggingLevel;->mapFromInt(I)Lai/onnxruntime/OrtLoggingLevel;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public getLogVerbosityLevel()I
    .locals 4

    .line 1
    invoke-direct {p0}, Lai/onnxruntime/OrtSession$RunOptions;->checkClosed()V

    .line 2
    .line 3
    .line 4
    sget-wide v0, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    .line 5
    .line 6
    iget-wide v2, p0, Lai/onnxruntime/OrtSession$RunOptions;->nativeHandle:J

    .line 7
    .line 8
    invoke-direct {p0, v0, v1, v2, v3}, Lai/onnxruntime/OrtSession$RunOptions;->getLogVerbosityLevel(JJ)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public getNativeHandle()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lai/onnxruntime/OrtSession$RunOptions;->nativeHandle:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getRunTag()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-direct {p0}, Lai/onnxruntime/OrtSession$RunOptions;->checkClosed()V

    .line 2
    .line 3
    .line 4
    sget-wide v0, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    .line 5
    .line 6
    iget-wide v2, p0, Lai/onnxruntime/OrtSession$RunOptions;->nativeHandle:J

    .line 7
    .line 8
    invoke-direct {p0, v0, v1, v2, v3}, Lai/onnxruntime/OrtSession$RunOptions;->getRunTag(JJ)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public setLogLevel(Lai/onnxruntime/OrtLoggingLevel;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lai/onnxruntime/OrtSession$RunOptions;->checkClosed()V

    .line 2
    .line 3
    .line 4
    sget-wide v1, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    .line 5
    .line 6
    iget-wide v3, p0, Lai/onnxruntime/OrtSession$RunOptions;->nativeHandle:J

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
    invoke-direct/range {v0 .. v5}, Lai/onnxruntime/OrtSession$RunOptions;->setLogLevel(JJI)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public setLogVerbosityLevel(I)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lai/onnxruntime/OrtSession$RunOptions;->checkClosed()V

    .line 2
    .line 3
    .line 4
    sget-wide v1, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    .line 5
    .line 6
    iget-wide v3, p0, Lai/onnxruntime/OrtSession$RunOptions;->nativeHandle:J

    .line 7
    .line 8
    move-object v0, p0

    .line 9
    move v5, p1

    .line 10
    invoke-direct/range {v0 .. v5}, Lai/onnxruntime/OrtSession$RunOptions;->setLogVerbosityLevel(JJI)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setRunTag(Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lai/onnxruntime/OrtSession$RunOptions;->checkClosed()V

    .line 2
    .line 3
    .line 4
    sget-wide v1, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    .line 5
    .line 6
    iget-wide v3, p0, Lai/onnxruntime/OrtSession$RunOptions;->nativeHandle:J

    .line 7
    .line 8
    move-object v0, p0

    .line 9
    move-object v5, p1

    .line 10
    invoke-direct/range {v0 .. v5}, Lai/onnxruntime/OrtSession$RunOptions;->setRunTag(JJLjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setTerminate(Z)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lai/onnxruntime/OrtSession$RunOptions;->checkClosed()V

    .line 2
    .line 3
    .line 4
    sget-wide v1, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    .line 5
    .line 6
    iget-wide v3, p0, Lai/onnxruntime/OrtSession$RunOptions;->nativeHandle:J

    .line 7
    .line 8
    move-object v0, p0

    .line 9
    move v5, p1

    .line 10
    invoke-direct/range {v0 .. v5}, Lai/onnxruntime/OrtSession$RunOptions;->setTerminate(JJZ)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
