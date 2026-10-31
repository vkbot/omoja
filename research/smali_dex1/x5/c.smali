.class public final Lx5/c;
.super Lcom/google/protobuf/y;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final CONTENT_FIELD_NUMBER:I = 0x3

.field public static final DATA_BUNDLE_FIELD_NUMBER:I = 0x8

.field private static final DEFAULT_INSTANCE:Lx5/c;

.field public static final EXPERIMENTAL_PAYLOAD_FIELD_NUMBER:I = 0x2

.field public static final IS_TEST_CAMPAIGN_FIELD_NUMBER:I = 0x7

.field private static volatile PARSER:Lcom/google/protobuf/x0; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/x0;"
        }
    .end annotation
.end field

.field public static final PRIORITY_FIELD_NUMBER:I = 0x4

.field public static final TRIGGERING_CONDITIONS_FIELD_NUMBER:I = 0x5

.field public static final VANILLA_PAYLOAD_FIELD_NUMBER:I = 0x1


# instance fields
.field private bitField0_:I

.field private content_:Ld5/r;

.field private dataBundle_:Lcom/google/protobuf/o0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/o0;"
        }
    .end annotation
.end field

.field private isTestCampaign_:Z

.field private payloadCase_:I

.field private payload_:Ljava/lang/Object;

.field private priority_:Ld5/c;

.field private triggeringConditions_:Lcom/google/protobuf/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/a0;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lx5/c;

    .line 2
    .line 3
    invoke-direct {v0}, Lx5/c;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lx5/c;->DEFAULT_INSTANCE:Lx5/c;

    .line 7
    .line 8
    const-class v1, Lx5/c;

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
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lx5/c;->payloadCase_:I

    .line 6
    .line 7
    sget-object v0, Lcom/google/protobuf/o0;->c:Lcom/google/protobuf/o0;

    .line 8
    .line 9
    iput-object v0, p0, Lx5/c;->dataBundle_:Lcom/google/protobuf/o0;

    .line 10
    .line 11
    sget-object v0, Lcom/google/protobuf/z0;->e:Lcom/google/protobuf/z0;

    .line 12
    .line 13
    iput-object v0, p0, Lx5/c;->triggeringConditions_:Lcom/google/protobuf/a0;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final e(I)Ljava/lang/Object;
    .registers 14

    .line 1
    invoke-static {p1}, Lcom/bumptech/glide/g;->c(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    packed-switch p1, :pswitch_data_68

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
    sget-object p1, Lx5/c;->PARSER:Lcom/google/protobuf/x0;

    .line 14
    .line 15
    if-nez p1, :cond_28

    .line 16
    .line 17
    const-class v1, Lx5/c;

    .line 18
    .line 19
    monitor-enter v1

    .line 20
    :try_start_13
    sget-object p1, Lx5/c;->PARSER:Lcom/google/protobuf/x0;

    .line 21
    .line 22
    if-nez p1, :cond_24

    .line 23
    .line 24
    new-instance p1, Lcom/google/protobuf/x;

    .line 25
    .line 26
    sget-object v0, Lx5/c;->DEFAULT_INSTANCE:Lx5/c;

    .line 27
    .line 28
    invoke-direct {p1, v0}, Lcom/google/protobuf/x;-><init>(Lcom/google/protobuf/y;)V

    .line 29
    .line 30
    .line 31
    sput-object p1, Lx5/c;->PARSER:Lcom/google/protobuf/x0;

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
    sget-object p1, Lx5/c;->DEFAULT_INSTANCE:Lx5/c;

    .line 43
    .line 44
    return-object p1

    .line 45
    :pswitch_2c
    new-instance p1, Ld5/a;

    .line 46
    .line 47
    sget-object v0, Lx5/c;->DEFAULT_INSTANCE:Lx5/c;

    .line 48
    .line 49
    invoke-direct {p1, v0}, Lcom/google/protobuf/w;-><init>(Lcom/google/protobuf/y;)V

    .line 50
    .line 51
    .line 52
    return-object p1

    .line 53
    :pswitch_34
    new-instance p1, Lx5/c;

    .line 54
    .line 55
    invoke-direct {p1}, Lx5/c;-><init>()V

    .line 56
    .line 57
    .line 58
    return-object p1

    .line 59
    :pswitch_3a
    const-string v0, "payload_"

    .line 60
    .line 61
    const-string v1, "payloadCase_"

    .line 62
    .line 63
    const-string v2, "bitField0_"

    .line 64
    .line 65
    const-class v3, Lx5/d;

    .line 66
    .line 67
    const-class v4, Lx5/a;

    .line 68
    .line 69
    const-string v5, "content_"

    .line 70
    .line 71
    const-string v6, "priority_"

    .line 72
    .line 73
    const-string v7, "triggeringConditions_"

    .line 74
    .line 75
    const-class v8, Ld5/f;

    .line 76
    .line 77
    const-string v9, "isTestCampaign_"

    .line 78
    .line 79
    const-string v10, "dataBundle_"

    .line 80
    .line 81
    sget-object v11, Lx5/b;->a:Lcom/google/protobuf/n0;

    .line 82
    .line 83
    filled-new-array/range {v0 .. v11}, [Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    const-string v0, "\u0000\u0007\u0001\u0001\u0001\u0008\u0007\u0001\u0001\u0000\u0001<\u0000\u0002<\u0000\u0003\u1009\u0000\u0004\u1009\u0001\u0005\u001b\u0007\u0007\u00082"

    .line 88
    .line 89
    sget-object v1, Lx5/c;->DEFAULT_INSTANCE:Lx5/c;

    .line 90
    .line 91
    new-instance v2, Lcom/google/protobuf/a1;

    .line 92
    .line 93
    invoke-direct {v2, v1, v0, p1}, Lcom/google/protobuf/a1;-><init>(Lcom/google/protobuf/a;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    return-object v2

    .line 97
    :pswitch_60
    const/4 p1, 0x0

    .line 98
    return-object p1

    .line 99
    :pswitch_62
    const/4 p1, 0x1

    .line 100
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    return-object p1

    .line 105
    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_62
        :pswitch_60
        :pswitch_3a
        :pswitch_34
        :pswitch_2c
        :pswitch_29
        :pswitch_c
    .end packed-switch
.end method

.method public final n()Ld5/r;
    .registers 2

    .line 1
    iget-object v0, p0, Lx5/c;->content_:Ld5/r;

    .line 2
    .line 3
    if-nez v0, :cond_8

    .line 4
    .line 5
    invoke-static {}, Ld5/r;->p()Ld5/r;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_8
    return-object v0
.end method

.method public final o()Ljava/util/Map;
    .registers 2

    .line 1
    iget-object v0, p0, Lx5/c;->dataBundle_:Lcom/google/protobuf/o0;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final p()Lx5/a;
    .registers 3

    .line 1
    iget v0, p0, Lx5/c;->payloadCase_:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_a

    .line 5
    .line 6
    iget-object v0, p0, Lx5/c;->payload_:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lx5/a;

    .line 9
    .line 10
    return-object v0

    .line 11
    :cond_a
    invoke-static {}, Lx5/a;->r()Lx5/a;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public final q()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lx5/c;->isTestCampaign_:Z

    .line 2
    .line 3
    return v0
.end method

.method public final r()I
    .registers 3

    .line 1
    iget v0, p0, Lx5/c;->payloadCase_:I

    .line 2
    .line 3
    if-eqz v0, :cond_d

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_c

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    if-eq v0, v1, :cond_c

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return v0

    .line 13
    :cond_c
    return v1

    .line 14
    :cond_d
    const/4 v0, 0x3

    .line 15
    return v0
.end method

.method public final s()Ld5/c;
    .registers 2

    .line 1
    iget-object v0, p0, Lx5/c;->priority_:Ld5/c;

    .line 2
    .line 3
    if-nez v0, :cond_8

    .line 4
    .line 5
    invoke-static {}, Ld5/c;->n()Ld5/c;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_8
    return-object v0
.end method

.method public final t()Lcom/google/protobuf/a0;
    .registers 2

    .line 1
    iget-object v0, p0, Lx5/c;->triggeringConditions_:Lcom/google/protobuf/a0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final u()Lx5/d;
    .registers 3

    .line 1
    iget v0, p0, Lx5/c;->payloadCase_:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_a

    .line 5
    .line 6
    iget-object v0, p0, Lx5/c;->payload_:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lx5/d;

    .line 9
    .line 10
    return-object v0

    .line 11
    :cond_a
    invoke-static {}, Lx5/d;->r()Lx5/d;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method
