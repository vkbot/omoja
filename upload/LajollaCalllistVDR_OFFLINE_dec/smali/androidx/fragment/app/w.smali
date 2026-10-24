.class public final Landroidx/fragment/app/w;
.super Ly1/l;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/h0;
.implements Landroidx/activity/i;
.implements Landroidx/activity/result/e;
.implements Landroidx/fragment/app/n0;


# instance fields
.field public final u:Landroid/app/Activity;

.field public final v:Landroid/content/Context;

.field public final w:Landroid/os/Handler;

.field public final x:Landroidx/fragment/app/l0;

.field public final synthetic y:Landroidx/fragment/app/FragmentActivity;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;)V
    .locals 2

    iput-object p1, p0, Landroidx/fragment/app/w;->y:Landroidx/fragment/app/FragmentActivity;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0}, Ly1/l;-><init>()V

    new-instance v1, Landroidx/fragment/app/l0;

    invoke-direct {v1}, Landroidx/fragment/app/l0;-><init>()V

    iput-object v1, p0, Landroidx/fragment/app/w;->x:Landroidx/fragment/app/l0;

    iput-object p1, p0, Landroidx/fragment/app/w;->u:Landroid/app/Activity;

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroidx/fragment/app/w;->v:Landroid/content/Context;

    iput-object v0, p0, Landroidx/fragment/app/w;->w:Landroid/os/Handler;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "context == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final X0(I)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/w;->y:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final Y0()Z
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/w;->y:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final c()V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/w;->y:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final d()Landroidx/lifecycle/g0;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/w;->y:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->d()Landroidx/lifecycle/g0;

    move-result-object p0

    return-object p0
.end method

.method public final getLifecycle()Landroidx/lifecycle/i;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/w;->y:Landroidx/fragment/app/FragmentActivity;

    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity;->i:Landroidx/lifecycle/p;

    return-object p0
.end method
