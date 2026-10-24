.class public final Landroidx/fragment/app/w;
.super Lcom/google/android/material/slider/h;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/h0;
.implements Landroidx/activity/j;
.implements Landroidx/activity/result/e;
.implements Landroidx/fragment/app/n0;


# instance fields
.field public final A:Landroidx/fragment/app/l0;

.field public final synthetic B:Landroidx/fragment/app/FragmentActivity;

.field public final x:Landroid/app/Activity;

.field public final y:Landroid/content/Context;

.field public final z:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;)V
    .locals 2

    iput-object p1, p0, Landroidx/fragment/app/w;->B:Landroidx/fragment/app/FragmentActivity;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0}, Lcom/google/android/material/slider/h;-><init>()V

    new-instance v1, Landroidx/fragment/app/l0;

    invoke-direct {v1}, Landroidx/fragment/app/l0;-><init>()V

    iput-object v1, p0, Landroidx/fragment/app/w;->A:Landroidx/fragment/app/l0;

    iput-object p1, p0, Landroidx/fragment/app/w;->x:Landroid/app/Activity;

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroidx/fragment/app/w;->y:Landroid/content/Context;

    iput-object v0, p0, Landroidx/fragment/app/w;->z:Landroid/os/Handler;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "context == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final U0(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/w;->B:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final V0()Z
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/w;->B:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/w;->B:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final d()Landroidx/lifecycle/g0;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/w;->B:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->d()Landroidx/lifecycle/g0;

    move-result-object v0

    return-object v0
.end method

.method public final getLifecycle()Landroidx/lifecycle/i;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/w;->B:Landroidx/fragment/app/FragmentActivity;

    iget-object v0, v0, Landroidx/fragment/app/FragmentActivity;->j:Landroidx/lifecycle/p;

    return-object v0
.end method
