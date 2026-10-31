.class public final Ld5/p;
.super Lcom/google/protobuf/y;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final BUTTON_HEX_COLOR_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Ld5/p;

.field private static volatile PARSER:Lcom/google/protobuf/x0; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/x0;"
        }
    .end annotation
.end field

.field public static final TEXT_FIELD_NUMBER:I = 0x1


# instance fields
.field private bitField0_:I

.field private buttonHexColor_:Ljava/lang/String;

.field private text_:Ld5/u;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ld5/p;

    .line 2
    .line 3
    invoke-direct {v0}, Ld5/p;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ld5/p;->DEFAULT_INSTANCE:Ld5/p;

    .line 7
    .line 8
    const-class v1, Ld5/p;

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
    iput-object v0, p0, Ld5/p;->buttonHexColor_:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public static o()Ld5/p;
    .registers 1

    .line 1
    sget-object v0, Ld5/p;->DEFAULT_INSTANCE:Ld5/p;

    .line 2
    .line 3
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
    packed-switch p1, :pswitch_data_56

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
    sget-object p1, Ld5/p;->PARSER:Lcom/google/protobuf/x0;

    .line 14
    .line 15
    if-nez p1, :cond_27

    .line 16
    .line 17
    const-class v0, Ld5/p;

    .line 18
    .line 19
    monitor-enter v0

    .line 20
    :try_start_13
    sget-object p1, Ld5/p;->PARSER:Lcom/google/protobuf/x0;

    .line 21
    .line 22
    if-nez p1, :cond_23

    .line 23
    .line 24
    new-instance p1, Lcom/google/protobuf/x;

    .line 25
    .line 26
    sget-object v1, Ld5/p;->DEFAULT_INSTANCE:Ld5/p;

    .line 27
    .line 28
    invoke-direct {p1, v1}, Lcom/google/protobuf/x;-><init>(Lcom/google/protobuf/y;)V

    .line 29
    .line 30
    .line 31
    sput-object p1, Ld5/p;->PARSER:Lcom/google/protobuf/x0;

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
    sget-object p1, Ld5/p;->DEFAULT_INSTANCE:Ld5/p;

    .line 42
    .line 43
    return-object p1

    .line 44
    :pswitch_2b
    new-instance p1, Ld5/a;

    .line 45
    .line 46
    sget-object v0, Ld5/p;->DEFAULT_INSTANCE:Ld5/p;

    .line 47
    .line 48
    invoke-direct {p1, v0}, Lcom/google/protobuf/w;-><init>(Lcom/google/protobuf/y;)V

    .line 49
    .line 50
    .line 51
    return-object p1

    .line 52
    :pswitch_33
    new-instance p1, Ld5/p;

    .line 53
    .line 54
    invoke-direct {p1}, Ld5/p;-><init>()V

    .line 55
    .line 56
    .line 57
    return-object p1

    .line 58
    :pswitch_39
    const-string p1, "bitField0_"

    .line 59
    .line 60
    const-string v0, "text_"

    .line 61
    .line 62
    const-string v1, "buttonHexColor_"

    .line 63
    .line 64
    filled-new-array {p1, v0, v1}, [Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    const-string v0, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u0208"

    .line 69
    .line 70
    sget-object v1, Ld5/p;->DEFAULT_INSTANCE:Ld5/p;

    .line 71
    .line 72
    new-instance v2, Lcom/google/protobuf/a1;

    .line 73
    .line 74
    invoke-direct {v2, v1, v0, p1}, Lcom/google/protobuf/a1;-><init>(Lcom/google/protobuf/a;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    return-object v2

    .line 78
    :pswitch_4d
    const/4 p1, 0x0

    .line 79
    return-object p1

    .line 80
    :pswitch_4f
    const/4 p1, 0x1

    .line 81
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    return-object p1

    .line 86
    nop

    .line 87
    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_4f
        :pswitch_4d
        :pswitch_39
        :pswitch_33
        :pswitch_2b
        :pswitch_28
        :pswitch_c
    .end packed-switch
.end method

.method public final n()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Ld5/p;->buttonHexColor_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final p()Ld5/u;
    .registers 2

    .line 1
    iget-object v0, p0, Ld5/p;->text_:Ld5/u;

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

.method public final q()Z
    .registers 3

    .line 1
    iget v0, p0, Ld5/p;->bitField0_:I

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
