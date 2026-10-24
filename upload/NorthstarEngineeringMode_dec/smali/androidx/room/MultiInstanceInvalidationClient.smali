.class Landroidx/room/MultiInstanceInvalidationClient;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final mCallback:Landroidx/room/IMultiInstanceInvalidationCallback;

.field mClientId:I

.field mContext:Landroid/content/Context;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field final mExecutor:Ljava/util/concurrent/Executor;

.field final mInvalidationTracker:Landroidx/room/InvalidationTracker;

.field final mName:Ljava/lang/String;

.field final mObserver:Landroidx/room/InvalidationTracker$Observer;

.field final mRemoveObserverRunnable:Ljava/lang/Runnable;

.field mService:Landroidx/room/IMultiInstanceInvalidationService;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field final mServiceConnection:Landroid/content/ServiceConnection;

.field final mSetUpRunnable:Ljava/lang/Runnable;

.field final mStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mTearDownRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroidx/room/InvalidationTracker;Ljava/util/concurrent/Executor;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/room/MultiInstanceInvalidationClient$1;

    invoke-direct {v0, p0}, Landroidx/room/MultiInstanceInvalidationClient$1;-><init>(Landroidx/room/MultiInstanceInvalidationClient;)V

    iput-object v0, p0, Landroidx/room/MultiInstanceInvalidationClient;->mCallback:Landroidx/room/IMultiInstanceInvalidationCallback;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroidx/room/MultiInstanceInvalidationClient;->mStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Landroidx/room/MultiInstanceInvalidationClient$2;

    invoke-direct {v0, p0}, Landroidx/room/MultiInstanceInvalidationClient$2;-><init>(Landroidx/room/MultiInstanceInvalidationClient;)V

    iput-object v0, p0, Landroidx/room/MultiInstanceInvalidationClient;->mServiceConnection:Landroid/content/ServiceConnection;

    new-instance v1, Landroidx/room/MultiInstanceInvalidationClient$3;

    invoke-direct {v1, p0}, Landroidx/room/MultiInstanceInvalidationClient$3;-><init>(Landroidx/room/MultiInstanceInvalidationClient;)V

    iput-object v1, p0, Landroidx/room/MultiInstanceInvalidationClient;->mSetUpRunnable:Ljava/lang/Runnable;

    new-instance v1, Landroidx/room/MultiInstanceInvalidationClient$4;

    invoke-direct {v1, p0}, Landroidx/room/MultiInstanceInvalidationClient$4;-><init>(Landroidx/room/MultiInstanceInvalidationClient;)V

    iput-object v1, p0, Landroidx/room/MultiInstanceInvalidationClient;->mRemoveObserverRunnable:Ljava/lang/Runnable;

    new-instance v1, Landroidx/room/MultiInstanceInvalidationClient$5;

    invoke-direct {v1, p0}, Landroidx/room/MultiInstanceInvalidationClient$5;-><init>(Landroidx/room/MultiInstanceInvalidationClient;)V

    iput-object v1, p0, Landroidx/room/MultiInstanceInvalidationClient;->mTearDownRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/room/MultiInstanceInvalidationClient;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroidx/room/MultiInstanceInvalidationClient;->mName:Ljava/lang/String;

    iput-object p3, p0, Landroidx/room/MultiInstanceInvalidationClient;->mInvalidationTracker:Landroidx/room/InvalidationTracker;

    iput-object p4, p0, Landroidx/room/MultiInstanceInvalidationClient;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance p1, Landroidx/room/MultiInstanceInvalidationClient$6;

    iget-object p2, p3, Landroidx/room/InvalidationTracker;->mTableNames:[Ljava/lang/String;

    invoke-direct {p1, p0, p2}, Landroidx/room/MultiInstanceInvalidationClient$6;-><init>(Landroidx/room/MultiInstanceInvalidationClient;[Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/room/MultiInstanceInvalidationClient;->mObserver:Landroidx/room/InvalidationTracker$Observer;

    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Landroidx/room/MultiInstanceInvalidationClient;->mContext:Landroid/content/Context;

    const-class p3, Landroidx/room/MultiInstanceInvalidationService;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object p0, p0, Landroidx/room/MultiInstanceInvalidationClient;->mContext:Landroid/content/Context;

    const/4 p2, 0x1

    invoke-virtual {p0, p1, v0, p2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method


# virtual methods
.method public stop()V
    .locals 3

    iget-object v0, p0, Landroidx/room/MultiInstanceInvalidationClient;->mStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/room/MultiInstanceInvalidationClient;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Landroidx/room/MultiInstanceInvalidationClient;->mTearDownRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
