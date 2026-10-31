.class public final Lai/onnxruntime/OrtLoraAdapter;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/AutoCloseable;


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

.method private constructor <init>(J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lai/onnxruntime/OrtLoraAdapter;->closed:Z

    .line 6
    .line 7
    iput-wide p1, p0, Lai/onnxruntime/OrtLoraAdapter;->nativeHandle:J

    .line 8
    .line 9
    return-void
.end method

.method private static native close(JJ)V
.end method

.method public static create(Ljava/lang/String;)Lai/onnxruntime/OrtLoraAdapter;
    .locals 1

    const/4 v0, 0x0

    .line 70
    invoke-static {p0, v0}, Lai/onnxruntime/OrtLoraAdapter;->create(Ljava/lang/String;Lai/onnxruntime/OrtAllocator;)Lai/onnxruntime/OrtLoraAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/lang/String;Lai/onnxruntime/OrtAllocator;)Lai/onnxruntime/OrtLoraAdapter;
    .locals 4

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 71
    :cond_0
    iget-wide v0, p1, Lai/onnxruntime/OrtAllocator;->handle:J

    .line 72
    :goto_0
    new-instance p1, Lai/onnxruntime/OrtLoraAdapter;

    sget-wide v2, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    .line 73
    invoke-static {v2, v3, p0, v0, v1}, Lai/onnxruntime/OrtLoraAdapter;->createLoraAdapter(JLjava/lang/String;J)J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Lai/onnxruntime/OrtLoraAdapter;-><init>(J)V

    return-object p1
.end method

.method public static create(Ljava/nio/ByteBuffer;)Lai/onnxruntime/OrtLoraAdapter;
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-static {p0, v0}, Lai/onnxruntime/OrtLoraAdapter;->create(Ljava/nio/ByteBuffer;Lai/onnxruntime/OrtAllocator;)Lai/onnxruntime/OrtLoraAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/nio/ByteBuffer;Lai/onnxruntime/OrtAllocator;)Lai/onnxruntime/OrtLoraAdapter;
    .locals 9

    .line 1
    const-string v0, "LoRA buffer must not be null"

    .line 2
    .line 3
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isDirect()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    const-wide/16 v0, 0x0

    .line 21
    .line 22
    :goto_0
    move-wide v7, v0

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    iget-wide v0, p1, Lai/onnxruntime/OrtAllocator;->handle:J

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :goto_1
    new-instance p1, Lai/onnxruntime/OrtLoraAdapter;

    .line 28
    .line 29
    sget-wide v2, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    move-object v4, p0

    .line 40
    invoke-static/range {v2 .. v8}, Lai/onnxruntime/OrtLoraAdapter;->createLoraAdapterFromBuffer(JLjava/nio/ByteBuffer;IIJ)J

    .line 41
    .line 42
    .line 43
    move-result-wide v0

    .line 44
    invoke-direct {p1, v0, v1}, Lai/onnxruntime/OrtLoraAdapter;-><init>(J)V

    .line 45
    .line 46
    .line 47
    return-object p1

    .line 48
    :cond_1
    new-instance p0, Lai/onnxruntime/OrtException;

    .line 49
    .line 50
    const-string p1, "ByteBuffer is not direct."

    .line 51
    .line 52
    invoke-direct {p0, p1}, Lai/onnxruntime/OrtException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p0

    .line 56
    :cond_2
    new-instance p0, Lai/onnxruntime/OrtException;

    .line 57
    .line 58
    const-string p1, "Invalid LoRA buffer, no elements remaining."

    .line 59
    .line 60
    invoke-direct {p0, p1}, Lai/onnxruntime/OrtException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw p0
.end method

.method public static create([B)Lai/onnxruntime/OrtLoraAdapter;
    .locals 1

    const/4 v0, 0x0

    .line 69
    invoke-static {p0, v0}, Lai/onnxruntime/OrtLoraAdapter;->create([BLai/onnxruntime/OrtAllocator;)Lai/onnxruntime/OrtLoraAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static create([BLai/onnxruntime/OrtAllocator;)Lai/onnxruntime/OrtLoraAdapter;
    .locals 4

    .line 64
    const-string v0, "LoRA array must not be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 65
    :cond_0
    iget-wide v0, p1, Lai/onnxruntime/OrtAllocator;->handle:J

    .line 66
    :goto_0
    new-instance p1, Lai/onnxruntime/OrtLoraAdapter;

    sget-wide v2, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    .line 67
    invoke-static {v2, v3, p0, v0, v1}, Lai/onnxruntime/OrtLoraAdapter;->createLoraAdapterFromArray(J[BJ)J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Lai/onnxruntime/OrtLoraAdapter;-><init>(J)V

    return-object p1
.end method

.method private static native createLoraAdapter(JLjava/lang/String;J)J
.end method

.method private static native createLoraAdapterFromArray(J[BJ)J
.end method

.method private static native createLoraAdapterFromBuffer(JLjava/nio/ByteBuffer;IIJ)J
.end method


# virtual methods
.method public checkClosed()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lai/onnxruntime/OrtLoraAdapter;->closed:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string v0, "Trying to use a closed OrtLoraAdapter"

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
    iget-boolean v0, p0, Lai/onnxruntime/OrtLoraAdapter;->closed:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-wide v0, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    .line 6
    .line 7
    iget-wide v2, p0, Lai/onnxruntime/OrtLoraAdapter;->nativeHandle:J

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3}, Lai/onnxruntime/OrtLoraAdapter;->close(JJ)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lai/onnxruntime/OrtLoraAdapter;->closed:Z

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    const-string v0, "Trying to close an already closed OrtLoraAdapter"

    .line 17
    .line 18
    invoke-static {v0}, Lj1/i;->l(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public getNativeHandle()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lai/onnxruntime/OrtLoraAdapter;->nativeHandle:J

    .line 2
    .line 3
    return-wide v0
.end method
