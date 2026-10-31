.class public final Lz3/j;
.super Landroidx/dynamicanimation/animation/FloatPropertyCompat;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 1
    const-string v0, "cornerSizeAtIndex"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lai/onnxruntime/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, v0}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iput p1, p0, Lz3/j;->a:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final getValue(Ljava/lang/Object;)F
    .registers 3

    .line 1
    check-cast p1, Lz3/k;

    .line 2
    .line 3
    iget-object p1, p1, Lz3/k;->D:[F

    .line 4
    .line 5
    if-eqz p1, :cond_b

    .line 6
    .line 7
    iget v0, p0, Lz3/j;->a:I

    .line 8
    .line 9
    aget p1, p1, v0

    .line 10
    .line 11
    return p1

    .line 12
    :cond_b
    const/4 p1, 0x0

    .line 13
    return p1
.end method

.method public final setValue(Ljava/lang/Object;F)V
    .registers 6

    .line 1
    check-cast p1, Lz3/k;

    .line 2
    .line 3
    iget-object v0, p1, Lz3/k;->D:[F

    .line 4
    .line 5
    if-eqz v0, :cond_32

    .line 6
    .line 7
    iget v1, p0, Lz3/j;->a:I

    .line 8
    .line 9
    aget v2, v0, v1

    .line 10
    .line 11
    cmpl-float v2, v2, p2

    .line 12
    .line 13
    if-eqz v2, :cond_32

    .line 14
    .line 15
    aput p2, v0, v1

    .line 16
    .line 17
    iget-object p2, p1, Lz3/k;->F:Lz3/i;

    .line 18
    .line 19
    if-eqz p2, :cond_2f

    .line 20
    .line 21
    invoke-virtual {p1}, Lz3/k;->i()F

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    check-cast p2, Landroidx/fragment/app/h;

    .line 26
    .line 27
    iget-object p2, p2, Landroidx/fragment/app/h;->c:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p2, Lcom/google/android/material/button/MaterialButton;

    .line 30
    .line 31
    const v1, 0x3de147ae    # 0.11f

    .line 32
    .line 33
    .line 34
    mul-float/2addr v0, v1

    .line 35
    float-to-int v0, v0

    .line 36
    iget v1, p2, Lcom/google/android/material/button/MaterialButton;->v:I

    .line 37
    .line 38
    if-eq v1, v0, :cond_2f

    .line 39
    .line 40
    iput v0, p2, Lcom/google/android/material/button/MaterialButton;->v:I

    .line 41
    .line 42
    invoke-virtual {p2}, Lcom/google/android/material/button/MaterialButton;->j()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    .line 46
    .line 47
    .line 48
    :cond_2f
    invoke-virtual {p1}, Lz3/k;->invalidateSelf()V

    .line 49
    .line 50
    .line 51
    :cond_32
    return-void
.end method
