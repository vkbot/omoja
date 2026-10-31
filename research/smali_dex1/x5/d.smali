.class public final Lx5/d;
.super Lcom/google/protobuf/y;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final CAMPAIGN_END_TIME_MILLIS_FIELD_NUMBER:I = 0x4

.field public static final CAMPAIGN_ID_FIELD_NUMBER:I = 0x1

.field public static final CAMPAIGN_NAME_FIELD_NUMBER:I = 0x5

.field public static final CAMPAIGN_START_TIME_MILLIS_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lx5/d;

.field public static final EXPERIMENTAL_CAMPAIGN_ID_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/x0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/x0;"
        }
    .end annotation
.end field


# instance fields
.field private campaignEndTimeMillis_:J

.field private campaignId_:Ljava/lang/String;

.field private campaignName_:Ljava/lang/String;

.field private campaignStartTimeMillis_:J

.field private experimentalCampaignId_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lx5/d;

    .line 2
    .line 3
    invoke-direct {v0}, Lx5/d;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lx5/d;->DEFAULT_INSTANCE:Lx5/d;

    .line 7
    .line 8
    const-class v1, Lx5/d;

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
    iput-object v0, p0, Lx5/d;->campaignId_:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v0, p0, Lx5/d;->experimentalCampaignId_:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v0, p0, Lx5/d;->campaignName_:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method public static r()Lx5/d;
    .registers 1

    .line 1
    sget-object v0, Lx5/d;->DEFAULT_INSTANCE:Lx5/d;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public final e(I)Ljava/lang/Object;
    .registers 6

    .line 1
    invoke-static {p1}, Lcom/bumptech/glide/g;->c(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    packed-switch p1, :pswitch_data_5a

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
    sget-object p1, Lx5/d;->PARSER:Lcom/google/protobuf/x0;

    .line 14
    .line 15
    if-nez p1, :cond_27

    .line 16
    .line 17
    const-class v0, Lx5/d;

    .line 18
    .line 19
    monitor-enter v0

    .line 20
    :try_start_13
    sget-object p1, Lx5/d;->PARSER:Lcom/google/protobuf/x0;

    .line 21
    .line 22
    if-nez p1, :cond_23

    .line 23
    .line 24
    new-instance p1, Lcom/google/protobuf/x;

    .line 25
    .line 26
    sget-object v1, Lx5/d;->DEFAULT_INSTANCE:Lx5/d;

    .line 27
    .line 28
    invoke-direct {p1, v1}, Lcom/google/protobuf/x;-><init>(Lcom/google/protobuf/y;)V

    .line 29
    .line 30
    .line 31
    sput-object p1, Lx5/d;->PARSER:Lcom/google/protobuf/x0;

    .line 32
    .line 33
    goto :goto_23

    .line 34
    :catchall_21
    move-exception p1

    .line 35
    goto :goto_25

    .line 36
    :cond_23
    :goto_23
    monitor-exit v0

    .line 37
    return-object p1

    .line 38
    :goto_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_13 .. :try_end_26} :catchall_21

    .line 39
    throw p1

    .line 40
    :cond_27
    return-object p1

    .line 41
    :pswitch_28
    sget-object p1, Lx5/d;->DEFAULT_INSTANCE:Lx5/d;

    .line 42
    .line 43
    return-object p1

    .line 44
    :pswitch_2b
    new-instance p1, Ld5/a;

    .line 45
    .line 46
    sget-object v0, Lx5/d;->DEFAULT_INSTANCE:Lx5/d;

    .line 47
    .line 48
    invoke-direct {p1, v0}, Lcom/google/protobuf/w;-><init>(Lcom/google/protobuf/y;)V

    .line 49
    .line 50
    .line 51
    return-object p1

    .line 52
    :pswitch_33
    new-instance p1, Lx5/d;

    .line 53
    .line 54
    invoke-direct {p1}, Lx5/d;-><init>()V

    .line 55
    .line 56
    .line 57
    return-object p1

    .line 58
    :pswitch_39
    const-string p1, "campaignId_"

    .line 59
    .line 60
    const-string v0, "experimentalCampaignId_"

    .line 61
    .line 62
    const-string v1, "campaignStartTimeMillis_"

    .line 63
    .line 64
    const-string v2, "campaignEndTimeMillis_"

    .line 65
    .line 66
    const-string v3, "campaignName_"

    .line 67
    .line 68
    filled-new-array {p1, v0, v1, v2, v3}, [Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    const-string v0, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u0208\u0002\u0208\u0003\u0002\u0004\u0002\u0005\u0208"

    .line 73
    .line 74
    sget-object v1, Lx5/d;->DEFAULT_INSTANCE:Lx5/d;

    .line 75
    .line 76
    new-instance v2, Lcom/google/protobuf/a1;

    .line 77
    .line 78
    invoke-direct {v2, v1, v0, p1}, Lcom/google/protobuf/a1;-><init>(Lcom/google/protobuf/a;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    return-object v2

    .line 82
    :pswitch_51
    const/4 p1, 0x0

    .line 83
    return-object p1

    .line 84
    :pswitch_53
    const/4 p1, 0x1

    .line 85
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    return-object p1

    .line 90
    nop

    .line 91
    :pswitch_data_5a
    .packed-switch 0x0
        :pswitch_53
        :pswitch_51
        :pswitch_39
        :pswitch_33
        :pswitch_2b
        :pswitch_28
        :pswitch_c
    .end packed-switch
.end method

.method public final n()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lx5/d;->campaignEndTimeMillis_:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final o()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lx5/d;->campaignId_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final p()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lx5/d;->campaignName_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final q()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lx5/d;->campaignStartTimeMillis_:J

    .line 2
    .line 3
    return-wide v0
.end method
