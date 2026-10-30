.class public final Lai/onnxruntime/providers/OrtCUDAProviderOptions;
.super Lai/onnxruntime/providers/StringConfigProviderOptions;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field private static final PROVIDER:Lai/onnxruntime/OrtProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lai/onnxruntime/OrtProvider;->CUDA:Lai/onnxruntime/OrtProvider;

    .line 2
    .line 3
    sput-object v0, Lai/onnxruntime/providers/OrtCUDAProviderOptions;->PROVIDER:Lai/onnxruntime/OrtProvider;

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, v0}, Lai/onnxruntime/providers/OrtCUDAProviderOptions;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 1
    sget-object v0, Lai/onnxruntime/providers/OrtCUDAProviderOptions;->PROVIDER:Lai/onnxruntime/OrtProvider;

    .line 2
    .line 3
    new-instance v1, Lai/onnxruntime/providers/a;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, v2}, Lai/onnxruntime/providers/a;-><init>(I)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Lai/onnxruntime/OrtProviderOptions;->loadLibraryAndCreate(Lai/onnxruntime/OrtProvider;Lai/onnxruntime/OrtProviderOptions$OrtProviderSupplier;)J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    invoke-direct {p0, v0, v1}, Lai/onnxruntime/providers/StringConfigProviderOptions;-><init>(J)V

    .line 14
    .line 15
    .line 16
    if-ltz p1, :cond_0

    .line 17
    .line 18
    const-string v0, ""

    .line 19
    .line 20
    invoke-static {p1, v0}, Lai/onnxruntime/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iget-object v0, p0, Lai/onnxruntime/providers/StringConfigProviderOptions;->options:Ljava/util/Map;

    .line 25
    .line 26
    const-string v1, "device_id"

    .line 27
    .line 28
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    invoke-virtual {p0}, Lai/onnxruntime/OrtProviderOptions;->close()V

    .line 33
    .line 34
    .line 35
    const-string v0, "Device id must be non-negative, received "

    .line 36
    .line 37
    invoke-static {p1, v0}, Lai/onnxruntime/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const/4 p1, 0x0

    .line 45
    throw p1
.end method

.method public static synthetic c()J
    .locals 2

    .line 1
    invoke-static {}, Lai/onnxruntime/providers/OrtCUDAProviderOptions;->lambda$new$0()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method private static native create(J)J
.end method

.method private static synthetic lambda$new$0()J
    .locals 2

    .line 1
    invoke-static {}, Lai/onnxruntime/OrtProviderOptions;->getApiHandle()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Lai/onnxruntime/providers/OrtCUDAProviderOptions;->create(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lai/onnxruntime/providers/StringConfigProviderOptions;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public native applyToNative(JJ[Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method public native close(JJ)V
.end method

.method public bridge synthetic getOptionsString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-super {p0}, Lai/onnxruntime/providers/StringConfigProviderOptions;->getOptionsString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getProvider()Lai/onnxruntime/OrtProvider;
    .locals 1

    .line 1
    sget-object v0, Lai/onnxruntime/providers/OrtCUDAProviderOptions;->PROVIDER:Lai/onnxruntime/OrtProvider;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic parseOptionsString(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lai/onnxruntime/providers/StringConfigProviderOptions;->parseOptionsString(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-super {p0}, Lai/onnxruntime/providers/StringConfigProviderOptions;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
