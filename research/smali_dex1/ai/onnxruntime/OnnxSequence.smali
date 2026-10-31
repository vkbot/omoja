.class public Lai/onnxruntime/OnnxSequence;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lai/onnxruntime/OnnxValue;


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final allocatorHandle:J

.field private closed:Z

.field private final info:Lai/onnxruntime/SequenceInfo;

.field final nativeHandle:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    const-class v0, Lai/onnxruntime/OnnxSequence;

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
    sput-object v0, Lai/onnxruntime/OnnxSequence;->logger:Ljava/util/logging/Logger;

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

.method public constructor <init>(JJLai/onnxruntime/SequenceInfo;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lai/onnxruntime/OnnxSequence;->nativeHandle:J

    .line 5
    .line 6
    iput-wide p3, p0, Lai/onnxruntime/OnnxSequence;->allocatorHandle:J

    .line 7
    .line 8
    iput-object p5, p0, Lai/onnxruntime/OnnxSequence;->info:Lai/onnxruntime/SequenceInfo;

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lai/onnxruntime/OnnxSequence;->closed:Z

    .line 12
    .line 13
    return-void
.end method

.method private native close(JJ)V
.end method

.method private native getMaps(JJJ)[Lai/onnxruntime/OnnxMap;
.end method

.method private native getTensors(JJJ)[Lai/onnxruntime/OnnxTensor;
.end method


# virtual methods
.method public checkClosed()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lai/onnxruntime/OnnxSequence;->closed:Z

    .line 2
    .line 3
    if-nez v0, :cond_5

    .line 4
    .line 5
    return-void

    .line 6
    :cond_5
    const-string v0, "Trying to use a closed OnnxValue"

    .line 7
    .line 8
    invoke-static {v0}, Lj1/i;->l(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public declared-synchronized close()V
    .registers 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-boolean v0, p0, Lai/onnxruntime/OnnxSequence;->closed:Z

    .line 3
    .line 4
    if-nez v0, :cond_12

    .line 5
    .line 6
    sget-wide v0, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    .line 7
    .line 8
    iget-wide v2, p0, Lai/onnxruntime/OnnxSequence;->nativeHandle:J

    .line 9
    .line 10
    invoke-direct {p0, v0, v1, v2, v3}, Lai/onnxruntime/OnnxSequence;->close(JJ)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lai/onnxruntime/OnnxSequence;->closed:Z

    .line 15
    .line 16
    goto :goto_19

    .line 17
    :catchall_10
    move-exception v0

    .line 18
    goto :goto_1b

    .line 19
    :cond_12
    sget-object v0, Lai/onnxruntime/OnnxSequence;->logger:Ljava/util/logging/Logger;

    .line 20
    .line 21
    const-string v1, "Closing an already closed sequence."

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_10

    .line 24
    .line 25
    .line 26
    :goto_19
    monitor-exit p0

    .line 27
    return-void

    .line 28
    :goto_1b
    :try_start_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_10

    .line 29
    throw v0
.end method

.method public getInfo()Lai/onnxruntime/SequenceInfo;
    .registers 2

    .line 6
    iget-object v0, p0, Lai/onnxruntime/OnnxSequence;->info:Lai/onnxruntime/SequenceInfo;

    return-object v0
.end method

.method public bridge synthetic getInfo()Lai/onnxruntime/ValueInfo;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lai/onnxruntime/OnnxSequence;->getInfo()Lai/onnxruntime/SequenceInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getType()Lai/onnxruntime/OnnxValue$OnnxValueType;
    .registers 2

    .line 1
    sget-object v0, Lai/onnxruntime/OnnxValue$OnnxValueType;->ONNX_TYPE_SEQUENCE:Lai/onnxruntime/OnnxValue$OnnxValueType;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .registers 2

    .line 98
    invoke-virtual {p0}, Lai/onnxruntime/OnnxSequence;->getValue()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lai/onnxruntime/OnnxValue;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lai/onnxruntime/OnnxSequence;->checkClosed()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lai/onnxruntime/OnnxSequence;->info:Lai/onnxruntime/SequenceInfo;

    .line 5
    .line 6
    iget-boolean v1, v0, Lai/onnxruntime/SequenceInfo;->sequenceOfMaps:Z

    .line 7
    .line 8
    if-eqz v1, :cond_1e

    .line 9
    .line 10
    sget-wide v3, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    .line 11
    .line 12
    iget-wide v5, p0, Lai/onnxruntime/OnnxSequence;->nativeHandle:J

    .line 13
    .line 14
    iget-wide v7, p0, Lai/onnxruntime/OnnxSequence;->allocatorHandle:J

    .line 15
    .line 16
    move-object v2, p0

    .line 17
    invoke-direct/range {v2 .. v8}, Lai/onnxruntime/OnnxSequence;->getMaps(JJJ)[Lai/onnxruntime/OnnxMap;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    move-object v1, v2

    .line 22
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    return-object v0

    .line 31
    :cond_1e
    move-object v1, p0

    .line 32
    sget-object v2, Lai/onnxruntime/OnnxSequence$1;->$SwitchMap$ai$onnxruntime$OnnxJavaType:[I

    .line 33
    .line 34
    iget-object v0, v0, Lai/onnxruntime/SequenceInfo;->sequenceType:Lai/onnxruntime/OnnxJavaType;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    aget v0, v2, v0

    .line 41
    .line 42
    const/4 v2, 0x1

    .line 43
    if-eq v0, v2, :cond_4e

    .line 44
    .line 45
    const/4 v2, 0x2

    .line 46
    if-eq v0, v2, :cond_4e

    .line 47
    .line 48
    const/4 v2, 0x3

    .line 49
    if-eq v0, v2, :cond_4e

    .line 50
    .line 51
    const/4 v2, 0x4

    .line 52
    if-ne v0, v2, :cond_36

    .line 53
    .line 54
    goto :goto_4e

    .line 55
    :cond_36
    new-instance v0, Lai/onnxruntime/OrtException;

    .line 56
    .line 57
    iget-object v2, v1, Lai/onnxruntime/OnnxSequence;->info:Lai/onnxruntime/SequenceInfo;

    .line 58
    .line 59
    iget-object v2, v2, Lai/onnxruntime/SequenceInfo;->sequenceType:Lai/onnxruntime/OnnxJavaType;

    .line 60
    .line 61
    new-instance v3, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    const-string v4, "Unsupported type in a sequence, found "

    .line 64
    .line 65
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-direct {v0, v2}, Lai/onnxruntime/OrtException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw v0

    .line 79
    :cond_4e
    :goto_4e
    sget-wide v2, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    .line 80
    .line 81
    iget-wide v4, v1, Lai/onnxruntime/OnnxSequence;->nativeHandle:J

    .line 82
    .line 83
    iget-wide v6, v1, Lai/onnxruntime/OnnxSequence;->allocatorHandle:J

    .line 84
    .line 85
    invoke-direct/range {v1 .. v7}, Lai/onnxruntime/OnnxSequence;->getTensors(JJJ)[Lai/onnxruntime/OnnxTensor;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    return-object v0
.end method

.method public declared-synchronized isClosed()Z
    .registers 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-boolean v0, p0, Lai/onnxruntime/OnnxSequence;->closed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return v0

    .line 6
    :catchall_5
    move-exception v0

    .line 7
    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    .line 8
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "OnnxSequence(info="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lai/onnxruntime/OnnxSequence;->info:Lai/onnxruntime/SequenceInfo;

    .line 9
    .line 10
    invoke-virtual {v1}, Lai/onnxruntime/SequenceInfo;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, ")"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    return-object v0
.end method
