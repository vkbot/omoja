.class public Lcom/android/managedprovisioning/provisioning/ProvisioningManagerHelper;
.super Ljava/lang/Object;
.source "ProvisioningManagerHelper.java"


# static fields
.field private static final SERVICE_INTENT:Landroid/content/Intent;


# instance fields
.field private mCallbacks:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/managedprovisioning/provisioning/ProvisioningManagerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mLastCallback:I

.field private mLastError:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mUiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 45
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/android/managedprovisioning/provisioning/ProvisioningService;

    .line 47
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.managedprovisioning"

    invoke-direct {v1, v3, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/managedprovisioning/provisioning/ProvisioningManagerHelper;->SERVICE_INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/managedprovisioning/provisioning/ProvisioningManagerHelper;->mCallbacks:Ljava/util/List;

    const/4 v0, 0x0

    .line 55
    iput v0, p0, Lcom/android/managedprovisioning/provisioning/ProvisioningManagerHelper;->mLastCallback:I

    .line 60
    iput-object p1, p0, Lcom/android/managedprovisioning/provisioning/ProvisioningManagerHelper;->mContext:Landroid/content/Context;

    .line 61
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/managedprovisioning/provisioning/ProvisioningManagerHelper;->mUiHandler:Landroid/os/Handler;

    return-void
.end method

.method private callLastCallbackLocked(Lcom/android/managedprovisioning/provisioning/ProvisioningManagerCallback;)V
    .locals 2

    .line 103
    iget v0, p0, Lcom/android/managedprovisioning/provisioning/ProvisioningManagerHelper;->mLastCallback:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const-string p0, "No previous callback"

    .line 114
    invoke-static {p0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 111
    :cond_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/managedprovisioning/provisioning/-$$Lambda$LjHuY_MfhVzzFPTipfFDu9wWFLY;

    invoke-direct {v0, p1}, Lcom/android/managedprovisioning/provisioning/-$$Lambda$LjHuY_MfhVzzFPTipfFDu9wWFLY;-><init>(Lcom/android/managedprovisioning/provisioning/ProvisioningManagerCallback;)V

    invoke-direct {p0, p1, v0}, Lcom/android/managedprovisioning/provisioning/ProvisioningManagerHelper;->postCallbackToUiHandler(Lcom/android/managedprovisioning/provisioning/ProvisioningManagerCallback;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/android/managedprovisioning/provisioning/ProvisioningManagerHelper;->mLastError:Landroid/util/Pair;

    .line 106
    new-instance v1, Lcom/android/managedprovisioning/provisioning/-$$Lambda$ProvisioningManagerHelper$gteLpkhxZAaxrsgQxAbxiLY9doY;

    invoke-direct {v1, p1, v0}, Lcom/android/managedprovisioning/provisioning/-$$Lambda$ProvisioningManagerHelper$gteLpkhxZAaxrsgQxAbxiLY9doY;-><init>(Lcom/android/managedprovisioning/provisioning/ProvisioningManagerCallback;Landroid/util/Pair;)V

    invoke-direct {p0, p1, v1}, Lcom/android/managedprovisioning/provisioning/ProvisioningManagerHelper;->postCallbackToUiHandler(Lcom/android/managedprovisioning/provisioning/ProvisioningManagerCallback;Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private isCallbackStillRequired(Lcom/android/managedprovisioning/provisioning/ProvisioningManagerCallback;)Z
    .locals 0

    .line 168
    iget-object p0, p0, Lcom/android/managedprovisioning/provisioning/ProvisioningManagerHelper;->mCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$callLastCallbackLocked$1(Lcom/android/managedprovisioning/provisioning/ProvisioningManagerCallback;Landroid/util/Pair;)V
    .locals 2

    .line 107
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p0, v0, v1, p1}, Lcom/android/managedprovisioning/provisioning/ProvisioningManagerCallback;->error(IIZ)V

    return-void
.end method

.method static synthetic lambda$error$0(Lcom/android/managedprovisioning/provisioning/ProvisioningManagerCallback;IIZ)V
    .locals 0

    .line 94
    invoke-interface {p0, p1, p2, p3}, Lcom/android/managedprovisioning/provisioning/ProvisioningManagerCallback;->error(IIZ)V

    return-void
.end method

.method private synthetic lambda$postCallbackToUiHandler$2(Lcom/android/managedprovisioning/provisioning/ProvisioningManagerCallback;Ljava/lang/Runnable;)V
    .locals 0

    .line 159
    monitor-enter p0

    .line 160
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/managedprovisioning/provisioning/ProvisioningManagerHelper;->isCallbackStillRequired(Lcom/android/managedprovisioning/provisioning/ProvisioningManagerCallback;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 161
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 163
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private postCallbackToUiHandler(Lcom/android/managedprovisioning/provisioning/ProvisioningManagerCallback;Ljava/lang/Runnable;)V
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/android/managedprovisioning/provisioning/ProvisioningManagerHelper;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/managedprovisioning/provisioning/-$$Lambda$ProvisioningManagerHelper$UbRcOTSnxrm0r2UqpZUdRetuE5E;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/managedprovisioning/provisioning/-$$Lambda$ProvisioningManagerHelper$UbRcOTSnxrm0r2UqpZUdRetuE5E;-><init>(Lcom/android/managedprovisioning/provisioning/ProvisioningManagerHelper;Lcom/android/managedprovisioning/provisioning/ProvisioningManagerCallback;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public cancelProvisioning(Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;)Z
    .locals 0

    .line 119
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 121
    :try_start_0
    invoke-virtual {p1}, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->cancel()V

    const/4 p1, 0x1

    .line 122
    monitor-exit p0

    return p1

    :cond_0
    const-string p1, "Trying to cancel provisioning, but controller is null"

    .line 124
    invoke-static {p1}, Lcom/android/managedprovisioning/common/ProvisionLogger;->loge(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 125
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 127
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public clearResourcesLocked()V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/android/managedprovisioning/provisioning/ProvisioningManagerHelper;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    const/4 v0, 0x0

    .line 142
    iput-object v0, p0, Lcom/android/managedprovisioning/provisioning/ProvisioningManagerHelper;->mHandlerThread:Landroid/os/HandlerThread;

    .line 143
    iget-object p0, p0, Lcom/android/managedprovisioning/provisioning/ProvisioningManagerHelper;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/managedprovisioning/provisioning/ProvisioningManagerHelper;->SERVICE_INTENT:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    :cond_0
    return-void
.end method

.method public error(IIZ)V
    .locals 3

    .line 91
    monitor-enter p0

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/android/managedprovisioning/provisioning/ProvisioningManagerHelper;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/managedprovisioning/provisioning/ProvisioningManagerCallback;

    .line 93
    new-instance v2, Lcom/android/managedprovisioning/provisioning/-$$Lambda$ProvisioningManagerHelper$EQGLBV18tMHiUEOKmWIIymiXhvw;

    invoke-direct {v2, v1, p1, p2, p3}, Lcom/android/managedprovisioning/provisioning/-$$Lambda$ProvisioningManagerHelper$EQGLBV18tMHiUEOKmWIIymiXhvw;-><init>(Lcom/android/managedprovisioning/provisioning/ProvisioningManagerCallback;IIZ)V

    invoke-direct {p0, v1, v2}, Lcom/android/managedprovisioning/provisioning/ProvisioningManagerHelper;->postCallbackToUiHandler(Lcom/android/managedprovisioning/provisioning/ProvisioningManagerCallback;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 97
    iput v0, p0, Lcom/android/managedprovisioning/provisioning/ProvisioningManagerHelper;->mLastCallback:I

    .line 98
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    iput-object p1, p0, Lcom/android/managedprovisioning/provisioning/ProvisioningManagerHelper;->mLastError:Landroid/util/Pair;

    .line 99
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public synthetic lambda$postCallbackToUiHandler$2$ProvisioningManagerHelper(Lcom/android/managedprovisioning/provisioning/ProvisioningManagerCallback;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/managedprovisioning/provisioning/ProvisioningManagerHelper;->lambda$postCallbackToUiHandler$2(Lcom/android/managedprovisioning/provisioning/ProvisioningManagerCallback;Ljava/lang/Runnable;)V

    return-void
.end method

.method public notifyPreFinalizationCompleted()V
    .locals 3

    .line 131
    monitor-enter p0

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/android/managedprovisioning/provisioning/ProvisioningManagerHelper;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/managedprovisioning/provisioning/ProvisioningManagerCallback;

    .line 133
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/managedprovisioning/provisioning/-$$Lambda$LjHuY_MfhVzzFPTipfFDu9wWFLY;

    invoke-direct {v2, v1}, Lcom/android/managedprovisioning/provisioning/-$$Lambda$LjHuY_MfhVzzFPTipfFDu9wWFLY;-><init>(Lcom/android/managedprovisioning/provisioning/ProvisioningManagerCallback;)V

    invoke-direct {p0, v1, v2}, Lcom/android/managedprovisioning/provisioning/ProvisioningManagerHelper;->postCallbackToUiHandler(Lcom/android/managedprovisioning/provisioning/ProvisioningManagerCallback;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 135
    iput v0, p0, Lcom/android/managedprovisioning/provisioning/ProvisioningManagerHelper;->mLastCallback:I

    .line 136
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public registerListener(Lcom/android/managedprovisioning/provisioning/ProvisioningManagerCallback;)V
    .locals 1

    .line 78
    monitor-enter p0

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/android/managedprovisioning/provisioning/ProvisioningManagerHelper;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    invoke-direct {p0, p1}, Lcom/android/managedprovisioning/provisioning/ProvisioningManagerHelper;->callLastCallbackLocked(Lcom/android/managedprovisioning/provisioning/ProvisioningManagerCallback;)V

    .line 81
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public startNewProvisioningLocked(Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;)V
    .locals 4

    .line 65
    iget-object v0, p0, Lcom/android/managedprovisioning/provisioning/ProvisioningManagerHelper;->mHandlerThread:Landroid/os/HandlerThread;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Landroid/os/HandlerThread;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 67
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v3, "%s Worker"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/managedprovisioning/provisioning/ProvisioningManagerHelper;->mHandlerThread:Landroid/os/HandlerThread;

    .line 68
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 69
    iget-object v0, p0, Lcom/android/managedprovisioning/provisioning/ProvisioningManagerHelper;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/managedprovisioning/provisioning/ProvisioningManagerHelper;->SERVICE_INTENT:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 71
    :cond_0
    iput v1, p0, Lcom/android/managedprovisioning/provisioning/ProvisioningManagerHelper;->mLastCallback:I

    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lcom/android/managedprovisioning/provisioning/ProvisioningManagerHelper;->mLastError:Landroid/util/Pair;

    .line 74
    iget-object p0, p0, Lcom/android/managedprovisioning/provisioning/ProvisioningManagerHelper;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->start(Landroid/os/Looper;)V

    return-void
.end method

.method public unregisterListener(Lcom/android/managedprovisioning/provisioning/ProvisioningManagerCallback;)V
    .locals 1

    .line 85
    monitor-enter p0

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/android/managedprovisioning/provisioning/ProvisioningManagerHelper;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 87
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
