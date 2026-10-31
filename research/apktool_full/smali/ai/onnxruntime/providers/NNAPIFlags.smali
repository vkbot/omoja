.class public final enum Lai/onnxruntime/providers/NNAPIFlags;
.super Ljava/lang/Enum;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lai/onnxruntime/OrtFlags;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lai/onnxruntime/providers/NNAPIFlags;",
        ">;",
        "Lai/onnxruntime/OrtFlags;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lai/onnxruntime/providers/NNAPIFlags;

.field public static final enum CPU_DISABLED:Lai/onnxruntime/providers/NNAPIFlags;

.field public static final enum CPU_ONLY:Lai/onnxruntime/providers/NNAPIFlags;

.field public static final enum USE_FP16:Lai/onnxruntime/providers/NNAPIFlags;

.field public static final enum USE_NCHW:Lai/onnxruntime/providers/NNAPIFlags;


# instance fields
.field public final value:I


# direct methods
.method private static synthetic $values()[Lai/onnxruntime/providers/NNAPIFlags;
    .locals 4

    .line 1
    sget-object v0, Lai/onnxruntime/providers/NNAPIFlags;->USE_FP16:Lai/onnxruntime/providers/NNAPIFlags;

    .line 2
    .line 3
    sget-object v1, Lai/onnxruntime/providers/NNAPIFlags;->USE_NCHW:Lai/onnxruntime/providers/NNAPIFlags;

    .line 4
    .line 5
    sget-object v2, Lai/onnxruntime/providers/NNAPIFlags;->CPU_DISABLED:Lai/onnxruntime/providers/NNAPIFlags;

    .line 6
    .line 7
    sget-object v3, Lai/onnxruntime/providers/NNAPIFlags;->CPU_ONLY:Lai/onnxruntime/providers/NNAPIFlags;

    .line 8
    .line 9
    filled-new-array {v0, v1, v2, v3}, [Lai/onnxruntime/providers/NNAPIFlags;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lai/onnxruntime/providers/NNAPIFlags;

    .line 2
    .line 3
    const-string v1, "USE_FP16"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    invoke-direct {v0, v1, v2, v3}, Lai/onnxruntime/providers/NNAPIFlags;-><init>(Ljava/lang/String;II)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lai/onnxruntime/providers/NNAPIFlags;->USE_FP16:Lai/onnxruntime/providers/NNAPIFlags;

    .line 11
    .line 12
    new-instance v0, Lai/onnxruntime/providers/NNAPIFlags;

    .line 13
    .line 14
    const-string v1, "USE_NCHW"

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    invoke-direct {v0, v1, v3, v2}, Lai/onnxruntime/providers/NNAPIFlags;-><init>(Ljava/lang/String;II)V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lai/onnxruntime/providers/NNAPIFlags;->USE_NCHW:Lai/onnxruntime/providers/NNAPIFlags;

    .line 21
    .line 22
    new-instance v0, Lai/onnxruntime/providers/NNAPIFlags;

    .line 23
    .line 24
    const-string v1, "CPU_DISABLED"

    .line 25
    .line 26
    const/4 v3, 0x4

    .line 27
    invoke-direct {v0, v1, v2, v3}, Lai/onnxruntime/providers/NNAPIFlags;-><init>(Ljava/lang/String;II)V

    .line 28
    .line 29
    .line 30
    sput-object v0, Lai/onnxruntime/providers/NNAPIFlags;->CPU_DISABLED:Lai/onnxruntime/providers/NNAPIFlags;

    .line 31
    .line 32
    new-instance v0, Lai/onnxruntime/providers/NNAPIFlags;

    .line 33
    .line 34
    const/4 v1, 0x3

    .line 35
    const/16 v2, 0x8

    .line 36
    .line 37
    const-string v3, "CPU_ONLY"

    .line 38
    .line 39
    invoke-direct {v0, v3, v1, v2}, Lai/onnxruntime/providers/NNAPIFlags;-><init>(Ljava/lang/String;II)V

    .line 40
    .line 41
    .line 42
    sput-object v0, Lai/onnxruntime/providers/NNAPIFlags;->CPU_ONLY:Lai/onnxruntime/providers/NNAPIFlags;

    .line 43
    .line 44
    invoke-static {}, Lai/onnxruntime/providers/NNAPIFlags;->$values()[Lai/onnxruntime/providers/NNAPIFlags;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    sput-object v0, Lai/onnxruntime/providers/NNAPIFlags;->$VALUES:[Lai/onnxruntime/providers/NNAPIFlags;

    .line 49
    .line 50
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
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
    iput p3, p0, Lai/onnxruntime/providers/NNAPIFlags;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lai/onnxruntime/providers/NNAPIFlags;
    .locals 1

    .line 1
    const-class v0, Lai/onnxruntime/providers/NNAPIFlags;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lai/onnxruntime/providers/NNAPIFlags;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lai/onnxruntime/providers/NNAPIFlags;
    .locals 1

    .line 1
    sget-object v0, Lai/onnxruntime/providers/NNAPIFlags;->$VALUES:[Lai/onnxruntime/providers/NNAPIFlags;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lai/onnxruntime/providers/NNAPIFlags;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lai/onnxruntime/providers/NNAPIFlags;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lai/onnxruntime/providers/NNAPIFlags;->value:I

    .line 2
    .line 3
    return v0
.end method
