.class public final enum Lai/onnxruntime/OnnxValue$OnnxValueType;
.super Ljava/lang/Enum;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lai/onnxruntime/OnnxValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OnnxValueType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lai/onnxruntime/OnnxValue$OnnxValueType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lai/onnxruntime/OnnxValue$OnnxValueType;

.field public static final enum ONNX_TYPE_MAP:Lai/onnxruntime/OnnxValue$OnnxValueType;

.field public static final enum ONNX_TYPE_OPAQUE:Lai/onnxruntime/OnnxValue$OnnxValueType;

.field public static final enum ONNX_TYPE_OPTIONAL:Lai/onnxruntime/OnnxValue$OnnxValueType;

.field public static final enum ONNX_TYPE_SEQUENCE:Lai/onnxruntime/OnnxValue$OnnxValueType;

.field public static final enum ONNX_TYPE_SPARSETENSOR:Lai/onnxruntime/OnnxValue$OnnxValueType;

.field public static final enum ONNX_TYPE_TENSOR:Lai/onnxruntime/OnnxValue$OnnxValueType;

.field public static final enum ONNX_TYPE_UNKNOWN:Lai/onnxruntime/OnnxValue$OnnxValueType;


# instance fields
.field public final value:I


# direct methods
.method private static synthetic $values()[Lai/onnxruntime/OnnxValue$OnnxValueType;
    .registers 7

    .line 1
    sget-object v0, Lai/onnxruntime/OnnxValue$OnnxValueType;->ONNX_TYPE_UNKNOWN:Lai/onnxruntime/OnnxValue$OnnxValueType;

    .line 2
    .line 3
    sget-object v1, Lai/onnxruntime/OnnxValue$OnnxValueType;->ONNX_TYPE_TENSOR:Lai/onnxruntime/OnnxValue$OnnxValueType;

    .line 4
    .line 5
    sget-object v2, Lai/onnxruntime/OnnxValue$OnnxValueType;->ONNX_TYPE_SEQUENCE:Lai/onnxruntime/OnnxValue$OnnxValueType;

    .line 6
    .line 7
    sget-object v3, Lai/onnxruntime/OnnxValue$OnnxValueType;->ONNX_TYPE_MAP:Lai/onnxruntime/OnnxValue$OnnxValueType;

    .line 8
    .line 9
    sget-object v4, Lai/onnxruntime/OnnxValue$OnnxValueType;->ONNX_TYPE_OPAQUE:Lai/onnxruntime/OnnxValue$OnnxValueType;

    .line 10
    .line 11
    sget-object v5, Lai/onnxruntime/OnnxValue$OnnxValueType;->ONNX_TYPE_SPARSETENSOR:Lai/onnxruntime/OnnxValue$OnnxValueType;

    .line 12
    .line 13
    sget-object v6, Lai/onnxruntime/OnnxValue$OnnxValueType;->ONNX_TYPE_OPTIONAL:Lai/onnxruntime/OnnxValue$OnnxValueType;

    .line 14
    .line 15
    filled-new-array/range {v0 .. v6}, [Lai/onnxruntime/OnnxValue$OnnxValueType;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lai/onnxruntime/OnnxValue$OnnxValueType;

    .line 2
    .line 3
    const-string v1, "ONNX_TYPE_UNKNOWN"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lai/onnxruntime/OnnxValue$OnnxValueType;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lai/onnxruntime/OnnxValue$OnnxValueType;->ONNX_TYPE_UNKNOWN:Lai/onnxruntime/OnnxValue$OnnxValueType;

    .line 10
    .line 11
    new-instance v0, Lai/onnxruntime/OnnxValue$OnnxValueType;

    .line 12
    .line 13
    const-string v1, "ONNX_TYPE_TENSOR"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2, v2}, Lai/onnxruntime/OnnxValue$OnnxValueType;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lai/onnxruntime/OnnxValue$OnnxValueType;->ONNX_TYPE_TENSOR:Lai/onnxruntime/OnnxValue$OnnxValueType;

    .line 20
    .line 21
    new-instance v0, Lai/onnxruntime/OnnxValue$OnnxValueType;

    .line 22
    .line 23
    const-string v1, "ONNX_TYPE_SEQUENCE"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2, v2}, Lai/onnxruntime/OnnxValue$OnnxValueType;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lai/onnxruntime/OnnxValue$OnnxValueType;->ONNX_TYPE_SEQUENCE:Lai/onnxruntime/OnnxValue$OnnxValueType;

    .line 30
    .line 31
    new-instance v0, Lai/onnxruntime/OnnxValue$OnnxValueType;

    .line 32
    .line 33
    const-string v1, "ONNX_TYPE_MAP"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2, v2}, Lai/onnxruntime/OnnxValue$OnnxValueType;-><init>(Ljava/lang/String;II)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lai/onnxruntime/OnnxValue$OnnxValueType;->ONNX_TYPE_MAP:Lai/onnxruntime/OnnxValue$OnnxValueType;

    .line 40
    .line 41
    new-instance v0, Lai/onnxruntime/OnnxValue$OnnxValueType;

    .line 42
    .line 43
    const-string v1, "ONNX_TYPE_OPAQUE"

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-direct {v0, v1, v2, v2}, Lai/onnxruntime/OnnxValue$OnnxValueType;-><init>(Ljava/lang/String;II)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lai/onnxruntime/OnnxValue$OnnxValueType;->ONNX_TYPE_OPAQUE:Lai/onnxruntime/OnnxValue$OnnxValueType;

    .line 50
    .line 51
    new-instance v0, Lai/onnxruntime/OnnxValue$OnnxValueType;

    .line 52
    .line 53
    const-string v1, "ONNX_TYPE_SPARSETENSOR"

    .line 54
    .line 55
    const/4 v2, 0x5

    .line 56
    invoke-direct {v0, v1, v2, v2}, Lai/onnxruntime/OnnxValue$OnnxValueType;-><init>(Ljava/lang/String;II)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lai/onnxruntime/OnnxValue$OnnxValueType;->ONNX_TYPE_SPARSETENSOR:Lai/onnxruntime/OnnxValue$OnnxValueType;

    .line 60
    .line 61
    new-instance v0, Lai/onnxruntime/OnnxValue$OnnxValueType;

    .line 62
    .line 63
    const-string v1, "ONNX_TYPE_OPTIONAL"

    .line 64
    .line 65
    const/4 v2, 0x6

    .line 66
    invoke-direct {v0, v1, v2, v2}, Lai/onnxruntime/OnnxValue$OnnxValueType;-><init>(Ljava/lang/String;II)V

    .line 67
    .line 68
    .line 69
    sput-object v0, Lai/onnxruntime/OnnxValue$OnnxValueType;->ONNX_TYPE_OPTIONAL:Lai/onnxruntime/OnnxValue$OnnxValueType;

    .line 70
    .line 71
    invoke-static {}, Lai/onnxruntime/OnnxValue$OnnxValueType;->$values()[Lai/onnxruntime/OnnxValue$OnnxValueType;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    sput-object v0, Lai/onnxruntime/OnnxValue$OnnxValueType;->$VALUES:[Lai/onnxruntime/OnnxValue$OnnxValueType;

    .line 76
    .line 77
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
    iput p3, p0, Lai/onnxruntime/OnnxValue$OnnxValueType;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lai/onnxruntime/OnnxValue$OnnxValueType;
    .registers 2

    .line 1
    const-class v0, Lai/onnxruntime/OnnxValue$OnnxValueType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lai/onnxruntime/OnnxValue$OnnxValueType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lai/onnxruntime/OnnxValue$OnnxValueType;
    .registers 1

    .line 1
    sget-object v0, Lai/onnxruntime/OnnxValue$OnnxValueType;->$VALUES:[Lai/onnxruntime/OnnxValue$OnnxValueType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lai/onnxruntime/OnnxValue$OnnxValueType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lai/onnxruntime/OnnxValue$OnnxValueType;

    .line 8
    .line 9
    return-object v0
.end method
