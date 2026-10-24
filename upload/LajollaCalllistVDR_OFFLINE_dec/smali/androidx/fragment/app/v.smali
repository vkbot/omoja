.class public final Landroidx/fragment/app/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb/b;


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
    .locals 3

    iget-object p0, p0, Landroidx/fragment/app/v;->a:Landroidx/fragment/app/FragmentActivity;

    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->h:Landroidx/fragment/app/n;

    iget-object v0, v0, Landroidx/fragment/app/n;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/w;

    iget-object v1, v0, Landroidx/fragment/app/w;->x:Landroidx/fragment/app/l0;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v0, v2}, Landroidx/fragment/app/k0;->b(Landroidx/fragment/app/w;Ly1/l;Landroidx/fragment/app/t;)V

    iget-object v0, p0, Landroidx/activity/ComponentActivity;->d:Landroidx/savedstate/d;

    iget-object v0, v0, Landroidx/savedstate/d;->b:Landroidx/savedstate/c;

    const-string v1, "android:support:fragments"

    invoke-virtual {v0, v1}, Landroidx/savedstate/c;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity;->h:Landroidx/fragment/app/n;

    iget-object p0, p0, Landroidx/fragment/app/n;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/fragment/app/w;

    instance-of v1, p0, Landroidx/lifecycle/h0;

    if-eqz v1, :cond_0

    iget-object p0, p0, Landroidx/fragment/app/w;->x:Landroidx/fragment/app/l0;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/k0;->T(Landroid/os/Parcelable;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Your FragmentHostCallback must implement ViewModelStoreOwner to call restoreSaveState(). Call restoreAllState()  if you\'re still using retainNestedNonConfig()."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method
