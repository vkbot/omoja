.class public final enum Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;
.super Ljava/lang/Enum;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lai/onnxruntime/OrtSession$SessionOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OptLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;

.field public static final enum ALL_OPT:Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;

.field public static final enum BASIC_OPT:Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;

.field public static final enum EXTENDED_OPT:Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;

.field public static final enum LAYOUT_OPT:Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;

.field public static final enum NO_OPT:Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;


# instance fields
.field private final id:I


# direct methods
.method private static synthetic $values()[Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;
    .locals 5

    .line 1
    sget-object v0, Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;->NO_OPT:Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;

    .line 2
    .line 3
    sget-object v1, Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;->BASIC_OPT:Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;

    .line 4
    .line 5
    sget-object v2, Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;->EXTENDED_OPT:Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;

    .line 6
    .line 7
    sget-object v3, Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;->LAYOUT_OPT:Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;

    .line 8
    .line 9
    sget-object v4, Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;->ALL_OPT:Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;

    .line 10
    .line 11
    filled-new-array {v0, v1, v2, v3, v4}, [Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;

    .line 2
    .line 3
    const-string v1, "NO_OPT"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;->NO_OPT:Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;

    .line 10
    .line 11
    new-instance v0, Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;

    .line 12
    .line 13
    const-string v1, "BASIC_OPT"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2, v2}, Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;->BASIC_OPT:Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;

    .line 20
    .line 21
    new-instance v0, Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;

    .line 22
    .line 23
    const-string v1, "EXTENDED_OPT"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2, v2}, Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;->EXTENDED_OPT:Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;

    .line 30
    .line 31
    new-instance v0, Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;

    .line 32
    .line 33
    const-string v1, "LAYOUT_OPT"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2, v2}, Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;-><init>(Ljava/lang/String;II)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;->LAYOUT_OPT:Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;

    .line 40
    .line 41
    new-instance v0, Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;

    .line 42
    .line 43
    const/4 v1, 0x4

    .line 44
    const/16 v2, 0x63

    .line 45
    .line 46
    const-string v3, "ALL_OPT"

    .line 47
    .line 48
    invoke-direct {v0, v3, v1, v2}, Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;-><init>(Ljava/lang/String;II)V

    .line 49
    .line 50
    .line 51
    sput-object v0, Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;->ALL_OPT:Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;

    .line 52
    .line 53
    invoke-static {}, Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;->$values()[Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    sput-object v0, Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;->$VALUES:[Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;

    .line 58
    .line 59
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
    iput p3, p0, Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;->id:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;
    .locals 1

    .line 1
    const-class v0, Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;
    .locals 1

    .line 1
    sget-object v0, Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;->$VALUES:[Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getID()I
    .locals 1

    .line 1
    iget v0, p0, Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;->id:I

    .line 2
    .line 3
    return v0
.end method
