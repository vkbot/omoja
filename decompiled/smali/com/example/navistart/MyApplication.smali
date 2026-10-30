.class public Lcom/example/navistart/MyApplication;
.super Landroid/app/Application;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroidx/lifecycle/ViewModelStoreOwner;


# static fields
.field public static c:Landroid/content/Context;


# instance fields
.field public b:Landroidx/lifecycle/ViewModelStore;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final attachBaseContext(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->attachBaseContext(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    sput-object p1, Lcom/example/navistart/MyApplication;->c:Landroid/content/Context;

    .line 5
    .line 6
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 7
    .line 8
    .line 9
    const-class p1, Lh0/b;

    .line 10
    .line 11
    monitor-enter p1

    .line 12
    const/4 v0, 0x0

    .line 13
    :try_start_0
    invoke-static {v0}, Lh0/b;->s(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    monitor-exit p1

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    throw v0
.end method

.method public final getViewModelStore()Landroidx/lifecycle/ViewModelStore;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/example/navistart/MyApplication;->b:Landroidx/lifecycle/ViewModelStore;

    .line 2
    .line 3
    return-object v0
.end method

.method public final onCreate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-static {p0, v0}, Lp0/b;->g(Landroid/content/Context;Z)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Landroidx/lifecycle/ViewModelStore;

    .line 9
    .line 10
    invoke-direct {v0}, Landroidx/lifecycle/ViewModelStore;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/example/navistart/MyApplication;->b:Landroidx/lifecycle/ViewModelStore;

    .line 14
    .line 15
    new-instance v0, Le0/q;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Le0/q;-><init>(Lcom/example/navistart/MyApplication;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 21
    .line 22
    .line 23
    sget-object v0, Lv1/d;->b:Lv1/d;

    .line 24
    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    new-instance v0, Lv1/d;

    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-direct {v0, v1, p0}, Lv1/d;-><init>(Landroid/content/Context;Lcom/example/navistart/MyApplication;)V

    .line 34
    .line 35
    .line 36
    sput-object v0, Lv1/d;->b:Lv1/d;

    .line 37
    .line 38
    :cond_0
    return-void
.end method
