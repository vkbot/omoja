.class public final Lo4/g;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lt4/c;


# static fields
.field public static final c:Lo4/g;

.field public static final d:Lo4/g;

.field public static final e:Lo4/g;

.field public static final f:Lo4/g;


# instance fields
.field public final synthetic b:I


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lo4/g;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lo4/g;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lo4/g;->c:Lo4/g;

    .line 8
    .line 9
    new-instance v0, Lo4/g;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-direct {v0, v1}, Lo4/g;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lo4/g;->d:Lo4/g;

    .line 16
    .line 17
    new-instance v0, Lo4/g;

    .line 18
    .line 19
    const/4 v1, 0x2

    .line 20
    invoke-direct {v0, v1}, Lo4/g;-><init>(I)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lo4/g;->e:Lo4/g;

    .line 24
    .line 25
    new-instance v0, Lo4/g;

    .line 26
    .line 27
    const/4 v1, 0x3

    .line 28
    invoke-direct {v0, v1}, Lo4/g;-><init>(I)V

    .line 29
    .line 30
    .line 31
    sput-object v0, Lo4/g;->f:Lo4/g;

    .line 32
    .line 33
    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    .line 1
    iput p1, p0, Lo4/g;->b:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ld2/h;)Ljava/lang/Object;
    .registers 5

    .line 1
    iget v0, p0, Lo4/g;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_66

    .line 4
    .line 5
    .line 6
    new-instance v0, Lt4/p;

    .line 7
    .line 8
    const-class v1, Ls4/d;

    .line 9
    .line 10
    const-class v2, Ljava/util/concurrent/Executor;

    .line 11
    .line 12
    invoke-direct {v0, v1, v2}, Lt4/p;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Ld2/h;->h(Lt4/p;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    check-cast p1, Ljava/util/concurrent/Executor;

    .line 23
    .line 24
    new-instance v0, Lv8/s0;

    .line 25
    .line 26
    invoke-direct {v0, p1}, Lv8/s0;-><init>(Ljava/util/concurrent/Executor;)V

    .line 27
    .line 28
    .line 29
    return-object v0

    .line 30
    :pswitch_1d
    new-instance v0, Lt4/p;

    .line 31
    .line 32
    const-class v1, Ls4/b;

    .line 33
    .line 34
    const-class v2, Ljava/util/concurrent/Executor;

    .line 35
    .line 36
    invoke-direct {v0, v1, v2}, Lt4/p;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0}, Ld2/h;->h(Lt4/p;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    check-cast p1, Ljava/util/concurrent/Executor;

    .line 47
    .line 48
    new-instance v0, Lv8/s0;

    .line 49
    .line 50
    invoke-direct {v0, p1}, Lv8/s0;-><init>(Ljava/util/concurrent/Executor;)V

    .line 51
    .line 52
    .line 53
    return-object v0

    .line 54
    :pswitch_35
    new-instance v0, Lt4/p;

    .line 55
    .line 56
    const-class v1, Ls4/c;

    .line 57
    .line 58
    const-class v2, Ljava/util/concurrent/Executor;

    .line 59
    .line 60
    invoke-direct {v0, v1, v2}, Lt4/p;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v0}, Ld2/h;->h(Lt4/p;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    check-cast p1, Ljava/util/concurrent/Executor;

    .line 71
    .line 72
    new-instance v0, Lv8/s0;

    .line 73
    .line 74
    invoke-direct {v0, p1}, Lv8/s0;-><init>(Ljava/util/concurrent/Executor;)V

    .line 75
    .line 76
    .line 77
    return-object v0

    .line 78
    :pswitch_4d
    new-instance v0, Lt4/p;

    .line 79
    .line 80
    const-class v1, Ls4/a;

    .line 81
    .line 82
    const-class v2, Ljava/util/concurrent/Executor;

    .line 83
    .line 84
    invoke-direct {v0, v1, v2}, Lt4/p;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, v0}, Ld2/h;->h(Lt4/p;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    check-cast p1, Ljava/util/concurrent/Executor;

    .line 95
    .line 96
    new-instance v0, Lv8/s0;

    .line 97
    .line 98
    invoke-direct {v0, p1}, Lv8/s0;-><init>(Ljava/util/concurrent/Executor;)V

    .line 99
    .line 100
    .line 101
    return-object v0

    .line 102
    nop

    .line 103
    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_4d
        :pswitch_35
        :pswitch_1d
    .end packed-switch
.end method
