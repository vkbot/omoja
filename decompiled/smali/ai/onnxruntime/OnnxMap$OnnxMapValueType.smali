.class public final enum Lai/onnxruntime/OnnxMap$OnnxMapValueType;
.super Ljava/lang/Enum;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lai/onnxruntime/OnnxMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OnnxMapValueType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lai/onnxruntime/OnnxMap$OnnxMapValueType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lai/onnxruntime/OnnxMap$OnnxMapValueType;

.field public static final enum DOUBLE:Lai/onnxruntime/OnnxMap$OnnxMapValueType;

.field public static final enum FLOAT:Lai/onnxruntime/OnnxMap$OnnxMapValueType;

.field public static final enum INVALID:Lai/onnxruntime/OnnxMap$OnnxMapValueType;

.field public static final enum LONG:Lai/onnxruntime/OnnxMap$OnnxMapValueType;

.field public static final enum STRING:Lai/onnxruntime/OnnxMap$OnnxMapValueType;

.field private static final values:[Lai/onnxruntime/OnnxMap$OnnxMapValueType;


# instance fields
.field final value:I


# direct methods
.method private static synthetic $values()[Lai/onnxruntime/OnnxMap$OnnxMapValueType;
    .locals 5

    .line 1
    sget-object v0, Lai/onnxruntime/OnnxMap$OnnxMapValueType;->INVALID:Lai/onnxruntime/OnnxMap$OnnxMapValueType;

    .line 2
    .line 3
    sget-object v1, Lai/onnxruntime/OnnxMap$OnnxMapValueType;->STRING:Lai/onnxruntime/OnnxMap$OnnxMapValueType;

    .line 4
    .line 5
    sget-object v2, Lai/onnxruntime/OnnxMap$OnnxMapValueType;->LONG:Lai/onnxruntime/OnnxMap$OnnxMapValueType;

    .line 6
    .line 7
    sget-object v3, Lai/onnxruntime/OnnxMap$OnnxMapValueType;->FLOAT:Lai/onnxruntime/OnnxMap$OnnxMapValueType;

    .line 8
    .line 9
    sget-object v4, Lai/onnxruntime/OnnxMap$OnnxMapValueType;->DOUBLE:Lai/onnxruntime/OnnxMap$OnnxMapValueType;

    .line 10
    .line 11
    filled-new-array {v0, v1, v2, v3, v4}, [Lai/onnxruntime/OnnxMap$OnnxMapValueType;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lai/onnxruntime/OnnxMap$OnnxMapValueType;

    .line 2
    .line 3
    const-string v1, "INVALID"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lai/onnxruntime/OnnxMap$OnnxMapValueType;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lai/onnxruntime/OnnxMap$OnnxMapValueType;->INVALID:Lai/onnxruntime/OnnxMap$OnnxMapValueType;

    .line 10
    .line 11
    new-instance v0, Lai/onnxruntime/OnnxMap$OnnxMapValueType;

    .line 12
    .line 13
    const-string v1, "STRING"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v0, v1, v3, v3}, Lai/onnxruntime/OnnxMap$OnnxMapValueType;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lai/onnxruntime/OnnxMap$OnnxMapValueType;->STRING:Lai/onnxruntime/OnnxMap$OnnxMapValueType;

    .line 20
    .line 21
    new-instance v0, Lai/onnxruntime/OnnxMap$OnnxMapValueType;

    .line 22
    .line 23
    const-string v1, "LONG"

    .line 24
    .line 25
    const/4 v3, 0x2

    .line 26
    invoke-direct {v0, v1, v3, v3}, Lai/onnxruntime/OnnxMap$OnnxMapValueType;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lai/onnxruntime/OnnxMap$OnnxMapValueType;->LONG:Lai/onnxruntime/OnnxMap$OnnxMapValueType;

    .line 30
    .line 31
    new-instance v0, Lai/onnxruntime/OnnxMap$OnnxMapValueType;

    .line 32
    .line 33
    const-string v1, "FLOAT"

    .line 34
    .line 35
    const/4 v3, 0x3

    .line 36
    invoke-direct {v0, v1, v3, v3}, Lai/onnxruntime/OnnxMap$OnnxMapValueType;-><init>(Ljava/lang/String;II)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lai/onnxruntime/OnnxMap$OnnxMapValueType;->FLOAT:Lai/onnxruntime/OnnxMap$OnnxMapValueType;

    .line 40
    .line 41
    new-instance v0, Lai/onnxruntime/OnnxMap$OnnxMapValueType;

    .line 42
    .line 43
    const-string v1, "DOUBLE"

    .line 44
    .line 45
    const/4 v3, 0x4

    .line 46
    invoke-direct {v0, v1, v3, v3}, Lai/onnxruntime/OnnxMap$OnnxMapValueType;-><init>(Ljava/lang/String;II)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lai/onnxruntime/OnnxMap$OnnxMapValueType;->DOUBLE:Lai/onnxruntime/OnnxMap$OnnxMapValueType;

    .line 50
    .line 51
    invoke-static {}, Lai/onnxruntime/OnnxMap$OnnxMapValueType;->$values()[Lai/onnxruntime/OnnxMap$OnnxMapValueType;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sput-object v0, Lai/onnxruntime/OnnxMap$OnnxMapValueType;->$VALUES:[Lai/onnxruntime/OnnxMap$OnnxMapValueType;

    .line 56
    .line 57
    const/4 v0, 0x5

    .line 58
    new-array v0, v0, [Lai/onnxruntime/OnnxMap$OnnxMapValueType;

    .line 59
    .line 60
    sput-object v0, Lai/onnxruntime/OnnxMap$OnnxMapValueType;->values:[Lai/onnxruntime/OnnxMap$OnnxMapValueType;

    .line 61
    .line 62
    invoke-static {}, Lai/onnxruntime/OnnxMap$OnnxMapValueType;->values()[Lai/onnxruntime/OnnxMap$OnnxMapValueType;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    array-length v1, v0

    .line 67
    :goto_0
    if-ge v2, v1, :cond_0

    .line 68
    .line 69
    aget-object v3, v0, v2

    .line 70
    .line 71
    sget-object v4, Lai/onnxruntime/OnnxMap$OnnxMapValueType;->values:[Lai/onnxruntime/OnnxMap$OnnxMapValueType;

    .line 72
    .line 73
    iget v5, v3, Lai/onnxruntime/OnnxMap$OnnxMapValueType;->value:I

    .line 74
    .line 75
    aput-object v3, v4, v5

    .line 76
    .line 77
    add-int/lit8 v2, v2, 0x1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_0
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
    iput p3, p0, Lai/onnxruntime/OnnxMap$OnnxMapValueType;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static mapFromInt(I)Lai/onnxruntime/OnnxMap$OnnxMapValueType;
    .locals 2

    .line 1
    if-lez p0, :cond_0

    .line 2
    .line 3
    sget-object v0, Lai/onnxruntime/OnnxMap$OnnxMapValueType;->values:[Lai/onnxruntime/OnnxMap$OnnxMapValueType;

    .line 4
    .line 5
    array-length v1, v0

    .line 6
    if-ge p0, v1, :cond_0

    .line 7
    .line 8
    aget-object p0, v0, p0

    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_0
    sget-object p0, Lai/onnxruntime/OnnxMap$OnnxMapValueType;->INVALID:Lai/onnxruntime/OnnxMap$OnnxMapValueType;

    .line 12
    .line 13
    return-object p0
.end method

.method public static mapFromOnnxJavaType(Lai/onnxruntime/OnnxJavaType;)Lai/onnxruntime/OnnxMap$OnnxMapValueType;
    .locals 1

    .line 1
    sget-object v0, Lai/onnxruntime/OnnxMap$1;->$SwitchMap$ai$onnxruntime$OnnxJavaType:[I

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    aget p0, v0, p0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    if-eq p0, v0, :cond_3

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    if-eq p0, v0, :cond_2

    .line 14
    .line 15
    const/4 v0, 0x3

    .line 16
    if-eq p0, v0, :cond_1

    .line 17
    .line 18
    const/4 v0, 0x4

    .line 19
    if-eq p0, v0, :cond_0

    .line 20
    .line 21
    sget-object p0, Lai/onnxruntime/OnnxMap$OnnxMapValueType;->INVALID:Lai/onnxruntime/OnnxMap$OnnxMapValueType;

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_0
    sget-object p0, Lai/onnxruntime/OnnxMap$OnnxMapValueType;->STRING:Lai/onnxruntime/OnnxMap$OnnxMapValueType;

    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_1
    sget-object p0, Lai/onnxruntime/OnnxMap$OnnxMapValueType;->LONG:Lai/onnxruntime/OnnxMap$OnnxMapValueType;

    .line 28
    .line 29
    return-object p0

    .line 30
    :cond_2
    sget-object p0, Lai/onnxruntime/OnnxMap$OnnxMapValueType;->DOUBLE:Lai/onnxruntime/OnnxMap$OnnxMapValueType;

    .line 31
    .line 32
    return-object p0

    .line 33
    :cond_3
    sget-object p0, Lai/onnxruntime/OnnxMap$OnnxMapValueType;->FLOAT:Lai/onnxruntime/OnnxMap$OnnxMapValueType;

    .line 34
    .line 35
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lai/onnxruntime/OnnxMap$OnnxMapValueType;
    .locals 1

    .line 1
    const-class v0, Lai/onnxruntime/OnnxMap$OnnxMapValueType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lai/onnxruntime/OnnxMap$OnnxMapValueType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lai/onnxruntime/OnnxMap$OnnxMapValueType;
    .locals 1

    .line 1
    sget-object v0, Lai/onnxruntime/OnnxMap$OnnxMapValueType;->$VALUES:[Lai/onnxruntime/OnnxMap$OnnxMapValueType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lai/onnxruntime/OnnxMap$OnnxMapValueType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lai/onnxruntime/OnnxMap$OnnxMapValueType;

    .line 8
    .line 9
    return-object v0
.end method
