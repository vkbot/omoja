.class public final Landroidx/fragment/app/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/savedstate/b;


# instance fields
.field public final synthetic a:Landroidx/fragment/app/FragmentActivity;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    iput-object p1, p0, Landroidx/fragment/app/u;->a:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/u;->a:Landroidx/fragment/app/FragmentActivity;

    iget-object v2, v1, Landroidx/fragment/app/FragmentActivity;->i:Landroidx/fragment/app/n;

    iget-object v2, v2, Landroidx/fragment/app/n;->c:Ljava/lang/Object;

    check-cast v2, Landroidx/fragment/app/w;

    iget-object v2, v2, Landroidx/fragment/app/w;->A:Landroidx/fragment/app/l0;

    sget-object v3, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-static {v2, v3}, Landroidx/fragment/app/FragmentActivity;->k(Landroidx/fragment/app/k0;Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v1, Landroidx/fragment/app/FragmentActivity;->j:Landroidx/lifecycle/p;

    sget-object v3, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v2, v3}, Landroidx/lifecycle/p;->e(Landroidx/lifecycle/Lifecycle$Event;)V

    iget-object v1, v1, Landroidx/fragment/app/FragmentActivity;->i:Landroidx/fragment/app/n;

    iget-object v1, v1, Landroidx/fragment/app/n;->c:Ljava/lang/Object;

    check-cast v1, Landroidx/fragment/app/w;

    iget-object v1, v1, Landroidx/fragment/app/w;->A:Landroidx/fragment/app/l0;

    invoke-virtual {v1}, Landroidx/fragment/app/k0;->U()Landroid/os/Parcelable;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "android:support:fragments"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_1
    return-object v0
.end method
