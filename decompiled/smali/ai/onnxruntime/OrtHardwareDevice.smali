.class public final Lai/onnxruntime/OrtHardwareDevice;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lai/onnxruntime/OrtHardwareDevice$OrtHardwareDeviceType;
    }
.end annotation


# instance fields
.field private final deviceId:I

.field private final metadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final nativeHandle:J

.field private final type:Lai/onnxruntime/OrtHardwareDevice$OrtHardwareDeviceType;

.field private final vendor:Ljava/lang/String;

.field private final vendorId:I


# direct methods
.method public constructor <init>(J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lai/onnxruntime/OrtHardwareDevice;->nativeHandle:J

    .line 5
    .line 6
    sget-wide v0, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    .line 7
    .line 8
    invoke-static {v0, v1, p1, p2}, Lai/onnxruntime/OrtHardwareDevice;->getDeviceType(JJ)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-static {v0}, Lai/onnxruntime/OrtHardwareDevice$OrtHardwareDeviceType;->mapFromInt(I)Lai/onnxruntime/OrtHardwareDevice$OrtHardwareDeviceType;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lai/onnxruntime/OrtHardwareDevice;->type:Lai/onnxruntime/OrtHardwareDevice$OrtHardwareDeviceType;

    .line 17
    .line 18
    sget-wide v0, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    .line 19
    .line 20
    invoke-static {v0, v1, p1, p2}, Lai/onnxruntime/OrtHardwareDevice;->getVendorId(JJ)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iput v0, p0, Lai/onnxruntime/OrtHardwareDevice;->vendorId:I

    .line 25
    .line 26
    sget-wide v0, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    .line 27
    .line 28
    invoke-static {v0, v1, p1, p2}, Lai/onnxruntime/OrtHardwareDevice;->getVendor(JJ)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lai/onnxruntime/OrtHardwareDevice;->vendor:Ljava/lang/String;

    .line 33
    .line 34
    sget-wide v0, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    .line 35
    .line 36
    invoke-static {v0, v1, p1, p2}, Lai/onnxruntime/OrtHardwareDevice;->getDeviceId(JJ)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    iput v0, p0, Lai/onnxruntime/OrtHardwareDevice;->deviceId:I

    .line 41
    .line 42
    sget-wide v0, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    .line 43
    .line 44
    invoke-static {v0, v1, p1, p2}, Lai/onnxruntime/OrtHardwareDevice;->getMetadata(JJ)[[Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-static {p1}, Lai/onnxruntime/OrtUtil;->convertToMap([[Ljava/lang/String;)Ljava/util/Map;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    iput-object p1, p0, Lai/onnxruntime/OrtHardwareDevice;->metadata:Ljava/util/Map;

    .line 53
    .line 54
    return-void
.end method

.method private static native getDeviceId(JJ)I
.end method

.method private static native getDeviceType(JJ)I
.end method

.method private static native getMetadata(JJ)[[Ljava/lang/String;
.end method

.method private static native getVendor(JJ)Ljava/lang/String;
.end method

.method private static native getVendorId(JJ)I
.end method


# virtual methods
.method public getDeviceId()I
    .locals 1

    .line 1
    iget v0, p0, Lai/onnxruntime/OrtHardwareDevice;->deviceId:I

    .line 2
    .line 3
    return v0
.end method

.method public getMetadata()Ljava/util/Map;
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
    iget-object v0, p0, Lai/onnxruntime/OrtHardwareDevice;->metadata:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNativeHandle()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lai/onnxruntime/OrtHardwareDevice;->nativeHandle:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getType()Lai/onnxruntime/OrtHardwareDevice$OrtHardwareDeviceType;
    .locals 1

    .line 1
    iget-object v0, p0, Lai/onnxruntime/OrtHardwareDevice;->type:Lai/onnxruntime/OrtHardwareDevice$OrtHardwareDeviceType;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVendor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lai/onnxruntime/OrtHardwareDevice;->vendor:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVendorId()I
    .locals 1

    .line 1
    iget v0, p0, Lai/onnxruntime/OrtHardwareDevice;->vendorId:I

    .line 2
    .line 3
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "OrtHardwareDevice{type="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lai/onnxruntime/OrtHardwareDevice;->type:Lai/onnxruntime/OrtHardwareDevice$OrtHardwareDeviceType;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", vendorId="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lai/onnxruntime/OrtHardwareDevice;->vendorId:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", vendor=\'"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lai/onnxruntime/OrtHardwareDevice;->vendor:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, "\', deviceId="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v1, p0, Lai/onnxruntime/OrtHardwareDevice;->deviceId:I

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", metadata="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lai/onnxruntime/OrtHardwareDevice;->metadata:Ljava/util/Map;

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
