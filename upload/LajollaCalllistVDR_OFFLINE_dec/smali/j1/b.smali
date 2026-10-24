.class public final Lj1/b;
.super Ly1/l;
.source "SourceFile"


# instance fields
.field public final synthetic u:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;


# direct methods
.method public constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V
    .locals 0

    iput-object p1, p0, Lj1/b;->u:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-direct {p0}, Ly1/l;-><init>()V

    return-void
.end method


# virtual methods
.method public final D0()I
    .locals 1

    iget-object p0, p0, Lj1/b;->u:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->D:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->N:I

    return p0

    :cond_0
    iget p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->B:I

    return p0
.end method

.method public final E(Landroid/view/View;I)I
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p0

    return p0
.end method

.method public final F(Landroid/view/View;I)I
    .locals 1

    iget-object p0, p0, Lj1/b;->u:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->y()I

    move-result p1

    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->D:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->N:I

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->B:I

    :goto_0
    invoke-static {p2, p1, p0}, Ly1/l;->D(III)I

    move-result p0

    return p0
.end method

.method public final F1(Landroid/view/View;I)Z
    .locals 4

    iget-object p0, p0, Lj1/b;->u:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->G:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    iget-boolean v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->U:Z

    if-eqz v3, :cond_1

    return v1

    :cond_1
    const/4 v3, 0x3

    if-ne v0, v3, :cond_3

    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->S:I

    if-ne v0, p2, :cond_3

    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->P:Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_3

    const/4 v0, -0x1

    invoke-virtual {p2, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p2

    if-eqz p2, :cond_3

    return v1

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->O:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p1, :cond_4

    move v1, v2

    :cond_4
    return v1
.end method

.method public final e1(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lj1/b;->u:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->F:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->B(I)V

    :cond_0
    return-void
.end method

.method public final f1(Landroid/view/View;II)V
    .locals 0

    iget-object p0, p0, Lj1/b;->u:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-virtual {p0, p3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->v(I)V

    return-void
.end method

.method public final g1(Landroid/view/View;FF)V
    .locals 4

    const/4 v0, 0x0

    cmpg-float v1, p3, v0

    const/4 v2, 0x1

    const/4 v3, 0x6

    iget-object p0, p0, Lj1/b;->u:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-gez v1, :cond_2

    iget-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b:Z

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->y:I

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->z:I

    if-le p2, p3, :cond_1

    goto/16 :goto_5

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->y()I

    move-result p2

    goto/16 :goto_3

    :cond_2
    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->D:Z

    if-eqz v1, :cond_9

    invoke-virtual {p0, p1, p3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->E(Landroid/view/View;F)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float p2, p2, v0

    if-gez p2, :cond_3

    const/high16 p2, 0x43fa0000    # 500.0f

    cmpl-float p2, p3, p2

    if-gtz p2, :cond_5

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    iget p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->N:I

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->y()I

    move-result v0

    add-int/2addr v0, p3

    div-int/lit8 v0, v0, 0x2

    if-le p2, v0, :cond_4

    move p2, v2

    goto :goto_0

    :cond_4
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_6

    :cond_5
    iget p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->N:I

    const/4 v3, 0x5

    goto/16 :goto_5

    :cond_6
    iget-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b:Z

    if-eqz p2, :cond_7

    iget p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->y:I

    goto/16 :goto_3

    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->y()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p3

    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->z:I

    sub-int/2addr p3, v0

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    if-ge p2, p3, :cond_8

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->y()I

    move-result p2

    goto/16 :goto_3

    :cond_8
    iget p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->z:I

    goto/16 :goto_5

    :cond_9
    cmpl-float v0, p3, v0

    if-eqz v0, :cond_d

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    cmpl-float p2, p2, p3

    if-lez p2, :cond_a

    goto :goto_1

    :cond_a
    iget-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b:Z

    if-eqz p2, :cond_b

    iget p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->B:I

    goto :goto_2

    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    iget p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->z:I

    sub-int p3, p2, p3

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->B:I

    sub-int/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-ge p3, p2, :cond_c

    iget p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->z:I

    goto :goto_5

    :cond_c
    iget p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->B:I

    goto :goto_2

    :cond_d
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    iget-boolean p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b:Z

    if-eqz p3, :cond_f

    iget p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->y:I

    sub-int p3, p2, p3

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->B:I

    sub-int/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-ge p3, p2, :cond_e

    iget p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->y:I

    goto :goto_3

    :cond_e
    iget p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->B:I

    :goto_2
    move p3, p2

    goto :goto_4

    :cond_f
    iget p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->z:I

    if-ge p2, p3, :cond_11

    iget p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->B:I

    sub-int p3, p2, p3

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    if-ge p2, p3, :cond_10

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->y()I

    move-result p2

    :goto_3
    const/4 v3, 0x3

    move p3, p2

    goto :goto_5

    :cond_10
    iget p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->z:I

    goto :goto_5

    :cond_11
    sub-int p3, p2, p3

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->B:I

    sub-int/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-ge p3, p2, :cond_12

    iget p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->z:I

    goto :goto_5

    :cond_12
    iget p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->B:I

    goto :goto_2

    :goto_4
    const/4 v3, 0x4

    :goto_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1, v3, p3, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->F(Landroid/view/View;IIZ)V

    return-void
.end method
