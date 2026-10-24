.class public final Ly/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly/j$b;
    }
.end annotation


# static fields
.field public static final f:Ly/j$a;


# instance fields
.field public volatile a:Lcom/bumptech/glide/h;

.field public final b:Ljava/util/HashMap;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public final c:Ljava/util/HashMap;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public final d:Landroid/os/Handler;

.field public final e:Ly/j$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ly/j$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ly/j;->f:Ly/j$a;

    return-void
.end method

.method public constructor <init>(Ly/j$b;)V
    .locals 1
    .param p1    # Ly/j$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ly/j;->b:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ly/j;->c:Ljava/util/HashMap;

    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Ly/j;->f:Ly/j$a;

    :goto_0
    iput-object p1, p0, Ly/j;->e:Ly/j$b;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Ly/j;->d:Landroid/os/Handler;

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/app/Activity;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/app/Activity;

    return-object p0

    :cond_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Ly/j;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static e(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Ly/j;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public final b(Landroid/content/Context;)Lcom/bumptech/glide/h;
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-eqz p1, :cond_d

    sget-object v0, Lf0/j;->a:[C

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_a

    instance-of v0, p1, Landroid/app/Application;

    if-nez v0, :cond_a

    instance-of v0, p1, Landroidx/fragment/app/FragmentActivity;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v0, v3, :cond_0

    move v1, v2

    :cond_0
    xor-int/lit8 v0, v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Ly/j;->b(Landroid/content/Context;)Lcom/bumptech/glide/h;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {p1}, Ly/j;->e(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Ly/j;->d(Landroidx/fragment/app/FragmentManager;Z)Lcom/bumptech/glide/manager/SupportRequestManagerFragment;

    move-result-object v0

    iget-object v1, v0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->e:Lcom/bumptech/glide/h;

    if-nez v1, :cond_2

    invoke-static {p1}, Lcom/bumptech/glide/b;->b(Landroid/content/Context;)Lcom/bumptech/glide/b;

    move-result-object v1

    iget-object v2, v0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->b:Lcom/bumptech/glide/manager/SupportRequestManagerFragment$a;

    iget-object p0, p0, Ly/j;->e:Ly/j$b;

    check-cast p0, Ly/j$a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/bumptech/glide/h;

    iget-object v3, v0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->a:Ly/a;

    invoke-direct {p0, v1, v3, v2, p1}, Lcom/bumptech/glide/h;-><init>(Lcom/bumptech/glide/b;Ly/g;Ly/k;Landroid/content/Context;)V

    iput-object p0, v0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->e:Lcom/bumptech/glide/h;

    goto :goto_0

    :cond_2
    move-object p0, v1

    :goto_0
    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "You cannot start a load for a destroyed activity"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_9

    check-cast p1, Landroid/app/Activity;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v0, v3, :cond_5

    move v1, v2

    :cond_5
    xor-int/lit8 v0, v1, 0x1

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Ly/j;->b(Landroid/content/Context;)Lcom/bumptech/glide/h;

    move-result-object p0

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {p1}, Ly/j;->e(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Ly/j;->c(Landroid/app/FragmentManager;Z)Lcom/bumptech/glide/manager/RequestManagerFragment;

    move-result-object v0

    iget-object v1, v0, Lcom/bumptech/glide/manager/RequestManagerFragment;->d:Lcom/bumptech/glide/h;

    if-nez v1, :cond_7

    invoke-static {p1}, Lcom/bumptech/glide/b;->b(Landroid/content/Context;)Lcom/bumptech/glide/b;

    move-result-object v1

    iget-object v2, v0, Lcom/bumptech/glide/manager/RequestManagerFragment;->b:Lcom/bumptech/glide/manager/RequestManagerFragment$a;

    iget-object p0, p0, Ly/j;->e:Ly/j$b;

    check-cast p0, Ly/j$a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/bumptech/glide/h;

    iget-object v3, v0, Lcom/bumptech/glide/manager/RequestManagerFragment;->a:Ly/a;

    invoke-direct {p0, v1, v3, v2, p1}, Lcom/bumptech/glide/h;-><init>(Lcom/bumptech/glide/b;Ly/g;Ly/k;Landroid/content/Context;)V

    iput-object p0, v0, Lcom/bumptech/glide/manager/RequestManagerFragment;->d:Lcom/bumptech/glide/h;

    goto :goto_1

    :cond_7
    move-object p0, v1

    :goto_1
    return-object p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "You cannot start a load for a destroyed activity"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_a

    move-object v0, p1

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Ly/j;->b(Landroid/content/Context;)Lcom/bumptech/glide/h;

    move-result-object p0

    return-object p0

    :cond_a
    iget-object v0, p0, Ly/j;->a:Lcom/bumptech/glide/h;

    if-nez v0, :cond_c

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ly/j;->a:Lcom/bumptech/glide/h;

    if-nez v0, :cond_b

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/b;->b(Landroid/content/Context;)Lcom/bumptech/glide/b;

    move-result-object v0

    iget-object v1, p0, Ly/j;->e:Ly/j$b;

    new-instance v2, Ly/b;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ld/f;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast v1, Ly/j$a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/bumptech/glide/h;

    invoke-direct {v1, v0, v2, v3, p1}, Lcom/bumptech/glide/h;-><init>(Lcom/bumptech/glide/b;Ly/g;Ly/k;Landroid/content/Context;)V

    iput-object v1, p0, Ly/j;->a:Lcom/bumptech/glide/h;

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_b
    :goto_2
    monitor-exit p0

    goto :goto_4

    :goto_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_c
    :goto_4
    iget-object p0, p0, Ly/j;->a:Lcom/bumptech/glide/h;

    return-object p0

    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "You cannot start a load on a null Context"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final c(Landroid/app/FragmentManager;Z)Lcom/bumptech/glide/manager/RequestManagerFragment;
    .locals 4
    .param p1    # Landroid/app/FragmentManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "com.bumptech.glide.manager"

    invoke-virtual {p1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/manager/RequestManagerFragment;

    if-nez v1, :cond_2

    iget-object v1, p0, Ly/j;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/manager/RequestManagerFragment;

    if-nez v2, :cond_1

    new-instance v2, Lcom/bumptech/glide/manager/RequestManagerFragment;

    invoke-direct {v2}, Lcom/bumptech/glide/manager/RequestManagerFragment;-><init>()V

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/bumptech/glide/manager/RequestManagerFragment;->f:Landroid/app/Fragment;

    if-eqz p2, :cond_0

    iget-object p2, v2, Lcom/bumptech/glide/manager/RequestManagerFragment;->a:Ly/a;

    invoke-virtual {p2}, Ly/a;->c()V

    :cond_0
    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p2

    invoke-virtual {p2, v2, v0}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    iget-object p0, p0, Ly/j;->d:Landroid/os/Handler;

    const/4 p2, 0x1

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    move-object v1, v2

    :cond_2
    return-object v1
.end method

.method public final d(Landroidx/fragment/app/FragmentManager;Z)Lcom/bumptech/glide/manager/SupportRequestManagerFragment;
    .locals 4
    .param p1    # Landroidx/fragment/app/FragmentManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "com.bumptech.glide.manager"

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;

    if-nez v1, :cond_2

    iget-object v1, p0, Ly/j;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;

    if-nez v2, :cond_1

    new-instance v2, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;

    invoke-direct {v2}, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;-><init>()V

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->f:Landroidx/fragment/app/Fragment;

    if-eqz p2, :cond_0

    iget-object p2, v2, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->a:Ly/a;

    invoke-virtual {p2}, Ly/a;->c()V

    :cond_0
    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p2

    invoke-virtual {p2, v2, v0}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    iget-object p0, p0, Ly/j;->d:Landroid/os/Handler;

    const/4 p2, 0x2

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    move-object v1, v2

    :cond_2
    return-object v1
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 p0, 0x0

    const/4 v1, 0x0

    move-object p1, p0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroidx/fragment/app/FragmentManager;

    iget-object p0, p0, Ly/j;->c:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/app/FragmentManager;

    iget-object p0, p0, Ly/j;->b:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    if-eqz v1, :cond_2

    if-nez p0, :cond_2

    const-string p0, "RMRetriever"

    const/4 v0, 0x5

    invoke-static {p0, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Failed to remove expected request manager fragment, manager: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v1
.end method
