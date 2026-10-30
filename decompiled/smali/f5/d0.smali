.class public final Lf5/d0;
.super Lcom/google/protobuf/y;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field private static final DEFAULT_INSTANCE:Lf5/d0;

.field private static volatile PARSER:Lcom/google/protobuf/x0; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/x0;"
        }
    .end annotation
.end field

.field public static final START_TIME_EPOCH_FIELD_NUMBER:I = 0x2

.field public static final VALUE_FIELD_NUMBER:I = 0x1


# instance fields
.field private startTimeEpoch_:J

.field private value_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lf5/d0;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/protobuf/y;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lf5/d0;->DEFAULT_INSTANCE:Lf5/d0;

    .line 7
    .line 8
    const-class v1, Lf5/d0;

    .line 9
    .line 10
    invoke-static {v1, v0}, Lcom/google/protobuf/y;->l(Ljava/lang/Class;Lcom/google/protobuf/y;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static n(Lf5/d0;)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lf5/d0;->value_:J

    .line 4
    .line 5
    return-void
.end method

.method public static o(Lf5/d0;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lf5/d0;->startTimeEpoch_:J

    .line 2
    .line 3
    return-void
.end method

.method public static p()Lf5/d0;
    .locals 1

    .line 1
    sget-object v0, Lf5/d0;->DEFAULT_INSTANCE:Lf5/d0;

    .line 2
    .line 3
    return-object v0
.end method

.method public static s()Lf5/c0;
    .locals 1

    .line 1
    sget-object v0, Lf5/d0;->DEFAULT_INSTANCE:Lf5/d0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/y;->d()Lcom/google/protobuf/w;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lf5/c0;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final e(I)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/bumptech/glide/g;->c(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    packed-switch p1, :pswitch_data_0

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
    :pswitch_0
    sget-object p1, Lf5/d0;->PARSER:Lcom/google/protobuf/x0;

    .line 14
    .line 15
    if-nez p1, :cond_1

    .line 16
    .line 17
    const-class v0, Lf5/d0;

    .line 18
    .line 19
    monitor-enter v0

    .line 20
    :try_start_0
    sget-object p1, Lf5/d0;->PARSER:Lcom/google/protobuf/x0;

    .line 21
    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    new-instance p1, Lcom/google/protobuf/x;

    .line 25
    .line 26
    sget-object v1, Lf5/d0;->DEFAULT_INSTANCE:Lf5/d0;

    .line 27
    .line 28
    invoke-direct {p1, v1}, Lcom/google/protobuf/x;-><init>(Lcom/google/protobuf/y;)V

    .line 29
    .line 30
    .line 31
    sput-object p1, Lf5/d0;->PARSER:Lcom/google/protobuf/x0;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    :goto_0
    monitor-exit v0

    .line 37
    return-object p1

    .line 38
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    throw p1

    .line 40
    :cond_1
    return-object p1

    .line 41
    :pswitch_1
    sget-object p1, Lf5/d0;->DEFAULT_INSTANCE:Lf5/d0;

    .line 42
    .line 43
    return-object p1

    .line 44
    :pswitch_2
    new-instance p1, Lf5/c0;

    .line 45
    .line 46
    sget-object v0, Lf5/d0;->DEFAULT_INSTANCE:Lf5/d0;

    .line 47
    .line 48
    invoke-direct {p1, v0}, Lcom/google/protobuf/w;-><init>(Lcom/google/protobuf/y;)V

    .line 49
    .line 50
    .line 51
    return-object p1

    .line 52
    :pswitch_3
    new-instance p1, Lf5/d0;

    .line 53
    .line 54
    invoke-direct {p1}, Lcom/google/protobuf/y;-><init>()V

    .line 55
    .line 56
    .line 57
    return-object p1

    .line 58
    :pswitch_4
    const-string p1, "value_"

    .line 59
    .line 60
    const-string v0, "startTimeEpoch_"

    .line 61
    .line 62
    filled-new-array {p1, v0}, [Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    const-string v0, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0002\u0002\u0002"

    .line 67
    .line 68
    sget-object v1, Lf5/d0;->DEFAULT_INSTANCE:Lf5/d0;

    .line 69
    .line 70
    new-instance v2, Lcom/google/protobuf/a1;

    .line 71
    .line 72
    invoke-direct {v2, v1, v0, p1}, Lcom/google/protobuf/a1;-><init>(Lcom/google/protobuf/a;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    return-object v2

    .line 76
    :pswitch_5
    const/4 p1, 0x0

    .line 77
    return-object p1

    .line 78
    :pswitch_6
    const/4 p1, 0x1

    .line 79
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    return-object p1

    .line 84
    nop

    .line 85
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final q()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lf5/d0;->startTimeEpoch_:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final r()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lf5/d0;->value_:J

    .line 2
    .line 3
    return-wide v0
.end method
