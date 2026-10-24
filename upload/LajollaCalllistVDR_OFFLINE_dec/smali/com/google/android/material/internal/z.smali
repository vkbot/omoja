.class public final Lcom/google/android/material/internal/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/internal/b0;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Z

.field public final synthetic c:Z

.field public final synthetic d:Lcom/google/android/material/internal/b0;


# direct methods
.method public constructor <init>(ZZZLcom/google/android/material/bottomappbar/b;)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/internal/z;->a:Z

    iput-boolean p2, p0, Lcom/google/android/material/internal/z;->b:Z

    iput-boolean p3, p0, Lcom/google/android/material/internal/z;->c:Z

    iput-object p4, p0, Lcom/google/android/material/internal/z;->d:Lcom/google/android/material/internal/b0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final q(Landroid/view/View;Lh0/f1;Landroidx/recyclerview/widget/o0;)Lh0/f1;
    .locals 5

    iget-boolean v0, p0, Lcom/google/android/material/internal/z;->a:Z

    if-eqz v0, :cond_0

    iget v0, p3, Landroidx/recyclerview/widget/o0;->d:I

    invoke-virtual {p2}, Lh0/f1;->a()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p3, Landroidx/recyclerview/widget/o0;->d:I

    :cond_0
    invoke-static {p1}, Lcom/google/android/material/internal/c0;->d(Landroid/view/View;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/material/internal/z;->b:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    iget v1, p3, Landroidx/recyclerview/widget/o0;->c:I

    invoke-virtual {p2}, Lh0/f1;->b()I

    move-result v2

    add-int/2addr v2, v1

    iput v2, p3, Landroidx/recyclerview/widget/o0;->c:I

    goto :goto_0

    :cond_1
    iget v1, p3, Landroidx/recyclerview/widget/o0;->a:I

    invoke-virtual {p2}, Lh0/f1;->b()I

    move-result v2

    add-int/2addr v2, v1

    iput v2, p3, Landroidx/recyclerview/widget/o0;->a:I

    :cond_2
    :goto_0
    iget-boolean v1, p0, Lcom/google/android/material/internal/z;->c:Z

    if-eqz v1, :cond_4

    if-eqz v0, :cond_3

    iget v0, p3, Landroidx/recyclerview/widget/o0;->a:I

    invoke-virtual {p2}, Lh0/f1;->c()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p3, Landroidx/recyclerview/widget/o0;->a:I

    goto :goto_1

    :cond_3
    iget v0, p3, Landroidx/recyclerview/widget/o0;->c:I

    invoke-virtual {p2}, Lh0/f1;->c()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p3, Landroidx/recyclerview/widget/o0;->c:I

    :cond_4
    :goto_1
    iget v0, p3, Landroidx/recyclerview/widget/o0;->a:I

    iget v1, p3, Landroidx/recyclerview/widget/o0;->b:I

    iget v2, p3, Landroidx/recyclerview/widget/o0;->c:I

    iget v3, p3, Landroidx/recyclerview/widget/o0;->d:I

    sget-object v4, Lh0/q0;->a:Ljava/util/WeakHashMap;

    invoke-static {p1, v0, v1, v2, v3}, Lh0/a0;->k(Landroid/view/View;IIII)V

    iget-object p0, p0, Lcom/google/android/material/internal/z;->d:Lcom/google/android/material/internal/b0;

    if-eqz p0, :cond_5

    invoke-interface {p0, p1, p2, p3}, Lcom/google/android/material/internal/b0;->q(Landroid/view/View;Lh0/f1;Landroidx/recyclerview/widget/o0;)Lh0/f1;

    move-result-object p2

    :cond_5
    return-object p2
.end method
