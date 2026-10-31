.class public final Ld5/i;
.super Lcom/google/protobuf/y;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final ACTIVATE_EVENT_TO_LOG_FIELD_NUMBER:I = 0x8

.field public static final CLEAR_EVENT_TO_LOG_FIELD_NUMBER:I = 0x9

.field private static final DEFAULT_INSTANCE:Ld5/i;

.field public static final EXPERIMENT_ID_FIELD_NUMBER:I = 0x1

.field public static final EXPERIMENT_START_TIME_MILLIS_FIELD_NUMBER:I = 0x3

.field public static final ONGOING_EXPERIMENTS_FIELD_NUMBER:I = 0xd

.field public static final OVERFLOW_POLICY_FIELD_NUMBER:I = 0xc

.field private static volatile PARSER:Lcom/google/protobuf/x0; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/x0;"
        }
    .end annotation
.end field

.field public static final SET_EVENT_TO_LOG_FIELD_NUMBER:I = 0x7

.field public static final TIMEOUT_EVENT_TO_LOG_FIELD_NUMBER:I = 0xa

.field public static final TIME_TO_LIVE_MILLIS_FIELD_NUMBER:I = 0x6

.field public static final TRIGGER_EVENT_FIELD_NUMBER:I = 0x4

.field public static final TRIGGER_TIMEOUT_MILLIS_FIELD_NUMBER:I = 0x5

.field public static final TTL_EXPIRY_EVENT_TO_LOG_FIELD_NUMBER:I = 0xb

.field public static final VARIANT_ID_FIELD_NUMBER:I = 0x2


# instance fields
.field private activateEventToLog_:Ljava/lang/String;

.field private clearEventToLog_:Ljava/lang/String;

.field private experimentId_:Ljava/lang/String;

.field private experimentStartTimeMillis_:J

.field private ongoingExperiments_:Lcom/google/protobuf/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/a0;"
        }
    .end annotation
.end field

.field private overflowPolicy_:I

.field private setEventToLog_:Ljava/lang/String;

.field private timeToLiveMillis_:J

.field private timeoutEventToLog_:Ljava/lang/String;

.field private triggerEvent_:Ljava/lang/String;

.field private triggerTimeoutMillis_:J

.field private ttlExpiryEventToLog_:Ljava/lang/String;

.field private variantId_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ld5/i;

    .line 2
    .line 3
    invoke-direct {v0}, Ld5/i;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ld5/i;->DEFAULT_INSTANCE:Ld5/i;

    .line 7
    .line 8
    const-class v1, Ld5/i;

    .line 9
    .line 10
    invoke-static {v1, v0}, Lcom/google/protobuf/y;->l(Ljava/lang/Class;Lcom/google/protobuf/y;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/y;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Ld5/i;->experimentId_:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v0, p0, Ld5/i;->variantId_:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v0, p0, Ld5/i;->triggerEvent_:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v0, p0, Ld5/i;->setEventToLog_:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v0, p0, Ld5/i;->activateEventToLog_:Ljava/lang/String;

    .line 15
    .line 16
    iput-object v0, p0, Ld5/i;->clearEventToLog_:Ljava/lang/String;

    .line 17
    .line 18
    iput-object v0, p0, Ld5/i;->timeoutEventToLog_:Ljava/lang/String;

    .line 19
    .line 20
    iput-object v0, p0, Ld5/i;->ttlExpiryEventToLog_:Ljava/lang/String;

    .line 21
    .line 22
    sget-object v0, Lcom/google/protobuf/z0;->e:Lcom/google/protobuf/z0;

    .line 23
    .line 24
    iput-object v0, p0, Ld5/i;->ongoingExperiments_:Lcom/google/protobuf/a0;

    .line 25
    .line 26
    return-void
.end method

.method public static n()Ld5/i;
    .registers 1

    .line 1
    sget-object v0, Ld5/i;->DEFAULT_INSTANCE:Ld5/i;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public final e(I)Ljava/lang/Object;
    .registers 16

    .line 1
    invoke-static {p1}, Lcom/bumptech/glide/g;->c(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    packed-switch p1, :pswitch_data_6c

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroidx/navigation/b;->a()V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    return-object p1

    .line 13
    :pswitch_c
    sget-object p1, Ld5/i;->PARSER:Lcom/google/protobuf/x0;

    .line 14
    .line 15
    if-nez p1, :cond_28

    .line 16
    .line 17
    const-class v1, Ld5/i;

    .line 18
    .line 19
    monitor-enter v1

    .line 20
    :try_start_13
    sget-object p1, Ld5/i;->PARSER:Lcom/google/protobuf/x0;

    .line 21
    .line 22
    if-nez p1, :cond_24

    .line 23
    .line 24
    new-instance p1, Lcom/google/protobuf/x;

    .line 25
    .line 26
    sget-object v0, Ld5/i;->DEFAULT_INSTANCE:Ld5/i;

    .line 27
    .line 28
    invoke-direct {p1, v0}, Lcom/google/protobuf/x;-><init>(Lcom/google/protobuf/y;)V

    .line 29
    .line 30
    .line 31
    sput-object p1, Ld5/i;->PARSER:Lcom/google/protobuf/x0;

    .line 32
    .line 33
    goto :goto_24

    .line 34
    :catchall_21
    move-exception v0

    .line 35
    move-object p1, v0

    .line 36
    goto :goto_26

    .line 37
    :cond_24
    :goto_24
    monitor-exit v1

    .line 38
    return-object p1

    .line 39
    :goto_26
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_13 .. :try_end_27} :catchall_21

    .line 40
    throw p1

    .line 41
    :cond_28
    return-object p1

    .line 42
    :pswitch_29
    sget-object p1, Ld5/i;->DEFAULT_INSTANCE:Ld5/i;

    .line 43
    .line 44
    return-object p1

    .line 45
    :pswitch_2c
    new-instance p1, Ld5/a;

    .line 46
    .line 47
    sget-object v0, Ld5/i;->DEFAULT_INSTANCE:Ld5/i;

    .line 48
    .line 49
    invoke-direct {p1, v0}, Lcom/google/protobuf/w;-><init>(Lcom/google/protobuf/y;)V

    .line 50
    .line 51
    .line 52
    return-object p1

    .line 53
    :pswitch_34
    new-instance p1, Ld5/i;

    .line 54
    .line 55
    invoke-direct {p1}, Ld5/i;-><init>()V

    .line 56
    .line 57
    .line 58
    return-object p1

    .line 59
    :pswitch_3a
    const-string v0, "experimentId_"

    .line 60
    .line 61
    const-string v1, "variantId_"

    .line 62
    .line 63
    const-string v2, "experimentStartTimeMillis_"

    .line 64
    .line 65
    const-string v3, "triggerEvent_"

    .line 66
    .line 67
    const-string v4, "triggerTimeoutMillis_"

    .line 68
    .line 69
    const-string v5, "timeToLiveMillis_"

    .line 70
    .line 71
    const-string v6, "setEventToLog_"

    .line 72
    .line 73
    const-string v7, "activateEventToLog_"

    .line 74
    .line 75
    const-string v8, "clearEventToLog_"

    .line 76
    .line 77
    const-string v9, "timeoutEventToLog_"

    .line 78
    .line 79
    const-string v10, "ttlExpiryEventToLog_"

    .line 80
    .line 81
    const-string v11, "overflowPolicy_"

    .line 82
    .line 83
    const-string v12, "ongoingExperiments_"

    .line 84
    .line 85
    const-class v13, Ld5/h;

    .line 86
    .line 87
    filled-new-array/range {v0 .. v13}, [Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    const-string v0, "\u0000\r\u0000\u0000\u0001\r\r\u0000\u0001\u0000\u0001\u0208\u0002\u0208\u0003\u0002\u0004\u0208\u0005\u0002\u0006\u0002\u0007\u0208\u0008\u0208\t\u0208\n\u0208\u000b\u0208\u000c\u000c\r\u001b"

    .line 92
    .line 93
    sget-object v1, Ld5/i;->DEFAULT_INSTANCE:Ld5/i;

    .line 94
    .line 95
    new-instance v2, Lcom/google/protobuf/a1;

    .line 96
    .line 97
    invoke-direct {v2, v1, v0, p1}, Lcom/google/protobuf/a1;-><init>(Lcom/google/protobuf/a;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    return-object v2

    .line 101
    :pswitch_64
    const/4 p1, 0x0

    .line 102
    return-object p1

    .line 103
    :pswitch_66
    const/4 p1, 0x1

    .line 104
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    return-object p1

    .line 109
    :pswitch_data_6c
    .packed-switch 0x0
        :pswitch_66
        :pswitch_64
        :pswitch_3a
        :pswitch_34
        :pswitch_2c
        :pswitch_29
        :pswitch_c
    .end packed-switch
.end method

.method public final o()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Ld5/i;->experimentId_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final p()J
    .registers 3

    .line 1
    iget-wide v0, p0, Ld5/i;->experimentStartTimeMillis_:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final q()J
    .registers 3

    .line 1
    iget-wide v0, p0, Ld5/i;->timeToLiveMillis_:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final r()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Ld5/i;->triggerEvent_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final s()J
    .registers 3

    .line 1
    iget-wide v0, p0, Ld5/i;->triggerTimeoutMillis_:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final t()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Ld5/i;->variantId_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
