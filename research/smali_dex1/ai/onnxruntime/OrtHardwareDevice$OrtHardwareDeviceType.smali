.class public final enum Lai/onnxruntime/OrtHardwareDevice$OrtHardwareDeviceType;
.super Ljava/lang/Enum;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lai/onnxruntime/OrtHardwareDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OrtHardwareDeviceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lai/onnxruntime/OrtHardwareDevice$OrtHardwareDeviceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lai/onnxruntime/OrtHardwareDevice$OrtHardwareDeviceType;

.field public static final enum CPU:Lai/onnxruntime/OrtHardwareDevice$OrtHardwareDeviceType;

.field public static final enum GPU:Lai/onnxruntime/OrtHardwareDevice$OrtHardwareDeviceType;

.field public static final enum NPU:Lai/onnxruntime/OrtHardwareDevice$OrtHardwareDeviceType;

.field private static final logger:Ljava/util/logging/Logger;

.field private static final values:[Lai/onnxruntime/OrtHardwareDevice$OrtHardwareDeviceType;


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lai/onnxruntime/OrtHardwareDevice$OrtHardwareDeviceType;
    .registers 3

    .line 1
    sget-object v0, Lai/onnxruntime/OrtHardwareDevice$OrtHardwareDeviceType;->CPU:Lai/onnxruntime/OrtHardwareDevice$OrtHardwareDeviceType;

    .line 2
    .line 3
    sget-object v1, Lai/onnxruntime/OrtHardwareDevice$OrtHardwareDeviceType;->GPU:Lai/onnxruntime/OrtHardwareDevice$OrtHardwareDeviceType;

    .line 4
    .line 5
    sget-object v2, Lai/onnxruntime/OrtHardwareDevice$OrtHardwareDeviceType;->NPU:Lai/onnxruntime/OrtHardwareDevice$OrtHardwareDeviceType;

    .line 6
    .line 7
    filled-new-array {v0, v1, v2}, [Lai/onnxruntime/OrtHardwareDevice$OrtHardwareDeviceType;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 6

    .line 1
    new-instance v0, Lai/onnxruntime/OrtHardwareDevice$OrtHardwareDeviceType;

    .line 2
    .line 3
    const-string v1, "CPU"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lai/onnxruntime/OrtHardwareDevice$OrtHardwareDeviceType;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lai/onnxruntime/OrtHardwareDevice$OrtHardwareDeviceType;->CPU:Lai/onnxruntime/OrtHardwareDevice$OrtHardwareDeviceType;

    .line 10
    .line 11
    new-instance v0, Lai/onnxruntime/OrtHardwareDevice$OrtHardwareDeviceType;

    .line 12
    .line 13
    const-string v1, "GPU"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v0, v1, v3, v3}, Lai/onnxruntime/OrtHardwareDevice$OrtHardwareDeviceType;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lai/onnxruntime/OrtHardwareDevice$OrtHardwareDeviceType;->GPU:Lai/onnxruntime/OrtHardwareDevice$OrtHardwareDeviceType;

    .line 20
    .line 21
    new-instance v0, Lai/onnxruntime/OrtHardwareDevice$OrtHardwareDeviceType;

    .line 22
    .line 23
    const-string v1, "NPU"

    .line 24
    .line 25
    const/4 v3, 0x2

    .line 26
    invoke-direct {v0, v1, v3, v3}, Lai/onnxruntime/OrtHardwareDevice$OrtHardwareDeviceType;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lai/onnxruntime/OrtHardwareDevice$OrtHardwareDeviceType;->NPU:Lai/onnxruntime/OrtHardwareDevice$OrtHardwareDeviceType;

    .line 30
    .line 31
    invoke-static {}, Lai/onnxruntime/OrtHardwareDevice$OrtHardwareDeviceType;->$values()[Lai/onnxruntime/OrtHardwareDevice$OrtHardwareDeviceType;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lai/onnxruntime/OrtHardwareDevice$OrtHardwareDeviceType;->$VALUES:[Lai/onnxruntime/OrtHardwareDevice$OrtHardwareDeviceType;

    .line 36
    .line 37
    const-class v0, Lai/onnxruntime/OrtHardwareDevice$OrtHardwareDeviceType;

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    sput-object v0, Lai/onnxruntime/OrtHardwareDevice$OrtHardwareDeviceType;->logger:Ljava/util/logging/Logger;

    .line 48
    .line 49
    const/4 v0, 0x3

    .line 50
    new-array v0, v0, [Lai/onnxruntime/OrtHardwareDevice$OrtHardwareDeviceType;

    .line 51
    .line 52
    sput-object v0, Lai/onnxruntime/OrtHardwareDevice$OrtHardwareDeviceType;->values:[Lai/onnxruntime/OrtHardwareDevice$OrtHardwareDeviceType;

    .line 53
    .line 54
    invoke-static {}, Lai/onnxruntime/OrtHardwareDevice$OrtHardwareDeviceType;->values()[Lai/onnxruntime/OrtHardwareDevice$OrtHardwareDeviceType;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    array-length v1, v0

    .line 59
    :goto_3a
    if-ge v2, v1, :cond_47

    .line 60
    .line 61
    aget-object v3, v0, v2

    .line 62
    .line 63
    sget-object v4, Lai/onnxruntime/OrtHardwareDevice$OrtHardwareDeviceType;->values:[Lai/onnxruntime/OrtHardwareDevice$OrtHardwareDeviceType;

    .line 64
    .line 65
    iget v5, v3, Lai/onnxruntime/OrtHardwareDevice$OrtHardwareDeviceType;->value:I

    .line 66
    .line 67
    aput-object v3, v4, v5

    .line 68
    .line 69
    add-int/lit8 v2, v2, 0x1

    .line 70
    .line 71
    goto :goto_3a

    .line 72
    :cond_47
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lai/onnxruntime/OrtHardwareDevice$OrtHardwareDeviceType;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static mapFromInt(I)Lai/onnxruntime/OrtHardwareDevice$OrtHardwareDeviceType;
    .registers 4

    .line 1
    if-ltz p0, :cond_a

    .line 2
    .line 3
    sget-object v0, Lai/onnxruntime/OrtHardwareDevice$OrtHardwareDeviceType;->values:[Lai/onnxruntime/OrtHardwareDevice$OrtHardwareDeviceType;

    .line 4
    .line 5
    array-length v1, v0

    .line 6
    if-ge p0, v1, :cond_a

    .line 7
    .line 8
    aget-object p0, v0, p0

    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_a
    sget-object v0, Lai/onnxruntime/OrtHardwareDevice$OrtHardwareDeviceType;->logger:Ljava/util/logging/Logger;

    .line 12
    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v2, "Unknown device type \'"

    .line 16
    .line 17
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p0, "\' setting to CPU"

    .line 24
    .line 25
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {v0, p0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sget-object p0, Lai/onnxruntime/OrtHardwareDevice$OrtHardwareDeviceType;->CPU:Lai/onnxruntime/OrtHardwareDevice$OrtHardwareDeviceType;

    .line 36
    .line 37
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lai/onnxruntime/OrtHardwareDevice$OrtHardwareDeviceType;
    .registers 2

    .line 1
    const-class v0, Lai/onnxruntime/OrtHardwareDevice$OrtHardwareDeviceType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lai/onnxruntime/OrtHardwareDevice$OrtHardwareDeviceType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lai/onnxruntime/OrtHardwareDevice$OrtHardwareDeviceType;
    .registers 1

    .line 1
    sget-object v0, Lai/onnxruntime/OrtHardwareDevice$OrtHardwareDeviceType;->$VALUES:[Lai/onnxruntime/OrtHardwareDevice$OrtHardwareDeviceType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lai/onnxruntime/OrtHardwareDevice$OrtHardwareDeviceType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lai/onnxruntime/OrtHardwareDevice$OrtHardwareDeviceType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    .line 1
    iget v0, p0, Lai/onnxruntime/OrtHardwareDevice$OrtHardwareDeviceType;->value:I

    .line 2
    .line 3
    return v0
.end method
