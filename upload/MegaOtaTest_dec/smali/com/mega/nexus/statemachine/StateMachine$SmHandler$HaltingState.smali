.class Lcom/mega/nexus/statemachine/StateMachine$SmHandler$HaltingState;
.super Lcom/mega/nexus/statemachine/State;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/nexus/statemachine/StateMachine$SmHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HaltingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mega/nexus/statemachine/StateMachine$SmHandler;


# direct methods
.method private constructor <init>(Lcom/mega/nexus/statemachine/StateMachine$SmHandler;)V
    .locals 0

    .line 417
    iput-object p1, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler$HaltingState;->this$0:Lcom/mega/nexus/statemachine/StateMachine$SmHandler;

    invoke-direct {p0}, Lcom/mega/nexus/statemachine/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mega/nexus/statemachine/StateMachine$SmHandler;Lcom/mega/nexus/statemachine/StateMachine$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mega/nexus/statemachine/StateMachine$SmHandler;
    .param p2, "x1"    # Lcom/mega/nexus/statemachine/StateMachine$1;

    .line 417
    invoke-direct {p0, p1}, Lcom/mega/nexus/statemachine/StateMachine$SmHandler$HaltingState;-><init>(Lcom/mega/nexus/statemachine/StateMachine$SmHandler;)V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 420
    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine$SmHandler$HaltingState;->this$0:Lcom/mega/nexus/statemachine/StateMachine$SmHandler;

    invoke-static {v0}, Lcom/mega/nexus/statemachine/StateMachine$SmHandler;->access$300(Lcom/mega/nexus/statemachine/StateMachine$SmHandler;)Lcom/mega/nexus/statemachine/StateMachine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mega/nexus/statemachine/StateMachine;->haltedProcessMessage(Landroid/os/Message;)V

    .line 421
    const/4 v0, 0x1

    return v0
.end method
