.class public final enum Lai/onnxruntime/OrtModelCompilationOptions$OrtCompileApiFlags;
.super Ljava/lang/Enum;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lai/onnxruntime/OrtFlags;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lai/onnxruntime/OrtModelCompilationOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OrtCompileApiFlags"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lai/onnxruntime/OrtModelCompilationOptions$OrtCompileApiFlags;",
        ">;",
        "Lai/onnxruntime/OrtFlags;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lai/onnxruntime/OrtModelCompilationOptions$OrtCompileApiFlags;

.field public static final enum ERROR_IF_NO_NODES_COMPILED:Lai/onnxruntime/OrtModelCompilationOptions$OrtCompileApiFlags;

.field public static final enum ERROR_IF_OUTPUT_FILE_EXISTS:Lai/onnxruntime/OrtModelCompilationOptions$OrtCompileApiFlags;

.field public static final enum NONE:Lai/onnxruntime/OrtModelCompilationOptions$OrtCompileApiFlags;


# instance fields
.field public final value:I


# direct methods
.method private static synthetic $values()[Lai/onnxruntime/OrtModelCompilationOptions$OrtCompileApiFlags;
    .registers 3

    .line 1
    sget-object v0, Lai/onnxruntime/OrtModelCompilationOptions$OrtCompileApiFlags;->NONE:Lai/onnxruntime/OrtModelCompilationOptions$OrtCompileApiFlags;

    .line 2
    .line 3
    sget-object v1, Lai/onnxruntime/OrtModelCompilationOptions$OrtCompileApiFlags;->ERROR_IF_NO_NODES_COMPILED:Lai/onnxruntime/OrtModelCompilationOptions$OrtCompileApiFlags;

    .line 4
    .line 5
    sget-object v2, Lai/onnxruntime/OrtModelCompilationOptions$OrtCompileApiFlags;->ERROR_IF_OUTPUT_FILE_EXISTS:Lai/onnxruntime/OrtModelCompilationOptions$OrtCompileApiFlags;

    .line 6
    .line 7
    filled-new-array {v0, v1, v2}, [Lai/onnxruntime/OrtModelCompilationOptions$OrtCompileApiFlags;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lai/onnxruntime/OrtModelCompilationOptions$OrtCompileApiFlags;

    .line 2
    .line 3
    const-string v1, "NONE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lai/onnxruntime/OrtModelCompilationOptions$OrtCompileApiFlags;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lai/onnxruntime/OrtModelCompilationOptions$OrtCompileApiFlags;->NONE:Lai/onnxruntime/OrtModelCompilationOptions$OrtCompileApiFlags;

    .line 10
    .line 11
    new-instance v0, Lai/onnxruntime/OrtModelCompilationOptions$OrtCompileApiFlags;

    .line 12
    .line 13
    const-string v1, "ERROR_IF_NO_NODES_COMPILED"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2, v2}, Lai/onnxruntime/OrtModelCompilationOptions$OrtCompileApiFlags;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lai/onnxruntime/OrtModelCompilationOptions$OrtCompileApiFlags;->ERROR_IF_NO_NODES_COMPILED:Lai/onnxruntime/OrtModelCompilationOptions$OrtCompileApiFlags;

    .line 20
    .line 21
    new-instance v0, Lai/onnxruntime/OrtModelCompilationOptions$OrtCompileApiFlags;

    .line 22
    .line 23
    const-string v1, "ERROR_IF_OUTPUT_FILE_EXISTS"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2, v2}, Lai/onnxruntime/OrtModelCompilationOptions$OrtCompileApiFlags;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lai/onnxruntime/OrtModelCompilationOptions$OrtCompileApiFlags;->ERROR_IF_OUTPUT_FILE_EXISTS:Lai/onnxruntime/OrtModelCompilationOptions$OrtCompileApiFlags;

    .line 30
    .line 31
    invoke-static {}, Lai/onnxruntime/OrtModelCompilationOptions$OrtCompileApiFlags;->$values()[Lai/onnxruntime/OrtModelCompilationOptions$OrtCompileApiFlags;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lai/onnxruntime/OrtModelCompilationOptions$OrtCompileApiFlags;->$VALUES:[Lai/onnxruntime/OrtModelCompilationOptions$OrtCompileApiFlags;

    .line 36
    .line 37
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
    iput p3, p0, Lai/onnxruntime/OrtModelCompilationOptions$OrtCompileApiFlags;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lai/onnxruntime/OrtModelCompilationOptions$OrtCompileApiFlags;
    .registers 2

    .line 1
    const-class v0, Lai/onnxruntime/OrtModelCompilationOptions$OrtCompileApiFlags;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lai/onnxruntime/OrtModelCompilationOptions$OrtCompileApiFlags;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lai/onnxruntime/OrtModelCompilationOptions$OrtCompileApiFlags;
    .registers 1

    .line 1
    sget-object v0, Lai/onnxruntime/OrtModelCompilationOptions$OrtCompileApiFlags;->$VALUES:[Lai/onnxruntime/OrtModelCompilationOptions$OrtCompileApiFlags;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lai/onnxruntime/OrtModelCompilationOptions$OrtCompileApiFlags;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lai/onnxruntime/OrtModelCompilationOptions$OrtCompileApiFlags;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    .line 1
    iget v0, p0, Lai/onnxruntime/OrtModelCompilationOptions$OrtCompileApiFlags;->value:I

    .line 2
    .line 3
    return v0
.end method
