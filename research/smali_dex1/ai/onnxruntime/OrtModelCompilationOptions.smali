.class public final Lai/onnxruntime/OrtModelCompilationOptions;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lai/onnxruntime/OrtModelCompilationOptions$OrtCompileApiFlags;
    }
.end annotation


# instance fields
.field private buffer:Ljava/nio/ByteBuffer;

.field private closed:Z

.field private final nativeHandle:J


# direct methods
.method public constructor <init>(J)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lai/onnxruntime/OrtModelCompilationOptions;->closed:Z

    .line 6
    .line 7
    iput-wide p1, p0, Lai/onnxruntime/OrtModelCompilationOptions;->nativeHandle:J

    .line 8
    .line 9
    return-void
.end method

.method private checkClosed()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lai/onnxruntime/OrtModelCompilationOptions;->closed:Z

    .line 2
    .line 3
    if-nez v0, :cond_5

    .line 4
    .line 5
    return-void

    .line 6
    :cond_5
    const-string v0, "Trying to use a closed OrtModelCompilationOptions."

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

.method private static native compileModel(JJJJ)V
.end method

.method private static native createFromSessionOptions(JJJJ)J
.end method

.method public static createFromSessionOptions(Lai/onnxruntime/OrtEnvironment;Lai/onnxruntime/OrtSession$SessionOptions;)Lai/onnxruntime/OrtModelCompilationOptions;
    .registers 10

    .line 1
    sget-wide v0, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    .line 2
    .line 3
    sget-wide v2, Lai/onnxruntime/OnnxRuntime;->ortCompileApiHandle:J

    .line 4
    .line 5
    invoke-virtual {p0}, Lai/onnxruntime/OrtEnvironment;->getNativeHandle()J

    .line 6
    .line 7
    .line 8
    move-result-wide v4

    .line 9
    invoke-virtual {p1}, Lai/onnxruntime/OrtSession$SessionOptions;->getNativeHandle()J

    .line 10
    .line 11
    .line 12
    move-result-wide v6

    .line 13
    invoke-static/range {v0 .. v7}, Lai/onnxruntime/OrtModelCompilationOptions;->createFromSessionOptions(JJJJ)J

    .line 14
    .line 15
    .line 16
    move-result-wide p0

    .line 17
    new-instance v0, Lai/onnxruntime/OrtModelCompilationOptions;

    .line 18
    .line 19
    invoke-direct {v0, p0, p1}, Lai/onnxruntime/OrtModelCompilationOptions;-><init>(J)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method private static native setCompilationFlags(JJJI)V
.end method

.method private static native setEpContextEmbedMode(JJJZ)V
.end method

.method private static native setInputModelFromBuffer(JJJLjava/nio/ByteBuffer;JJ)V
.end method

.method private static native setInputModelPath(JJJLjava/lang/String;)V
.end method

.method private static native setOutputExternalInitializersPath(JJJLjava/lang/String;J)V
.end method

.method private static native setOutputModelPath(JJJLjava/lang/String;)V
.end method


# virtual methods
.method public close()V
    .registers 5

    .line 1
    iget-boolean v0, p0, Lai/onnxruntime/OrtModelCompilationOptions;->closed:Z

    .line 2
    .line 3
    if-nez v0, :cond_f

    .line 4
    .line 5
    sget-wide v0, Lai/onnxruntime/OnnxRuntime;->ortCompileApiHandle:J

    .line 6
    .line 7
    iget-wide v2, p0, Lai/onnxruntime/OrtModelCompilationOptions;->nativeHandle:J

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3}, Lai/onnxruntime/OrtModelCompilationOptions;->close(JJ)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lai/onnxruntime/OrtModelCompilationOptions;->closed:Z

    .line 14
    .line 15
    return-void

    .line 16
    :cond_f
    const-string v0, "Trying to close a closed OrtModelCompilationOptions."

    .line 17
    .line 18
    invoke-static {v0}, Lj1/i;->l(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public compileModel()V
    .registers 10

    .line 1
    invoke-direct {p0}, Lai/onnxruntime/OrtModelCompilationOptions;->checkClosed()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lai/onnxruntime/OrtEnvironment;->getEnvironment()Lai/onnxruntime/OrtEnvironment;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sget-wide v1, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    .line 9
    .line 10
    sget-wide v3, Lai/onnxruntime/OnnxRuntime;->ortCompileApiHandle:J

    .line 11
    .line 12
    invoke-virtual {v0}, Lai/onnxruntime/OrtEnvironment;->getNativeHandle()J

    .line 13
    .line 14
    .line 15
    move-result-wide v5

    .line 16
    iget-wide v7, p0, Lai/onnxruntime/OrtModelCompilationOptions;->nativeHandle:J

    .line 17
    .line 18
    invoke-static/range {v1 .. v8}, Lai/onnxruntime/OrtModelCompilationOptions;->compileModel(JJJJ)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public setCompilationFlags(Ljava/util/EnumSet;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lai/onnxruntime/OrtModelCompilationOptions$OrtCompileApiFlags;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lai/onnxruntime/OrtModelCompilationOptions;->checkClosed()V

    .line 2
    .line 3
    .line 4
    sget-wide v0, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    .line 5
    .line 6
    sget-wide v2, Lai/onnxruntime/OnnxRuntime;->ortCompileApiHandle:J

    .line 7
    .line 8
    iget-wide v4, p0, Lai/onnxruntime/OrtModelCompilationOptions;->nativeHandle:J

    .line 9
    .line 10
    invoke-static {p1}, Lai/onnxruntime/OrtFlags;->aggregateToInt(Ljava/util/EnumSet;)I

    .line 11
    .line 12
    .line 13
    move-result v6

    .line 14
    invoke-static/range {v0 .. v6}, Lai/onnxruntime/OrtModelCompilationOptions;->setCompilationFlags(JJJI)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public setEpContextEmbedMode(Z)V
    .registers 9

    .line 1
    invoke-direct {p0}, Lai/onnxruntime/OrtModelCompilationOptions;->checkClosed()V

    .line 2
    .line 3
    .line 4
    sget-wide v0, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    .line 5
    .line 6
    sget-wide v2, Lai/onnxruntime/OnnxRuntime;->ortCompileApiHandle:J

    .line 7
    .line 8
    iget-wide v4, p0, Lai/onnxruntime/OrtModelCompilationOptions;->nativeHandle:J

    .line 9
    .line 10
    move v6, p1

    .line 11
    invoke-static/range {v0 .. v6}, Lai/onnxruntime/OrtModelCompilationOptions;->setEpContextEmbedMode(JJJZ)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public setInputModelFromBuffer(Ljava/nio/ByteBuffer;)V
    .registers 14

    .line 1
    invoke-direct {p0}, Lai/onnxruntime/OrtModelCompilationOptions;->checkClosed()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_25

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lai/onnxruntime/OrtModelCompilationOptions;->buffer:Ljava/nio/ByteBuffer;

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iget-object v1, p0, Lai/onnxruntime/OrtModelCompilationOptions;->buffer:Ljava/nio/ByteBuffer;

    .line 25
    .line 26
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lai/onnxruntime/OrtModelCompilationOptions;->buffer:Ljava/nio/ByteBuffer;

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 35
    .line 36
    .line 37
    goto :goto_27

    .line 38
    :cond_25
    iput-object p1, p0, Lai/onnxruntime/OrtModelCompilationOptions;->buffer:Ljava/nio/ByteBuffer;

    .line 39
    .line 40
    :goto_27
    iget-object p1, p0, Lai/onnxruntime/OrtModelCompilationOptions;->buffer:Ljava/nio/ByteBuffer;

    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    iget-object v0, p0, Lai/onnxruntime/OrtModelCompilationOptions;->buffer:Ljava/nio/ByteBuffer;

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    sget-wide v1, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    .line 53
    .line 54
    sget-wide v3, Lai/onnxruntime/OnnxRuntime;->ortCompileApiHandle:J

    .line 55
    .line 56
    iget-wide v5, p0, Lai/onnxruntime/OrtModelCompilationOptions;->nativeHandle:J

    .line 57
    .line 58
    iget-object v7, p0, Lai/onnxruntime/OrtModelCompilationOptions;->buffer:Ljava/nio/ByteBuffer;

    .line 59
    .line 60
    int-to-long v8, p1

    .line 61
    int-to-long v10, v0

    .line 62
    invoke-static/range {v1 .. v11}, Lai/onnxruntime/OrtModelCompilationOptions;->setInputModelFromBuffer(JJJLjava/nio/ByteBuffer;JJ)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public setInputModelPath(Ljava/lang/String;)V
    .registers 9

    .line 1
    invoke-direct {p0}, Lai/onnxruntime/OrtModelCompilationOptions;->checkClosed()V

    .line 2
    .line 3
    .line 4
    sget-wide v0, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    .line 5
    .line 6
    sget-wide v2, Lai/onnxruntime/OnnxRuntime;->ortCompileApiHandle:J

    .line 7
    .line 8
    iget-wide v4, p0, Lai/onnxruntime/OrtModelCompilationOptions;->nativeHandle:J

    .line 9
    .line 10
    move-object v6, p1

    .line 11
    invoke-static/range {v0 .. v6}, Lai/onnxruntime/OrtModelCompilationOptions;->setInputModelPath(JJJLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public setOutputExternalInitializersPath(Ljava/lang/String;J)V
    .registers 13

    .line 1
    invoke-direct {p0}, Lai/onnxruntime/OrtModelCompilationOptions;->checkClosed()V

    .line 2
    .line 3
    .line 4
    sget-wide v0, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    .line 5
    .line 6
    sget-wide v2, Lai/onnxruntime/OnnxRuntime;->ortCompileApiHandle:J

    .line 7
    .line 8
    iget-wide v4, p0, Lai/onnxruntime/OrtModelCompilationOptions;->nativeHandle:J

    .line 9
    .line 10
    move-object v6, p1

    .line 11
    move-wide v7, p2

    .line 12
    invoke-static/range {v0 .. v8}, Lai/onnxruntime/OrtModelCompilationOptions;->setOutputExternalInitializersPath(JJJLjava/lang/String;J)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public setOutputModelPath(Ljava/lang/String;)V
    .registers 9

    .line 1
    invoke-direct {p0}, Lai/onnxruntime/OrtModelCompilationOptions;->checkClosed()V

    .line 2
    .line 3
    .line 4
    sget-wide v0, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    .line 5
    .line 6
    sget-wide v2, Lai/onnxruntime/OnnxRuntime;->ortCompileApiHandle:J

    .line 7
    .line 8
    iget-wide v4, p0, Lai/onnxruntime/OrtModelCompilationOptions;->nativeHandle:J

    .line 9
    .line 10
    move-object v6, p1

    .line 11
    invoke-static/range {v0 .. v6}, Lai/onnxruntime/OrtModelCompilationOptions;->setOutputModelPath(JJJLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
