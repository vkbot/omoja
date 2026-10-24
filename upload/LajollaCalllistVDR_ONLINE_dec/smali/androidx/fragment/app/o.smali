.class public final Landroidx/fragment/app/o;
.super Lcom/google/android/material/slider/h;
.source "SourceFile"


# instance fields
.field public final synthetic x:Lcom/google/android/material/slider/h;

.field public final synthetic y:Landroidx/fragment/app/p;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/p;Landroidx/fragment/app/q;)V
    .locals 0

    iput-object p1, p0, Landroidx/fragment/app/o;->y:Landroidx/fragment/app/p;

    iput-object p2, p0, Landroidx/fragment/app/o;->x:Lcom/google/android/material/slider/h;

    invoke-direct {p0}, Lcom/google/android/material/slider/h;-><init>()V

    return-void
.end method


# virtual methods
.method public final U0(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/o;->x:Lcom/google/android/material/slider/h;

    invoke-virtual {v0}, Lcom/google/android/material/slider/h;->V0()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/material/slider/h;->U0(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/o;->y:Landroidx/fragment/app/p;

    iget-object v0, v0, Landroidx/fragment/app/p;->e0:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final V0()Z
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/o;->x:Lcom/google/android/material/slider/h;

    invoke-virtual {v0}, Lcom/google/android/material/slider/h;->V0()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/o;->y:Landroidx/fragment/app/p;

    iget-boolean v0, v0, Landroidx/fragment/app/p;->h0:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
