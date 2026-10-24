.class public Lcom/mega/nexus/statemachine/StateMachine;
.super Ljava/lang/Object;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mega/nexus/statemachine/StateMachine$SmHandler;,
        Lcom/mega/nexus/statemachine/StateMachine$LogRecords;,
        Lcom/mega/nexus/statemachine/StateMachine$LogRec;
    }
.end annotation


# static fields
.field public static final HANDLED:Z = true

.field public static final NOT_HANDLED:Z = false

.field private static final SM_INIT_CMD:I = -0x2

.field private static final SM_QUIT_CMD:I = -0x1


# instance fields
.field private mName:Ljava/lang/String;

.field private mSmHandler:Lcom/mega/nexus/statemachine/StateMachine$SmHandler;

.field private mSmThread:Landroid/os/HandlerThread;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 996
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 997
    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine;->mSmThread:Landroid/os/HandlerThread;

    .line 998
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 999
    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine;->mSmThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 1001
    .local v0, "looper":Landroid/os/Looper;
    invoke-direct {p0, p1, v0}, Lcom/mega/nexus/statemachine/StateMachine;->initStateMachine(Ljava/lang/String;Landroid/os/Looper;)V

    .line 1002
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Landroid/os/Handler;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 1018
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1019
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/mega/nexus/statemachine/StateMachine;->initStateMachine(Ljava/lang/String;Landroid/os/Looper;)V

    .line 1020
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Landroid/os/Looper;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1009
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1010
    invoke-direct {p0, p1, p2}, Lcom/mega/nexus/statemachine/StateMachine;->initStateMachine(Ljava/lang/String;Landroid/os/Looper;)V

    .line 1011
    return-void
.end method

.method static synthetic access$400(Lcom/mega/nexus/statemachine/StateMachine;)Landroid/os/HandlerThread;
    .locals 1
    .param p0, "x0"    # Lcom/mega/nexus/statemachine/StateMachine;

    .line 20
    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine;->mSmThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$402(Lcom/mega/nexus/statemachine/StateMachine;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;
    .locals 0
    .param p0, "x0"    # Lcom/mega/nexus/statemachine/StateMachine;
    .param p1, "x1"    # Landroid/os/HandlerThread;

    .line 20
    iput-object p1, p0, Lcom/mega/nexus/statemachine/StateMachine;->mSmThread:Landroid/os/HandlerThread;

    return-object p1
.end method

.method static synthetic access$502(Lcom/mega/nexus/statemachine/StateMachine;Lcom/mega/nexus/statemachine/StateMachine$SmHandler;)Lcom/mega/nexus/statemachine/StateMachine$SmHandler;
    .locals 0
    .param p0, "x0"    # Lcom/mega/nexus/statemachine/StateMachine;
    .param p1, "x1"    # Lcom/mega/nexus/statemachine/StateMachine$SmHandler;

    .line 20
    iput-object p1, p0, Lcom/mega/nexus/statemachine/StateMachine;->mSmHandler:Lcom/mega/nexus/statemachine/StateMachine$SmHandler;

    return-object p1
.end method

.method static synthetic access$700(Lcom/mega/nexus/statemachine/StateMachine;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mega/nexus/statemachine/StateMachine;

    .line 20
    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine;->mName:Ljava/lang/String;

    return-object v0
.end method

.method private initStateMachine(Ljava/lang/String;Landroid/os/Looper;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 987
    iput-object p1, p0, Lcom/mega/nexus/statemachine/StateMachine;->mName:Ljava/lang/String;

    .line 988
    new-instance v0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p0, v1}, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;-><init>(Landroid/os/Looper;Lcom/mega/nexus/statemachine/StateMachine;Lcom/mega/nexus/statemachine/StateMachine$1;)V

    iput-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine;->mSmHandler:Lcom/mega/nexus/statemachine/StateMachine$SmHandler;

    .line 989
    return-void
.end method


# virtual methods
.method public addLogRec(Ljava/lang/String;)V
    .locals 8
    .param p1, "string"    # Ljava/lang/String;

    .line 1258
    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine;->mSmHandler:Lcom/mega/nexus/statemachine/StateMachine$SmHandler;

    .line 1259
    .local v0, "smh":Lcom/mega/nexus/statemachine/StateMachine$SmHandler;
    if-nez v0, :cond_0

    return-void

    .line 1260
    :cond_0
    invoke-static {v0}, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->access$1800(Lcom/mega/nexus/statemachine/StateMachine$SmHandler;)Lcom/mega/nexus/statemachine/StateMachine$LogRecords;

    move-result-object v1

    .line 1262
    invoke-static {v0}, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->access$1200(Lcom/mega/nexus/statemachine/StateMachine$SmHandler;)Landroid/os/Message;

    move-result-object v3

    .line 1264
    invoke-static {v0}, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->access$1300(Lcom/mega/nexus/statemachine/StateMachine$SmHandler;)Lcom/mega/nexus/statemachine/IState;

    move-result-object v5

    .line 1265
    invoke-static {v0}, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->access$2100(Lcom/mega/nexus/statemachine/StateMachine$SmHandler;)[Lcom/mega/nexus/statemachine/StateMachine$SmHandler$StateInfo;

    move-result-object v2

    invoke-static {v0}, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->access$2200(Lcom/mega/nexus/statemachine/StateMachine$SmHandler;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    aget-object v2, v2, v4

    iget-object v6, v2, Lcom/mega/nexus/statemachine/StateMachine$SmHandler$StateInfo;->state:Lcom/mega/nexus/statemachine/State;

    .line 1266
    invoke-static {v0}, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->access$2300(Lcom/mega/nexus/statemachine/StateMachine$SmHandler;)Lcom/mega/nexus/statemachine/State;

    move-result-object v7

    .line 1260
    move-object v2, p0

    move-object v4, p1

    invoke-virtual/range {v1 .. v7}, Lcom/mega/nexus/statemachine/StateMachine$LogRecords;->add(Lcom/mega/nexus/statemachine/StateMachine;Landroid/os/Message;Ljava/lang/String;Lcom/mega/nexus/statemachine/IState;Lcom/mega/nexus/statemachine/IState;Lcom/mega/nexus/statemachine/IState;)V

    .line 1268
    return-void
.end method

.method public final addState(Lcom/mega/nexus/statemachine/State;)V
    .locals 2
    .param p1, "state"    # Lcom/mega/nexus/statemachine/State;

    .line 1055
    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine;->mSmHandler:Lcom/mega/nexus/statemachine/StateMachine$SmHandler;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->access$900(Lcom/mega/nexus/statemachine/StateMachine$SmHandler;Lcom/mega/nexus/statemachine/State;Lcom/mega/nexus/statemachine/State;)Lcom/mega/nexus/statemachine/StateMachine$SmHandler$StateInfo;

    .line 1056
    return-void
.end method

.method public final addState(Lcom/mega/nexus/statemachine/State;Lcom/mega/nexus/statemachine/State;)V
    .locals 1
    .param p1, "state"    # Lcom/mega/nexus/statemachine/State;
    .param p2, "parent"    # Lcom/mega/nexus/statemachine/State;

    .line 1046
    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine;->mSmHandler:Lcom/mega/nexus/statemachine/StateMachine$SmHandler;

    invoke-static {v0, p1, p2}, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->access$900(Lcom/mega/nexus/statemachine/StateMachine$SmHandler;Lcom/mega/nexus/statemachine/State;Lcom/mega/nexus/statemachine/State;)Lcom/mega/nexus/statemachine/StateMachine$SmHandler$StateInfo;

    .line 1047
    return-void
.end method

.method public final copyLogRecs()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/mega/nexus/statemachine/StateMachine$LogRec;",
            ">;"
        }
    .end annotation

    .line 1241
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 1242
    .local v0, "vlr":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/mega/nexus/statemachine/StateMachine$LogRec;>;"
    iget-object v1, p0, Lcom/mega/nexus/statemachine/StateMachine;->mSmHandler:Lcom/mega/nexus/statemachine/StateMachine$SmHandler;

    .line 1243
    .local v1, "smh":Lcom/mega/nexus/statemachine/StateMachine$SmHandler;
    if-eqz v1, :cond_0

    .line 1244
    invoke-static {v1}, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->access$1800(Lcom/mega/nexus/statemachine/StateMachine$SmHandler;)Lcom/mega/nexus/statemachine/StateMachine$LogRecords;

    move-result-object v2

    invoke-static {v2}, Lcom/mega/nexus/statemachine/StateMachine$LogRecords;->access$2000(Lcom/mega/nexus/statemachine/StateMachine$LogRecords;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mega/nexus/statemachine/StateMachine$LogRec;

    .line 1245
    .local v3, "lr":Lcom/mega/nexus/statemachine/StateMachine$LogRec;
    invoke-virtual {v0, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1246
    .end local v3    # "lr":Lcom/mega/nexus/statemachine/StateMachine$LogRec;
    goto :goto_0

    .line 1248
    :cond_0
    return-object v0
.end method

.method public final deferMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 1136
    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine;->mSmHandler:Lcom/mega/nexus/statemachine/StateMachine$SmHandler;

    invoke-static {v0, p1}, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->access$1600(Lcom/mega/nexus/statemachine/StateMachine$SmHandler;Landroid/os/Message;)V

    .line 1137
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1776
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/mega/nexus/statemachine/StateMachine;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1777
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " total records="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mega/nexus/statemachine/StateMachine;->getLogRecCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1778
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/mega/nexus/statemachine/StateMachine;->getLogRecSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1779
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " rec["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/mega/nexus/statemachine/StateMachine;->getLogRec(I)Lcom/mega/nexus/statemachine/StateMachine$LogRec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mega/nexus/statemachine/StateMachine$LogRec;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1780
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 1778
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1782
    .end local v0    # "i":I
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "curState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mega/nexus/statemachine/StateMachine;->getCurrentState()Lcom/mega/nexus/statemachine/IState;

    move-result-object v1

    invoke-interface {v1}, Lcom/mega/nexus/statemachine/IState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1783
    return-void
.end method

.method public final getCurrentMessage()Landroid/os/Message;
    .locals 2

    .line 1082
    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine;->mSmHandler:Lcom/mega/nexus/statemachine/StateMachine$SmHandler;

    .line 1083
    .local v0, "smh":Lcom/mega/nexus/statemachine/StateMachine$SmHandler;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 1084
    :cond_0
    invoke-static {v0}, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->access$1200(Lcom/mega/nexus/statemachine/StateMachine$SmHandler;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method public final getCurrentState()Lcom/mega/nexus/statemachine/IState;
    .locals 2

    .line 1092
    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine;->mSmHandler:Lcom/mega/nexus/statemachine/StateMachine$SmHandler;

    .line 1093
    .local v0, "smh":Lcom/mega/nexus/statemachine/StateMachine$SmHandler;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 1094
    :cond_0
    invoke-static {v0}, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->access$1300(Lcom/mega/nexus/statemachine/StateMachine$SmHandler;)Lcom/mega/nexus/statemachine/IState;

    move-result-object v1

    return-object v1
.end method

.method public final getHandler()Landroid/os/Handler;
    .locals 1

    .line 1299
    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine;->mSmHandler:Lcom/mega/nexus/statemachine/StateMachine$SmHandler;

    return-object v0
.end method

.method public final getLogRec(I)Lcom/mega/nexus/statemachine/StateMachine$LogRec;
    .locals 2
    .param p1, "index"    # I

    .line 1232
    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine;->mSmHandler:Lcom/mega/nexus/statemachine/StateMachine$SmHandler;

    .line 1233
    .local v0, "smh":Lcom/mega/nexus/statemachine/StateMachine$SmHandler;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 1234
    :cond_0
    invoke-static {v0}, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->access$1800(Lcom/mega/nexus/statemachine/StateMachine$SmHandler;)Lcom/mega/nexus/statemachine/StateMachine$LogRecords;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mega/nexus/statemachine/StateMachine$LogRecords;->get(I)Lcom/mega/nexus/statemachine/StateMachine$LogRec;

    move-result-object v1

    return-object v1
.end method

.method public final getLogRecCount()I
    .locals 2

    .line 1222
    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine;->mSmHandler:Lcom/mega/nexus/statemachine/StateMachine$SmHandler;

    .line 1223
    .local v0, "smh":Lcom/mega/nexus/statemachine/StateMachine$SmHandler;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 1224
    :cond_0
    invoke-static {v0}, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->access$1800(Lcom/mega/nexus/statemachine/StateMachine$SmHandler;)Lcom/mega/nexus/statemachine/StateMachine$LogRecords;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mega/nexus/statemachine/StateMachine$LogRecords;->count()I

    move-result v1

    return v1
.end method

.method public final getLogRecMaxSize()I
    .locals 2

    .line 1212
    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine;->mSmHandler:Lcom/mega/nexus/statemachine/StateMachine$SmHandler;

    .line 1213
    .local v0, "smh":Lcom/mega/nexus/statemachine/StateMachine$SmHandler;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 1214
    :cond_0
    invoke-static {v0}, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->access$1800(Lcom/mega/nexus/statemachine/StateMachine$SmHandler;)Lcom/mega/nexus/statemachine/StateMachine$LogRecords;

    move-result-object v1

    invoke-static {v1}, Lcom/mega/nexus/statemachine/StateMachine$LogRecords;->access$1900(Lcom/mega/nexus/statemachine/StateMachine$LogRecords;)I

    move-result v1

    return v1
.end method

.method public final getLogRecSize()I
    .locals 2

    .line 1202
    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine;->mSmHandler:Lcom/mega/nexus/statemachine/StateMachine$SmHandler;

    .line 1203
    .local v0, "smh":Lcom/mega/nexus/statemachine/StateMachine$SmHandler;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 1204
    :cond_0
    invoke-static {v0}, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->access$1800(Lcom/mega/nexus/statemachine/StateMachine$SmHandler;)Lcom/mega/nexus/statemachine/StateMachine$LogRecords;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mega/nexus/statemachine/StateMachine$LogRecords;->size()I

    move-result v1

    return v1
.end method

.method protected getLogRecString(Landroid/os/Message;)Ljava/lang/String;
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 1285
    const-string v0, ""

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1176
    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine;->mName:Ljava/lang/String;

    return-object v0
.end method

.method protected getWhatToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "what"    # I

    .line 1292
    const/4 v0, 0x0

    return-object v0
.end method

.method protected haltedProcessMessage(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .line 1153
    return-void
.end method

.method protected final hasDeferredMessages(I)Z
    .locals 5
    .param p1, "what"    # I

    .line 1675
    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine;->mSmHandler:Lcom/mega/nexus/statemachine/StateMachine$SmHandler;

    .line 1676
    .local v0, "smh":Lcom/mega/nexus/statemachine/StateMachine$SmHandler;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1678
    :cond_0
    invoke-static {v0}, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->access$2400(Lcom/mega/nexus/statemachine/StateMachine$SmHandler;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1679
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/Message;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1680
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Message;

    .line 1681
    .local v3, "msg":Landroid/os/Message;
    iget v4, v3, Landroid/os/Message;->what:I

    if-ne v4, p1, :cond_1

    const/4 v1, 0x1

    return v1

    .line 1682
    .end local v3    # "msg":Landroid/os/Message;
    :cond_1
    goto :goto_0

    .line 1684
    :cond_2
    return v1
.end method

.method protected final hasMessages(I)Z
    .locals 2
    .param p1, "what"    # I

    .line 1692
    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine;->mSmHandler:Lcom/mega/nexus/statemachine/StateMachine$SmHandler;

    .line 1693
    .local v0, "smh":Lcom/mega/nexus/statemachine/StateMachine$SmHandler;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 1695
    :cond_0
    invoke-virtual {v0, p1}, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->hasMessages(I)Z

    move-result v1

    return v1
.end method

.method public isDbg()Z
    .locals 2

    .line 1737
    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine;->mSmHandler:Lcom/mega/nexus/statemachine/StateMachine$SmHandler;

    .line 1738
    .local v0, "smh":Lcom/mega/nexus/statemachine/StateMachine$SmHandler;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 1740
    :cond_0
    invoke-static {v0}, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->access$2800(Lcom/mega/nexus/statemachine/StateMachine$SmHandler;)Z

    move-result v1

    return v1
.end method

.method protected final isQuit(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 1704
    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine;->mSmHandler:Lcom/mega/nexus/statemachine/StateMachine$SmHandler;

    .line 1705
    .local v0, "smh":Lcom/mega/nexus/statemachine/StateMachine$SmHandler;
    if-nez v0, :cond_1

    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 1707
    :cond_1
    invoke-static {v0, p1}, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->access$2500(Lcom/mega/nexus/statemachine/StateMachine$SmHandler;Landroid/os/Message;)Z

    move-result v1

    return v1
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 1814
    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine;->mName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1815
    return-void
.end method

.method protected logAndAddLogRec(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .line 1804
    invoke-virtual {p0, p1}, Lcom/mega/nexus/statemachine/StateMachine;->addLogRec(Ljava/lang/String;)V

    .line 1805
    invoke-virtual {p0, p1}, Lcom/mega/nexus/statemachine/StateMachine;->log(Ljava/lang/String;)V

    .line 1806
    return-void
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 1823
    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine;->mName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1824
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 1859
    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine;->mName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1860
    return-void
.end method

.method protected loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 1869
    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine;->mName:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1870
    return-void
.end method

.method protected logi(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 1841
    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine;->mName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1842
    return-void
.end method

.method protected logv(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 1832
    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine;->mName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1833
    return-void
.end method

.method protected logw(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 1850
    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine;->mName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1851
    return-void
.end method

.method public final obtainMessage()Landroid/os/Message;
    .locals 1

    .line 1313
    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine;->mSmHandler:Lcom/mega/nexus/statemachine/StateMachine$SmHandler;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public final obtainMessage(I)Landroid/os/Message;
    .locals 1
    .param p1, "what"    # I

    .line 1328
    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine;->mSmHandler:Lcom/mega/nexus/statemachine/StateMachine$SmHandler;

    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public final obtainMessage(II)Landroid/os/Message;
    .locals 2
    .param p1, "what"    # I
    .param p2, "arg1"    # I

    .line 1363
    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine;->mSmHandler:Lcom/mega/nexus/statemachine/StateMachine$SmHandler;

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public final obtainMessage(III)Landroid/os/Message;
    .locals 1
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .line 1381
    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine;->mSmHandler:Lcom/mega/nexus/statemachine/StateMachine$SmHandler;

    invoke-static {v0, p1, p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public final obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;
    .locals 1
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .line 1400
    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine;->mSmHandler:Lcom/mega/nexus/statemachine/StateMachine$SmHandler;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public final obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
    .locals 1
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .line 1345
    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine;->mSmHandler:Lcom/mega/nexus/statemachine/StateMachine$SmHandler;

    invoke-static {v0, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method protected onHalting()V
    .locals 0

    .line 1161
    return-void
.end method

.method protected onPostHandleMessage(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .line 1037
    return-void
.end method

.method protected onPreHandleMessage(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .line 1028
    return-void
.end method

.method protected onQuitting()V
    .locals 0

    .line 1170
    return-void
.end method

.method public final quit()V
    .locals 1

    .line 1715
    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine;->mSmHandler:Lcom/mega/nexus/statemachine/StateMachine$SmHandler;

    .line 1716
    .local v0, "smh":Lcom/mega/nexus/statemachine/StateMachine$SmHandler;
    if-nez v0, :cond_0

    return-void

    .line 1718
    :cond_0
    invoke-static {v0}, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->access$2600(Lcom/mega/nexus/statemachine/StateMachine$SmHandler;)V

    .line 1719
    return-void
.end method

.method public final quitNow()V
    .locals 1

    .line 1726
    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine;->mSmHandler:Lcom/mega/nexus/statemachine/StateMachine$SmHandler;

    .line 1727
    .local v0, "smh":Lcom/mega/nexus/statemachine/StateMachine$SmHandler;
    if-nez v0, :cond_0

    return-void

    .line 1729
    :cond_0
    invoke-static {v0}, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->access$2700(Lcom/mega/nexus/statemachine/StateMachine$SmHandler;)V

    .line 1730
    return-void
.end method

.method protected recordLogRec(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 1274
    const/4 v0, 0x1

    return v0
.end method

.method protected final removeDeferredMessages(I)V
    .locals 4
    .param p1, "what"    # I

    .line 1661
    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine;->mSmHandler:Lcom/mega/nexus/statemachine/StateMachine$SmHandler;

    .line 1662
    .local v0, "smh":Lcom/mega/nexus/statemachine/StateMachine$SmHandler;
    if-nez v0, :cond_0

    return-void

    .line 1664
    :cond_0
    invoke-static {v0}, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->access$2400(Lcom/mega/nexus/statemachine/StateMachine$SmHandler;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1665
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/Message;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1666
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 1667
    .local v2, "msg":Landroid/os/Message;
    iget v3, v2, Landroid/os/Message;->what:I

    if-ne v3, p1, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 1668
    .end local v2    # "msg":Landroid/os/Message;
    :cond_1
    goto :goto_0

    .line 1669
    :cond_2
    return-void
.end method

.method protected final removeMessages(I)V
    .locals 1
    .param p1, "what"    # I

    .line 1651
    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine;->mSmHandler:Lcom/mega/nexus/statemachine/StateMachine$SmHandler;

    .line 1652
    .local v0, "smh":Lcom/mega/nexus/statemachine/StateMachine$SmHandler;
    if-nez v0, :cond_0

    return-void

    .line 1654
    :cond_0
    invoke-virtual {v0, p1}, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->removeMessages(I)V

    .line 1655
    return-void
.end method

.method public final removeState(Lcom/mega/nexus/statemachine/State;)V
    .locals 1
    .param p1, "state"    # Lcom/mega/nexus/statemachine/State;

    .line 1064
    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine;->mSmHandler:Lcom/mega/nexus/statemachine/StateMachine$SmHandler;

    invoke-static {v0, p1}, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->access$1000(Lcom/mega/nexus/statemachine/StateMachine$SmHandler;Lcom/mega/nexus/statemachine/State;)V

    .line 1065
    return-void
.end method

.method public sendMessage(I)V
    .locals 2
    .param p1, "what"    # I

    .line 1410
    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine;->mSmHandler:Lcom/mega/nexus/statemachine/StateMachine$SmHandler;

    .line 1411
    .local v0, "smh":Lcom/mega/nexus/statemachine/StateMachine$SmHandler;
    if-nez v0, :cond_0

    return-void

    .line 1413
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mega/nexus/statemachine/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1414
    return-void
.end method

.method public sendMessage(II)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "arg1"    # I

    .line 1436
    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine;->mSmHandler:Lcom/mega/nexus/statemachine/StateMachine$SmHandler;

    .line 1437
    .local v0, "smh":Lcom/mega/nexus/statemachine/StateMachine$SmHandler;
    if-nez v0, :cond_0

    return-void

    .line 1439
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/mega/nexus/statemachine/StateMachine;->obtainMessage(II)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1440
    return-void
.end method

.method public sendMessage(III)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .line 1449
    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine;->mSmHandler:Lcom/mega/nexus/statemachine/StateMachine$SmHandler;

    .line 1450
    .local v0, "smh":Lcom/mega/nexus/statemachine/StateMachine$SmHandler;
    if-nez v0, :cond_0

    return-void

    .line 1452
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/mega/nexus/statemachine/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1453
    return-void
.end method

.method public sendMessage(IIILjava/lang/Object;)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .line 1462
    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine;->mSmHandler:Lcom/mega/nexus/statemachine/StateMachine$SmHandler;

    .line 1463
    .local v0, "smh":Lcom/mega/nexus/statemachine/StateMachine$SmHandler;
    if-nez v0, :cond_0

    return-void

    .line 1465
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mega/nexus/statemachine/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1466
    return-void
.end method

.method public sendMessage(ILjava/lang/Object;)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .line 1423
    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine;->mSmHandler:Lcom/mega/nexus/statemachine/StateMachine$SmHandler;

    .line 1424
    .local v0, "smh":Lcom/mega/nexus/statemachine/StateMachine$SmHandler;
    if-nez v0, :cond_0

    return-void

    .line 1426
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/mega/nexus/statemachine/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1427
    return-void
.end method

.method public sendMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 1475
    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine;->mSmHandler:Lcom/mega/nexus/statemachine/StateMachine$SmHandler;

    .line 1476
    .local v0, "smh":Lcom/mega/nexus/statemachine/StateMachine$SmHandler;
    if-nez v0, :cond_0

    return-void

    .line 1478
    :cond_0
    invoke-virtual {v0, p1}, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1479
    return-void
.end method

.method protected final sendMessageAtFrontOfQueue(I)V
    .locals 2
    .param p1, "what"    # I

    .line 1568
    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine;->mSmHandler:Lcom/mega/nexus/statemachine/StateMachine$SmHandler;

    .line 1569
    .local v0, "smh":Lcom/mega/nexus/statemachine/StateMachine$SmHandler;
    if-nez v0, :cond_0

    return-void

    .line 1571
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mega/nexus/statemachine/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 1572
    return-void
.end method

.method protected final sendMessageAtFrontOfQueue(II)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "arg1"    # I

    .line 1596
    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine;->mSmHandler:Lcom/mega/nexus/statemachine/StateMachine$SmHandler;

    .line 1597
    .local v0, "smh":Lcom/mega/nexus/statemachine/StateMachine$SmHandler;
    if-nez v0, :cond_0

    return-void

    .line 1599
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/mega/nexus/statemachine/StateMachine;->obtainMessage(II)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 1600
    return-void
.end method

.method protected final sendMessageAtFrontOfQueue(III)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .line 1611
    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine;->mSmHandler:Lcom/mega/nexus/statemachine/StateMachine$SmHandler;

    .line 1612
    .local v0, "smh":Lcom/mega/nexus/statemachine/StateMachine$SmHandler;
    if-nez v0, :cond_0

    return-void

    .line 1614
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/mega/nexus/statemachine/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 1615
    return-void
.end method

.method protected final sendMessageAtFrontOfQueue(IIILjava/lang/Object;)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .line 1625
    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine;->mSmHandler:Lcom/mega/nexus/statemachine/StateMachine$SmHandler;

    .line 1626
    .local v0, "smh":Lcom/mega/nexus/statemachine/StateMachine$SmHandler;
    if-nez v0, :cond_0

    return-void

    .line 1628
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mega/nexus/statemachine/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 1629
    return-void
.end method

.method protected final sendMessageAtFrontOfQueue(ILjava/lang/Object;)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .line 1582
    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine;->mSmHandler:Lcom/mega/nexus/statemachine/StateMachine$SmHandler;

    .line 1583
    .local v0, "smh":Lcom/mega/nexus/statemachine/StateMachine$SmHandler;
    if-nez v0, :cond_0

    return-void

    .line 1585
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/mega/nexus/statemachine/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 1586
    return-void
.end method

.method protected final sendMessageAtFrontOfQueue(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 1639
    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine;->mSmHandler:Lcom/mega/nexus/statemachine/StateMachine$SmHandler;

    .line 1640
    .local v0, "smh":Lcom/mega/nexus/statemachine/StateMachine$SmHandler;
    if-nez v0, :cond_0

    return-void

    .line 1642
    :cond_0
    invoke-virtual {v0, p1}, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 1643
    return-void
.end method

.method public sendMessageDelayed(IIIJ)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "delayMillis"    # J

    .line 1527
    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine;->mSmHandler:Lcom/mega/nexus/statemachine/StateMachine$SmHandler;

    .line 1528
    .local v0, "smh":Lcom/mega/nexus/statemachine/StateMachine$SmHandler;
    if-nez v0, :cond_0

    return-void

    .line 1530
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/mega/nexus/statemachine/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p4, p5}, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1531
    return-void
.end method

.method public sendMessageDelayed(IIILjava/lang/Object;J)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;
    .param p5, "delayMillis"    # J

    .line 1541
    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine;->mSmHandler:Lcom/mega/nexus/statemachine/StateMachine$SmHandler;

    .line 1542
    .local v0, "smh":Lcom/mega/nexus/statemachine/StateMachine$SmHandler;
    if-nez v0, :cond_0

    return-void

    .line 1544
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mega/nexus/statemachine/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p5, p6}, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1545
    return-void
.end method

.method public sendMessageDelayed(IIJ)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "delayMillis"    # J

    .line 1514
    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine;->mSmHandler:Lcom/mega/nexus/statemachine/StateMachine$SmHandler;

    .line 1515
    .local v0, "smh":Lcom/mega/nexus/statemachine/StateMachine$SmHandler;
    if-nez v0, :cond_0

    return-void

    .line 1517
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/mega/nexus/statemachine/StateMachine;->obtainMessage(II)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p3, p4}, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1518
    return-void
.end method

.method public sendMessageDelayed(IJ)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "delayMillis"    # J

    .line 1488
    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine;->mSmHandler:Lcom/mega/nexus/statemachine/StateMachine$SmHandler;

    .line 1489
    .local v0, "smh":Lcom/mega/nexus/statemachine/StateMachine$SmHandler;
    if-nez v0, :cond_0

    return-void

    .line 1491
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mega/nexus/statemachine/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1492
    return-void
.end method

.method public sendMessageDelayed(ILjava/lang/Object;J)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "delayMillis"    # J

    .line 1501
    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine;->mSmHandler:Lcom/mega/nexus/statemachine/StateMachine$SmHandler;

    .line 1502
    .local v0, "smh":Lcom/mega/nexus/statemachine/StateMachine$SmHandler;
    if-nez v0, :cond_0

    return-void

    .line 1504
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/mega/nexus/statemachine/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p3, p4}, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1505
    return-void
.end method

.method public sendMessageDelayed(Landroid/os/Message;J)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "delayMillis"    # J

    .line 1554
    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine;->mSmHandler:Lcom/mega/nexus/statemachine/StateMachine$SmHandler;

    .line 1555
    .local v0, "smh":Lcom/mega/nexus/statemachine/StateMachine$SmHandler;
    if-nez v0, :cond_0

    return-void

    .line 1557
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1558
    return-void
.end method

.method public setDbg(Z)V
    .locals 1
    .param p1, "dbg"    # Z

    .line 1750
    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine;->mSmHandler:Lcom/mega/nexus/statemachine/StateMachine$SmHandler;

    .line 1751
    .local v0, "smh":Lcom/mega/nexus/statemachine/StateMachine$SmHandler;
    if-nez v0, :cond_0

    return-void

    .line 1753
    :cond_0
    invoke-static {v0, p1}, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->access$2900(Lcom/mega/nexus/statemachine/StateMachine$SmHandler;Z)V

    .line 1754
    return-void
.end method

.method public final setInitialState(Lcom/mega/nexus/statemachine/State;)V
    .locals 1
    .param p1, "initialState"    # Lcom/mega/nexus/statemachine/State;

    .line 1074
    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine;->mSmHandler:Lcom/mega/nexus/statemachine/StateMachine$SmHandler;

    invoke-static {v0, p1}, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->access$1100(Lcom/mega/nexus/statemachine/StateMachine$SmHandler;Lcom/mega/nexus/statemachine/State;)V

    .line 1075
    return-void
.end method

.method public final setLogOnlyTransitions(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 1194
    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine;->mSmHandler:Lcom/mega/nexus/statemachine/StateMachine$SmHandler;

    invoke-static {v0}, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->access$1800(Lcom/mega/nexus/statemachine/StateMachine$SmHandler;)Lcom/mega/nexus/statemachine/StateMachine$LogRecords;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mega/nexus/statemachine/StateMachine$LogRecords;->setLogOnlyTransitions(Z)V

    .line 1195
    return-void
.end method

.method public final setLogRecSize(I)V
    .locals 1
    .param p1, "maxSize"    # I

    .line 1185
    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine;->mSmHandler:Lcom/mega/nexus/statemachine/StateMachine$SmHandler;

    invoke-static {v0}, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->access$1800(Lcom/mega/nexus/statemachine/StateMachine$SmHandler;)Lcom/mega/nexus/statemachine/StateMachine$LogRecords;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mega/nexus/statemachine/StateMachine$LogRecords;->setSize(I)V

    .line 1186
    return-void
.end method

.method public start()V
    .locals 1

    .line 1761
    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine;->mSmHandler:Lcom/mega/nexus/statemachine/StateMachine$SmHandler;

    .line 1762
    .local v0, "smh":Lcom/mega/nexus/statemachine/StateMachine$SmHandler;
    if-nez v0, :cond_0

    return-void

    .line 1765
    :cond_0
    invoke-static {v0}, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->access$3000(Lcom/mega/nexus/statemachine/StateMachine$SmHandler;)V

    .line 1766
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1787
    const-string v0, "(null)"

    .line 1788
    .local v0, "name":Ljava/lang/String;
    const-string v1, "(null)"

    .line 1790
    .local v1, "state":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/mega/nexus/statemachine/StateMachine;->mName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 1791
    iget-object v2, p0, Lcom/mega/nexus/statemachine/StateMachine;->mSmHandler:Lcom/mega/nexus/statemachine/StateMachine$SmHandler;

    invoke-static {v2}, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->access$1300(Lcom/mega/nexus/statemachine/StateMachine$SmHandler;)Lcom/mega/nexus/statemachine/IState;

    move-result-object v2

    invoke-interface {v2}, Lcom/mega/nexus/statemachine/IState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 1794
    goto :goto_0

    .line 1792
    :catch_0
    move-exception v2

    .line 1795
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public final transitionTo(Lcom/mega/nexus/statemachine/IState;)V
    .locals 1
    .param p1, "destState"    # Lcom/mega/nexus/statemachine/IState;

    .line 1112
    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine;->mSmHandler:Lcom/mega/nexus/statemachine/StateMachine$SmHandler;

    invoke-static {v0, p1}, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->access$1400(Lcom/mega/nexus/statemachine/StateMachine$SmHandler;Lcom/mega/nexus/statemachine/IState;)V

    .line 1113
    return-void
.end method

.method public final transitionToHaltingState()V
    .locals 2

    .line 1123
    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine;->mSmHandler:Lcom/mega/nexus/statemachine/StateMachine$SmHandler;

    invoke-static {v0}, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->access$1500(Lcom/mega/nexus/statemachine/StateMachine$SmHandler;)Lcom/mega/nexus/statemachine/StateMachine$SmHandler$HaltingState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->access$1400(Lcom/mega/nexus/statemachine/StateMachine$SmHandler;Lcom/mega/nexus/statemachine/IState;)V

    .line 1124
    return-void
.end method

.method protected unhandledMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 1145
    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine;->mSmHandler:Lcom/mega/nexus/statemachine/StateMachine$SmHandler;

    invoke-static {v0}, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->access$1700(Lcom/mega/nexus/statemachine/StateMachine$SmHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - unhandledMessage: msg.what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mega/nexus/statemachine/StateMachine;->loge(Ljava/lang/String;)V

    .line 1146
    :cond_0
    return-void
.end method
