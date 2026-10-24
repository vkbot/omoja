.class public Lcom/mega/update/manager/UpdateNotifier;
.super Ljava/lang/Object;
.source "UpdateNotifier.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UpdateNotifier"

.field private static sInstance:Lcom/mega/update/manager/UpdateNotifier;


# instance fields
.field private mCallbackSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/mega/update/manager/UpdateCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mOldState:Lcom/mega/update/service/UpdateState;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mega/update/manager/UpdateNotifier;->mCallbackSet:Ljava/util/Set;

    .line 17
    return-void
.end method

.method public static declared-synchronized self()Lcom/mega/update/manager/UpdateNotifier;
    .locals 2

    const-class v0, Lcom/mega/update/manager/UpdateNotifier;

    monitor-enter v0

    .line 20
    :try_start_0
    sget-object v1, Lcom/mega/update/manager/UpdateNotifier;->sInstance:Lcom/mega/update/manager/UpdateNotifier;

    if-nez v1, :cond_0

    .line 21
    new-instance v1, Lcom/mega/update/manager/UpdateNotifier;

    invoke-direct {v1}, Lcom/mega/update/manager/UpdateNotifier;-><init>()V

    sput-object v1, Lcom/mega/update/manager/UpdateNotifier;->sInstance:Lcom/mega/update/manager/UpdateNotifier;

    .line 23
    :cond_0
    sget-object v1, Lcom/mega/update/manager/UpdateNotifier;->sInstance:Lcom/mega/update/manager/UpdateNotifier;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 19
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public declared-synchronized bind(Lcom/mega/update/manager/UpdateCallback;)Z
    .locals 1
    .param p1, "callback"    # Lcom/mega/update/manager/UpdateCallback;

    monitor-enter p0

    .line 27
    :try_start_0
    iget-object v0, p0, Lcom/mega/update/manager/UpdateNotifier;->mCallbackSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 27
    .end local p0    # "this":Lcom/mega/update/manager/UpdateNotifier;
    .end local p1    # "callback":Lcom/mega/update/manager/UpdateCallback;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized notifyStateChange(Lcom/mega/update/service/UpdateState;)V
    .locals 2
    .param p1, "state"    # Lcom/mega/update/service/UpdateState;

    monitor-enter p0

    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/mega/update/manager/UpdateNotifier;->mOldState:Lcom/mega/update/service/UpdateState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mega/update/manager/UpdateNotifier;->mOldState:Lcom/mega/update/service/UpdateState;

    invoke-virtual {v0, p1}, Lcom/mega/update/service/UpdateState;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 36
    monitor-exit p0

    return-void

    .line 38
    .end local p0    # "this":Lcom/mega/update/manager/UpdateNotifier;
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/mega/update/manager/UpdateNotifier;->mCallbackSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mega/update/manager/UpdateCallback;

    .line 39
    .local v1, "callback":Lcom/mega/update/manager/UpdateCallback;
    invoke-interface {v1, p1}, Lcom/mega/update/manager/UpdateCallback;->onStatusUpdate(Lcom/mega/update/service/UpdateState;)V

    .line 40
    .end local v1    # "callback":Lcom/mega/update/manager/UpdateCallback;
    goto :goto_0

    .line 41
    :cond_1
    iput-object p1, p0, Lcom/mega/update/manager/UpdateNotifier;->mOldState:Lcom/mega/update/service/UpdateState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    monitor-exit p0

    return-void

    .line 34
    .end local p1    # "state":Lcom/mega/update/service/UpdateState;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unbind(Lcom/mega/update/manager/UpdateCallback;)Z
    .locals 1
    .param p1, "callback"    # Lcom/mega/update/manager/UpdateCallback;

    monitor-enter p0

    .line 31
    :try_start_0
    iget-object v0, p0, Lcom/mega/update/manager/UpdateNotifier;->mCallbackSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 31
    .end local p0    # "this":Lcom/mega/update/manager/UpdateNotifier;
    .end local p1    # "callback":Lcom/mega/update/manager/UpdateCallback;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
