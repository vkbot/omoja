.class public final enum Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;
.super Ljava/lang/Enum;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lai/onnxruntime/OnnxSparseTensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SparseTensorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;

.field public static final enum BLOCK_SPARSE:Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;

.field public static final enum COO:Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;

.field public static final enum CSRC:Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;

.field public static final enum UNDEFINED:Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;

.field private static final values:[Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;


# instance fields
.field public final value:I


# direct methods
.method private static synthetic $values()[Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;
    .registers 4

    .line 1
    sget-object v0, Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;->UNDEFINED:Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;

    .line 2
    .line 3
    sget-object v1, Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;->COO:Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;

    .line 4
    .line 5
    sget-object v2, Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;->CSRC:Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;

    .line 6
    .line 7
    sget-object v3, Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;->BLOCK_SPARSE:Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;

    .line 8
    .line 9
    filled-new-array {v0, v1, v2, v3}, [Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 10

    .line 1
    new-instance v0, Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;

    .line 2
    .line 3
    const-string v1, "UNDEFINED"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;->UNDEFINED:Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;

    .line 10
    .line 11
    new-instance v1, Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;

    .line 12
    .line 13
    const-string v3, "COO"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4, v4}, Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;->COO:Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;

    .line 20
    .line 21
    new-instance v3, Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;

    .line 22
    .line 23
    const-string v5, "CSRC"

    .line 24
    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6, v6}, Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v3, Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;->CSRC:Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;

    .line 30
    .line 31
    new-instance v5, Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;

    .line 32
    .line 33
    const-string v7, "BLOCK_SPARSE"

    .line 34
    .line 35
    const/4 v8, 0x3

    .line 36
    const/4 v9, 0x4

    .line 37
    invoke-direct {v5, v7, v8, v9}, Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;-><init>(Ljava/lang/String;II)V

    .line 38
    .line 39
    .line 40
    sput-object v5, Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;->BLOCK_SPARSE:Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;

    .line 41
    .line 42
    invoke-static {}, Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;->$values()[Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;

    .line 43
    .line 44
    .line 45
    move-result-object v7

    .line 46
    sput-object v7, Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;->$VALUES:[Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;

    .line 47
    .line 48
    const/4 v7, 0x5

    .line 49
    new-array v7, v7, [Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;

    .line 50
    .line 51
    sput-object v7, Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;->values:[Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;

    .line 52
    .line 53
    aput-object v0, v7, v2

    .line 54
    .line 55
    aput-object v1, v7, v4

    .line 56
    .line 57
    aput-object v3, v7, v6

    .line 58
    .line 59
    aput-object v0, v7, v8

    .line 60
    .line 61
    aput-object v5, v7, v9

    .line 62
    .line 63
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
    iput p3, p0, Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static mapFromInt(I)Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;
    .registers 3

    .line 1
    if-lez p0, :cond_a

    .line 2
    .line 3
    sget-object v0, Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;->values:[Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;

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
    sget-object p0, Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;->UNDEFINED:Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;

    .line 12
    .line 13
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;
    .registers 2

    .line 1
    const-class v0, Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;
    .registers 1

    .line 1
    sget-object v0, Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;->$VALUES:[Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;

    .line 8
    .line 9
    return-object v0
.end method
