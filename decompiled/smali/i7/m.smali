.class public final Li7/m;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static k:Ljava/util/ArrayList;


# instance fields
.field public final a:Lcom/example/navistart/LocServ;

.field public final b:I

.field public final c:Ljava/util/WeakHashMap;

.field public d:D

.field public final e:Li7/g;

.field public final f:Li7/i;

.field public final g:Li7/j;

.field public h:Le0/h1;

.field public final i:Ljava/lang/Boolean;

.field public final j:Ljava/util/concurrent/ScheduledThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Li7/m;->k:Ljava/util/ArrayList;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lcom/example/navistart/LocServ;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/WeakHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Li7/m;->c:Ljava/util/WeakHashMap;

    .line 10
    .line 11
    const-wide/16 v0, 0x0

    .line 12
    .line 13
    iput-wide v0, p0, Li7/m;->d:D

    .line 14
    .line 15
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 16
    .line 17
    iput-object v0, p0, Li7/m;->i:Ljava/lang/Boolean;

    .line 18
    .line 19
    const/16 v0, 0xb

    .line 20
    .line 21
    new-array v0, v0, [B

    .line 22
    .line 23
    fill-array-data v0, :array_0

    .line 24
    .line 25
    .line 26
    const/16 v1, 0x8

    .line 27
    .line 28
    new-array v2, v1, [B

    .line 29
    .line 30
    fill-array-data v2, :array_1

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const/4 v2, -0x1

    .line 38
    invoke-static {v2, v0}, Le0/w;->c(ILjava/lang/String;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iput-object v0, p0, Li7/m;->j:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 43
    .line 44
    iput-object p1, p0, Li7/m;->a:Lcom/example/navistart/LocServ;

    .line 45
    .line 46
    new-instance v0, Li7/j;

    .line 47
    .line 48
    invoke-direct {v0, p1}, Li7/j;-><init>(Lcom/example/navistart/LocServ;)V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Li7/m;->g:Li7/j;

    .line 52
    .line 53
    new-instance v0, Li7/g;

    .line 54
    .line 55
    invoke-direct {v0, p1}, Li7/g;-><init>(Lcom/example/navistart/LocServ;)V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Li7/m;->e:Li7/g;

    .line 59
    .line 60
    new-instance p1, Li7/i;

    .line 61
    .line 62
    const/4 v0, 0x0

    .line 63
    invoke-direct {p1, v0}, Li7/i;-><init>(I)V

    .line 64
    .line 65
    .line 66
    new-instance v0, Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .line 70
    .line 71
    iput-object v0, p1, Li7/i;->b:Ljava/util/ArrayList;

    .line 72
    .line 73
    iput-object p1, p0, Li7/m;->f:Li7/i;

    .line 74
    .line 75
    new-instance p1, Le0/h1;

    .line 76
    .line 77
    invoke-direct {p1, p0}, Le0/h1;-><init>(Li7/m;)V

    .line 78
    .line 79
    .line 80
    iput-object p1, p0, Li7/m;->h:Le0/h1;

    .line 81
    .line 82
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    const/4 v0, 0x6

    .line 87
    new-array v0, v0, [B

    .line 88
    .line 89
    fill-array-data v0, :array_2

    .line 90
    .line 91
    .line 92
    new-array v1, v1, [B

    .line 93
    .line 94
    fill-array-data v1, :array_3

    .line 95
    .line 96
    .line 97
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    const/16 v1, 0x5dc

    .line 102
    .line 103
    invoke-virtual {p1, v0, v1}, Lu0/a;->loadInt(Ljava/lang/String;I)I

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    iput p1, p0, Li7/m;->b:I

    .line 108
    .line 109
    return-void

    .line 110
    nop

    .line 111
    :array_0
    .array-data 1
        0x29t
        0x6bt
        0x32t
        0x36t
        -0x7bt
        0x57t
        -0x7at
        -0x3ct
        0x7t
        0x7et
        0x33t
    .end array-data

    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    :array_1
    .array-data 1
        0x6et
        0x1bt
        0x41t
        0x78t
        -0x16t
        0x23t
        -0x11t
        -0x5et
    .end array-data

    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    :array_2
    .array-data 1
        -0x2dt
        -0x12t
        0x51t
        0x5et
        0x2ct
        0x42t
    .end array-data

    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    nop

    .line 137
    :array_3
    .array-data 1
        -0x7ft
        -0x51t
        0x15t
        0x17t
        0x79t
        0x11t
        0x0t
        -0x77t
    .end array-data
.end method

.method public static a()Ljava/lang/Boolean;
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    sget-object v2, Le0/m;->j:[B

    .line 11
    .line 12
    sget-object v3, Le0/p3;->a:[Ljava/lang/String;

    .line 13
    .line 14
    const-string v3, ""

    .line 15
    .line 16
    invoke-static {v2, v1, v3, v0}, Lcom/google/protobuf/q;->s([BLu0/a;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 17
    .line 18
    .line 19
    const/16 v1, 0x9

    .line 20
    .line 21
    new-array v1, v1, [B

    .line 22
    .line 23
    fill-array-data v1, :array_0

    .line 24
    .line 25
    .line 26
    invoke-static {v1, v0}, Lcom/google/protobuf/q;->r([BLjava/lang/StringBuilder;)V

    .line 27
    .line 28
    .line 29
    sget-object v1, Le0/x1;->q:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v0, v1}, Lcom/google/protobuf/q;->g(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    sget-object v2, Le0/m;->f:[B

    .line 40
    .line 41
    invoke-static {v2, v1, v3, v0}, Lcom/google/protobuf/q;->w([BLu0/a;Ljava/lang/String;Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lh0/b;->j()Lcom/example/navistart/cores/InterC;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const-wide v3, 0x7fffffffffffffffL

    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    invoke-static {v3, v4, v0}, Lcom/google/protobuf/q;->d(JLcom/example/navistart/cores/InterC;)J

    .line 61
    .line 62
    .line 63
    move-result-wide v0

    .line 64
    new-instance v3, Ljava/lang/String;

    .line 65
    .line 66
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    new-instance v6, Ljava/lang/String;

    .line 75
    .line 76
    invoke-direct {v6, v2}, Ljava/lang/String;-><init>([B)V

    .line 77
    .line 78
    .line 79
    sget-object v2, Le0/m;->g:[B

    .line 80
    .line 81
    invoke-static {v2, v5, v6}, Lcom/google/protobuf/q;->h([BLu0/a;Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    const/4 v5, 0x1

    .line 86
    new-array v6, v5, [B

    .line 87
    .line 88
    const/16 v7, -0x24

    .line 89
    .line 90
    const/4 v8, 0x0

    .line 91
    aput-byte v7, v6, v8

    .line 92
    .line 93
    const/16 v7, 0x8

    .line 94
    .line 95
    new-array v7, v7, [B

    .line 96
    .line 97
    fill-array-data v7, :array_1

    .line 98
    .line 99
    .line 100
    invoke-static {v6, v7, v4, v2, v8}, Lcom/google/protobuf/q;->x([B[BLu0/a;Ljava/lang/String;I)[B

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    .line 105
    .line 106
    .line 107
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 108
    .line 109
    .line 110
    move-result-wide v2

    .line 111
    cmp-long v0, v0, v2

    .line 112
    .line 113
    if-gez v0, :cond_0

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_0
    move v5, v8

    .line 117
    :goto_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    return-object v0

    .line 122
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 123
    .line 124
    return-object v0

    .line 125
    :array_0
    .array-data 1
        0x6ct
        0x69t
        0x63t
        0x74t
        0x5ft
        0x72t
        0x69t
        0x75t
        0x65t
    .end array-data

    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    nop

    .line 135
    :array_1
    .array-data 1
        -0x14t
        -0x1t
        -0x2t
        -0x1ct
        0xct
        0x46t
        -0x12t
        0x4ct
    .end array-data
.end method
