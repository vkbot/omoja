.class public Lorg/apache/mina/core/filterchain/IoFilterEvent;
.super Lorg/apache/mina/core/session/IoEvent;
.source "IoFilterEvent.java"


# static fields
.field private static final DEBUG:Z

.field private static final LOGGER:Lorg/slf4j/Logger;


# instance fields
.field private final nextFilter:Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const-class v0, Lorg/apache/mina/core/filterchain/IoFilterEvent;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/core/filterchain/IoFilterEvent;->LOGGER:Lorg/slf4j/Logger;

    .line 44
    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    sput-boolean v0, Lorg/apache/mina/core/filterchain/IoFilterEvent;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoEventType;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    .locals 2
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "type"    # Lorg/apache/mina/core/session/IoEventType;
    .param p3, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p4, "parameter"    # Ljava/lang/Object;

    .line 58
    invoke-direct {p0, p2, p3, p4}, Lorg/apache/mina/core/session/IoEvent;-><init>(Lorg/apache/mina/core/session/IoEventType;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    .line 60
    if-eqz p1, :cond_0

    .line 64
    iput-object p1, p0, Lorg/apache/mina/core/filterchain/IoFilterEvent;->nextFilter:Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    .line 65
    return-void

    .line 61
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "nextFilter must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public fire()V
    .locals 5

    .line 79
    invoke-virtual {p0}, Lorg/apache/mina/core/filterchain/IoFilterEvent;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v0

    .line 80
    .local v0, "session":Lorg/apache/mina/core/session/IoSession;
    invoke-virtual {p0}, Lorg/apache/mina/core/filterchain/IoFilterEvent;->getType()Lorg/apache/mina/core/session/IoEventType;

    move-result-object v1

    .line 82
    .local v1, "type":Lorg/apache/mina/core/session/IoEventType;
    sget-boolean v2, Lorg/apache/mina/core/filterchain/IoFilterEvent;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 83
    sget-object v2, Lorg/apache/mina/core/filterchain/IoFilterEvent;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSession;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "Firing a {} event for session {}"

    invoke-interface {v2, v4, v1, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 86
    :cond_0
    sget-object v2, Lorg/apache/mina/core/filterchain/IoFilterEvent$1;->$SwitchMap$org$apache$mina$core$session$IoEventType:[I

    invoke-virtual {v1}, Lorg/apache/mina/core/session/IoEventType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 136
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown event type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 131
    :pswitch_0
    invoke-virtual {p0}, Lorg/apache/mina/core/filterchain/IoFilterEvent;->getParameter()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/mina/core/write/WriteRequest;

    .line 132
    .local v2, "writeRequest":Lorg/apache/mina/core/write/WriteRequest;
    iget-object v3, p0, Lorg/apache/mina/core/filterchain/IoFilterEvent;->nextFilter:Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    invoke-interface {v3, v0, v2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->filterWrite(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    .line 133
    goto :goto_0

    .line 127
    .end local v2    # "writeRequest":Lorg/apache/mina/core/write/WriteRequest;
    :pswitch_1
    iget-object v2, p0, Lorg/apache/mina/core/filterchain/IoFilterEvent;->nextFilter:Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    invoke-interface {v2, v0}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionOpened(Lorg/apache/mina/core/session/IoSession;)V

    .line 128
    goto :goto_0

    .line 123
    :pswitch_2
    iget-object v2, p0, Lorg/apache/mina/core/filterchain/IoFilterEvent;->nextFilter:Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    invoke-virtual {p0}, Lorg/apache/mina/core/filterchain/IoFilterEvent;->getParameter()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/mina/core/session/IdleStatus;

    invoke-interface {v2, v0, v3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionIdle(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/session/IdleStatus;)V

    .line 124
    goto :goto_0

    .line 119
    :pswitch_3
    iget-object v2, p0, Lorg/apache/mina/core/filterchain/IoFilterEvent;->nextFilter:Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    invoke-interface {v2, v0}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionCreated(Lorg/apache/mina/core/session/IoSession;)V

    .line 120
    goto :goto_0

    .line 115
    :pswitch_4
    iget-object v2, p0, Lorg/apache/mina/core/filterchain/IoFilterEvent;->nextFilter:Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    invoke-interface {v2, v0}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionClosed(Lorg/apache/mina/core/session/IoSession;)V

    .line 116
    goto :goto_0

    .line 110
    :pswitch_5
    invoke-virtual {p0}, Lorg/apache/mina/core/filterchain/IoFilterEvent;->getParameter()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/mina/core/write/WriteRequest;

    .line 111
    .restart local v2    # "writeRequest":Lorg/apache/mina/core/write/WriteRequest;
    iget-object v3, p0, Lorg/apache/mina/core/filterchain/IoFilterEvent;->nextFilter:Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    invoke-interface {v3, v0, v2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageSent(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    .line 112
    goto :goto_0

    .line 105
    .end local v2    # "writeRequest":Lorg/apache/mina/core/write/WriteRequest;
    :pswitch_6
    invoke-virtual {p0}, Lorg/apache/mina/core/filterchain/IoFilterEvent;->getParameter()Ljava/lang/Object;

    move-result-object v2

    .line 106
    .local v2, "parameter":Ljava/lang/Object;
    iget-object v3, p0, Lorg/apache/mina/core/filterchain/IoFilterEvent;->nextFilter:Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    invoke-interface {v3, v0, v2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageReceived(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    .line 107
    goto :goto_0

    .line 101
    .end local v2    # "parameter":Ljava/lang/Object;
    :pswitch_7
    iget-object v2, p0, Lorg/apache/mina/core/filterchain/IoFilterEvent;->nextFilter:Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    invoke-interface {v2, v0}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->inputClosed(Lorg/apache/mina/core/session/IoSession;)V

    .line 102
    goto :goto_0

    .line 96
    :pswitch_8
    invoke-virtual {p0}, Lorg/apache/mina/core/filterchain/IoFilterEvent;->getParameter()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    .line 97
    .local v2, "throwable":Ljava/lang/Throwable;
    iget-object v3, p0, Lorg/apache/mina/core/filterchain/IoFilterEvent;->nextFilter:Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    invoke-interface {v3, v0, v2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->exceptionCaught(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)V

    .line 98
    goto :goto_0

    .line 92
    .end local v2    # "throwable":Ljava/lang/Throwable;
    :pswitch_9
    iget-object v2, p0, Lorg/apache/mina/core/filterchain/IoFilterEvent;->nextFilter:Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    invoke-virtual {p0}, Lorg/apache/mina/core/filterchain/IoFilterEvent;->getParameter()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/mina/filter/FilterEvent;

    invoke-interface {v2, v0, v3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->event(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/filter/FilterEvent;)V

    .line 93
    goto :goto_0

    .line 88
    :pswitch_a
    iget-object v2, p0, Lorg/apache/mina/core/filterchain/IoFilterEvent;->nextFilter:Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    invoke-interface {v2, v0}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->filterClose(Lorg/apache/mina/core/session/IoSession;)V

    .line 89
    nop

    .line 139
    :goto_0
    sget-boolean v2, Lorg/apache/mina/core/filterchain/IoFilterEvent;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 140
    sget-object v2, Lorg/apache/mina/core/filterchain/IoFilterEvent;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSession;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "Event {} has been fired for session {}"

    invoke-interface {v2, v4, v1, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 142
    :cond_1
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

.method public getNextFilter()Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/IoFilterEvent;->nextFilter:Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    return-object v0
.end method
