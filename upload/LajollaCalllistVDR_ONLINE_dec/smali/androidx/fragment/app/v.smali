.class public final Landroidx/fragment/app/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La/b;


# instance fields
.field public final synthetic a:Landroidx/fragment/app/FragmentActivity;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    iput-object p1, p0, Landroidx/fragment/app/v;->a:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Landroidx/fragment/app/v;->a:Landroidx/fragment/app/FragmentActivity;

    iget-object v1, v0, Landroidx/fragment/app/FragmentActivity;->i:Landroidx/fragment/app/n;

    iget-object v1, v1, Landroidx/fragment/app/n;->c:Ljava/lang/Object;

    check-cast v1, Landroidx/fragment/app/w;

    iget-object v2, v1, Landroidx/fragment/app/w;->A:Landroidx/fragment/app/l0;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v1, v3}, Landroidx/fragment/app/k0;->b(Landroidx/fragment/app/w;Lcom/google/android/material/slider/h;Landroidx/fragment/app/t;)V

    iget-object v1, v0, Landroidx/activity/ComponentActivity;->e:Landroidx/savedstate/d;

    iget-object v1, v1, Landroidx/savedstate/d;->b:Landroidx/savedstate/c;

    const-string v2, "android:support:fragments"

    invoke-virtual {v1, v2}, Landroidx/savedstate/c;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    iget-object v0, v0, Landroidx/fragment/app/FragmentActivity;->i:Landroidx/fragment/app/n;

    iget-object v0, v0, Landroidx/fragment/app/n;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/w;

    instance-of v2, v0, Landroidx/lifecycle/h0;

    if-eqz v2, :cond_0

    iget-object v0, v0, Landroidx/fragment/app/w;->A:Landroidx/fragment/app/l0;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/k0;->T(Landroid/os/Parcelable;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Your FragmentHostCallback must implement ViewModelStoreOwner to call restoreSaveState(). Call restoreAllState()  if you\'re still using retainNestedNonConfig()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method
