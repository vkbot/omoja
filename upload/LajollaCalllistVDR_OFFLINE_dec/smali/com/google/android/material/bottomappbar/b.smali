.class public final Lcom/google/android/material/bottomappbar/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/internal/b0;


# instance fields
.field public final synthetic a:Lcom/google/android/material/bottomappbar/BottomAppBar;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/bottomappbar/BottomAppBar;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/bottomappbar/b;->a:Lcom/google/android/material/bottomappbar/BottomAppBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final q(Landroid/view/View;Lh0/f1;Landroidx/recyclerview/widget/o0;)Lh0/f1;
    .locals 3

    iget-object p0, p0, Lcom/google/android/material/bottomappbar/b;->a:Lcom/google/android/material/bottomappbar/BottomAppBar;

    iget-boolean p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->W:Z

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lh0/f1;->a()I

    move-result p1

    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->g0:I

    :cond_0
    iget-boolean p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->a0:Z

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->i0:I

    invoke-virtual {p2}, Lh0/f1;->b()I

    move-result v1

    if-eq p1, v1, :cond_1

    move p1, p3

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    invoke-virtual {p2}, Lh0/f1;->b()I

    move-result v1

    iput v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->i0:I

    goto :goto_1

    :cond_2
    move p1, v0

    :goto_1
    iget-boolean v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->b0:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->h0:I

    invoke-virtual {p2}, Lh0/f1;->c()I

    move-result v2

    if-eq v1, v2, :cond_3

    goto :goto_2

    :cond_3
    move p3, v0

    :goto_2
    invoke-virtual {p2}, Lh0/f1;->c()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->h0:I

    move v0, p3

    :cond_4
    if-nez p1, :cond_5

    if-eqz v0, :cond_8

    :cond_5
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->S:Landroid/animation/Animator;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    :cond_6
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->R:Landroid/animation/Animator;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->D()V

    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->C()V

    :cond_8
    return-object p2
.end method
