.class public abstract Lai/onnxruntime/OrtProviderOptions;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lai/onnxruntime/OrtProviderOptions$OrtProviderSupplier;
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field protected closed:Z

.field protected final nativeHandle:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lai/onnxruntime/OrtProviderOptions;

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
    sput-object v0, Lai/onnxruntime/OrtProviderOptions;->logger:Ljava/util/logging/Logger;

    .line 12
    .line 13
    :try_start_0
    invoke-static {}, Lai/onnxruntime/OnnxRuntime;->init()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :catch_0
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

.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lai/onnxruntime/OrtProviderOptions;->nativeHandle:J

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lai/onnxruntime/OrtProviderOptions;->closed:Z

    .line 8
    .line 9
    return-void
.end method

.method public static getApiHandle()J
    .locals 2

    .line 1
    sget-wide v0, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static loadLibraryAndCreate(Lai/onnxruntime/OrtProvider;Lai/onnxruntime/OrtProviderOptions$OrtProviderSupplier;)J
    .locals 1

    .line 1
    sget-object v0, Lai/onnxruntime/OrtProviderOptions$1;->$SwitchMap$ai$onnxruntime$OrtProvider:[I

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    aget p0, v0, p0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    if-eq p0, v0, :cond_8

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    if-eq p0, v0, :cond_6

    .line 14
    .line 15
    const/4 v0, 0x3

    .line 16
    if-eq p0, v0, :cond_4

    .line 17
    .line 18
    const/4 v0, 0x4

    .line 19
    if-eq p0, v0, :cond_2

    .line 20
    .line 21
    const/4 v0, 0x5

    .line 22
    if-eq p0, v0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-static {}, Lai/onnxruntime/OnnxRuntime;->extractTensorRT()Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-eqz p0, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    new-instance p0, Lai/onnxruntime/OrtException;

    .line 33
    .line 34
    sget-object p1, Lai/onnxruntime/OrtException$OrtErrorCode;->ORT_EP_FAIL:Lai/onnxruntime/OrtException$OrtErrorCode;

    .line 35
    .line 36
    const-string v0, "Failed to find TensorRT shared provider"

    .line 37
    .line 38
    invoke-direct {p0, p1, v0}, Lai/onnxruntime/OrtException;-><init>(Lai/onnxruntime/OrtException$OrtErrorCode;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p0

    .line 42
    :cond_2
    invoke-static {}, Lai/onnxruntime/OnnxRuntime;->extractROCM()Z

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    if-eqz p0, :cond_3

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_3
    new-instance p0, Lai/onnxruntime/OrtException;

    .line 50
    .line 51
    sget-object p1, Lai/onnxruntime/OrtException$OrtErrorCode;->ORT_EP_FAIL:Lai/onnxruntime/OrtException$OrtErrorCode;

    .line 52
    .line 53
    const-string v0, "Failed to find ROCm shared provider"

    .line 54
    .line 55
    invoke-direct {p0, p1, v0}, Lai/onnxruntime/OrtException;-><init>(Lai/onnxruntime/OrtException$OrtErrorCode;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p0

    .line 59
    :cond_4
    invoke-static {}, Lai/onnxruntime/OnnxRuntime;->extractOpenVINO()Z

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    if-eqz p0, :cond_5

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_5
    new-instance p0, Lai/onnxruntime/OrtException;

    .line 67
    .line 68
    sget-object p1, Lai/onnxruntime/OrtException$OrtErrorCode;->ORT_EP_FAIL:Lai/onnxruntime/OrtException$OrtErrorCode;

    .line 69
    .line 70
    const-string v0, "Failed to find OpenVINO shared provider"

    .line 71
    .line 72
    invoke-direct {p0, p1, v0}, Lai/onnxruntime/OrtException;-><init>(Lai/onnxruntime/OrtException$OrtErrorCode;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw p0

    .line 76
    :cond_6
    invoke-static {}, Lai/onnxruntime/OnnxRuntime;->extractDNNL()Z

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    if-eqz p0, :cond_7

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_7
    new-instance p0, Lai/onnxruntime/OrtException;

    .line 84
    .line 85
    sget-object p1, Lai/onnxruntime/OrtException$OrtErrorCode;->ORT_EP_FAIL:Lai/onnxruntime/OrtException$OrtErrorCode;

    .line 86
    .line 87
    const-string v0, "Failed to find DNNL shared provider"

    .line 88
    .line 89
    invoke-direct {p0, p1, v0}, Lai/onnxruntime/OrtException;-><init>(Lai/onnxruntime/OrtException$OrtErrorCode;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw p0

    .line 93
    :cond_8
    invoke-static {}, Lai/onnxruntime/OnnxRuntime;->extractCUDA()Z

    .line 94
    .line 95
    .line 96
    move-result p0

    .line 97
    if-eqz p0, :cond_9

    .line 98
    .line 99
    :goto_0
    invoke-interface {p1}, Lai/onnxruntime/OrtProviderOptions$OrtProviderSupplier;->create()J

    .line 100
    .line 101
    .line 102
    move-result-wide p0

    .line 103
    return-wide p0

    .line 104
    :cond_9
    new-instance p0, Lai/onnxruntime/OrtException;

    .line 105
    .line 106
    sget-object p1, Lai/onnxruntime/OrtException$OrtErrorCode;->ORT_EP_FAIL:Lai/onnxruntime/OrtException$OrtErrorCode;

    .line 107
    .line 108
    const-string v0, "Failed to find CUDA shared provider"

    .line 109
    .line 110
    invoke-direct {p0, p1, v0}, Lai/onnxruntime/OrtException;-><init>(Lai/onnxruntime/OrtException$OrtErrorCode;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    throw p0
.end method


# virtual methods
.method public abstract applyToNative()V
.end method

.method public checkClosed()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lai/onnxruntime/OrtProviderOptions;->closed:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string v0, "Trying to use a closed OrtProviderOptions"

    .line 7
    .line 8
    invoke-static {v0}, Lj1/i;->l(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public close()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lai/onnxruntime/OrtProviderOptions;->closed:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-wide v0, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    .line 6
    .line 7
    iget-wide v2, p0, Lai/onnxruntime/OrtProviderOptions;->nativeHandle:J

    .line 8
    .line 9
    invoke-virtual {p0, v0, v1, v2, v3}, Lai/onnxruntime/OrtProviderOptions;->close(JJ)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lai/onnxruntime/OrtProviderOptions;->closed:Z

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    sget-object v0, Lai/onnxruntime/OrtProviderOptions;->logger:Ljava/util/logging/Logger;

    .line 17
    .line 18
    const-string v1, "Closing an already closed tensor."

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public abstract close(JJ)V
.end method

.method public abstract getProvider()Lai/onnxruntime/OrtProvider;
.end method

.method public declared-synchronized isClosed()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lai/onnxruntime/OrtProviderOptions;->closed:Z
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
