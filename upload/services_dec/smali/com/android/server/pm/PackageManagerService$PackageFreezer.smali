.class Lcom/android/server/pm/PackageManagerService$PackageFreezer;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageFreezer"
.end annotation


# instance fields
.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private final mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mPackageName:Ljava/lang/String;

.field private final mWeFroze:Z

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 1

    .line 23330
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23321
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 23322
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 23331
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mPackageName:Ljava/lang/String;

    .line 23332
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mWeFroze:Z

    .line 23333
    const-string v0, "close"

    invoke-virtual {p1, v0}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 23334
    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ILjava/lang/String;)V
    .locals 4
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "killReason"    # Ljava/lang/String;

    .line 23336
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23321
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 23322
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 23337
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 23338
    :try_start_0
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mPackageName:Ljava/lang/String;

    .line 23339
    iget-object v1, p1, Lcom/android/server/pm/PackageManagerService;->mFrozenPackages:Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mWeFroze:Z

    .line 23341
    iget-object v1, p1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v1, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 23342
    .local v1, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v1, :cond_0

    .line 23343
    iget-object v2, v1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    iget v3, v1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {p1, v2, v3, p3, p4}, Lcom/android/server/pm/PackageManagerService;->access$5400(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;IILjava/lang/String;)V

    .line 23345
    .end local v1    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23346
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v0, "close"

    invoke-virtual {p1, v0}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 23347
    return-void

    .line 23345
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 23361
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 23362
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23363
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 23364
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mWeFroze:Z

    if-eqz v1, :cond_0

    .line 23365
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mFrozenPackages:Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 23367
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 23369
    :cond_1
    :goto_0
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 23352
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 23353
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23355
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 23356
    nop

    .line 23357
    return-void

    .line 23355
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 23356
    throw v0
.end method
