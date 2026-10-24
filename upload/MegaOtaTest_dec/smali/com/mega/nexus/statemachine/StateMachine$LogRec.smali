.class public Lcom/mega/nexus/statemachine/StateMachine$LogRec;
.super Ljava/lang/Object;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/nexus/statemachine/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LogRec"
.end annotation


# instance fields
.field private mDstState:Lcom/mega/nexus/statemachine/IState;

.field private mInfo:Ljava/lang/String;

.field private mOrgState:Lcom/mega/nexus/statemachine/IState;

.field private mSm:Lcom/mega/nexus/statemachine/StateMachine;

.field private mState:Lcom/mega/nexus/statemachine/IState;

.field private mTime:J

.field private mWhat:I


# direct methods
.method constructor <init>(Lcom/mega/nexus/statemachine/StateMachine;Landroid/os/Message;Ljava/lang/String;Lcom/mega/nexus/statemachine/IState;Lcom/mega/nexus/statemachine/IState;Lcom/mega/nexus/statemachine/IState;)V
    .locals 0
    .param p1, "sm"    # Lcom/mega/nexus/statemachine/StateMachine;
    .param p2, "msg"    # Landroid/os/Message;
    .param p3, "info"    # Ljava/lang/String;
    .param p4, "state"    # Lcom/mega/nexus/statemachine/IState;
    .param p5, "orgState"    # Lcom/mega/nexus/statemachine/IState;
    .param p6, "transToState"    # Lcom/mega/nexus/statemachine/IState;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-virtual/range {p0 .. p6}, Lcom/mega/nexus/statemachine/StateMachine$LogRec;->update(Lcom/mega/nexus/statemachine/StateMachine;Landroid/os/Message;Ljava/lang/String;Lcom/mega/nexus/statemachine/IState;Lcom/mega/nexus/statemachine/IState;Lcom/mega/nexus/statemachine/IState;)V

    .line 73
    return-void
.end method


# virtual methods
.method public getDestState()Lcom/mega/nexus/statemachine/IState;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine$LogRec;->mDstState:Lcom/mega/nexus/statemachine/IState;

    return-object v0
.end method

.method public getInfo()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine$LogRec;->mInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalState()Lcom/mega/nexus/statemachine/IState;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine$LogRec;->mOrgState:Lcom/mega/nexus/statemachine/IState;

    return-object v0
.end method

.method public getState()Lcom/mega/nexus/statemachine/IState;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/mega/nexus/statemachine/StateMachine$LogRec;->mState:Lcom/mega/nexus/statemachine/IState;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    .line 97
    iget-wide v0, p0, Lcom/mega/nexus/statemachine/StateMachine$LogRec;->mTime:J

    return-wide v0
.end method

.method public getWhat()J
    .locals 2

    .line 104
    iget v0, p0, Lcom/mega/nexus/statemachine/StateMachine$LogRec;->mWhat:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 140
    .local v1, "c":Ljava/util/Calendar;
    iget-wide v2, p0, Lcom/mega/nexus/statemachine/StateMachine$LogRec;->mTime:J

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 141
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const/4 v3, 0x2

    aput-object v1, v2, v3

    const/4 v3, 0x3

    aput-object v1, v2, v3

    const/4 v3, 0x4

    aput-object v1, v2, v3

    const/4 v3, 0x5

    aput-object v1, v2, v3

    const-string v3, "%tm-%td %tH:%tM:%tS.%tL"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    const-string v2, " processed="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    iget-object v2, p0, Lcom/mega/nexus/statemachine/StateMachine$LogRec;->mState:Lcom/mega/nexus/statemachine/IState;

    const-string v3, "<null>"

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Lcom/mega/nexus/statemachine/IState;->getName()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    const-string v2, " org="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    iget-object v2, p0, Lcom/mega/nexus/statemachine/StateMachine$LogRec;->mOrgState:Lcom/mega/nexus/statemachine/IState;

    if-nez v2, :cond_1

    move-object v2, v3

    goto :goto_1

    :cond_1
    invoke-interface {v2}, Lcom/mega/nexus/statemachine/IState;->getName()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    const-string v2, " dest="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    iget-object v2, p0, Lcom/mega/nexus/statemachine/StateMachine$LogRec;->mDstState:Lcom/mega/nexus/statemachine/IState;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {v2}, Lcom/mega/nexus/statemachine/IState;->getName()Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    const-string v2, " what="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    iget-object v2, p0, Lcom/mega/nexus/statemachine/StateMachine$LogRec;->mSm:Lcom/mega/nexus/statemachine/StateMachine;

    if-eqz v2, :cond_3

    iget v3, p0, Lcom/mega/nexus/statemachine/StateMachine$LogRec;->mWhat:I

    invoke-virtual {v2, v3}, Lcom/mega/nexus/statemachine/StateMachine;->getWhatToString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_3
    const-string v2, ""

    .line 150
    .local v2, "what":Ljava/lang/String;
    :goto_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 151
    iget v3, p0, Lcom/mega/nexus/statemachine/StateMachine$LogRec;->mWhat:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 152
    const-string v3, "(0x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    iget v3, p0, Lcom/mega/nexus/statemachine/StateMachine$LogRec;->mWhat:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 156
    :cond_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    :goto_4
    iget-object v3, p0, Lcom/mega/nexus/statemachine/StateMachine$LogRec;->mInfo:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 159
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    iget-object v3, p0, Lcom/mega/nexus/statemachine/StateMachine$LogRec;->mInfo:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public update(Lcom/mega/nexus/statemachine/StateMachine;Landroid/os/Message;Ljava/lang/String;Lcom/mega/nexus/statemachine/IState;Lcom/mega/nexus/statemachine/IState;Lcom/mega/nexus/statemachine/IState;)V
    .locals 2
    .param p1, "sm"    # Lcom/mega/nexus/statemachine/StateMachine;
    .param p2, "msg"    # Landroid/os/Message;
    .param p3, "info"    # Ljava/lang/String;
    .param p4, "state"    # Lcom/mega/nexus/statemachine/IState;
    .param p5, "orgState"    # Lcom/mega/nexus/statemachine/IState;
    .param p6, "dstState"    # Lcom/mega/nexus/statemachine/IState;

    .line 84
    iput-object p1, p0, Lcom/mega/nexus/statemachine/StateMachine$LogRec;->mSm:Lcom/mega/nexus/statemachine/StateMachine;

    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mega/nexus/statemachine/StateMachine$LogRec;->mTime:J

    .line 86
    if-eqz p2, :cond_0

    iget v0, p2, Landroid/os/Message;->what:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/mega/nexus/statemachine/StateMachine$LogRec;->mWhat:I

    .line 87
    iput-object p3, p0, Lcom/mega/nexus/statemachine/StateMachine$LogRec;->mInfo:Ljava/lang/String;

    .line 88
    iput-object p4, p0, Lcom/mega/nexus/statemachine/StateMachine$LogRec;->mState:Lcom/mega/nexus/statemachine/IState;

    .line 89
    iput-object p5, p0, Lcom/mega/nexus/statemachine/StateMachine$LogRec;->mOrgState:Lcom/mega/nexus/statemachine/IState;

    .line 90
    iput-object p6, p0, Lcom/mega/nexus/statemachine/StateMachine$LogRec;->mDstState:Lcom/mega/nexus/statemachine/IState;

    .line 91
    return-void
.end method
