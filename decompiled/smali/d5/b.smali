.class public final Ld5/b;
.super Lcom/google/protobuf/y;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final COUNT_FIELD_NUMBER:I = 0x5

.field private static final DEFAULT_INSTANCE:Ld5/b;

.field public static final NAME_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/x0; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/x0;"
        }
    .end annotation
.end field

.field public static final PREVIOUS_TIMESTAMP_MILLIS_FIELD_NUMBER:I = 0x4

.field public static final TIMESTAMP_MILLIS_FIELD_NUMBER:I = 0x3

.field public static final TRIGGER_PARAMS_FIELD_NUMBER:I = 0x1


# instance fields
.field private count_:I

.field private name_:Ljava/lang/String;

.field private previousTimestampMillis_:J

.field private timestampMillis_:J

.field private triggerParams_:Lcom/google/protobuf/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/a0;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ld5/b;

    .line 2
    .line 3
    invoke-direct {v0}, Ld5/b;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ld5/b;->DEFAULT_INSTANCE:Ld5/b;

    .line 7
    .line 8
    const-class v1, Ld5/b;

    .line 9
    .line 10
    invoke-static {v1, v0}, Lcom/google/protobuf/y;->l(Ljava/lang/Class;Lcom/google/protobuf/y;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/y;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/google/protobuf/z0;->e:Lcom/google/protobuf/z0;

    .line 5
    .line 6
    iput-object v0, p0, Ld5/b;->triggerParams_:Lcom/google/protobuf/a0;

    .line 7
    .line 8
    const-string v0, ""

    .line 9
    .line 10
    iput-object v0, p0, Ld5/b;->name_:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method public static n()Ld5/b;
    .locals 1

    .line 1
    sget-object v0, Ld5/b;->DEFAULT_INSTANCE:Ld5/b;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public final e(I)Ljava/lang/Object;
    .locals 6

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
    sget-object p1, Ld5/b;->PARSER:Lcom/google/protobuf/x0;

    .line 14
    .line 15
    if-nez p1, :cond_1

    .line 16
    .line 17
    const-class v1, Ld5/b;

    .line 18
    .line 19
    monitor-enter v1

    .line 20
    :try_start_0
    sget-object p1, Ld5/b;->PARSER:Lcom/google/protobuf/x0;

    .line 21
    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    new-instance p1, Lcom/google/protobuf/x;

    .line 25
    .line 26
    sget-object v0, Ld5/b;->DEFAULT_INSTANCE:Ld5/b;

    .line 27
    .line 28
    invoke-direct {p1, v0}, Lcom/google/protobuf/x;-><init>(Lcom/google/protobuf/y;)V

    .line 29
    .line 30
    .line 31
    sput-object p1, Ld5/b;->PARSER:Lcom/google/protobuf/x0;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception v0

    .line 35
    move-object p1, v0

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    :goto_0
    monitor-exit v1

    .line 38
    return-object p1

    .line 39
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    throw p1

    .line 41
    :cond_1
    return-object p1

    .line 42
    :pswitch_1
    sget-object p1, Ld5/b;->DEFAULT_INSTANCE:Ld5/b;

    .line 43
    .line 44
    return-object p1

    .line 45
    :pswitch_2
    new-instance p1, Ld5/a;

    .line 46
    .line 47
    sget-object v0, Ld5/b;->DEFAULT_INSTANCE:Ld5/b;

    .line 48
    .line 49
    invoke-direct {p1, v0}, Lcom/google/protobuf/w;-><init>(Lcom/google/protobuf/y;)V

    .line 50
    .line 51
    .line 52
    return-object p1

    .line 53
    :pswitch_3
    new-instance p1, Ld5/b;

    .line 54
    .line 55
    invoke-direct {p1}, Ld5/b;-><init>()V

    .line 56
    .line 57
    .line 58
    return-object p1

    .line 59
    :pswitch_4
    const-string v0, "triggerParams_"

    .line 60
    .line 61
    const-class v1, Ld5/e;

    .line 62
    .line 63
    const-string v2, "name_"

    .line 64
    .line 65
    const-string v3, "timestampMillis_"

    .line 66
    .line 67
    const-string v4, "previousTimestampMillis_"

    .line 68
    .line 69
    const-string v5, "count_"

    .line 70
    .line 71
    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    const-string v0, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0001\u0000\u0001\u001b\u0002\u0208\u0003\u0002\u0004\u0002\u0005\u0004"

    .line 76
    .line 77
    sget-object v1, Ld5/b;->DEFAULT_INSTANCE:Ld5/b;

    .line 78
    .line 79
    new-instance v2, Lcom/google/protobuf/a1;

    .line 80
    .line 81
    invoke-direct {v2, v1, v0, p1}, Lcom/google/protobuf/a1;-><init>(Lcom/google/protobuf/a;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    return-object v2

    .line 85
    :pswitch_5
    const/4 p1, 0x0

    .line 86
    return-object p1

    .line 87
    :pswitch_6
    const/4 p1, 0x1

    .line 88
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    return-object p1

    .line 93
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

.method public final o()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ld5/b;->name_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
