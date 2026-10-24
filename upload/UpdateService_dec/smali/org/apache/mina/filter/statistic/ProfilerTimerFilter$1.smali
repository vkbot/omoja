.class synthetic Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$1;
.super Ljava/lang/Object;
.source "ProfilerTimerFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$java$util$concurrent$TimeUnit:[I

.field static final synthetic $SwitchMap$org$apache$mina$core$session$IoEventType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 860
    invoke-static {}, Ljava/util/concurrent/TimeUnit;->values()[Ljava/util/concurrent/TimeUnit;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$1;->$SwitchMap$java$util$concurrent$TimeUnit:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2}, Ljava/util/concurrent/TimeUnit;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$1;->$SwitchMap$java$util$concurrent$TimeUnit:[I

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3}, Ljava/util/concurrent/TimeUnit;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    :goto_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$1;->$SwitchMap$java$util$concurrent$TimeUnit:[I

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4}, Ljava/util/concurrent/TimeUnit;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v3

    .line 143
    :goto_2
    invoke-static {}, Lorg/apache/mina/core/session/IoEventType;->values()[Lorg/apache/mina/core/session/IoEventType;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$1;->$SwitchMap$org$apache$mina$core$session$IoEventType:[I

    :try_start_3
    sget-object v4, Lorg/apache/mina/core/session/IoEventType;->MESSAGE_RECEIVED:Lorg/apache/mina/core/session/IoEventType;

    invoke-virtual {v4}, Lorg/apache/mina/core/session/IoEventType;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v1

    :goto_3
    :try_start_4
    sget-object v1, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$1;->$SwitchMap$org$apache$mina$core$session$IoEventType:[I

    sget-object v3, Lorg/apache/mina/core/session/IoEventType;->MESSAGE_SENT:Lorg/apache/mina/core/session/IoEventType;

    invoke-virtual {v3}, Lorg/apache/mina/core/session/IoEventType;->ordinal()I

    move-result v3

    aput v0, v1, v3
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    :goto_4
    :try_start_5
    sget-object v0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$1;->$SwitchMap$org$apache$mina$core$session$IoEventType:[I

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->SESSION_CLOSED:Lorg/apache/mina/core/session/IoEventType;

    invoke-virtual {v1}, Lorg/apache/mina/core/session/IoEventType;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v0

    :goto_5
    :try_start_6
    sget-object v0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$1;->$SwitchMap$org$apache$mina$core$session$IoEventType:[I

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->SESSION_CREATED:Lorg/apache/mina/core/session/IoEventType;

    invoke-virtual {v1}, Lorg/apache/mina/core/session/IoEventType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception v0

    :goto_6
    :try_start_7
    sget-object v0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$1;->$SwitchMap$org$apache$mina$core$session$IoEventType:[I

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->SESSION_IDLE:Lorg/apache/mina/core/session/IoEventType;

    invoke-virtual {v1}, Lorg/apache/mina/core/session/IoEventType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_7

    :catch_7
    move-exception v0

    :goto_7
    :try_start_8
    sget-object v0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$1;->$SwitchMap$org$apache$mina$core$session$IoEventType:[I

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->SESSION_OPENED:Lorg/apache/mina/core/session/IoEventType;

    invoke-virtual {v1}, Lorg/apache/mina/core/session/IoEventType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_8

    :catch_8
    move-exception v0

    :goto_8
    return-void
.end method
