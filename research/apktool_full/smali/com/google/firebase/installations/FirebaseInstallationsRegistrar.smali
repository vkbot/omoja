.class public Lcom/google/firebase/installations/FirebaseInstallationsRegistrar;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final LIBRARY_NAME:Ljava/lang/String; = "fire-installations"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a(Ld2/h;)Ll5/e;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/firebase/installations/FirebaseInstallationsRegistrar;->lambda$getComponents$0(Lt4/b;)Ll5/e;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static lambda$getComponents$0(Lt4/b;)Ll5/e;
    .locals 7

    .line 1
    new-instance v0, Ll5/d;

    .line 2
    .line 3
    const-class v1, Lo4/f;

    .line 4
    .line 5
    invoke-interface {p0, v1}, Lt4/b;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Lo4/f;

    .line 10
    .line 11
    const-class v2, Lc5/f;

    .line 12
    .line 13
    invoke-interface {p0, v2}, Lt4/b;->c(Ljava/lang/Class;)Lk5/b;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    new-instance v3, Lt4/p;

    .line 18
    .line 19
    const-class v4, Ls4/a;

    .line 20
    .line 21
    const-class v5, Ljava/util/concurrent/ExecutorService;

    .line 22
    .line 23
    invoke-direct {v3, v4, v5}, Lt4/p;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 24
    .line 25
    .line 26
    invoke-interface {p0, v3}, Lt4/b;->h(Lt4/p;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Ljava/util/concurrent/ExecutorService;

    .line 31
    .line 32
    new-instance v4, Lt4/p;

    .line 33
    .line 34
    const-class v5, Ls4/b;

    .line 35
    .line 36
    const-class v6, Ljava/util/concurrent/Executor;

    .line 37
    .line 38
    invoke-direct {v4, v5, v6}, Lt4/p;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 39
    .line 40
    .line 41
    invoke-interface {p0, v4}, Lt4/b;->h(Lt4/p;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    check-cast p0, Ljava/util/concurrent/Executor;

    .line 46
    .line 47
    new-instance v4, Lu4/i;

    .line 48
    .line 49
    invoke-direct {v4, p0}, Lu4/i;-><init>(Ljava/util/concurrent/Executor;)V

    .line 50
    .line 51
    .line 52
    invoke-direct {v0, v1, v2, v3, v4}, Ll5/d;-><init>(Lo4/f;Lk5/b;Ljava/util/concurrent/ExecutorService;Lu4/i;)V

    .line 53
    .line 54
    .line 55
    return-object v0
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lt4/a;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Ll5/e;

    .line 2
    .line 3
    invoke-static {v0}, Lt4/a;->a(Ljava/lang/Class;)Lf6/d;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "fire-installations"

    .line 8
    .line 9
    iput-object v1, v0, Lf6/d;->a:Ljava/lang/String;

    .line 10
    .line 11
    const-class v2, Lo4/f;

    .line 12
    .line 13
    invoke-static {v2}, Lt4/h;->a(Ljava/lang/Class;)Lt4/h;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v0, v2}, Lf6/d;->a(Lt4/h;)V

    .line 18
    .line 19
    .line 20
    new-instance v2, Lt4/h;

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    const/4 v4, 0x1

    .line 24
    const-class v5, Lc5/f;

    .line 25
    .line 26
    invoke-direct {v2, v3, v4, v5}, Lt4/h;-><init>(IILjava/lang/Class;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v2}, Lf6/d;->a(Lt4/h;)V

    .line 30
    .line 31
    .line 32
    new-instance v2, Lt4/p;

    .line 33
    .line 34
    const-class v5, Ls4/a;

    .line 35
    .line 36
    const-class v6, Ljava/util/concurrent/ExecutorService;

    .line 37
    .line 38
    invoke-direct {v2, v5, v6}, Lt4/p;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 39
    .line 40
    .line 41
    new-instance v5, Lt4/h;

    .line 42
    .line 43
    invoke-direct {v5, v2, v4, v3}, Lt4/h;-><init>(Lt4/p;II)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v5}, Lf6/d;->a(Lt4/h;)V

    .line 47
    .line 48
    .line 49
    new-instance v2, Lt4/p;

    .line 50
    .line 51
    const-class v5, Ls4/b;

    .line 52
    .line 53
    const-class v6, Ljava/util/concurrent/Executor;

    .line 54
    .line 55
    invoke-direct {v2, v5, v6}, Lt4/p;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 56
    .line 57
    .line 58
    new-instance v5, Lt4/h;

    .line 59
    .line 60
    invoke-direct {v5, v2, v4, v3}, Lt4/h;-><init>(Lt4/p;II)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v5}, Lf6/d;->a(Lt4/h;)V

    .line 64
    .line 65
    .line 66
    new-instance v2, Lj1/i;

    .line 67
    .line 68
    const/16 v3, 0x19

    .line 69
    .line 70
    invoke-direct {v2, v3}, Lj1/i;-><init>(I)V

    .line 71
    .line 72
    .line 73
    iput-object v2, v0, Lf6/d;->f:Ljava/lang/Object;

    .line 74
    .line 75
    invoke-virtual {v0}, Lf6/d;->b()Lt4/a;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    new-instance v2, Lc5/e;

    .line 80
    .line 81
    const/4 v3, 0x0

    .line 82
    invoke-direct {v2, v3}, Lc5/e;-><init>(I)V

    .line 83
    .line 84
    .line 85
    const-class v3, Lc5/e;

    .line 86
    .line 87
    invoke-static {v3}, Lt4/a;->a(Ljava/lang/Class;)Lf6/d;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    iput v4, v3, Lf6/d;->c:I

    .line 92
    .line 93
    new-instance v4, Lq0/f;

    .line 94
    .line 95
    const/4 v5, 0x4

    .line 96
    invoke-direct {v4, v5, v2}, Lq0/f;-><init>(ILjava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    iput-object v4, v3, Lf6/d;->f:Ljava/lang/Object;

    .line 100
    .line 101
    invoke-virtual {v3}, Lf6/d;->b()Lt4/a;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    const-string v3, "17.2.0"

    .line 106
    .line 107
    invoke-static {v1, v3}, Lb1/u;->d(Ljava/lang/String;Ljava/lang/String;)Lt4/a;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    filled-new-array {v0, v2, v1}, [Lt4/a;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    return-object v0
.end method
