.class public final Lai/onnxruntime/OrtEpDevice;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field private final device:Lai/onnxruntime/OrtHardwareDevice;

.field private final epMetadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final epName:Ljava/lang/String;

.field private final epOptions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final epVendor:Ljava/lang/String;

.field private final nativeHandle:J


# direct methods
.method public constructor <init>(J)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lai/onnxruntime/OrtEpDevice;->nativeHandle:J

    .line 5
    .line 6
    sget-wide v0, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    .line 7
    .line 8
    invoke-static {v0, v1, p1, p2}, Lai/onnxruntime/OrtEpDevice;->getEpName(JJ)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lai/onnxruntime/OrtEpDevice;->epName:Ljava/lang/String;

    .line 13
    .line 14
    sget-wide v0, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    .line 15
    .line 16
    invoke-static {v0, v1, p1, p2}, Lai/onnxruntime/OrtEpDevice;->getEpVendor(JJ)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lai/onnxruntime/OrtEpDevice;->epVendor:Ljava/lang/String;

    .line 21
    .line 22
    sget-wide v0, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    .line 23
    .line 24
    invoke-static {v0, v1, p1, p2}, Lai/onnxruntime/OrtEpDevice;->getEpMetadata(JJ)[[Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0}, Lai/onnxruntime/OrtUtil;->convertToMap([[Ljava/lang/String;)Ljava/util/Map;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lai/onnxruntime/OrtEpDevice;->epMetadata:Ljava/util/Map;

    .line 33
    .line 34
    sget-wide v0, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    .line 35
    .line 36
    invoke-static {v0, v1, p1, p2}, Lai/onnxruntime/OrtEpDevice;->getEpOptions(JJ)[[Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {v0}, Lai/onnxruntime/OrtUtil;->convertToMap([[Ljava/lang/String;)Ljava/util/Map;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iput-object v0, p0, Lai/onnxruntime/OrtEpDevice;->epOptions:Ljava/util/Map;

    .line 45
    .line 46
    new-instance v0, Lai/onnxruntime/OrtHardwareDevice;

    .line 47
    .line 48
    sget-wide v1, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    .line 49
    .line 50
    invoke-static {v1, v2, p1, p2}, Lai/onnxruntime/OrtEpDevice;->getDeviceHandle(JJ)J

    .line 51
    .line 52
    .line 53
    move-result-wide p1

    .line 54
    invoke-direct {v0, p1, p2}, Lai/onnxruntime/OrtHardwareDevice;-><init>(J)V

    .line 55
    .line 56
    .line 57
    iput-object v0, p0, Lai/onnxruntime/OrtEpDevice;->device:Lai/onnxruntime/OrtHardwareDevice;

    .line 58
    .line 59
    return-void
.end method

.method private static native getDeviceHandle(JJ)J
.end method

.method private static native getEpMetadata(JJ)[[Ljava/lang/String;
.end method

.method private static native getEpName(JJ)Ljava/lang/String;
.end method

.method private static native getEpOptions(JJ)[[Ljava/lang/String;
.end method

.method private static native getEpVendor(JJ)Ljava/lang/String;
.end method


# virtual methods
.method public getDevice()Lai/onnxruntime/OrtHardwareDevice;
    .locals 1

    .line 1
    iget-object v0, p0, Lai/onnxruntime/OrtEpDevice;->device:Lai/onnxruntime/OrtHardwareDevice;

    .line 2
    .line 3
    return-object v0
.end method

.method public getEpMetadata()Ljava/util/Map;
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
    iget-object v0, p0, Lai/onnxruntime/OrtEpDevice;->epMetadata:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public getEpName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lai/onnxruntime/OrtEpDevice;->epName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getEpOptions()Ljava/util/Map;
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
    iget-object v0, p0, Lai/onnxruntime/OrtEpDevice;->epOptions:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public getEpVendor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lai/onnxruntime/OrtEpDevice;->epVendor:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNativeHandle()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lai/onnxruntime/OrtEpDevice;->nativeHandle:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "OrtEpDevice{epName=\'"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lai/onnxruntime/OrtEpDevice;->epName:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, "\', epVendor=\'"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lai/onnxruntime/OrtEpDevice;->epVendor:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, "\', epMetadata="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lai/onnxruntime/OrtEpDevice;->epMetadata:Ljava/util/Map;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", epOptions="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lai/onnxruntime/OrtEpDevice;->epOptions:Ljava/util/Map;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", device="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lai/onnxruntime/OrtEpDevice;->device:Lai/onnxruntime/OrtHardwareDevice;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const/16 v1, 0x7d

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    return-object v0
.end method
