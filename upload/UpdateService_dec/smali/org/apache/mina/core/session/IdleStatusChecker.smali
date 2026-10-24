.class public Lorg/apache/mina/core/session/IdleStatusChecker;
.super Ljava/lang/Object;
.source "IdleStatusChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/core/session/IdleStatusChecker$SessionCloseListener;,
        Lorg/apache/mina/core/session/IdleStatusChecker$NotifyingTask;
    }
.end annotation


# instance fields
.field private final notifyingTask:Lorg/apache/mina/core/session/IdleStatusChecker$NotifyingTask;

.field private final sessionCloseListener:Lorg/apache/mina/core/future/IoFutureListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/mina/core/future/IoFutureListener<",
            "Lorg/apache/mina/core/future/IoFuture;",
            ">;"
        }
    .end annotation
.end field

.field private final sessions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/apache/mina/core/session/AbstractIoSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lorg/apache/mina/util/ConcurrentHashSet;

    invoke-direct {v0}, Lorg/apache/mina/util/ConcurrentHashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/core/session/IdleStatusChecker;->sessions:Ljava/util/Set;

    .line 49
    new-instance v0, Lorg/apache/mina/core/session/IdleStatusChecker$NotifyingTask;

    invoke-direct {v0, p0}, Lorg/apache/mina/core/session/IdleStatusChecker$NotifyingTask;-><init>(Lorg/apache/mina/core/session/IdleStatusChecker;)V

    iput-object v0, p0, Lorg/apache/mina/core/session/IdleStatusChecker;->notifyingTask:Lorg/apache/mina/core/session/IdleStatusChecker$NotifyingTask;

    .line 51
    new-instance v0, Lorg/apache/mina/core/session/IdleStatusChecker$SessionCloseListener;

    invoke-direct {v0, p0}, Lorg/apache/mina/core/session/IdleStatusChecker$SessionCloseListener;-><init>(Lorg/apache/mina/core/session/IdleStatusChecker;)V

    iput-object v0, p0, Lorg/apache/mina/core/session/IdleStatusChecker;->sessionCloseListener:Lorg/apache/mina/core/future/IoFutureListener;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lorg/apache/mina/core/session/IdleStatusChecker;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/session/IdleStatusChecker;

    .line 39
    iget-object v0, p0, Lorg/apache/mina/core/session/IdleStatusChecker;->sessions:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public addSession(Lorg/apache/mina/core/session/AbstractIoSession;)V
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/core/session/AbstractIoSession;

    .line 65
    iget-object v0, p0, Lorg/apache/mina/core/session/IdleStatusChecker;->sessions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 66
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getCloseFuture()Lorg/apache/mina/core/future/CloseFuture;

    move-result-object v0

    .line 69
    .local v0, "closeFuture":Lorg/apache/mina/core/future/CloseFuture;
    iget-object v1, p0, Lorg/apache/mina/core/session/IdleStatusChecker;->sessionCloseListener:Lorg/apache/mina/core/future/IoFutureListener;

    invoke-interface {v0, v1}, Lorg/apache/mina/core/future/CloseFuture;->addListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/CloseFuture;

    .line 70
    return-void
.end method

.method public getNotifyingTask()Lorg/apache/mina/core/session/IdleStatusChecker$NotifyingTask;
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/apache/mina/core/session/IdleStatusChecker;->notifyingTask:Lorg/apache/mina/core/session/IdleStatusChecker$NotifyingTask;

    return-object v0
.end method
