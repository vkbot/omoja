.class public final Lj1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/internal/b0;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;


# direct methods
.method public constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Z)V
    .locals 0

    iput-object p1, p0, Lj1/a;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iput-boolean p2, p0, Lj1/a;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final q(Landroid/view/View;Lh0/f1;Landroidx/recyclerview/widget/o0;)Lh0/f1;
    .locals 7

    invoke-virtual {p2}, Lh0/f1;->d()I

    move-result v0

    iget-object v1, p0, Lj1/a;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iput v0, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->s:I

    invoke-static {p1}, Lcom/google/android/material/internal/c0;->d(Landroid/view/View;)Z

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    iget-boolean v5, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->n:Z

    if-eqz v5, :cond_0

    invoke-virtual {p2}, Lh0/f1;->a()I

    move-result v2

    iput v2, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->r:I

    iget v6, p3, Landroidx/recyclerview/widget/o0;->d:I

    add-int/2addr v2, v6

    :cond_0
    iget-boolean v6, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->o:Z

    if-eqz v6, :cond_2

    if-eqz v0, :cond_1

    iget v3, p3, Landroidx/recyclerview/widget/o0;->c:I

    goto :goto_0

    :cond_1
    iget v3, p3, Landroidx/recyclerview/widget/o0;->a:I

    :goto_0
    invoke-virtual {p2}, Lh0/f1;->b()I

    move-result v6

    add-int/2addr v3, v6

    :cond_2
    iget-boolean v6, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->p:Z

    if-eqz v6, :cond_4

    if-eqz v0, :cond_3

    iget p3, p3, Landroidx/recyclerview/widget/o0;->a:I

    goto :goto_1

    :cond_3
    iget p3, p3, Landroidx/recyclerview/widget/o0;->c:I

    :goto_1
    invoke-virtual {p2}, Lh0/f1;->c()I

    move-result v0

    add-int v4, v0, p3

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p3

    invoke-virtual {p1, v3, p3, v4, v2}, Landroid/view/View;->setPadding(IIII)V

    iget-boolean p0, p0, Lj1/a;->a:Z

    if-eqz p0, :cond_5

    iget-object p1, p2, Lh0/f1;->a:Lh0/e1;

    invoke-virtual {p1}, Lh0/e1;->f()Lz/b;

    move-result-object p1

    iget p1, p1, Lz/b;->d:I

    iput p1, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->l:I

    :cond_5
    if-nez v5, :cond_6

    if-eqz p0, :cond_7

    :cond_6
    invoke-virtual {v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->J()V

    :cond_7
    return-object p2
.end method
