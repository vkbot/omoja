.class public final Lcom/mega/engineeringmode/function/tbox/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln2/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mega/engineeringmode/function/tbox/b$g;,
        Lcom/mega/engineeringmode/function/tbox/b$c;,
        Lcom/mega/engineeringmode/function/tbox/b$b;,
        Lcom/mega/engineeringmode/function/tbox/b$h;,
        Lcom/mega/engineeringmode/function/tbox/b$e;,
        Lcom/mega/engineeringmode/function/tbox/b$f;,
        Lcom/mega/engineeringmode/function/tbox/b$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ln2/f<",
        "Lvendor/mega/tboxclient/V1_0/ITboxClientService;",
        ">;"
    }
.end annotation


# static fields
.field public static final n:Lcom/mega/engineeringmode/function/tbox/b;


# instance fields
.field public final a:Landroid/os/HandlerThread;

.field public final b:Landroid/os/Handler;

.field public final c:Lcom/mega/engineeringmode/function/tbox/b$g;

.field public final d:Lcom/mega/engineeringmode/function/tbox/b$c;

.field public final e:Landroidx/constraintlayout/core/state/c;

.field public final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final g:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lc2/b;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/mega/engineeringmode/function/tbox/b$b;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final j:Landroid/os/Handler;

.field public final k:Ljava/util/concurrent/ExecutorService;

.field public final l:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final m:Ln0/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mega/engineeringmode/function/tbox/b;

    invoke-direct {v0}, Lcom/mega/engineeringmode/function/tbox/b;-><init>()V

    sput-object v0, Lcom/mega/engineeringmode/function/tbox/b;->n:Lcom/mega/engineeringmode/function/tbox/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/constraintlayout/core/state/c;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/state/c;-><init>(I)V

    iput-object v0, p0, Lcom/mega/engineeringmode/function/tbox/b;->e:Landroidx/constraintlayout/core/state/c;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/mega/engineeringmode/function/tbox/b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/mega/engineeringmode/function/tbox/b;->g:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mega/engineeringmode/function/tbox/b;->h:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/mega/engineeringmode/function/tbox/b;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/mega/engineeringmode/function/tbox/b;->k:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/mega/engineeringmode/function/tbox/b;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/mega/engineeringmode/function/tbox/b$a;

    invoke-direct {v0}, Ln0/b$a;-><init>()V

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/mega/engineeringmode/function/tbox/b;->j:Landroid/os/Handler;

    new-instance v1, Lcom/mega/engineeringmode/function/tbox/b$c;

    invoke-direct {v1, p0}, Lcom/mega/engineeringmode/function/tbox/b$c;-><init>(Lcom/mega/engineeringmode/function/tbox/b;)V

    iput-object v1, p0, Lcom/mega/engineeringmode/function/tbox/b;->d:Lcom/mega/engineeringmode/function/tbox/b$c;

    new-instance v1, Lcom/mega/engineeringmode/function/tbox/b$g;

    invoke-direct {v1}, Lcom/mega/engineeringmode/function/tbox/a;-><init>()V

    iput-object v1, p0, Lcom/mega/engineeringmode/function/tbox/b;->c:Lcom/mega/engineeringmode/function/tbox/b$g;

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "TBoxManager"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/mega/engineeringmode/function/tbox/b;->a:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/mega/engineeringmode/function/tbox/b;->b:Landroid/os/Handler;

    new-instance v1, Ls0/b;

    const/4 v3, 0x6

    invoke-direct {v1, v3, p0}, Ls0/b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {}, Ln2/d;->b()Ln0/a;

    move-result-object v1

    iput-object v1, p0, Lcom/mega/engineeringmode/function/tbox/b;->m:Ln0/a;

    invoke-static {}, Ln2/d;->c()Ln2/d;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x1

    invoke-static {p0, v0}, Ln2/d;->d(ILn0/b$a;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/mega/engineeringmode/function/tbox/b$b;)V
    .locals 3
    .param p1    # Lcom/mega/engineeringmode/function/tbox/b$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Lcom/mega/engineeringmode/function/tbox/b;->h:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/mega/engineeringmode/function/tbox/b;->j:Landroid/os/Handler;

    new-instance v1, Ls0/h;

    const/4 v2, 0x5

    invoke-direct {v1, v2, p0, p1}, Ls0/h;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/mega/engineeringmode/function/tbox/b;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lcom/mega/engineeringmode/function/tbox/b$b;->g(ILjava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/tbox/b;->b()V

    return-void
.end method

.method public final b()V
    .locals 5

    const-string v0, "TBoxManager"

    iget-object v1, p0, Lcom/mega/engineeringmode/function/tbox/b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v3, p0, Lcom/mega/engineeringmode/function/tbox/b;->b:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    if-eq v1, v4, :cond_0

    new-instance v0, Lf/c;

    const/16 v1, 0xc

    invoke-direct {v0, v1, p0}, Lf/c;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    iget-object v1, p0, Lcom/mega/engineeringmode/function/tbox/b;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc2/b;

    if-nez v1, :cond_1

    return-void

    :cond_1
    :try_start_0
    const-string v3, "TBoxClient"

    const-string v4, "init()"

    invoke-static {v3, v4}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "TBOX_CALL"

    invoke-virtual {v1, v3}, Lc2/b;->b(Ljava/lang/String;)V

    const-string v3, "TBOX_DIAG"

    invoke-virtual {v1, v3}, Lc2/b;->b(Ljava/lang/String;)V

    const-string v3, "TBOX_INFO"

    invoke-virtual {v1, v3}, Lc2/b;->b(Ljava/lang/String;)V

    const-string v3, "TBOX_GNSS"

    invoke-virtual {v1, v3}, Lc2/b;->b(Ljava/lang/String;)V

    const-string v3, "TBOX_CONNECT_STATUS"

    invoke-virtual {v1, v3}, Lc2/b;->b(Ljava/lang/String;)V

    iget-object v1, v1, Lc2/b;->a:Lvendor/mega/tboxclient/V1_0/ITboxClientService;

    invoke-interface {v1}, Lvendor/mega/tboxclient/V1_0/ITboxClientService;->isTboxConnected()Z

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isTboxConnected: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/mega/engineeringmode/function/tbox/b;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, p0, Lcom/mega/engineeringmode/function/tbox/b;->j:Landroid/os/Handler;

    new-instance v3, Lf1/a;

    invoke-direct {v3, p0, v2}, Lf1/a;-><init>(Lcom/mega/engineeringmode/function/tbox/b;I)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "init Message hal failed"

    invoke-static {v0, v1, p0}, Lmega/log/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final c(Ljava/lang/String;Lcom/mega/engineeringmode/function/tbox/b$e;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/mega/engineeringmode/function/tbox/b$e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/mega/engineeringmode/function/tbox/b;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc2/b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/mega/engineeringmode/function/tbox/b$h;

    iget-object v1, p0, Lcom/mega/engineeringmode/function/tbox/b;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v2, p0, Lcom/mega/engineeringmode/function/tbox/b;->m:Ln0/a;

    iget-object p0, p0, Lcom/mega/engineeringmode/function/tbox/b;->k:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, p0, v1, v2, p2}, Lcom/mega/engineeringmode/function/tbox/b$h;-><init>(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/atomic/AtomicBoolean;Ln0/a;Lcom/mega/engineeringmode/function/tbox/b$e;)V

    iget-object p0, v0, Lcom/mega/engineeringmode/function/tbox/b$h;->d:Ln0/a;

    if-eqz p0, :cond_2

    iget-object p0, v0, Lcom/mega/engineeringmode/function/tbox/b$h;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, v0, Lcom/mega/engineeringmode/function/tbox/b$h;->b:Landroid/os/Handler;

    new-instance p2, Landroidx/constraintlayout/motion/widget/a;

    const/4 v1, 0x5

    invoke-direct {p2, v1, v0, p1}, Landroidx/constraintlayout/motion/widget/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance p0, Ls0/h;

    const/4 p2, 0x7

    invoke-direct {p0, p2, v0, p1}, Ls0/h;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, v0, Lcom/mega/engineeringmode/function/tbox/b$h;->a:Ljava/util/concurrent/Executor;

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 17
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string/jumbo v3, "setProperty, eventType"

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "TBoxManager"

    invoke-static {v4, v3}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/mega/engineeringmode/function/tbox/b;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc2/b;

    if-nez v3, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lcom/mega/engineeringmode/function/tbox/b;->c:Lcom/mega/engineeringmode/function/tbox/b$g;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x2

    const-string v11, "TBoxVersionRequest"

    const-string v12, "HangupRequest"

    const-string v13, "VehicleDiagRequest"

    const-string v14, "CallServiceRequest"

    const-string v15, "SetCallNumberRequest"

    const-string v10, "CallRequest"

    const/16 v16, -0x1

    sparse-switch v5, :sswitch_data_0

    :goto_0
    move/from16 v5, v16

    goto :goto_1

    :sswitch_0
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x5

    goto :goto_1

    :sswitch_1
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    const/4 v5, 0x4

    goto :goto_1

    :sswitch_2
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_0

    :cond_3
    const/4 v5, 0x3

    goto :goto_1

    :sswitch_3
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_0

    :cond_4
    move v5, v7

    goto :goto_1

    :sswitch_4
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_0

    :cond_5
    move v5, v6

    goto :goto_1

    :sswitch_5
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    goto :goto_0

    :cond_6
    const/16 v16, 0x0

    goto :goto_0

    :goto_1
    iget-object v9, v0, Lcom/mega/engineeringmode/function/tbox/a;->b:Ljava/util/ArrayList;

    const/4 v8, 0x0

    iget-object v0, v0, Lcom/mega/engineeringmode/function/tbox/a;->a:Lcom/google/gson/Gson;

    if-eqz v5, :cond_f

    if-eq v5, v6, :cond_c

    if-eq v5, v7, :cond_a

    const/4 v2, 0x3

    if-eq v5, v2, :cond_9

    const/4 v0, 0x4

    if-eq v5, v0, :cond_8

    const/4 v0, 0x5

    if-eq v5, v0, :cond_7

    new-instance v8, Landroid/util/Pair;

    invoke-direct {v8, v1, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_7
    new-instance v8, Landroid/util/Pair;

    invoke-direct {v8, v11, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_8
    new-instance v8, Landroid/util/Pair;

    invoke-direct {v8, v12, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_9
    new-instance v8, Landroid/util/Pair;

    invoke-direct {v8, v13, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_a
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_2

    :cond_b
    new-instance v2, Landroid/util/Pair;

    new-instance v5, Lcom/mega/engineeringmode/function/tbox/b$d;

    invoke-direct {v5, v8}, Lcom/mega/engineeringmode/function/tbox/b$d;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Lcom/mega/engineeringmode/function/tbox/b$d;->a(Lcom/google/gson/Gson;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {v2, v14, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v8, v2

    goto :goto_2

    :cond_c
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_d

    goto :goto_2

    :cond_d
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_e

    goto :goto_2

    :cond_e
    new-instance v8, Landroid/util/Pair;

    new-instance v5, Lcom/mega/engineeringmode/function/tbox/b$d;

    invoke-direct {v5, v2}, Lcom/mega/engineeringmode/function/tbox/b$d;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Lcom/mega/engineeringmode/function/tbox/b$d;->a(Lcom/google/gson/Gson;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {v8, v15, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_f
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_10

    goto :goto_2

    :cond_10
    new-instance v8, Landroid/util/Pair;

    new-instance v5, Lcom/mega/engineeringmode/function/tbox/b$d;

    invoke-direct {v5, v2}, Lcom/mega/engineeringmode/function/tbox/b$d;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Lcom/mega/engineeringmode/function/tbox/b$d;->a(Lcom/google/gson/Gson;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {v8, v10, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2
    if-nez v8, :cond_11

    const-string v0, "not support setProperty with "

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lmega/log/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_11
    iget-object v0, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    const-string/jumbo v2, "send "

    const-string v5, ", value : "

    invoke-static {v2, v0, v5}, Landroidx/activity/result/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Lc2/b;->a(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x73ec0dcf -> :sswitch_5
        -0x69f11eda -> :sswitch_4
        -0x5f45bbc8 -> :sswitch_3
        -0x47a93e08 -> :sswitch_2
        0x1d4cb722 -> :sswitch_1
        0x45e2074e -> :sswitch_0
    .end sparse-switch
.end method
