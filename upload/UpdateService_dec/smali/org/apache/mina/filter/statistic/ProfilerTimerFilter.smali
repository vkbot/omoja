.class public Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;
.super Lorg/apache/mina/core/filterchain/IoFilterAdapter;
.source "ProfilerTimerFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;
    }
.end annotation


# instance fields
.field private messageReceivedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

.field private messageSentTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

.field private profileMessageReceived:Z

.field private profileMessageSent:Z

.field private profileSessionClosed:Z

.field private profileSessionCreated:Z

.field private profileSessionIdle:Z

.field private profileSessionOpened:Z

.field private sessionClosedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

.field private sessionCreatedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

.field private sessionIdleTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

.field private sessionOpenedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

.field private volatile timeUnit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 101
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/apache/mina/core/session/IoEventType;

    sget-object v2, Lorg/apache/mina/core/session/IoEventType;->MESSAGE_RECEIVED:Lorg/apache/mina/core/session/IoEventType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/mina/core/session/IoEventType;->MESSAGE_SENT:Lorg/apache/mina/core/session/IoEventType;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;-><init>(Ljava/util/concurrent/TimeUnit;[Lorg/apache/mina/core/session/IoEventType;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/TimeUnit;)V
    .locals 3
    .param p1, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .line 112
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/mina/core/session/IoEventType;

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->MESSAGE_RECEIVED:Lorg/apache/mina/core/session/IoEventType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->MESSAGE_SENT:Lorg/apache/mina/core/session/IoEventType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;-><init>(Ljava/util/concurrent/TimeUnit;[Lorg/apache/mina/core/session/IoEventType;)V

    .line 113
    return-void
.end method

.method public varargs constructor <init>(Ljava/util/concurrent/TimeUnit;[Lorg/apache/mina/core/session/IoEventType;)V
    .locals 1
    .param p1, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .param p2, "eventTypes"    # [Lorg/apache/mina/core/session/IoEventType;

    .line 129
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileMessageReceived:Z

    .line 70
    iput-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileMessageSent:Z

    .line 76
    iput-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionCreated:Z

    .line 82
    iput-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionOpened:Z

    .line 88
    iput-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionIdle:Z

    .line 94
    iput-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionClosed:Z

    .line 130
    iput-object p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->timeUnit:Ljava/util/concurrent/TimeUnit;

    .line 132
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->setProfilers([Lorg/apache/mina/core/session/IoEventType;)V

    .line 133
    return-void
.end method

.method private varargs setProfilers([Lorg/apache/mina/core/session/IoEventType;)V
    .locals 5
    .param p1, "eventTypes"    # [Lorg/apache/mina/core/session/IoEventType;

    .line 142
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 143
    .local v2, "type":Lorg/apache/mina/core/session/IoEventType;
    sget-object v3, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$1;->$SwitchMap$org$apache$mina$core$session$IoEventType:[I

    invoke-virtual {v2}, Lorg/apache/mina/core/session/IoEventType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 170
    :pswitch_0
    new-instance v3, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-direct {v3, p0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;-><init>(Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;)V

    iput-object v3, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionOpenedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    .line 171
    iput-boolean v4, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionOpened:Z

    .line 172
    goto :goto_1

    .line 165
    :pswitch_1
    new-instance v3, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-direct {v3, p0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;-><init>(Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;)V

    iput-object v3, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionIdleTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    .line 166
    iput-boolean v4, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionIdle:Z

    .line 167
    goto :goto_1

    .line 160
    :pswitch_2
    new-instance v3, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-direct {v3, p0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;-><init>(Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;)V

    iput-object v3, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionCreatedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    .line 161
    iput-boolean v4, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionCreated:Z

    .line 162
    goto :goto_1

    .line 155
    :pswitch_3
    new-instance v3, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-direct {v3, p0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;-><init>(Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;)V

    iput-object v3, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionClosedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    .line 156
    iput-boolean v4, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionClosed:Z

    .line 157
    goto :goto_1

    .line 150
    :pswitch_4
    new-instance v3, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-direct {v3, p0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;-><init>(Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;)V

    iput-object v3, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->messageSentTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    .line 151
    iput-boolean v4, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileMessageSent:Z

    .line 152
    goto :goto_1

    .line 145
    :pswitch_5
    new-instance v3, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-direct {v3, p0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;-><init>(Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;)V

    iput-object v3, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->messageReceivedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    .line 146
    iput-boolean v4, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileMessageReceived:Z

    .line 147
    nop

    .line 142
    .end local v2    # "type":Lorg/apache/mina/core/session/IoEventType;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 178
    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private timeNow()J
    .locals 4

    .line 860
    sget-object v0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$1;->$SwitchMap$java$util$concurrent$TimeUnit:[I

    iget-object v1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->timeUnit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1}, Ljava/util/concurrent/TimeUnit;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const-wide/16 v2, 0x3e8

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 871
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0

    .line 868
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0

    .line 865
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    div-long/2addr v0, v2

    return-wide v0

    .line 862
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    div-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public getAverageTime(Lorg/apache/mina/core/session/IoEventType;)D
    .locals 2
    .param p1, "type"    # Lorg/apache/mina/core/session/IoEventType;

    .line 479
    sget-object v0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$1;->$SwitchMap$org$apache$mina$core$session$IoEventType:[I

    invoke-virtual {p1}, Lorg/apache/mina/core/session/IoEventType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 516
    :pswitch_0
    iget-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionOpened:Z

    if-eqz v0, :cond_0

    .line 517
    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionOpenedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-virtual {v0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->getAverage()D

    move-result-wide v0

    return-wide v0

    .line 509
    :pswitch_1
    iget-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionIdle:Z

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionIdleTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-virtual {v0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->getAverage()D

    move-result-wide v0

    return-wide v0

    .line 502
    :pswitch_2
    iget-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionCreated:Z

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionCreatedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-virtual {v0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->getAverage()D

    move-result-wide v0

    return-wide v0

    .line 495
    :pswitch_3
    iget-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionClosed:Z

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionClosedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-virtual {v0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->getAverage()D

    move-result-wide v0

    return-wide v0

    .line 488
    :pswitch_4
    iget-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileMessageSent:Z

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->messageSentTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-virtual {v0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->getAverage()D

    move-result-wide v0

    return-wide v0

    .line 481
    :pswitch_5
    iget-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileMessageReceived:Z

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->messageReceivedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-virtual {v0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->getAverage()D

    move-result-wide v0

    return-wide v0

    .line 526
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You are not monitoring this event.  Please add this event first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getEventsToProfile()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/apache/mina/core/session/IoEventType;",
            ">;"
        }
    .end annotation

    .line 300
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 302
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/mina/core/session/IoEventType;>;"
    iget-boolean v1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileMessageReceived:Z

    if-eqz v1, :cond_0

    .line 303
    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->MESSAGE_RECEIVED:Lorg/apache/mina/core/session/IoEventType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 306
    :cond_0
    iget-boolean v1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileMessageSent:Z

    if-eqz v1, :cond_1

    .line 307
    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->MESSAGE_SENT:Lorg/apache/mina/core/session/IoEventType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 310
    :cond_1
    iget-boolean v1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionCreated:Z

    if-eqz v1, :cond_2

    .line 311
    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->SESSION_CREATED:Lorg/apache/mina/core/session/IoEventType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 314
    :cond_2
    iget-boolean v1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionOpened:Z

    if-eqz v1, :cond_3

    .line 315
    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->SESSION_OPENED:Lorg/apache/mina/core/session/IoEventType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 318
    :cond_3
    iget-boolean v1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionIdle:Z

    if-eqz v1, :cond_4

    .line 319
    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->SESSION_IDLE:Lorg/apache/mina/core/session/IoEventType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 322
    :cond_4
    iget-boolean v1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionClosed:Z

    if-eqz v1, :cond_5

    .line 323
    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->SESSION_CLOSED:Lorg/apache/mina/core/session/IoEventType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 326
    :cond_5
    return-object v0
.end method

.method public getMaximumTime(Lorg/apache/mina/core/session/IoEventType;)J
    .locals 2
    .param p1, "type"    # Lorg/apache/mina/core/session/IoEventType;

    .line 711
    sget-object v0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$1;->$SwitchMap$org$apache$mina$core$session$IoEventType:[I

    invoke-virtual {p1}, Lorg/apache/mina/core/session/IoEventType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 748
    :pswitch_0
    iget-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionOpened:Z

    if-eqz v0, :cond_0

    .line 749
    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionOpenedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-virtual {v0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->getMaximum()J

    move-result-wide v0

    return-wide v0

    .line 741
    :pswitch_1
    iget-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionIdle:Z

    if-eqz v0, :cond_0

    .line 742
    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionIdleTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-virtual {v0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->getMaximum()J

    move-result-wide v0

    return-wide v0

    .line 734
    :pswitch_2
    iget-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionCreated:Z

    if-eqz v0, :cond_0

    .line 735
    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionCreatedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-virtual {v0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->getMaximum()J

    move-result-wide v0

    return-wide v0

    .line 727
    :pswitch_3
    iget-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionClosed:Z

    if-eqz v0, :cond_0

    .line 728
    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionClosedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-virtual {v0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->getMaximum()J

    move-result-wide v0

    return-wide v0

    .line 720
    :pswitch_4
    iget-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileMessageSent:Z

    if-eqz v0, :cond_0

    .line 721
    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->messageSentTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-virtual {v0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->getMaximum()J

    move-result-wide v0

    return-wide v0

    .line 713
    :pswitch_5
    iget-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileMessageReceived:Z

    if-eqz v0, :cond_0

    .line 714
    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->messageReceivedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-virtual {v0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->getMaximum()J

    move-result-wide v0

    return-wide v0

    .line 758
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You are not monitoring this event.  Please add this event first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getMinimumTime(Lorg/apache/mina/core/session/IoEventType;)J
    .locals 2
    .param p1, "type"    # Lorg/apache/mina/core/session/IoEventType;

    .line 653
    sget-object v0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$1;->$SwitchMap$org$apache$mina$core$session$IoEventType:[I

    invoke-virtual {p1}, Lorg/apache/mina/core/session/IoEventType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 690
    :pswitch_0
    iget-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionOpened:Z

    if-eqz v0, :cond_0

    .line 691
    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionOpenedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-virtual {v0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->getMinimum()J

    move-result-wide v0

    return-wide v0

    .line 683
    :pswitch_1
    iget-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionIdle:Z

    if-eqz v0, :cond_0

    .line 684
    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionIdleTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-virtual {v0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->getMinimum()J

    move-result-wide v0

    return-wide v0

    .line 676
    :pswitch_2
    iget-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionCreated:Z

    if-eqz v0, :cond_0

    .line 677
    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionCreatedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-virtual {v0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->getMinimum()J

    move-result-wide v0

    return-wide v0

    .line 669
    :pswitch_3
    iget-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionClosed:Z

    if-eqz v0, :cond_0

    .line 670
    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionClosedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-virtual {v0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->getMinimum()J

    move-result-wide v0

    return-wide v0

    .line 662
    :pswitch_4
    iget-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileMessageSent:Z

    if-eqz v0, :cond_0

    .line 663
    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->messageSentTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-virtual {v0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->getMinimum()J

    move-result-wide v0

    return-wide v0

    .line 655
    :pswitch_5
    iget-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileMessageReceived:Z

    if-eqz v0, :cond_0

    .line 656
    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->messageReceivedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-virtual {v0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->getMinimum()J

    move-result-wide v0

    return-wide v0

    .line 700
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You are not monitoring this event.  Please add this event first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getTotalCalls(Lorg/apache/mina/core/session/IoEventType;)J
    .locals 2
    .param p1, "type"    # Lorg/apache/mina/core/session/IoEventType;

    .line 537
    sget-object v0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$1;->$SwitchMap$org$apache$mina$core$session$IoEventType:[I

    invoke-virtual {p1}, Lorg/apache/mina/core/session/IoEventType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 574
    :pswitch_0
    iget-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionOpened:Z

    if-eqz v0, :cond_0

    .line 575
    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionOpenedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-virtual {v0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->getCallsNumber()J

    move-result-wide v0

    return-wide v0

    .line 567
    :pswitch_1
    iget-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionIdle:Z

    if-eqz v0, :cond_0

    .line 568
    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionIdleTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-virtual {v0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->getCallsNumber()J

    move-result-wide v0

    return-wide v0

    .line 560
    :pswitch_2
    iget-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionCreated:Z

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionCreatedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-virtual {v0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->getCallsNumber()J

    move-result-wide v0

    return-wide v0

    .line 553
    :pswitch_3
    iget-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionClosed:Z

    if-eqz v0, :cond_0

    .line 554
    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionClosedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-virtual {v0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->getCallsNumber()J

    move-result-wide v0

    return-wide v0

    .line 546
    :pswitch_4
    iget-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileMessageSent:Z

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->messageSentTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-virtual {v0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->getCallsNumber()J

    move-result-wide v0

    return-wide v0

    .line 539
    :pswitch_5
    iget-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileMessageReceived:Z

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->messageReceivedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-virtual {v0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->getCallsNumber()J

    move-result-wide v0

    return-wide v0

    .line 584
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You are not monitoring this event.  Please add this event first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getTotalTime(Lorg/apache/mina/core/session/IoEventType;)J
    .locals 2
    .param p1, "type"    # Lorg/apache/mina/core/session/IoEventType;

    .line 595
    sget-object v0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$1;->$SwitchMap$org$apache$mina$core$session$IoEventType:[I

    invoke-virtual {p1}, Lorg/apache/mina/core/session/IoEventType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 632
    :pswitch_0
    iget-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionOpened:Z

    if-eqz v0, :cond_0

    .line 633
    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionOpenedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-virtual {v0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->getTotal()J

    move-result-wide v0

    return-wide v0

    .line 625
    :pswitch_1
    iget-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionIdle:Z

    if-eqz v0, :cond_0

    .line 626
    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionIdleTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-virtual {v0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->getTotal()J

    move-result-wide v0

    return-wide v0

    .line 618
    :pswitch_2
    iget-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionCreated:Z

    if-eqz v0, :cond_0

    .line 619
    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionCreatedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-virtual {v0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->getTotal()J

    move-result-wide v0

    return-wide v0

    .line 611
    :pswitch_3
    iget-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionClosed:Z

    if-eqz v0, :cond_0

    .line 612
    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionClosedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-virtual {v0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->getTotal()J

    move-result-wide v0

    return-wide v0

    .line 604
    :pswitch_4
    iget-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileMessageSent:Z

    if-eqz v0, :cond_0

    .line 605
    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->messageSentTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-virtual {v0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->getTotal()J

    move-result-wide v0

    return-wide v0

    .line 597
    :pswitch_5
    iget-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileMessageReceived:Z

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->messageReceivedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-virtual {v0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->getTotal()J

    move-result-wide v0

    return-wide v0

    .line 642
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You are not monitoring this event.  Please add this event first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public messageReceived(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    .locals 7
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 352
    iget-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileMessageReceived:Z

    if-eqz v0, :cond_0

    .line 353
    invoke-direct {p0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->timeNow()J

    move-result-wide v0

    .line 354
    .local v0, "start":J
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageReceived(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    .line 355
    invoke-direct {p0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->timeNow()J

    move-result-wide v2

    .line 356
    .local v2, "end":J
    iget-object v4, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->messageReceivedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    sub-long v5, v2, v0

    invoke-virtual {v4, v5, v6}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->addNewDuration(J)V

    .line 357
    .end local v0    # "start":J
    .end local v2    # "end":J
    goto :goto_0

    .line 358
    :cond_0
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageReceived(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    .line 360
    :goto_0
    return-void
.end method

.method public messageSent(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 7
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "writeRequest"    # Lorg/apache/mina/core/write/WriteRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 375
    iget-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileMessageSent:Z

    if-eqz v0, :cond_0

    .line 376
    invoke-direct {p0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->timeNow()J

    move-result-wide v0

    .line 377
    .local v0, "start":J
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageSent(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    .line 378
    invoke-direct {p0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->timeNow()J

    move-result-wide v2

    .line 379
    .local v2, "end":J
    iget-object v4, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->messageSentTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    sub-long v5, v2, v0

    invoke-virtual {v4, v5, v6}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->addNewDuration(J)V

    .line 380
    .end local v0    # "start":J
    .end local v2    # "end":J
    goto :goto_0

    .line 381
    :cond_0
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageSent(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    .line 383
    :goto_0
    return-void
.end method

.method public profile(Lorg/apache/mina/core/session/IoEventType;)V
    .locals 2
    .param p1, "type"    # Lorg/apache/mina/core/session/IoEventType;

    .line 197
    sget-object v0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$1;->$SwitchMap$org$apache$mina$core$session$IoEventType:[I

    invoke-virtual {p1}, Lorg/apache/mina/core/session/IoEventType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 255
    return-void

    .line 244
    :pswitch_0
    iput-boolean v1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionOpened:Z

    .line 246
    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionOpenedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    if-nez v0, :cond_0

    .line 247
    new-instance v0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-direct {v0, p0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;-><init>(Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;)V

    iput-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionOpenedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    .line 250
    :cond_0
    return-void

    .line 235
    :pswitch_1
    iput-boolean v1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionIdle:Z

    .line 237
    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionIdleTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    if-nez v0, :cond_1

    .line 238
    new-instance v0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-direct {v0, p0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;-><init>(Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;)V

    iput-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionIdleTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    .line 241
    :cond_1
    return-void

    .line 226
    :pswitch_2
    iput-boolean v1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionCreated:Z

    .line 228
    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionCreatedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    if-nez v0, :cond_2

    .line 229
    new-instance v0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-direct {v0, p0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;-><init>(Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;)V

    iput-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionCreatedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    .line 232
    :cond_2
    return-void

    .line 217
    :pswitch_3
    iput-boolean v1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionClosed:Z

    .line 219
    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionClosedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    if-nez v0, :cond_3

    .line 220
    new-instance v0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-direct {v0, p0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;-><init>(Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;)V

    iput-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionClosedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    .line 223
    :cond_3
    return-void

    .line 208
    :pswitch_4
    iput-boolean v1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileMessageSent:Z

    .line 210
    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->messageSentTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    if-nez v0, :cond_4

    .line 211
    new-instance v0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-direct {v0, p0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;-><init>(Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;)V

    iput-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->messageSentTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    .line 214
    :cond_4
    return-void

    .line 199
    :pswitch_5
    iput-boolean v1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileMessageReceived:Z

    .line 201
    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->messageReceivedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    if-nez v0, :cond_5

    .line 202
    new-instance v0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-direct {v0, p0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;-><init>(Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;)V

    iput-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->messageReceivedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    .line 205
    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public sessionClosed(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 7
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 461
    iget-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionClosed:Z

    if-eqz v0, :cond_0

    .line 462
    invoke-direct {p0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->timeNow()J

    move-result-wide v0

    .line 463
    .local v0, "start":J
    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionClosed(Lorg/apache/mina/core/session/IoSession;)V

    .line 464
    invoke-direct {p0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->timeNow()J

    move-result-wide v2

    .line 465
    .local v2, "end":J
    iget-object v4, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionClosedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    sub-long v5, v2, v0

    invoke-virtual {v4, v5, v6}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->addNewDuration(J)V

    .line 466
    .end local v0    # "start":J
    .end local v2    # "end":J
    goto :goto_0

    .line 467
    :cond_0
    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionClosed(Lorg/apache/mina/core/session/IoSession;)V

    .line 469
    :goto_0
    return-void
.end method

.method public sessionCreated(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 7
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 396
    iget-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionCreated:Z

    if-eqz v0, :cond_0

    .line 397
    invoke-direct {p0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->timeNow()J

    move-result-wide v0

    .line 398
    .local v0, "start":J
    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionCreated(Lorg/apache/mina/core/session/IoSession;)V

    .line 399
    invoke-direct {p0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->timeNow()J

    move-result-wide v2

    .line 400
    .local v2, "end":J
    iget-object v4, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionCreatedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    sub-long v5, v2, v0

    invoke-virtual {v4, v5, v6}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->addNewDuration(J)V

    .line 401
    .end local v0    # "start":J
    .end local v2    # "end":J
    goto :goto_0

    .line 402
    :cond_0
    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionCreated(Lorg/apache/mina/core/session/IoSession;)V

    .line 404
    :goto_0
    return-void
.end method

.method public sessionIdle(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/session/IdleStatus;)V
    .locals 7
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "status"    # Lorg/apache/mina/core/session/IdleStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 440
    iget-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionIdle:Z

    if-eqz v0, :cond_0

    .line 441
    invoke-direct {p0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->timeNow()J

    move-result-wide v0

    .line 442
    .local v0, "start":J
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionIdle(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/session/IdleStatus;)V

    .line 443
    invoke-direct {p0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->timeNow()J

    move-result-wide v2

    .line 444
    .local v2, "end":J
    iget-object v4, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionIdleTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    sub-long v5, v2, v0

    invoke-virtual {v4, v5, v6}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->addNewDuration(J)V

    .line 445
    .end local v0    # "start":J
    .end local v2    # "end":J
    goto :goto_0

    .line 446
    :cond_0
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionIdle(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/session/IdleStatus;)V

    .line 448
    :goto_0
    return-void
.end method

.method public sessionOpened(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 7
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 417
    iget-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionOpened:Z

    if-eqz v0, :cond_0

    .line 418
    invoke-direct {p0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->timeNow()J

    move-result-wide v0

    .line 419
    .local v0, "start":J
    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionOpened(Lorg/apache/mina/core/session/IoSession;)V

    .line 420
    invoke-direct {p0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->timeNow()J

    move-result-wide v2

    .line 421
    .local v2, "end":J
    iget-object v4, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionOpenedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    sub-long v5, v2, v0

    invoke-virtual {v4, v5, v6}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->addNewDuration(J)V

    .line 422
    .end local v0    # "start":J
    .end local v2    # "end":J
    goto :goto_0

    .line 423
    :cond_0
    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionOpened(Lorg/apache/mina/core/session/IoSession;)V

    .line 425
    :goto_0
    return-void
.end method

.method public varargs setEventsToProfile([Lorg/apache/mina/core/session/IoEventType;)V
    .locals 0
    .param p1, "eventTypes"    # [Lorg/apache/mina/core/session/IoEventType;

    .line 336
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->setProfilers([Lorg/apache/mina/core/session/IoEventType;)V

    .line 337
    return-void
.end method

.method public setTimeUnit(Ljava/util/concurrent/TimeUnit;)V
    .locals 0
    .param p1, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .line 187
    iput-object p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->timeUnit:Ljava/util/concurrent/TimeUnit;

    .line 188
    return-void
.end method

.method public stopProfile(Lorg/apache/mina/core/session/IoEventType;)V
    .locals 2
    .param p1, "type"    # Lorg/apache/mina/core/session/IoEventType;

    .line 264
    sget-object v0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$1;->$SwitchMap$org$apache$mina$core$session$IoEventType:[I

    invoke-virtual {p1}, Lorg/apache/mina/core/session/IoEventType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 290
    return-void

    .line 286
    :pswitch_0
    iput-boolean v1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionOpened:Z

    .line 287
    return-void

    .line 282
    :pswitch_1
    iput-boolean v1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionIdle:Z

    .line 283
    return-void

    .line 278
    :pswitch_2
    iput-boolean v1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionCreated:Z

    .line 279
    return-void

    .line 274
    :pswitch_3
    iput-boolean v1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionClosed:Z

    .line 275
    return-void

    .line 270
    :pswitch_4
    iput-boolean v1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileMessageSent:Z

    .line 271
    return-void

    .line 266
    :pswitch_5
    iput-boolean v1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileMessageReceived:Z

    .line 267
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
