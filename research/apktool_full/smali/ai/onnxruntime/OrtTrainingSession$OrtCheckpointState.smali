.class final Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lai/onnxruntime/OrtTrainingSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OrtCheckpointState"
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private closed:Z

.field final nativeHandle:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;

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
    sput-object v0, Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;->logger:Ljava/util/logging/Logger;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;->nativeHandle:J

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;->closed:Z

    .line 8
    .line 9
    return-void
.end method

.method private native addProperty(JJJLjava/lang/String;F)V
.end method

.method private native addProperty(JJJLjava/lang/String;I)V
.end method

.method private native addProperty(JJJLjava/lang/String;Ljava/lang/String;)V
.end method

.method private checkClosed()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;->closed:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string v0, "Trying to use a closed OrtCheckpointState"

    .line 7
    .line 8
    invoke-static {v0}, Lj1/i;->l(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private native close(JJ)V
.end method

.method private native getFloatProperty(JJJJLjava/lang/String;)F
.end method

.method private native getIntProperty(JJJJLjava/lang/String;)I
.end method

.method private native getStringProperty(JJJJLjava/lang/String;)Ljava/lang/String;
.end method

.method private static native loadCheckpoint(JJLjava/lang/String;)J
.end method

.method public static loadCheckpoint(Ljava/lang/String;)Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;
    .locals 5

    .line 1
    sget-boolean v0, Lai/onnxruntime/OnnxRuntime;->trainingEnabled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "checkpoint path must not be null"

    .line 6
    .line 7
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    new-instance v0, Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;

    .line 11
    .line 12
    sget-wide v1, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    .line 13
    .line 14
    sget-wide v3, Lai/onnxruntime/OnnxRuntime;->ortTrainingApiHandle:J

    .line 15
    .line 16
    invoke-static {v1, v2, v3, v4, p0}, Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;->loadCheckpoint(JJLjava/lang/String;)J

    .line 17
    .line 18
    .line 19
    move-result-wide v1

    .line 20
    invoke-direct {v0, v1, v2}, Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;-><init>(J)V

    .line 21
    .line 22
    .line 23
    return-object v0

    .line 24
    :cond_0
    const-string p0, "Training is not enabled in this build of ONNX Runtime."

    .line 25
    .line 26
    invoke-static {p0}, Lj1/i;->l(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const/4 p0, 0x0

    .line 30
    return-object p0
.end method

.method public static loadCheckpoint(Ljava/nio/file/Path;)Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;
    .locals 0

    .line 31
    invoke-static {p0}, Lai/onnxruntime/c;->s(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object p0

    .line 32
    invoke-static {p0}, Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;->loadCheckpoint(Ljava/lang/String;)Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;

    move-result-object p0

    return-object p0
.end method

.method private native saveCheckpoint(JJJLjava/lang/String;Z)V
.end method


# virtual methods
.method public addProperty(Ljava/lang/String;F)V
    .locals 9

    .line 1
    invoke-direct {p0}, Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;->checkClosed()V

    .line 2
    .line 3
    .line 4
    sget-wide v1, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    .line 5
    .line 6
    sget-wide v3, Lai/onnxruntime/OnnxRuntime;->ortTrainingApiHandle:J

    .line 7
    .line 8
    iget-wide v5, p0, Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;->nativeHandle:J

    .line 9
    .line 10
    move-object v0, p0

    .line 11
    move-object v7, p1

    .line 12
    move v8, p2

    .line 13
    invoke-direct/range {v0 .. v8}, Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;->addProperty(JJJLjava/lang/String;F)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public addProperty(Ljava/lang/String;I)V
    .locals 9

    .line 17
    invoke-direct {p0}, Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;->checkClosed()V

    .line 18
    sget-wide v1, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    sget-wide v3, Lai/onnxruntime/OnnxRuntime;->ortTrainingApiHandle:J

    iget-wide v5, p0, Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;->nativeHandle:J

    move-object v0, p0

    move-object v7, p1

    move v8, p2

    invoke-direct/range {v0 .. v8}, Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;->addProperty(JJJLjava/lang/String;I)V

    return-void
.end method

.method public addProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 19
    invoke-direct {p0}, Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;->checkClosed()V

    .line 20
    sget-wide v1, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    sget-wide v3, Lai/onnxruntime/OnnxRuntime;->ortTrainingApiHandle:J

    iget-wide v5, p0, Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;->nativeHandle:J

    move-object v0, p0

    move-object v7, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;->addProperty(JJJLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized close()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;->closed:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget-wide v0, Lai/onnxruntime/OnnxRuntime;->ortTrainingApiHandle:J

    .line 7
    .line 8
    iget-wide v2, p0, Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;->nativeHandle:J

    .line 9
    .line 10
    invoke-direct {p0, v0, v1, v2, v3}, Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;->close(JJ)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;->closed:Z

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    sget-object v0, Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;->logger:Ljava/util/logging/Logger;

    .line 20
    .line 21
    const-string v1, "Closing a checkpoint twice"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    :goto_0
    monitor-exit p0

    .line 27
    return-void

    .line 28
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    throw v0
.end method

.method public getFloatProperty(Lai/onnxruntime/OrtAllocator;Ljava/lang/String;)F
    .locals 10

    .line 1
    invoke-direct {p0}, Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;->checkClosed()V

    .line 2
    .line 3
    .line 4
    sget-wide v1, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    .line 5
    .line 6
    sget-wide v3, Lai/onnxruntime/OnnxRuntime;->ortTrainingApiHandle:J

    .line 7
    .line 8
    iget-wide v5, p0, Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;->nativeHandle:J

    .line 9
    .line 10
    iget-wide v7, p1, Lai/onnxruntime/OrtAllocator;->handle:J

    .line 11
    .line 12
    move-object v0, p0

    .line 13
    move-object v9, p2

    .line 14
    invoke-direct/range {v0 .. v9}, Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;->getFloatProperty(JJJJLjava/lang/String;)F

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    return p1
.end method

.method public getIntProperty(Lai/onnxruntime/OrtAllocator;Ljava/lang/String;)I
    .locals 10

    .line 1
    invoke-direct {p0}, Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;->checkClosed()V

    .line 2
    .line 3
    .line 4
    sget-wide v1, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    .line 5
    .line 6
    sget-wide v3, Lai/onnxruntime/OnnxRuntime;->ortTrainingApiHandle:J

    .line 7
    .line 8
    iget-wide v5, p0, Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;->nativeHandle:J

    .line 9
    .line 10
    iget-wide v7, p1, Lai/onnxruntime/OrtAllocator;->handle:J

    .line 11
    .line 12
    move-object v0, p0

    .line 13
    move-object v9, p2

    .line 14
    invoke-direct/range {v0 .. v9}, Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;->getIntProperty(JJJJLjava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    return p1
.end method

.method public getStringProperty(Lai/onnxruntime/OrtAllocator;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 1
    invoke-direct {p0}, Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;->checkClosed()V

    .line 2
    .line 3
    .line 4
    sget-wide v1, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    .line 5
    .line 6
    sget-wide v3, Lai/onnxruntime/OnnxRuntime;->ortTrainingApiHandle:J

    .line 7
    .line 8
    iget-wide v5, p0, Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;->nativeHandle:J

    .line 9
    .line 10
    iget-wide v7, p1, Lai/onnxruntime/OrtAllocator;->handle:J

    .line 11
    .line 12
    move-object v0, p0

    .line 13
    move-object v9, p2

    .line 14
    invoke-direct/range {v0 .. v9}, Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;->getStringProperty(JJJJLjava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method public declared-synchronized isClosed()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    throw v0
.end method

.method public saveCheckpoint(Ljava/nio/file/Path;Z)V
    .locals 10

    .line 1
    invoke-direct {p0}, Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;->checkClosed()V

    .line 2
    .line 3
    .line 4
    const-string v0, "checkpoint path must not be null"

    .line 5
    .line 6
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Lai/onnxruntime/c;->s(Ljava/nio/file/Path;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v8

    .line 13
    sget-wide v2, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    .line 14
    .line 15
    sget-wide v4, Lai/onnxruntime/OnnxRuntime;->ortTrainingApiHandle:J

    .line 16
    .line 17
    iget-wide v6, p0, Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;->nativeHandle:J

    .line 18
    .line 19
    move-object v1, p0

    .line 20
    move v9, p2

    .line 21
    invoke-direct/range {v1 .. v9}, Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;->saveCheckpoint(JJJLjava/lang/String;Z)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
