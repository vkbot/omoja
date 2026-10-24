.class public final Lc2/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc2/b$b;,
        Lc2/b$a;
    }
.end annotation


# static fields
.field public static final d:Ljava/lang/Object;


# instance fields
.field public final a:Lvendor/mega/tboxclient/V1_0/ITboxClientService;

.field public final b:Lc2/b$b;

.field public final c:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lc2/b;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lvendor/mega/tboxclient/V1_0/ITboxClientService;Landroid/os/Looper;Lcom/mega/engineeringmode/function/tbox/b$c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lc2/b;->c:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p1, p0, Lc2/b;->a:Lvendor/mega/tboxclient/V1_0/ITboxClientService;

    new-instance p1, Lc2/b$b;

    new-instance v0, Lc2/b$a;

    invoke-direct {v0, p2, p3}, Lc2/b$a;-><init>(Landroid/os/Looper;Lcom/mega/engineeringmode/function/tbox/b$c;)V

    invoke-direct {p1}, Lvendor/mega/tboxclient/V1_0/ITboxClientServiceCallback$Stub;-><init>()V

    iput-object v0, p1, Lc2/b$b;->a:Landroid/os/Handler;

    iput-object p1, p0, Lc2/b;->b:Lc2/b$b;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lc2/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1, p2}, Lc2/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v0}, Lc2/a;->b()I

    move-result p0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    :goto_0
    const/16 p2, 0x100

    const-string v3, "TBoxClient"

    if-ne p2, p0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v1

    const-wide/16 v6, 0x7d0

    cmp-long p2, v4, v6

    if-gez p2, :cond_0

    const-wide/16 v4, 0x32

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Lc2/a;->b()I

    move-result p0

    goto :goto_0

    :catch_0
    move-exception p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Thread was interrupted while waiting for ecu HAL: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p0, :cond_1

    const-string p2, "Failed to set "

    const-string v0, ", code: "

    invoke-static {p2, p1, v0}, Landroidx/activity/result/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p0}, Lvendor/mega/message_center/V1_0/Result;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lmega/log/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "subscribe, name: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TBoxClient"

    invoke-static {v1, v0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lc2/b;->b:Lc2/b$b;

    iget-object v1, p0, Lc2/b;->a:Lvendor/mega/tboxclient/V1_0/ITboxClientService;

    invoke-interface {v1, p1, v0}, Lvendor/mega/tboxclient/V1_0/ITboxClientService;->registerRxCallback(Ljava/lang/String;Lvendor/mega/tboxclient/V1_0/ITboxClientServiceCallback;)Z

    iget-object p0, p0, Lc2/b;->c:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v0, Lc2/b;->d:Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
