.class public final Ld5/o;
.super Lcom/google/protobuf/y;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final ACTION_FIELD_NUMBER:I = 0x4

.field public static final BACKGROUND_HEX_COLOR_FIELD_NUMBER:I = 0x5

.field public static final BODY_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Ld5/o;

.field public static final IMAGE_URL_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/x0; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/x0;"
        }
    .end annotation
.end field

.field public static final TITLE_FIELD_NUMBER:I = 0x1


# instance fields
.field private action_:Ld5/n;

.field private backgroundHexColor_:Ljava/lang/String;

.field private bitField0_:I

.field private body_:Ld5/u;

.field private imageUrl_:Ljava/lang/String;

.field private title_:Ld5/u;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ld5/o;

    .line 2
    .line 3
    invoke-direct {v0}, Ld5/o;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ld5/o;->DEFAULT_INSTANCE:Ld5/o;

    .line 7
    .line 8
    const-class v1, Ld5/o;

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
    iput-object v0, p0, Ld5/o;->imageUrl_:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v0, p0, Ld5/o;->backgroundHexColor_:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method

.method public static q()Ld5/o;
    .registers 1

    .line 1
    sget-object v0, Ld5/o;->DEFAULT_INSTANCE:Ld5/o;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public final e(I)Ljava/lang/Object;
    .registers 8

    .line 1
    invoke-static {p1}, Lcom/bumptech/glide/g;->c(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    packed-switch p1, :pswitch_data_5c

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
    sget-object p1, Ld5/o;->PARSER:Lcom/google/protobuf/x0;

    .line 14
    .line 15
    if-nez p1, :cond_28

    .line 16
    .line 17
    const-class v1, Ld5/o;

    .line 18
    .line 19
    monitor-enter v1

    .line 20
    :try_start_13
    sget-object p1, Ld5/o;->PARSER:Lcom/google/protobuf/x0;

    .line 21
    .line 22
    if-nez p1, :cond_24

    .line 23
    .line 24
    new-instance p1, Lcom/google/protobuf/x;

    .line 25
    .line 26
    sget-object v0, Ld5/o;->DEFAULT_INSTANCE:Ld5/o;

    .line 27
    .line 28
    invoke-direct {p1, v0}, Lcom/google/protobuf/x;-><init>(Lcom/google/protobuf/y;)V

    .line 29
    .line 30
    .line 31
    sput-object p1, Ld5/o;->PARSER:Lcom/google/protobuf/x0;

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
    sget-object p1, Ld5/o;->DEFAULT_INSTANCE:Ld5/o;

    .line 43
    .line 44
    return-object p1

    .line 45
    :pswitch_2c
    new-instance p1, Ld5/a;

    .line 46
    .line 47
    sget-object v0, Ld5/o;->DEFAULT_INSTANCE:Ld5/o;

    .line 48
    .line 49
    invoke-direct {p1, v0}, Lcom/google/protobuf/w;-><init>(Lcom/google/protobuf/y;)V

    .line 50
    .line 51
    .line 52
    return-object p1

    .line 53
    :pswitch_34
    new-instance p1, Ld5/o;

    .line 54
    .line 55
    invoke-direct {p1}, Ld5/o;-><init>()V

    .line 56
    .line 57
    .line 58
    return-object p1

    .line 59
    :pswitch_3a
    const-string v0, "bitField0_"

    .line 60
    .line 61
    const-string v1, "title_"

    .line 62
    .line 63
    const-string v2, "body_"

    .line 64
    .line 65
    const-string v3, "imageUrl_"

    .line 66
    .line 67
    const-string v4, "action_"

    .line 68
    .line 69
    const-string v5, "backgroundHexColor_"

    .line 70
    .line 71
    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    const-string v0, "\u0000\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u1009\u0001\u0003\u0208\u0004\u1009\u0002\u0005\u0208"

    .line 76
    .line 77
    sget-object v1, Ld5/o;->DEFAULT_INSTANCE:Ld5/o;

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
    :pswitch_54
    const/4 p1, 0x0

    .line 86
    return-object p1

    .line 87
    :pswitch_56
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
    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_56
        :pswitch_54
        :pswitch_3a
        :pswitch_34
        :pswitch_2c
        :pswitch_29
        :pswitch_c
    .end packed-switch
.end method

.method public final n()Ld5/n;
    .registers 2

    .line 1
    iget-object v0, p0, Ld5/o;->action_:Ld5/n;

    .line 2
    .line 3
    if-nez v0, :cond_8

    .line 4
    .line 5
    invoke-static {}, Ld5/n;->o()Ld5/n;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_8
    return-object v0
.end method

.method public final o()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Ld5/o;->backgroundHexColor_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final p()Ld5/u;
    .registers 2

    .line 1
    iget-object v0, p0, Ld5/o;->body_:Ld5/u;

    .line 2
    .line 3
    if-nez v0, :cond_8

    .line 4
    .line 5
    invoke-static {}, Ld5/u;->n()Ld5/u;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_8
    return-object v0
.end method

.method public final r()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Ld5/o;->imageUrl_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final s()Ld5/u;
    .registers 2

    .line 1
    iget-object v0, p0, Ld5/o;->title_:Ld5/u;

    .line 2
    .line 3
    if-nez v0, :cond_8

    .line 4
    .line 5
    invoke-static {}, Ld5/u;->n()Ld5/u;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_8
    return-object v0
.end method

.method public final t()Z
    .registers 2

    .line 1
    iget v0, p0, Ld5/o;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x4

    .line 4
    .line 5
    if-eqz v0, :cond_8

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    return v0
.end method

.method public final u()Z
    .registers 2

    .line 1
    iget v0, p0, Ld5/o;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    if-eqz v0, :cond_8

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    return v0
.end method

.method public final v()Z
    .registers 3

    .line 1
    iget v0, p0, Ld5/o;->bitField0_:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-eqz v0, :cond_7

    .line 6
    .line 7
    return v1

    .line 8
    :cond_7
    const/4 v0, 0x0

    .line 9
    return v0
.end method
