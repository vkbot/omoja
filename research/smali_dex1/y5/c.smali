.class public final Ly5/c;
.super Lcom/google/protobuf/y;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final ALREADY_SEEN_CAMPAIGNS_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Ly5/c;

.field private static volatile PARSER:Lcom/google/protobuf/x0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/x0;"
        }
    .end annotation
.end field


# instance fields
.field private alreadySeenCampaigns_:Lcom/google/protobuf/a0;
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
    new-instance v0, Ly5/c;

    .line 2
    .line 3
    invoke-direct {v0}, Ly5/c;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ly5/c;->DEFAULT_INSTANCE:Ly5/c;

    .line 7
    .line 8
    const-class v1, Ly5/c;

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
    sget-object v0, Lcom/google/protobuf/z0;->e:Lcom/google/protobuf/z0;

    .line 5
    .line 6
    iput-object v0, p0, Ly5/c;->alreadySeenCampaigns_:Lcom/google/protobuf/a0;

    .line 7
    .line 8
    return-void
.end method

.method public static n(Ly5/c;Ly5/a;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ly5/c;->alreadySeenCampaigns_:Lcom/google/protobuf/a0;

    .line 5
    .line 6
    move-object v1, v0

    .line 7
    check-cast v1, Lcom/google/protobuf/b;

    .line 8
    .line 9
    iget-boolean v1, v1, Lcom/google/protobuf/b;->b:Z

    .line 10
    .line 11
    if-nez v1, :cond_1d

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_15

    .line 18
    .line 19
    const/16 v1, 0xa

    .line 20
    .line 21
    goto :goto_17

    .line 22
    :cond_15
    mul-int/lit8 v1, v1, 0x2

    .line 23
    .line 24
    :goto_17
    invoke-interface {v0, v1}, Lcom/google/protobuf/a0;->c(I)Lcom/google/protobuf/a0;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Ly5/c;->alreadySeenCampaigns_:Lcom/google/protobuf/a0;

    .line 29
    .line 30
    :cond_1d
    iget-object p0, p0, Ly5/c;->alreadySeenCampaigns_:Lcom/google/protobuf/a0;

    .line 31
    .line 32
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public static p()Ly5/c;
    .registers 1

    .line 1
    sget-object v0, Ly5/c;->DEFAULT_INSTANCE:Ly5/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public static q()Ly5/b;
    .registers 1

    .line 1
    sget-object v0, Ly5/c;->DEFAULT_INSTANCE:Ly5/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/y;->d()Lcom/google/protobuf/w;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ly5/b;

    .line 8
    .line 9
    return-object v0
.end method

.method public static r()Lcom/google/protobuf/x0;
    .registers 2

    .line 1
    sget-object v0, Ly5/c;->DEFAULT_INSTANCE:Ly5/c;

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    invoke-virtual {v0, v1}, Ly5/c;->e(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/google/protobuf/x0;

    .line 9
    .line 10
    return-object v0
.end method


# virtual methods
.method public final e(I)Ljava/lang/Object;
    .registers 5

    .line 1
    invoke-static {p1}, Lcom/bumptech/glide/g;->c(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    packed-switch p1, :pswitch_data_54

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
    sget-object p1, Ly5/c;->PARSER:Lcom/google/protobuf/x0;

    .line 14
    .line 15
    if-nez p1, :cond_27

    .line 16
    .line 17
    const-class v0, Ly5/c;

    .line 18
    .line 19
    monitor-enter v0

    .line 20
    :try_start_13
    sget-object p1, Ly5/c;->PARSER:Lcom/google/protobuf/x0;

    .line 21
    .line 22
    if-nez p1, :cond_23

    .line 23
    .line 24
    new-instance p1, Lcom/google/protobuf/x;

    .line 25
    .line 26
    sget-object v1, Ly5/c;->DEFAULT_INSTANCE:Ly5/c;

    .line 27
    .line 28
    invoke-direct {p1, v1}, Lcom/google/protobuf/x;-><init>(Lcom/google/protobuf/y;)V

    .line 29
    .line 30
    .line 31
    sput-object p1, Ly5/c;->PARSER:Lcom/google/protobuf/x0;

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
    sget-object p1, Ly5/c;->DEFAULT_INSTANCE:Ly5/c;

    .line 42
    .line 43
    return-object p1

    .line 44
    :pswitch_2b
    new-instance p1, Ly5/b;

    .line 45
    .line 46
    sget-object v0, Ly5/c;->DEFAULT_INSTANCE:Ly5/c;

    .line 47
    .line 48
    invoke-direct {p1, v0}, Lcom/google/protobuf/w;-><init>(Lcom/google/protobuf/y;)V

    .line 49
    .line 50
    .line 51
    return-object p1

    .line 52
    :pswitch_33
    new-instance p1, Ly5/c;

    .line 53
    .line 54
    invoke-direct {p1}, Ly5/c;-><init>()V

    .line 55
    .line 56
    .line 57
    return-object p1

    .line 58
    :pswitch_39
    const-string p1, "alreadySeenCampaigns_"

    .line 59
    .line 60
    const-class v0, Ly5/a;

    .line 61
    .line 62
    filled-new-array {p1, v0}, [Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    const-string v0, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b"

    .line 67
    .line 68
    sget-object v1, Ly5/c;->DEFAULT_INSTANCE:Ly5/c;

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
    :pswitch_4b
    const/4 p1, 0x0

    .line 77
    return-object p1

    .line 78
    :pswitch_4d
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
    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_4d
        :pswitch_4b
        :pswitch_39
        :pswitch_33
        :pswitch_2b
        :pswitch_28
        :pswitch_c
    .end packed-switch
.end method

.method public final o()Lcom/google/protobuf/a0;
    .registers 2

    .line 1
    iget-object v0, p0, Ly5/c;->alreadySeenCampaigns_:Lcom/google/protobuf/a0;

    .line 2
    .line 3
    return-object v0
.end method
