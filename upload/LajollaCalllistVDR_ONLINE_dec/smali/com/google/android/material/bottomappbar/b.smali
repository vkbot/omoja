.class public final Lcom/google/android/material/bottomappbar/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/internal/b0;


# instance fields
.field public final synthetic b:Lcom/google/android/material/bottomappbar/BottomAppBar;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/bottomappbar/BottomAppBar;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/bottomappbar/b;->b:Lcom/google/android/material/bottomappbar/BottomAppBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Lg0/i1;Landroidx/recyclerview/widget/o0;)Lg0/i1;
    .locals 4

    iget-object p1, p0, Lcom/google/android/material/bottomappbar/b;->b:Lcom/google/android/material/bottomappbar/BottomAppBar;

    iget-boolean p3, p1, Lcom/google/android/material/bottomappbar/BottomAppBar;->a0:Z

    if-eqz p3, :cond_0

    invoke-virtual {p2}, Lg0/i1;->a()I

    move-result p3

    iput p3, p1, Lcom/google/android/material/bottomappbar/BottomAppBar;->h0:I

    :cond_0
    iget-boolean p3, p1, Lcom/google/android/material/bottomappbar/BottomAppBar;->b0:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_2

    iget p3, p1, Lcom/google/android/material/bottomappbar/BottomAppBar;->j0:I

    invoke-virtual {p2}, Lg0/i1;->b()I

    move-result v2

    if-eq p3, v2, :cond_1

    move p3, v0

    goto :goto_0

    :cond_1
    move p3, v1

    :goto_0
    invoke-virtual {p2}, Lg0/i1;->b()I

    move-result v2

    iput v2, p1, Lcom/google/android/material/bottomappbar/BottomAppBar;->j0:I

    goto :goto_1

    :cond_2
    move p3, v1

    :goto_1
    iget-boolean v2, p1, Lcom/google/android/material/bottomappbar/BottomAppBar;->c0:Z

    if-eqz v2, :cond_4

    iget v2, p1, Lcom/google/android/material/bottomappbar/BottomAppBar;->i0:I

    invoke-virtual {p2}, Lg0/i1;->c()I

    move-result v3

    if-eq v2, v3, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    invoke-virtual {p2}, Lg0/i1;->c()I

    move-result v1

    iput v1, p1, Lcom/google/android/material/bottomappbar/BottomAppBar;->i0:I

    move v1, v0

    :cond_4
    if-nez p3, :cond_5

    if-eqz v1, :cond_8

    :cond_5
    iget-object p3, p1, Lcom/google/android/material/bottomappbar/BottomAppBar;->T:Landroid/animation/Animator;

    if-eqz p3, :cond_6

    invoke-virtual {p3}, Landroid/animation/Animator;->cancel()V

    :cond_6
    iget-object p3, p1, Lcom/google/android/material/bottomappbar/BottomAppBar;->S:Landroid/animation/Animator;

    if-eqz p3, :cond_7

    invoke-virtual {p3}, Landroid/animation/Animator;->cancel()V

    :cond_7
    invoke-virtual {p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->D()V

    invoke-virtual {p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->C()V

    :cond_8
    return-object p2
.end method
