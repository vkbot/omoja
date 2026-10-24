.class Lcom/mega/nexus/statemachine/StateMachine$SmHandler;
.super Landroid/os/Handler;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/nexus/statemachine/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SmHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mega/nexus/statemachine/StateMachine$SmHandler$QuittingState;,
        Lcom/mega/nexus/statemachine/StateMachine$SmHandler$HaltingState;,
        Lcom/mega/nexus/statemachine/StateMachine$SmHandler$StateInfo;
    }
.end annotation


# static fields
.field private static final SM_HANDLER_OBJ:Ljava/lang/Object;


# instance fields
.field private mDbg:Z

.field private mDeferredMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mDestState:Lcom/mega/nexus/statemachine/State;

.field private mHaltingState:Lcom/mega/nexus/statemachine/StateMachine$SmHandler$HaltingState;

.field private mHasQuit:Z

.field private mInitialState:Lcom/mega/nexus/statemachine/State;

.field private mIsConstructionCompleted:Z

.field private mLogRecords:Lcom/mega/nexus/statemachine/StateMachine$LogRecords;

.field private mMsg:Landroid/os/Message;

.field private mQuittingState:Lcom/mega/nexus/statemachine/StateMachine$SmHandler$QuittingState;

.field private mSm:Lcom/mega/nexus/statemachine/StateMachine;

.field private mStateInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/mega/nexus/statemachine/State;",
            "Lcom/mega/nexus/statemachine/StateMachine$SmHandler$StateInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mStateStack:[Lcom/mega/nexus/statemachine/StateMachine$SmHandler$StateInfo;

.field private mStateStackTopIndex:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mTempStateStack:[Lcom/mega/nexus/statemachine/StateMachine$SmHandler$StateInfo;

.field private mTempStateStackCount:I

.field private mTransitionInProgress:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 300
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->SM_HANDLER_OBJ:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;Lcom/mega/nexus/statemachine/StateMachine;)V
    .locals 4
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "sm"    # Lcom/mega/nexus/statemachine/StateMachine;

    .line 898
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 290
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mHasQuit:Z

    .line 295
    iput-boolean v0, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mDbg:Z

    .line 310
    new-instance v1, Lcom/mega/nexus/statemachine/StateMachine$LogRecords;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/mega/nexus/statemachine/StateMachine$LogRecords;-><init>(Lcom/mega/nexus/statemachine/StateMachine$1;)V

    iput-object v1, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mLogRecords:Lcom/mega/nexus/statemachine/StateMachine$LogRecords;

    .line 325
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, -0x1

    invoke-direct {v1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mStateStackTopIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 340
    new-instance v1, Lcom/mega/nexus/statemachine/StateMachine$SmHandler$HaltingState;

    invoke-direct {v1, p0, v2}, Lcom/mega/nexus/statemachine/StateMachine$SmHandler$HaltingState;-><init>(Lcom/mega/nexus/statemachine/StateMachine$SmHandler;Lcom/mega/nexus/statemachine/StateMachine$1;)V

    iput-object v1, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mHaltingState:Lcom/mega/nexus/statemachine/StateMachine$SmHandler$HaltingState;

    .line 346
    new-instance v1, Lcom/mega/nexus/statemachine/StateMachine$SmHandler$QuittingState;

    invoke-direct {v1, p0, v2}, Lcom/mega/nexus/statemachine/StateMachine$SmHandler$QuittingState;-><init>(Lcom/mega/nexus/statemachine/StateMachine$SmHandler;Lcom/mega/nexus/statemachine/StateMachine$1;)V

    iput-object v1, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mQuittingState:Lcom/mega/nexus/statemachine/StateMachine$SmHandler$QuittingState;

    .line 388
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    .line 407
    iput-boolean v0, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mTransitionInProgress:Z

    .line 412
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    .line 899
    iput-object p2, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mSm:Lcom/mega/nexus/statemachine/StateMachine;

    .line 901
    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mHaltingState:Lcom/mega/nexus/statemachine/StateMachine$SmHandler$HaltingState;

    invoke-direct {p0, v0, v2}, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->addState(Lcom/mega/nexus/statemachine/State;Lcom/mega/nexus/statemachine/State;)Lcom/mega/nexus/statemachine/StateMachine$SmHandler$StateInfo;

    .line 902
    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mQuittingState:Lcom/mega/nexus/statemachine/StateMachine$SmHandler$QuittingState;

    invoke-direct {p0, v0, v2}, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->addState(Lcom/mega/nexus/statemachine/State;Lcom/mega/nexus/statemachine/State;)Lcom/mega/nexus/statemachine/StateMachine$SmHandler$StateInfo;

    .line 903
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Looper;Lcom/mega/nexus/statemachine/StateMachine;Lcom/mega/nexus/statemachine/StateMachine$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Looper;
    .param p2, "x1"    # Lcom/mega/nexus/statemachine/StateMachine;
    .param p3, "x2"    # Lcom/mega/nexus/statemachine/StateMachine$1;

    .line 285
    invoke-direct {p0, p1, p2}, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;-><init>(Landroid/os/Looper;Lcom/mega/nexus/statemachine/StateMachine;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/mega/nexus/statemachine/StateMachine$SmHandler;Lcom/mega/nexus/statemachine/State;)V
    .locals 0
    .param p0, "x0"    # Lcom/mega/nexus/statemachine/StateMachine$SmHandler;
    .param p1, "x1"    # Lcom/mega/nexus/statemachine/State;

    .line 285
    invoke-direct {p0, p1}, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->removeState(Lcom/mega/nexus/statemachine/State;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/mega/nexus/statemachine/StateMachine$SmHandler;Lcom/mega/nexus/statemachine/State;)V
    .locals 0
    .param p0, "x0"    # Lcom/mega/nexus/statemachine/StateMachine$SmHandler;
    .param p1, "x1"    # Lcom/mega/nexus/statemachine/State;

    .line 285
    invoke-direct {p0, p1}, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->setInitialState(Lcom/mega/nexus/statemachine/State;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/mega/nexus/statemachine/StateMachine$SmHandler;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/mega/nexus/statemachine/StateMachine$SmHandler;

    .line 285
    invoke-direct {p0}, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/mega/nexus/statemachine/StateMachine$SmHandler;)Lcom/mega/nexus/statemachine/IState;
    .locals 1
    .param p0, "x0"    # Lcom/mega/nexus/statemachine/StateMachine$SmHandler;

    .line 285
    invoke-direct {p0}, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->getCurrentState()Lcom/mega/nexus/statemachine/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/mega/nexus/statemachine/StateMachine$SmHandler;Lcom/mega/nexus/statemachine/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/mega/nexus/statemachine/StateMachine$SmHandler;
    .param p1, "x1"    # Lcom/mega/nexus/statemachine/IState;

    .line 285
    invoke-direct {p0, p1}, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->transitionTo(Lcom/mega/nexus/statemachine/IState;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/mega/nexus/statemachine/StateMachine$SmHandler;)Lcom/mega/nexus/statemachine/StateMachine$SmHandler$HaltingState;
    .locals 1
    .param p0, "x0"    # Lcom/mega/nexus/statemachine/StateMachine$SmHandler;

    .line 285
    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mHaltingState:Lcom/mega/nexus/statemachine/StateMachine$SmHandler$HaltingState;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/mega/nexus/statemachine/StateMachine$SmHandler;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/mega/nexus/statemachine/StateMachine$SmHandler;
    .param p1, "x1"    # Landroid/os/Message;

    .line 285
    invoke-direct {p0, p1}, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/mega/nexus/statemachine/StateMachine$SmHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mega/nexus/statemachine/StateMachine$SmHandler;

    .line 285
    iget-boolean v0, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mDbg:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/mega/nexus/statemachine/StateMachine$SmHandler;)Lcom/mega/nexus/statemachine/StateMachine$LogRecords;
    .locals 1
    .param p0, "x0"    # Lcom/mega/nexus/statemachine/StateMachine$SmHandler;

    .line 285
    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mLogRecords:Lcom/mega/nexus/statemachine/StateMachine$LogRecords;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/mega/nexus/statemachine/StateMachine$SmHandler;)[Lcom/mega/nexus/statemachine/StateMachine$SmHandler$StateInfo;
    .locals 1
    .param p0, "x0"    # Lcom/mega/nexus/statemachine/StateMachine$SmHandler;

    .line 285
    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mStateStack:[Lcom/mega/nexus/statemachine/StateMachine$SmHandler$StateInfo;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/mega/nexus/statemachine/StateMachine$SmHandler;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lcom/mega/nexus/statemachine/StateMachine$SmHandler;

    .line 285
    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mStateStackTopIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/mega/nexus/statemachine/StateMachine$SmHandler;)Lcom/mega/nexus/statemachine/State;
    .locals 1
    .param p0, "x0"    # Lcom/mega/nexus/statemachine/StateMachine$SmHandler;

    .line 285
    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mDestState:Lcom/mega/nexus/statemachine/State;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/mega/nexus/statemachine/StateMachine$SmHandler;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/mega/nexus/statemachine/StateMachine$SmHandler;

    .line 285
    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/mega/nexus/statemachine/StateMachine$SmHandler;Landroid/os/Message;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mega/nexus/statemachine/StateMachine$SmHandler;
    .param p1, "x1"    # Landroid/os/Message;

    .line 285
    invoke-direct {p0, p1}, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->isQuit(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/mega/nexus/statemachine/StateMachine$SmHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/mega/nexus/statemachine/StateMachine$SmHandler;

    .line 285
    invoke-direct {p0}, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->quit()V

    return-void
.end method

.method static synthetic access$2700(Lcom/mega/nexus/statemachine/StateMachine$SmHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/mega/nexus/statemachine/StateMachine$SmHandler;

    .line 285
    invoke-direct {p0}, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->quitNow()V

    return-void
.end method

.method static synthetic access$2800(Lcom/mega/nexus/statemachine/StateMachine$SmHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mega/nexus/statemachine/StateMachine$SmHandler;

    .line 285
    invoke-direct {p0}, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->isDbg()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/mega/nexus/statemachine/StateMachine$SmHandler;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/mega/nexus/statemachine/StateMachine$SmHandler;
    .param p1, "x1"    # Z

    .line 285
    invoke-direct {p0, p1}, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->setDbg(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/mega/nexus/statemachine/StateMachine$SmHandler;)Lcom/mega/nexus/statemachine/StateMachine;
    .locals 1
    .param p0, "x0"    # Lcom/mega/nexus/statemachine/StateMachine$SmHandler;

    .line 285
    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mSm:Lcom/mega/nexus/statemachine/StateMachine;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/mega/nexus/statemachine/StateMachine$SmHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/mega/nexus/statemachine/StateMachine$SmHandler;

    .line 285
    invoke-direct {p0}, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->completeConstruction()V

    return-void
.end method

.method static synthetic access$900(Lcom/mega/nexus/statemachine/StateMachine$SmHandler;Lcom/mega/nexus/statemachine/State;Lcom/mega/nexus/statemachine/State;)Lcom/mega/nexus/statemachine/StateMachine$SmHandler$StateInfo;
    .locals 1
    .param p0, "x0"    # Lcom/mega/nexus/statemachine/StateMachine$SmHandler;
    .param p1, "x1"    # Lcom/mega/nexus/statemachine/State;
    .param p2, "x2"    # Lcom/mega/nexus/statemachine/State;

    .line 285
    invoke-direct {p0, p1, p2}, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->addState(Lcom/mega/nexus/statemachine/State;Lcom/mega/nexus/statemachine/State;)Lcom/mega/nexus/statemachine/StateMachine$SmHandler$StateInfo;

    move-result-object v0

    return-object v0
.end method

.method private final addState(Lcom/mega/nexus/statemachine/State;Lcom/mega/nexus/statemachine/State;)Lcom/mega/nexus/statemachine/StateMachine$SmHandler$StateInfo;
    .locals 5
    .param p1, "state"    # Lcom/mega/nexus/statemachine/State;
    .param p2, "parent"    # Lcom/mega/nexus/statemachine/State;

    .line 840
    iget-boolean v0, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_1

    .line 841
    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mSm:Lcom/mega/nexus/statemachine/StateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addStateInternal: E state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mega/nexus/statemachine/State;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",parent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 842
    if-nez p2, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/mega/nexus/statemachine/State;->getName()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 841
    invoke-virtual {v0, v1}, Lcom/mega/nexus/statemachine/StateMachine;->log(Ljava/lang/String;)V

    .line 844
    :cond_1
    const/4 v0, 0x0

    .line 845
    .local v0, "parentStateInfo":Lcom/mega/nexus/statemachine/StateMachine$SmHandler$StateInfo;
    const/4 v1, 0x0

    if-eqz p2, :cond_2

    .line 846
    iget-object v2, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler$StateInfo;

    .line 847
    if-nez v0, :cond_2

    .line 849
    invoke-direct {p0, p2, v1}, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->addState(Lcom/mega/nexus/statemachine/State;Lcom/mega/nexus/statemachine/State;)Lcom/mega/nexus/statemachine/StateMachine$SmHandler$StateInfo;

    move-result-object v0

    .line 852
    :cond_2
    iget-object v2, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mega/nexus/statemachine/StateMachine$SmHandler$StateInfo;

    .line 853
    .local v2, "stateInfo":Lcom/mega/nexus/statemachine/StateMachine$SmHandler$StateInfo;
    if-nez v2, :cond_3

    .line 854
    new-instance v3, Lcom/mega/nexus/statemachine/StateMachine$SmHandler$StateInfo;

    invoke-direct {v3, p0, v1}, Lcom/mega/nexus/statemachine/StateMachine$SmHandler$StateInfo;-><init>(Lcom/mega/nexus/statemachine/StateMachine$SmHandler;Lcom/mega/nexus/statemachine/StateMachine$1;)V

    move-object v2, v3

    .line 855
    iget-object v1, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 859
    :cond_3
    iget-object v1, v2, Lcom/mega/nexus/statemachine/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/mega/nexus/statemachine/StateMachine$SmHandler$StateInfo;

    if-eqz v1, :cond_5

    iget-object v1, v2, Lcom/mega/nexus/statemachine/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/mega/nexus/statemachine/StateMachine$SmHandler$StateInfo;

    if-ne v1, v0, :cond_4

    goto :goto_1

    .line 861
    :cond_4
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "state already added"

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 863
    :cond_5
    :goto_1
    iput-object p1, v2, Lcom/mega/nexus/statemachine/StateMachine$SmHandler$StateInfo;->state:Lcom/mega/nexus/statemachine/State;

    .line 864
    iput-object v0, v2, Lcom/mega/nexus/statemachine/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/mega/nexus/statemachine/StateMachine$SmHandler$StateInfo;

    .line 865
    const/4 v1, 0x0

    iput-boolean v1, v2, Lcom/mega/nexus/statemachine/StateMachine$SmHandler$StateInfo;->active:Z

    .line 866
    iget-boolean v1, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mDbg:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mSm:Lcom/mega/nexus/statemachine/StateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addStateInternal: X stateInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/mega/nexus/statemachine/StateMachine;->log(Ljava/lang/String;)V

    .line 867
    :cond_6
    return-object v2
.end method

.method private final cleanupAfterQuitting()V
    .locals 2

    .line 578
    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mSm:Lcom/mega/nexus/statemachine/StateMachine;

    invoke-static {v0}, Lcom/mega/nexus/statemachine/StateMachine;->access$400(Lcom/mega/nexus/statemachine/StateMachine;)Landroid/os/HandlerThread;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 580
    invoke-virtual {p0}, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 581
    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mSm:Lcom/mega/nexus/statemachine/StateMachine;

    invoke-static {v0, v1}, Lcom/mega/nexus/statemachine/StateMachine;->access$402(Lcom/mega/nexus/statemachine/StateMachine;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;

    .line 584
    :cond_0
    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mSm:Lcom/mega/nexus/statemachine/StateMachine;

    invoke-static {v0, v1}, Lcom/mega/nexus/statemachine/StateMachine;->access$502(Lcom/mega/nexus/statemachine/StateMachine;Lcom/mega/nexus/statemachine/StateMachine$SmHandler;)Lcom/mega/nexus/statemachine/StateMachine$SmHandler;

    .line 585
    iput-object v1, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mSm:Lcom/mega/nexus/statemachine/StateMachine;

    .line 586
    iput-object v1, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mMsg:Landroid/os/Message;

    .line 587
    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mLogRecords:Lcom/mega/nexus/statemachine/StateMachine$LogRecords;

    invoke-virtual {v0}, Lcom/mega/nexus/statemachine/StateMachine$LogRecords;->cleanup()V

    .line 588
    iput-object v1, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mStateStack:[Lcom/mega/nexus/statemachine/StateMachine$SmHandler$StateInfo;

    .line 589
    iput-object v1, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mTempStateStack:[Lcom/mega/nexus/statemachine/StateMachine$SmHandler$StateInfo;

    .line 590
    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 591
    iput-object v1, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mInitialState:Lcom/mega/nexus/statemachine/State;

    .line 592
    iput-object v1, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mDestState:Lcom/mega/nexus/statemachine/State;

    .line 593
    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 594
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mHasQuit:Z

    .line 595
    return-void
.end method

.method private final completeConstruction()V
    .locals 5

    .line 601
    iget-boolean v0, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mSm:Lcom/mega/nexus/statemachine/StateMachine;

    const-string v1, "completeConstruction: E"

    invoke-virtual {v0, v1}, Lcom/mega/nexus/statemachine/StateMachine;->log(Ljava/lang/String;)V

    .line 607
    :cond_0
    const/4 v0, 0x0

    .line 608
    .local v0, "maxDepth":I
    iget-object v1, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mega/nexus/statemachine/StateMachine$SmHandler$StateInfo;

    .line 609
    .local v2, "si":Lcom/mega/nexus/statemachine/StateMachine$SmHandler$StateInfo;
    const/4 v3, 0x0

    .line 610
    .local v3, "depth":I
    move-object v4, v2

    .local v4, "i":Lcom/mega/nexus/statemachine/StateMachine$SmHandler$StateInfo;
    :goto_1
    if-eqz v4, :cond_1

    .line 611
    iget-object v4, v4, Lcom/mega/nexus/statemachine/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/mega/nexus/statemachine/StateMachine$SmHandler$StateInfo;

    .line 610
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 613
    .end local v4    # "i":Lcom/mega/nexus/statemachine/StateMachine$SmHandler$StateInfo;
    :cond_1
    if-ge v0, v3, :cond_2

    .line 614
    move v0, v3

    .line 616
    .end local v2    # "si":Lcom/mega/nexus/statemachine/StateMachine$SmHandler$StateInfo;
    .end local v3    # "depth":I
    :cond_2
    goto :goto_0

    .line 617
    :cond_3
    iget-boolean v1, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mDbg:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mSm:Lcom/mega/nexus/statemachine/StateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "completeConstruction: maxDepth="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mega/nexus/statemachine/StateMachine;->log(Ljava/lang/String;)V

    .line 619
    :cond_4
    new-array v1, v0, [Lcom/mega/nexus/statemachine/StateMachine$SmHandler$StateInfo;

    iput-object v1, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mStateStack:[Lcom/mega/nexus/statemachine/StateMachine$SmHandler$StateInfo;

    .line 620
    new-array v1, v0, [Lcom/mega/nexus/statemachine/StateMachine$SmHandler$StateInfo;

    iput-object v1, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mTempStateStack:[Lcom/mega/nexus/statemachine/StateMachine$SmHandler$StateInfo;

    .line 621
    invoke-direct {p0}, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->setupInitialStateStack()V

    .line 624
    const/4 v1, -0x2

    sget-object v2, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->SM_HANDLER_OBJ:Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 626
    iget-boolean v1, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mDbg:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mSm:Lcom/mega/nexus/statemachine/StateMachine;

    const-string v2, "completeConstruction: X"

    invoke-virtual {v1, v2}, Lcom/mega/nexus/statemachine/StateMachine;->log(Ljava/lang/String;)V

    .line 627
    :cond_5
    return-void
.end method

.method private final deferMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 929
    iget-boolean v0, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mSm:Lcom/mega/nexus/statemachine/StateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deferMessage: msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mega/nexus/statemachine/StateMachine;->log(Ljava/lang/String;)V

    .line 932
    :cond_0
    invoke-virtual {p0}, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 933
    .local v0, "newMsg":Landroid/os/Message;
    invoke-virtual {v0, p1}, Landroid/os/Message;->copyFrom(Landroid/os/Message;)V

    .line 935
    iget-object v1, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 936
    return-void
.end method

.method private final getCurrentMessage()Landroid/os/Message;
    .locals 1

    .line 814
    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mMsg:Landroid/os/Message;

    return-object v0
.end method

.method private final getCurrentState()Lcom/mega/nexus/statemachine/IState;
    .locals 2

    .line 822
    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mStateStackTopIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 823
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 824
    iget-object v1, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mStateStack:[Lcom/mega/nexus/statemachine/StateMachine$SmHandler$StateInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/mega/nexus/statemachine/StateMachine$SmHandler$StateInfo;->state:Lcom/mega/nexus/statemachine/State;

    return-object v1

    .line 826
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private final invokeEnterMethods(I)V
    .locals 5
    .param p1, "stateStackEnteringIndex"    # I

    .line 690
    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mStateStackTopIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 691
    .local v0, "stateStackTopIndex":I
    move v1, p1

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x0

    if-gt v1, v0, :cond_2

    .line 692
    if-ne p1, v0, :cond_0

    .line 694
    iput-boolean v2, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mTransitionInProgress:Z

    .line 696
    :cond_0
    iget-boolean v2, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mDbg:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mSm:Lcom/mega/nexus/statemachine/StateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invokeEnterMethods: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mStateStack:[Lcom/mega/nexus/statemachine/StateMachine$SmHandler$StateInfo;

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/mega/nexus/statemachine/StateMachine$SmHandler$StateInfo;->state:Lcom/mega/nexus/statemachine/State;

    invoke-virtual {v4}, Lcom/mega/nexus/statemachine/State;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mega/nexus/statemachine/StateMachine;->log(Ljava/lang/String;)V

    .line 697
    :cond_1
    iget-object v2, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mStateStack:[Lcom/mega/nexus/statemachine/StateMachine$SmHandler$StateInfo;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/mega/nexus/statemachine/StateMachine$SmHandler$StateInfo;->state:Lcom/mega/nexus/statemachine/State;

    invoke-virtual {v2}, Lcom/mega/nexus/statemachine/State;->enter()V

    .line 698
    iget-object v2, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mStateStack:[Lcom/mega/nexus/statemachine/StateMachine$SmHandler$StateInfo;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/mega/nexus/statemachine/StateMachine$SmHandler$StateInfo;->active:Z

    .line 691
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 700
    .end local v1    # "i":I
    :cond_2
    iput-boolean v2, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mTransitionInProgress:Z

    .line 702
    return-void
.end method

.method private final invokeExitMethods(Lcom/mega/nexus/statemachine/StateMachine$SmHandler$StateInfo;)V
    .locals 5
    .param p1, "commonStateInfo"    # Lcom/mega/nexus/statemachine/StateMachine$SmHandler$StateInfo;

    .line 673
    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mStateStackTopIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 674
    .local v0, "stateStackTopIndex":I
    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mStateStack:[Lcom/mega/nexus/statemachine/StateMachine$SmHandler$StateInfo;

    aget-object v2, v1, v0

    if-eq v2, p1, :cond_1

    .line 676
    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/mega/nexus/statemachine/StateMachine$SmHandler$StateInfo;->state:Lcom/mega/nexus/statemachine/State;

    .line 677
    .local v1, "curState":Lcom/mega/nexus/statemachine/State;
    iget-boolean v2, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mDbg:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mSm:Lcom/mega/nexus/statemachine/StateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invokeExitMethods: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/mega/nexus/statemachine/State;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mega/nexus/statemachine/StateMachine;->log(Ljava/lang/String;)V

    .line 678
    :cond_0
    invoke-virtual {v1}, Lcom/mega/nexus/statemachine/State;->exit()V

    .line 679
    iget-object v2, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mStateStack:[Lcom/mega/nexus/statemachine/StateMachine$SmHandler$StateInfo;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/mega/nexus/statemachine/StateMachine$SmHandler$StateInfo;->active:Z

    .line 680
    iget-object v2, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mStateStackTopIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    .line 681
    .end local v1    # "curState":Lcom/mega/nexus/statemachine/State;
    goto :goto_0

    .line 683
    :cond_1
    return-void
.end method

.method private final isDbg()Z
    .locals 1

    .line 965
    iget-boolean v0, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mDbg:Z

    return v0
.end method

.method private final isQuit(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 958
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v1, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->SM_HANDLER_OBJ:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$removeState$0(Lcom/mega/nexus/statemachine/StateMachine$SmHandler$StateInfo;Lcom/mega/nexus/statemachine/StateMachine$SmHandler$StateInfo;)Z
    .locals 1
    .param p0, "stateInfo"    # Lcom/mega/nexus/statemachine/StateMachine$SmHandler$StateInfo;
    .param p1, "si"    # Lcom/mega/nexus/statemachine/StateMachine$SmHandler$StateInfo;

    .line 882
    iget-object v0, p1, Lcom/mega/nexus/statemachine/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/mega/nexus/statemachine/StateMachine$SmHandler$StateInfo;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final moveDeferredMessageAtFrontOfQueue()V
    .locals 5

    .line 714
    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 715
    iget-object v1, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    .line 716
    .local v1, "curMsg":Landroid/os/Message;
    iget-boolean v2, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mDbg:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mSm:Lcom/mega/nexus/statemachine/StateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveDeferredMessageAtFrontOfQueue; what="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mega/nexus/statemachine/StateMachine;->log(Ljava/lang/String;)V

    .line 717
    :cond_0
    invoke-virtual {p0, v1}, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 714
    .end local v1    # "curMsg":Landroid/os/Message;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 719
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 720
    return-void
.end method

.method private final moveTempStateStackToStateStack()I
    .locals 7

    .line 731
    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mStateStackTopIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 732
    .local v0, "stateStackTopIndex":I
    add-int/lit8 v1, v0, 0x1

    .line 734
    .local v1, "startingIndex":I
    iget v2, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mTempStateStackCount:I

    add-int/lit8 v2, v2, -0x1

    .line 735
    .local v2, "i":I
    move v3, v1

    .line 736
    .local v3, "j":I
    :goto_0
    if-ltz v2, :cond_1

    .line 737
    iget-boolean v4, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mDbg:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mSm:Lcom/mega/nexus/statemachine/StateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "moveTempStackToStateStack: i="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",j="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mega/nexus/statemachine/StateMachine;->log(Ljava/lang/String;)V

    .line 738
    :cond_0
    iget-object v4, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mStateStack:[Lcom/mega/nexus/statemachine/StateMachine$SmHandler$StateInfo;

    iget-object v5, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mTempStateStack:[Lcom/mega/nexus/statemachine/StateMachine$SmHandler$StateInfo;

    aget-object v5, v5, v2

    aput-object v5, v4, v3

    .line 739
    add-int/lit8 v3, v3, 0x1

    .line 740
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 744
    :cond_1
    add-int/lit8 v0, v3, -0x1

    .line 745
    iget-object v4, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mStateStackTopIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 747
    iget-boolean v4, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mDbg:Z

    if-eqz v4, :cond_2

    .line 748
    iget-object v4, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mSm:Lcom/mega/nexus/statemachine/StateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "moveTempStackToStateStack: X mStateStackTop="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",startingIndex="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",Top="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mStateStack:[Lcom/mega/nexus/statemachine/StateMachine$SmHandler$StateInfo;

    aget-object v6, v6, v0

    iget-object v6, v6, Lcom/mega/nexus/statemachine/StateMachine$SmHandler$StateInfo;->state:Lcom/mega/nexus/statemachine/State;

    .line 750
    invoke-virtual {v6}, Lcom/mega/nexus/statemachine/State;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 748
    invoke-virtual {v4, v5}, Lcom/mega/nexus/statemachine/StateMachine;->log(Ljava/lang/String;)V

    .line 752
    :cond_2
    return v1
.end method

.method private performTransitions(Lcom/mega/nexus/statemachine/State;Landroid/os/Message;)V
    .locals 10
    .param p1, "msgProcessedState"    # Lcom/mega/nexus/statemachine/State;
    .param p2, "msg"    # Landroid/os/Message;

    .line 490
    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mStateStack:[Lcom/mega/nexus/statemachine/StateMachine$SmHandler$StateInfo;

    iget-object v1, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mStateStackTopIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler$StateInfo;->state:Lcom/mega/nexus/statemachine/State;

    .line 498
    .local v0, "orgState":Lcom/mega/nexus/statemachine/State;
    iget-object v1, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mSm:Lcom/mega/nexus/statemachine/StateMachine;

    iget-object v2, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mMsg:Landroid/os/Message;

    invoke-virtual {v1, v2}, Lcom/mega/nexus/statemachine/StateMachine;->recordLogRec(Landroid/os/Message;)Z

    move-result v1

    const/4 v8, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v2, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->SM_HANDLER_OBJ:Ljava/lang/Object;

    if-eq v1, v2, :cond_0

    move v1, v8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v9, v1

    .line 500
    .local v9, "recordLogMsg":Z
    iget-object v1, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mLogRecords:Lcom/mega/nexus/statemachine/StateMachine$LogRecords;

    invoke-virtual {v1}, Lcom/mega/nexus/statemachine/StateMachine$LogRecords;->logOnlyTransitions()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 502
    iget-object v1, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mDestState:Lcom/mega/nexus/statemachine/State;

    if-eqz v1, :cond_2

    .line 503
    iget-object v1, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mLogRecords:Lcom/mega/nexus/statemachine/StateMachine$LogRecords;

    iget-object v2, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mSm:Lcom/mega/nexus/statemachine/StateMachine;

    iget-object v3, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mMsg:Landroid/os/Message;

    invoke-virtual {v2, v3}, Lcom/mega/nexus/statemachine/StateMachine;->getLogRecString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mDestState:Lcom/mega/nexus/statemachine/State;

    move-object v5, p1

    move-object v6, v0

    invoke-virtual/range {v1 .. v7}, Lcom/mega/nexus/statemachine/StateMachine$LogRecords;->add(Lcom/mega/nexus/statemachine/StateMachine;Landroid/os/Message;Ljava/lang/String;Lcom/mega/nexus/statemachine/IState;Lcom/mega/nexus/statemachine/IState;Lcom/mega/nexus/statemachine/IState;)V

    goto :goto_1

    .line 506
    :cond_1
    if-eqz v9, :cond_2

    .line 508
    iget-object v1, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mLogRecords:Lcom/mega/nexus/statemachine/StateMachine$LogRecords;

    iget-object v2, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mSm:Lcom/mega/nexus/statemachine/StateMachine;

    iget-object v3, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mMsg:Landroid/os/Message;

    invoke-virtual {v2, v3}, Lcom/mega/nexus/statemachine/StateMachine;->getLogRecString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mDestState:Lcom/mega/nexus/statemachine/State;

    move-object v5, p1

    move-object v6, v0

    invoke-virtual/range {v1 .. v7}, Lcom/mega/nexus/statemachine/StateMachine$LogRecords;->add(Lcom/mega/nexus/statemachine/StateMachine;Landroid/os/Message;Ljava/lang/String;Lcom/mega/nexus/statemachine/IState;Lcom/mega/nexus/statemachine/IState;Lcom/mega/nexus/statemachine/IState;)V

    .line 512
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mDestState:Lcom/mega/nexus/statemachine/State;

    .line 513
    .local v1, "destState":Lcom/mega/nexus/statemachine/State;
    if-eqz v1, :cond_5

    .line 518
    :goto_2
    iget-boolean v2, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mDbg:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mSm:Lcom/mega/nexus/statemachine/StateMachine;

    const-string v3, "handleMessage: new destination call exit/enter"

    invoke-virtual {v2, v3}, Lcom/mega/nexus/statemachine/StateMachine;->log(Ljava/lang/String;)V

    .line 525
    :cond_3
    nop

    .line 526
    invoke-direct {p0, v1}, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->setupTempStateStackWithStatesToEnter(Lcom/mega/nexus/statemachine/State;)Lcom/mega/nexus/statemachine/StateMachine$SmHandler$StateInfo;

    move-result-object v2

    .line 528
    .local v2, "commonStateInfo":Lcom/mega/nexus/statemachine/StateMachine$SmHandler$StateInfo;
    iput-boolean v8, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mTransitionInProgress:Z

    .line 529
    invoke-direct {p0, v2}, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->invokeExitMethods(Lcom/mega/nexus/statemachine/StateMachine$SmHandler$StateInfo;)V

    .line 530
    invoke-direct {p0}, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->moveTempStateStackToStateStack()I

    move-result v3

    .line 531
    .local v3, "stateStackEnteringIndex":I
    invoke-direct {p0, v3}, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->invokeEnterMethods(I)V

    .line 539
    invoke-direct {p0}, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->moveDeferredMessageAtFrontOfQueue()V

    .line 541
    iget-object v4, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mDestState:Lcom/mega/nexus/statemachine/State;

    if-eq v1, v4, :cond_4

    .line 543
    iget-object v1, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mDestState:Lcom/mega/nexus/statemachine/State;

    .line 548
    .end local v2    # "commonStateInfo":Lcom/mega/nexus/statemachine/StateMachine$SmHandler$StateInfo;
    .end local v3    # "stateStackEnteringIndex":I
    goto :goto_2

    .line 549
    :cond_4
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mDestState:Lcom/mega/nexus/statemachine/State;

    .line 556
    :cond_5
    if-eqz v1, :cond_7

    .line 557
    iget-object v2, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mQuittingState:Lcom/mega/nexus/statemachine/StateMachine$SmHandler$QuittingState;

    if-ne v1, v2, :cond_6

    .line 561
    iget-object v2, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mSm:Lcom/mega/nexus/statemachine/StateMachine;

    invoke-virtual {v2}, Lcom/mega/nexus/statemachine/StateMachine;->onQuitting()V

    .line 562
    invoke-direct {p0}, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->cleanupAfterQuitting()V

    goto :goto_3

    .line 563
    :cond_6
    iget-object v2, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mHaltingState:Lcom/mega/nexus/statemachine/StateMachine$SmHandler$HaltingState;

    if-ne v1, v2, :cond_7

    .line 569
    iget-object v2, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mSm:Lcom/mega/nexus/statemachine/StateMachine;

    invoke-virtual {v2}, Lcom/mega/nexus/statemachine/StateMachine;->onHalting()V

    .line 572
    :cond_7
    :goto_3
    return-void
.end method

.method private final processMsg(Landroid/os/Message;)Lcom/mega/nexus/statemachine/State;
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 638
    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mStateStack:[Lcom/mega/nexus/statemachine/StateMachine$SmHandler$StateInfo;

    iget-object v1, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mStateStackTopIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    aget-object v0, v0, v1

    .line 640
    .local v0, "curStateInfo":Lcom/mega/nexus/statemachine/StateMachine$SmHandler$StateInfo;
    iget-boolean v1, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mDbg:Z

    const-string v2, "processMsg: "

    if-eqz v1, :cond_0

    .line 641
    iget-object v1, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mSm:Lcom/mega/nexus/statemachine/StateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler$StateInfo;->state:Lcom/mega/nexus/statemachine/State;

    invoke-virtual {v4}, Lcom/mega/nexus/statemachine/State;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/mega/nexus/statemachine/StateMachine;->log(Ljava/lang/String;)V

    .line 644
    :cond_0
    invoke-direct {p0, p1}, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->isQuit(Landroid/os/Message;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 645
    iget-object v1, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mQuittingState:Lcom/mega/nexus/statemachine/StateMachine$SmHandler$QuittingState;

    invoke-direct {p0, v1}, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->transitionTo(Lcom/mega/nexus/statemachine/IState;)V

    goto :goto_1

    .line 647
    :cond_1
    :goto_0
    iget-object v1, v0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler$StateInfo;->state:Lcom/mega/nexus/statemachine/State;

    invoke-virtual {v1, p1}, Lcom/mega/nexus/statemachine/State;->processMessage(Landroid/os/Message;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 651
    iget-object v0, v0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/mega/nexus/statemachine/StateMachine$SmHandler$StateInfo;

    .line 652
    if-nez v0, :cond_2

    .line 656
    iget-object v1, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mSm:Lcom/mega/nexus/statemachine/StateMachine;

    invoke-virtual {v1, p1}, Lcom/mega/nexus/statemachine/StateMachine;->unhandledMessage(Landroid/os/Message;)V

    .line 657
    goto :goto_1

    .line 659
    :cond_2
    iget-boolean v1, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mDbg:Z

    if-eqz v1, :cond_1

    .line 660
    iget-object v1, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mSm:Lcom/mega/nexus/statemachine/StateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler$StateInfo;->state:Lcom/mega/nexus/statemachine/State;

    invoke-virtual {v4}, Lcom/mega/nexus/statemachine/State;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/mega/nexus/statemachine/StateMachine;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 664
    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    iget-object v1, v0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler$StateInfo;->state:Lcom/mega/nexus/statemachine/State;

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    return-object v1
.end method

.method private final quit()V
    .locals 2

    .line 942
    iget-boolean v0, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mSm:Lcom/mega/nexus/statemachine/StateMachine;

    const-string v1, "quit:"

    invoke-virtual {v0, v1}, Lcom/mega/nexus/statemachine/StateMachine;->log(Ljava/lang/String;)V

    .line 943
    :cond_0
    const/4 v0, -0x1

    sget-object v1, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->SM_HANDLER_OBJ:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->sendMessage(Landroid/os/Message;)Z

    .line 944
    return-void
.end method

.method private final quitNow()V
    .locals 2

    .line 950
    iget-boolean v0, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mSm:Lcom/mega/nexus/statemachine/StateMachine;

    const-string v1, "quitNow:"

    invoke-virtual {v0, v1}, Lcom/mega/nexus/statemachine/StateMachine;->log(Ljava/lang/String;)V

    .line 951
    :cond_0
    const/4 v0, -0x1

    sget-object v1, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->SM_HANDLER_OBJ:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 952
    return-void
.end method

.method private removeState(Lcom/mega/nexus/statemachine/State;)V
    .locals 3
    .param p1, "state"    # Lcom/mega/nexus/statemachine/State;

    .line 877
    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler$StateInfo;

    .line 878
    .local v0, "stateInfo":Lcom/mega/nexus/statemachine/StateMachine$SmHandler$StateInfo;
    if-eqz v0, :cond_2

    iget-boolean v1, v0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler$StateInfo;->active:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 881
    :cond_0
    iget-object v1, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/mega/nexus/statemachine/-$$Lambda$StateMachine$SmHandler$BhHQuUMutcvEapXFhjXLme4iErI;

    invoke-direct {v2, v0}, Lcom/mega/nexus/statemachine/-$$Lambda$StateMachine$SmHandler$BhHQuUMutcvEapXFhjXLme4iErI;-><init>(Lcom/mega/nexus/statemachine/StateMachine$SmHandler$StateInfo;)V

    .line 882
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 883
    invoke-interface {v1}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object v1

    .line 884
    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    .line 885
    .local v1, "isParent":Z
    if-eqz v1, :cond_1

    .line 886
    return-void

    .line 888
    :cond_1
    iget-object v2, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 889
    return-void

    .line 879
    .end local v1    # "isParent":Z
    :cond_2
    :goto_0
    return-void
.end method

.method private final setDbg(Z)V
    .locals 0
    .param p1, "dbg"    # Z

    .line 972
    iput-boolean p1, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mDbg:Z

    .line 973
    return-void
.end method

.method private final setInitialState(Lcom/mega/nexus/statemachine/State;)V
    .locals 3
    .param p1, "initialState"    # Lcom/mega/nexus/statemachine/State;

    .line 909
    iget-boolean v0, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mSm:Lcom/mega/nexus/statemachine/StateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setInitialState: initialState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mega/nexus/statemachine/State;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mega/nexus/statemachine/StateMachine;->log(Ljava/lang/String;)V

    .line 910
    :cond_0
    iput-object p1, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mInitialState:Lcom/mega/nexus/statemachine/State;

    .line 911
    return-void
.end method

.method private final setupInitialStateStack()V
    .locals 3

    .line 792
    iget-boolean v0, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_0

    .line 793
    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mSm:Lcom/mega/nexus/statemachine/StateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setupInitialStateStack: E mInitialState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mInitialState:Lcom/mega/nexus/statemachine/State;

    invoke-virtual {v2}, Lcom/mega/nexus/statemachine/State;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mega/nexus/statemachine/StateMachine;->log(Ljava/lang/String;)V

    .line 796
    :cond_0
    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mInitialState:Lcom/mega/nexus/statemachine/State;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler$StateInfo;

    .line 797
    .local v0, "curStateInfo":Lcom/mega/nexus/statemachine/StateMachine$SmHandler$StateInfo;
    const/4 v1, 0x0

    :goto_0
    iput v1, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mTempStateStackCount:I

    if-eqz v0, :cond_1

    .line 798
    iget-object v1, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mTempStateStack:[Lcom/mega/nexus/statemachine/StateMachine$SmHandler$StateInfo;

    iget v2, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mTempStateStackCount:I

    aput-object v0, v1, v2

    .line 799
    iget-object v0, v0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/mega/nexus/statemachine/StateMachine$SmHandler$StateInfo;

    .line 797
    iget v1, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mTempStateStackCount:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 804
    :cond_1
    iget-object v1, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mStateStackTopIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 807
    invoke-direct {p0}, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->moveTempStateStackToStateStack()I

    .line 808
    return-void
.end method

.method private final setupTempStateStackWithStatesToEnter(Lcom/mega/nexus/statemachine/State;)Lcom/mega/nexus/statemachine/StateMachine$SmHandler$StateInfo;
    .locals 4
    .param p1, "destState"    # Lcom/mega/nexus/statemachine/State;

    .line 774
    const/4 v0, 0x0

    iput v0, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mTempStateStackCount:I

    .line 775
    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler$StateInfo;

    .line 777
    .local v0, "curStateInfo":Lcom/mega/nexus/statemachine/StateMachine$SmHandler$StateInfo;
    :cond_0
    iget-object v1, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mTempStateStack:[Lcom/mega/nexus/statemachine/StateMachine$SmHandler$StateInfo;

    iget v2, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mTempStateStackCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mTempStateStackCount:I

    aput-object v0, v1, v2

    .line 778
    iget-object v0, v0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/mega/nexus/statemachine/StateMachine$SmHandler$StateInfo;

    .line 779
    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler$StateInfo;->active:Z

    if-eqz v1, :cond_0

    .line 781
    :cond_1
    iget-boolean v1, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mDbg:Z

    if-eqz v1, :cond_2

    .line 782
    iget-object v1, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mSm:Lcom/mega/nexus/statemachine/StateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setupTempStateStackWithStatesToEnter: X mTempStateStackCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mTempStateStackCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",curStateInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mega/nexus/statemachine/StateMachine;->log(Ljava/lang/String;)V

    .line 785
    :cond_2
    return-object v0
.end method

.method private final transitionTo(Lcom/mega/nexus/statemachine/IState;)V
    .locals 3
    .param p1, "destState"    # Lcom/mega/nexus/statemachine/IState;

    .line 917
    iget-boolean v0, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mTransitionInProgress:Z

    if-eqz v0, :cond_0

    .line 918
    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mSm:Lcom/mega/nexus/statemachine/StateMachine;

    invoke-static {v0}, Lcom/mega/nexus/statemachine/StateMachine;->access$700(Lcom/mega/nexus/statemachine/StateMachine;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "transitionTo called while transition already in progress to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mDestState:Lcom/mega/nexus/statemachine/State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", new target state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/mega/nexus/statemachine/State;

    iput-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mDestState:Lcom/mega/nexus/statemachine/State;

    .line 922
    iget-boolean v0, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mSm:Lcom/mega/nexus/statemachine/StateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "transitionTo: destState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mDestState:Lcom/mega/nexus/statemachine/State;

    invoke-virtual {v2}, Lcom/mega/nexus/statemachine/State;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mega/nexus/statemachine/StateMachine;->log(Ljava/lang/String;)V

    .line 923
    :cond_1
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 443
    iget-boolean v0, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mHasQuit:Z

    if-nez v0, :cond_5

    .line 444
    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mSm:Lcom/mega/nexus/statemachine/StateMachine;

    const/4 v1, -0x1

    const/4 v2, -0x2

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v2, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v1, :cond_0

    .line 445
    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mSm:Lcom/mega/nexus/statemachine/StateMachine;

    invoke-virtual {v0, p1}, Lcom/mega/nexus/statemachine/StateMachine;->onPreHandleMessage(Landroid/os/Message;)V

    .line 448
    :cond_0
    iget-boolean v0, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mSm:Lcom/mega/nexus/statemachine/StateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage: E msg.what="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mega/nexus/statemachine/StateMachine;->log(Ljava/lang/String;)V

    .line 451
    :cond_1
    iput-object p1, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mMsg:Landroid/os/Message;

    .line 454
    const/4 v0, 0x0

    .line 455
    .local v0, "msgProcessedState":Lcom/mega/nexus/statemachine/State;
    iget-boolean v3, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mIsConstructionCompleted:Z

    if-eqz v3, :cond_2

    .line 457
    invoke-direct {p0, p1}, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->processMsg(Landroid/os/Message;)Lcom/mega/nexus/statemachine/State;

    move-result-object v0

    goto :goto_0

    .line 458
    :cond_2
    if-nez v3, :cond_4

    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v3, v2, :cond_4

    iget-object v3, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mMsg:Landroid/os/Message;

    iget-object v3, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v4, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->SM_HANDLER_OBJ:Ljava/lang/Object;

    if-ne v3, v4, :cond_4

    .line 461
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mIsConstructionCompleted:Z

    .line 462
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->invokeEnterMethods(I)V

    .line 467
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->performTransitions(Lcom/mega/nexus/statemachine/State;Landroid/os/Message;)V

    .line 470
    iget-boolean v3, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mDbg:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mSm:Lcom/mega/nexus/statemachine/StateMachine;

    if-eqz v3, :cond_3

    const-string v4, "handleMessage: X"

    invoke-virtual {v3, v4}, Lcom/mega/nexus/statemachine/StateMachine;->log(Ljava/lang/String;)V

    .line 472
    :cond_3
    iget-object v3, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mSm:Lcom/mega/nexus/statemachine/StateMachine;

    if-eqz v3, :cond_5

    iget v3, p1, Landroid/os/Message;->what:I

    if-eq v3, v2, :cond_5

    iget v2, p1, Landroid/os/Message;->what:I

    if-eq v2, v1, :cond_5

    .line 473
    iget-object v1, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->mSm:Lcom/mega/nexus/statemachine/StateMachine;

    invoke-virtual {v1, p1}, Lcom/mega/nexus/statemachine/StateMachine;->onPostHandleMessage(Landroid/os/Message;)V

    goto :goto_1

    .line 464
    :cond_4
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StateMachine.handleMessage: The start method not called, received msg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 476
    .end local v0    # "msgProcessedState":Lcom/mega/nexus/statemachine/State;
    :cond_5
    :goto_1
    return-void
.end method
