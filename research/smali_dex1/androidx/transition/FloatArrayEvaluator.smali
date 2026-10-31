.class Landroidx/transition/FloatArrayEvaluator;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator<",
        "[F>;"
    }
.end annotation


# instance fields
.field private mArray:[F


# direct methods
.method public constructor <init>([F)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/transition/FloatArrayEvaluator;->mArray:[F

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 26
    check-cast p2, [F

    check-cast p3, [F

    invoke-virtual {p0, p1, p2, p3}, Landroidx/transition/FloatArrayEvaluator;->evaluate(F[F[F)[F

    move-result-object p1

    return-object p1
.end method

.method public evaluate(F[F[F)[F
    .registers 8

    .line 1
    iget-object v0, p0, Landroidx/transition/FloatArrayEvaluator;->mArray:[F

    .line 2
    .line 3
    if-nez v0, :cond_7

    .line 4
    .line 5
    array-length v0, p2

    .line 6
    new-array v0, v0, [F

    .line 7
    .line 8
    :cond_7
    const/4 v1, 0x0

    .line 9
    :goto_8
    array-length v2, v0

    .line 10
    if-ge v1, v2, :cond_18

    .line 11
    .line 12
    aget v2, p2, v1

    .line 13
    .line 14
    aget v3, p3, v1

    .line 15
    .line 16
    invoke-static {v3, v2, p1, v2}, Lai/onnxruntime/a;->b(FFFF)F

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    aput v2, v0, v1

    .line 21
    .line 22
    add-int/lit8 v1, v1, 0x1

    .line 23
    .line 24
    goto :goto_8

    .line 25
    :cond_18
    return-object v0
.end method
