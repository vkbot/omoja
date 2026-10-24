.class public Lorg/apache/mina/core/session/IoEvent;
.super Ljava/lang/Object;
.source "IoEvent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final parameter:Ljava/lang/Object;

.field private final session:Lorg/apache/mina/core/session/IoSession;

.field private final type:Lorg/apache/mina/core/session/IoEventType;


# direct methods
.method public constructor <init>(Lorg/apache/mina/core/session/IoEventType;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    .locals 2
    .param p1, "type"    # Lorg/apache/mina/core/session/IoEventType;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "parameter"    # Ljava/lang/Object;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    if-eqz p1, :cond_1

    .line 54
    if-eqz p2, :cond_0

    .line 58
    iput-object p1, p0, Lorg/apache/mina/core/session/IoEvent;->type:Lorg/apache/mina/core/session/IoEventType;

    .line 59
    iput-object p2, p0, Lorg/apache/mina/core/session/IoEvent;->session:Lorg/apache/mina/core/session/IoSession;

    .line 60
    iput-object p3, p0, Lorg/apache/mina/core/session/IoEvent;->parameter:Ljava/lang/Object;

    .line 61
    return-void

    .line 55
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public fire()V
    .locals 3

    .line 96
    sget-object v0, Lorg/apache/mina/core/session/IoEvent$1;->$SwitchMap$org$apache$mina$core$session$IoEventType:[I

    iget-object v1, p0, Lorg/apache/mina/core/session/IoEvent;->type:Lorg/apache/mina/core/session/IoEventType;

    invoke-virtual {v1}, Lorg/apache/mina/core/session/IoEventType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 142
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown event type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/mina/core/session/IoEvent;->getType()Lorg/apache/mina/core/session/IoEventType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :pswitch_0
    iget-object v0, p0, Lorg/apache/mina/core/session/IoEvent;->session:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/mina/core/session/IoEvent;->getParameter()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/write/WriteRequest;

    invoke-interface {v0, v1}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireFilterWrite(Lorg/apache/mina/core/write/WriteRequest;)V

    .line 139
    goto/16 :goto_0

    .line 134
    :pswitch_1
    iget-object v0, p0, Lorg/apache/mina/core/session/IoEvent;->session:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireSessionOpened()V

    .line 135
    goto/16 :goto_0

    .line 130
    :pswitch_2
    iget-object v0, p0, Lorg/apache/mina/core/session/IoEvent;->session:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/mina/core/session/IoEvent;->getParameter()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/session/IdleStatus;

    invoke-interface {v0, v1}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireSessionIdle(Lorg/apache/mina/core/session/IdleStatus;)V

    .line 131
    goto :goto_0

    .line 126
    :pswitch_3
    iget-object v0, p0, Lorg/apache/mina/core/session/IoEvent;->session:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireSessionCreated()V

    .line 127
    goto :goto_0

    .line 122
    :pswitch_4
    iget-object v0, p0, Lorg/apache/mina/core/session/IoEvent;->session:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireSessionClosed()V

    .line 123
    goto :goto_0

    .line 118
    :pswitch_5
    iget-object v0, p0, Lorg/apache/mina/core/session/IoEvent;->session:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/mina/core/session/IoEvent;->getParameter()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/write/WriteRequest;

    invoke-interface {v0, v1}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireMessageSent(Lorg/apache/mina/core/write/WriteRequest;)V

    .line 119
    goto :goto_0

    .line 114
    :pswitch_6
    iget-object v0, p0, Lorg/apache/mina/core/session/IoEvent;->session:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/mina/core/session/IoEvent;->getParameter()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireMessageReceived(Ljava/lang/Object;)V

    .line 115
    goto :goto_0

    .line 110
    :pswitch_7
    iget-object v0, p0, Lorg/apache/mina/core/session/IoEvent;->session:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireInputClosed()V

    .line 111
    goto :goto_0

    .line 106
    :pswitch_8
    iget-object v0, p0, Lorg/apache/mina/core/session/IoEvent;->session:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/mina/core/session/IoEvent;->getParameter()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    .line 107
    goto :goto_0

    .line 102
    :pswitch_9
    iget-object v0, p0, Lorg/apache/mina/core/session/IoEvent;->session:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/mina/core/session/IoEvent;->getParameter()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/filter/FilterEvent;

    invoke-interface {v0, v1}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireEvent(Lorg/apache/mina/filter/FilterEvent;)V

    .line 103
    goto :goto_0

    .line 98
    :pswitch_a
    iget-object v0, p0, Lorg/apache/mina/core/session/IoEvent;->session:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireFilterClose()V

    .line 99
    nop

    .line 144
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getParameter()Ljava/lang/Object;
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/apache/mina/core/session/IoEvent;->parameter:Ljava/lang/Object;

    return-object v0
.end method

.method public getSession()Lorg/apache/mina/core/session/IoSession;
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/apache/mina/core/session/IoEvent;->session:Lorg/apache/mina/core/session/IoSession;

    return-object v0
.end method

.method public getType()Lorg/apache/mina/core/session/IoEventType;
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/apache/mina/core/session/IoEvent;->type:Lorg/apache/mina/core/session/IoEventType;

    return-object v0
.end method

.method public run()V
    .locals 0

    .line 89
    invoke-virtual {p0}, Lorg/apache/mina/core/session/IoEvent;->fire()V

    .line 90
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 154
    iget-object v1, p0, Lorg/apache/mina/core/session/IoEvent;->session:Lorg/apache/mina/core/session/IoSession;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 155
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 156
    iget-object v1, p0, Lorg/apache/mina/core/session/IoEvent;->type:Lorg/apache/mina/core/session/IoEventType;

    invoke-virtual {v1}, Lorg/apache/mina/core/session/IoEventType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    iget-object v1, p0, Lorg/apache/mina/core/session/IoEvent;->parameter:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 159
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 160
    iget-object v1, p0, Lorg/apache/mina/core/session/IoEvent;->parameter:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 163
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
