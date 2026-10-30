.class public final Li7/g;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static o:D


# instance fields
.field public a:Z

.field public final b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field public c:Ljava/util/concurrent/ScheduledFuture;

.field public final d:Lcom/example/navistart/LocServ;

.field public final e:Ljava/lang/Object;

.field public final f:Ljava/util/LinkedList;

.field public final g:Landroid/os/Handler;

.field public h:Landroid/view/WindowManager;

.field public final i:Ljava/lang/Boolean;

.field public j:Lcom/woha/atir/CameraInfoView;

.field public k:Li7/w;

.field public l:Z

.field public m:Ls0/c;

.field public n:J


# direct methods
.method public constructor <init>(Lcom/example/navistart/LocServ;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Li7/g;->a:Z

    .line 6
    .line 7
    const/16 v1, 0xc

    .line 8
    .line 9
    new-array v1, v1, [B

    .line 10
    .line 11
    fill-array-data v1, :array_0

    .line 12
    .line 13
    .line 14
    const/16 v2, 0x8

    .line 15
    .line 16
    new-array v2, v2, [B

    .line 17
    .line 18
    fill-array-data v2, :array_1

    .line 19
    .line 20
    .line 21
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const/4 v2, -0x1

    .line 26
    invoke-static {v2, v1}, Le0/w;->c(ILjava/lang/String;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iput-object v1, p0, Li7/g;->b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 31
    .line 32
    new-instance v1, Landroid/os/Handler;

    .line 33
    .line 34
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 39
    .line 40
    .line 41
    new-instance v1, Ljava/lang/Object;

    .line 42
    .line 43
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object v1, p0, Li7/g;->e:Ljava/lang/Object;

    .line 47
    .line 48
    new-instance v1, Ljava/util/LinkedList;

    .line 49
    .line 50
    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object v1, p0, Li7/g;->f:Ljava/util/LinkedList;

    .line 54
    .line 55
    new-instance v1, Landroid/os/Handler;

    .line 56
    .line 57
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 62
    .line 63
    .line 64
    iput-object v1, p0, Li7/g;->g:Landroid/os/Handler;

    .line 65
    .line 66
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 67
    .line 68
    iput-object v1, p0, Li7/g;->i:Ljava/lang/Boolean;

    .line 69
    .line 70
    new-instance v1, Ljava/util/LinkedList;

    .line 71
    .line 72
    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 73
    .line 74
    .line 75
    iput-boolean v0, p0, Li7/g;->l:Z

    .line 76
    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 78
    .line 79
    .line 80
    move-result-wide v0

    .line 81
    iput-wide v0, p0, Li7/g;->n:J

    .line 82
    .line 83
    iput-object p1, p0, Li7/g;->d:Lcom/example/navistart/LocServ;

    .line 84
    .line 85
    invoke-virtual {p0}, Li7/g;->d()V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :array_0
    .array-data 1
        0x71t
        0x54t
        0x5t
        0xat
        -0x39t
        -0x3ft
        -0x79t
        0x50t
        0x63t
        0x50t
        0xbt
        0xft
    .end array-data

    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    :array_1
    .array-data 1
        0x30t
        0x38t
        0x64t
        0x78t
        -0x56t
        -0x58t
        -0x17t
        0x37t
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
    const/16 v7, -0x6b

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
        -0x5bt
        -0x56t
        -0x7bt
        -0x3bt
        0x5ft
        0xft
        0x0t
        0x7ct
    .end array-data
.end method

.method public static f(Li7/a;DDLjava/util/ArrayList;)Z
    .locals 9

    .line 1
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0x13

    .line 6
    .line 7
    new-array v1, v1, [B

    .line 8
    .line 9
    fill-array-data v1, :array_0

    .line 10
    .line 11
    .line 12
    const/16 v2, 0x8

    .line 13
    .line 14
    new-array v3, v2, [B

    .line 15
    .line 16
    fill-array-data v3, :array_1

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const/16 v3, 0x32

    .line 24
    .line 25
    invoke-virtual {v0, v1, v3}, Lu0/a;->loadInt(Ljava/lang/String;I)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    int-to-double v0, v0

    .line 30
    sput-wide v0, Li7/g;->o:D

    .line 31
    .line 32
    iget-wide v3, p0, Li7/a;->b:D

    .line 33
    .line 34
    iget-object p0, p0, Li7/a;->a:Li7/x;

    .line 35
    .line 36
    cmpl-double v3, p1, v3

    .line 37
    .line 38
    const/4 v4, 0x1

    .line 39
    if-lez v3, :cond_1

    .line 40
    .line 41
    cmpl-double v0, p1, v0

    .line 42
    .line 43
    if-lez v0, :cond_0

    .line 44
    .line 45
    goto/16 :goto_1

    .line 46
    .line 47
    :cond_0
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const/16 v1, 0xf

    .line 52
    .line 53
    new-array v1, v1, [B

    .line 54
    .line 55
    fill-array-data v1, :array_2

    .line 56
    .line 57
    .line 58
    new-array v2, v2, [B

    .line 59
    .line 60
    fill-array-data v2, :array_3

    .line 61
    .line 62
    .line 63
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    const/16 v2, 0x1e

    .line 68
    .line 69
    invoke-virtual {v0, v1, v2}, Lu0/a;->loadInt(Ljava/lang/String;I)I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    int-to-double v0, v0

    .line 74
    cmpg-double v0, p3, v0

    .line 75
    .line 76
    if-gez v0, :cond_1

    .line 77
    .line 78
    iget v0, p0, Li7/x;->e:I

    .line 79
    .line 80
    int-to-double v0, v0

    .line 81
    cmpg-double p3, p3, v0

    .line 82
    .line 83
    if-gez p3, :cond_1

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_1
    iget-wide p3, p0, Li7/x;->b:D

    .line 87
    .line 88
    iget-wide v0, p0, Li7/x;->c:D

    .line 89
    .line 90
    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    .line 91
    .line 92
    .line 93
    move-result p0

    .line 94
    const/4 v2, 0x2

    .line 95
    if-ge p0, v2, :cond_2

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_2
    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    .line 99
    .line 100
    .line 101
    move-result p0

    .line 102
    sub-int/2addr p0, v4

    .line 103
    invoke-virtual {p5, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    check-cast p0, Landroid/location/Location;

    .line 108
    .line 109
    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    sub-int/2addr v3, v2

    .line 114
    invoke-virtual {p5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object p5

    .line 118
    check-cast p5, Landroid/location/Location;

    .line 119
    .line 120
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    .line 121
    .line 122
    .line 123
    move-result-wide v2

    .line 124
    invoke-virtual {p5}, Landroid/location/Location;->getLatitude()D

    .line 125
    .line 126
    .line 127
    move-result-wide v5

    .line 128
    sub-double/2addr v2, v5

    .line 129
    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    .line 130
    .line 131
    .line 132
    move-result-wide v5

    .line 133
    invoke-virtual {p5}, Landroid/location/Location;->getLongitude()D

    .line 134
    .line 135
    .line 136
    move-result-wide v7

    .line 137
    sub-double/2addr v5, v7

    .line 138
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    .line 139
    .line 140
    .line 141
    move-result-wide v7

    .line 142
    sub-double/2addr p3, v7

    .line 143
    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    .line 144
    .line 145
    .line 146
    move-result-wide v7

    .line 147
    sub-double/2addr v0, v7

    .line 148
    mul-double/2addr v2, p3

    .line 149
    mul-double/2addr v5, v0

    .line 150
    add-double/2addr v5, v2

    .line 151
    const-wide/16 p3, 0x0

    .line 152
    .line 153
    cmpg-double p0, v5, p3

    .line 154
    .line 155
    if-gez p0, :cond_3

    .line 156
    .line 157
    sget-wide p3, Li7/g;->o:D

    .line 158
    .line 159
    cmpl-double p0, p1, p3

    .line 160
    .line 161
    if-lez p0, :cond_3

    .line 162
    .line 163
    goto :goto_1

    .line 164
    :cond_3
    :goto_0
    const-wide p3, 0x408f400000000000L    # 1000.0

    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    cmpl-double p0, p1, p3

    .line 170
    .line 171
    if-lez p0, :cond_4

    .line 172
    .line 173
    :goto_1
    return v4

    .line 174
    :cond_4
    const/4 p0, 0x0

    .line 175
    return p0

    .line 176
    nop

    :array_0
    .array-data 1
        0x33t
        -0x5ct
        0x7at
        0x78t
        0xdt
        -0x10t
        0xet
        0xct
        0x21t
        -0x5ct
        0x64t
        0x73t
        0xct
        -0x15t
        0x2t
        0x8t
        0x3ft
        -0x4at
        0x71t
    .end array-data

    :array_1
    .array-data 1
        0x7et
        -0x1bt
        0x22t
        0x27t
        0x49t
        -0x47t
        0x5dt
        0x58t
    .end array-data

    :array_2
    .array-data 1
        -0x6at
        -0x61t
        0x28t
        -0x58t
        0x28t
        0x18t
        -0x3ft
        -0x48t
        -0x61t
        -0x77t
        0x27t
        -0x45t
        0x3at
        0x1at
        -0x37t
    .end array-data

    :array_3
    .array-data 1
        -0x25t
        -0x2at
        0x66t
        -0x9t
        0x7bt
        0x48t
        -0x7ct
        -0x3t
    .end array-data
.end method


# virtual methods
.method public final b(Li7/a;)V
    .locals 9

    .line 1
    iget-object v1, p0, Li7/g;->e:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v1

    .line 4
    :try_start_0
    iget-object v0, p0, Li7/g;->f:Ljava/util/LinkedList;

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v2, Li7/c;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-direct {v2, v3, p0, p1}, Li7/c;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Li7/g;->f:Ljava/util/LinkedList;

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Li7/g;->c:Ljava/util/concurrent/ScheduledFuture;

    .line 28
    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    invoke-interface {p1}, Ljava/util/concurrent/Future;->isCancelled()Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-nez p1, :cond_0

    .line 36
    .line 37
    iget-object p1, p0, Li7/g;->c:Ljava/util/concurrent/ScheduledFuture;

    .line 38
    .line 39
    const/4 v0, 0x1

    .line 40
    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 41
    .line 42
    .line 43
    :cond_0
    iget-object v2, p0, Li7/g;->b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 44
    .line 45
    new-instance v3, Li7/e;

    .line 46
    .line 47
    const/4 p1, 0x2

    .line 48
    invoke-direct {v3, p0, p1}, Li7/e;-><init>(Li7/g;I)V

    .line 49
    .line 50
    .line 51
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 52
    .line 53
    const-wide/16 v4, 0xa

    .line 54
    .line 55
    const-wide/16 v6, 0x3e8

    .line 56
    .line 57
    invoke-interface/range {v2 .. v8}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iput-object p1, p0, Li7/g;->c:Ljava/util/concurrent/ScheduledFuture;

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catchall_0
    move-exception v0

    .line 65
    move-object p1, v0

    .line 66
    goto :goto_1

    .line 67
    :cond_1
    :goto_0
    monitor-exit v1

    .line 68
    return-void

    .line 69
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    throw p1
.end method

.method public final c()V
    .locals 2

    .line 1
    new-instance v0, Li7/e;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, p0, v1}, Li7/e;-><init>(Li7/g;I)V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Li7/g;->g:Landroid/os/Handler;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    new-instance v0, Lcom/example/navistart/cores/HUDMassageObj;

    .line 13
    .line 14
    invoke-direct {v0}, Lcom/example/navistart/cores/HUDMassageObj;-><init>()V

    .line 15
    .line 16
    .line 17
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 18
    .line 19
    iput-object v1, v0, Lcom/example/navistart/cores/HUDMassageObj;->AradarOn:Ljava/lang/Boolean;

    .line 20
    .line 21
    sget-object v1, Lcom/example/navistart/cores/HUDMassageObj$HudSenderType;->ARAD:Lcom/example/navistart/cores/HUDMassageObj$HudSenderType;

    .line 22
    .line 23
    iput-object v1, v0, Lcom/example/navistart/cores/HUDMassageObj;->hudSenderType:Lcom/example/navistart/cores/HUDMassageObj$HudSenderType;

    .line 24
    .line 25
    sget-object v1, Lcom/example/navistart/cores/HUDMassageObj$AradarSenderType;->GENARADAR:Lcom/example/navistart/cores/HUDMassageObj$AradarSenderType;

    .line 26
    .line 27
    iput-object v1, v0, Lcom/example/navistart/cores/HUDMassageObj;->aradarSenderType:Lcom/example/navistart/cores/HUDMassageObj$AradarSenderType;

    .line 28
    .line 29
    const/4 v1, -0x1

    .line 30
    iput v1, v0, Lcom/example/navistart/cores/HUDMassageObj;->v_mTurnType:I

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    iput v1, v0, Lcom/example/navistart/cores/HUDMassageObj;->v_mTurnDis:I

    .line 34
    .line 35
    const-string v1, " "

    .line 36
    .line 37
    iput-object v1, v0, Lcom/example/navistart/cores/HUDMassageObj;->v_mNextRoad:Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 40
    .line 41
    .line 42
    invoke-static {}, Lh0/b;->i()Le0/a0;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1, v0}, Le0/a0;->e(Lcom/example/navistart/cores/HUDMassageObj;)V

    .line 47
    .line 48
    .line 49
    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Li7/g;->a:Z

    .line 51
    .line 52
    return-void
.end method

.method public final d()V
    .locals 8

    .line 1
    new-instance v0, Ls0/c;

    .line 2
    .line 3
    iget-object v1, p0, Li7/g;->d:Lcom/example/navistart/LocServ;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ls0/c;-><init>(Lcom/example/navistart/LocServ;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Li7/g;->m:Ls0/c;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    iput-boolean v2, v0, Ls0/c;->d:Z

    .line 12
    .line 13
    iget-object v3, v0, Ls0/c;->a:Landroid/media/SoundPool;

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    const v5, 0x7f12000a

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3, v1, v5, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    iput v3, v0, Ls0/c;->b:I

    .line 24
    .line 25
    new-instance v0, Le0/u1;

    .line 26
    .line 27
    const/16 v3, 0xc

    .line 28
    .line 29
    new-array v3, v3, [B

    .line 30
    .line 31
    fill-array-data v3, :array_0

    .line 32
    .line 33
    .line 34
    const/16 v4, 0x8

    .line 35
    .line 36
    new-array v5, v4, [B

    .line 37
    .line 38
    fill-array-data v5, :array_1

    .line 39
    .line 40
    .line 41
    invoke-static {v3, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-direct {v0, v1, v3}, Le0/u1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    new-instance v3, Le0/u1;

    .line 49
    .line 50
    const/16 v5, 0x11

    .line 51
    .line 52
    new-array v5, v5, [B

    .line 53
    .line 54
    fill-array-data v5, :array_2

    .line 55
    .line 56
    .line 57
    new-array v6, v4, [B

    .line 58
    .line 59
    fill-array-data v6, :array_3

    .line 60
    .line 61
    .line 62
    invoke-static {v5, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    invoke-direct {v3, v1, v5}, Le0/u1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    new-instance v5, Lcom/woha/atir/CameraInfoView;

    .line 70
    .line 71
    invoke-direct {v5, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v5, v1}, Lcom/woha/atir/CameraInfoView;->a(Landroid/content/Context;)V

    .line 75
    .line 76
    .line 77
    iput-object v5, p0, Li7/g;->j:Lcom/woha/atir/CameraInfoView;

    .line 78
    .line 79
    new-instance v5, Li7/w;

    .line 80
    .line 81
    invoke-direct {v5, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 82
    .line 83
    .line 84
    iput v4, v5, Li7/w;->c:I

    .line 85
    .line 86
    const/high16 v1, 0x40200000    # 2.5f

    .line 87
    .line 88
    iput v1, v5, Li7/w;->d:F

    .line 89
    .line 90
    const/high16 v1, 0x3f000000    # 0.5f

    .line 91
    .line 92
    iput v1, v5, Li7/w;->e:F

    .line 93
    .line 94
    iput v1, v5, Li7/w;->f:F

    .line 95
    .line 96
    const/high16 v1, 0x41a00000    # 20.0f

    .line 97
    .line 98
    iput v1, v5, Li7/w;->g:F

    .line 99
    .line 100
    const/high16 v1, 0x41600000    # 14.0f

    .line 101
    .line 102
    iput v1, v5, Li7/w;->h:F

    .line 103
    .line 104
    iput-boolean v2, v5, Li7/w;->i:Z

    .line 105
    .line 106
    const-wide/16 v6, 0x0

    .line 107
    .line 108
    iput-wide v6, v5, Li7/w;->j:J

    .line 109
    .line 110
    iput-object v5, p0, Li7/g;->k:Li7/w;

    .line 111
    .line 112
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 113
    .line 114
    .line 115
    invoke-static {}, Lh0/b;->g()Lj1/v;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-interface {v1}, Lj1/v;->b()Lz0/a;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    iget-object v4, p0, Li7/g;->j:Lcom/woha/atir/CameraInfoView;

    .line 124
    .line 125
    iget-object v5, v0, Le0/u1;->c:Landroid/view/WindowManager$LayoutParams;

    .line 126
    .line 127
    invoke-interface {v1, v4, v5}, Lz0/a;->f(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    iput-object v1, p0, Li7/g;->h:Landroid/view/WindowManager;

    .line 132
    .line 133
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 134
    .line 135
    .line 136
    invoke-static {}, Lh0/b;->g()Lj1/v;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-interface {v1}, Lj1/v;->b()Lz0/a;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    iget-object v4, p0, Li7/g;->k:Li7/w;

    .line 145
    .line 146
    iget-object v5, v3, Le0/u1;->c:Landroid/view/WindowManager$LayoutParams;

    .line 147
    .line 148
    invoke-interface {v1, v4, v5}, Lz0/a;->f(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager;

    .line 149
    .line 150
    .line 151
    iget-object v1, p0, Li7/g;->j:Lcom/woha/atir/CameraInfoView;

    .line 152
    .line 153
    iget-object v4, p0, Li7/g;->h:Landroid/view/WindowManager;

    .line 154
    .line 155
    new-instance v5, Li7/e;

    .line 156
    .line 157
    invoke-direct {v5, p0, v2}, Li7/e;-><init>(Li7/g;I)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0, v1, v4, v5}, Le0/u1;->a(Landroid/view/View;Landroid/view/WindowManager;Ljava/lang/Runnable;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0}, Le0/u1;->d()V

    .line 164
    .line 165
    .line 166
    iget-object v0, p0, Li7/g;->k:Li7/w;

    .line 167
    .line 168
    iget-object v1, p0, Li7/g;->h:Landroid/view/WindowManager;

    .line 169
    .line 170
    const/4 v2, 0x0

    .line 171
    invoke-virtual {v3, v0, v1, v2}, Le0/u1;->a(Landroid/view/View;Landroid/view/WindowManager;Ljava/lang/Runnable;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v3}, Le0/u1;->d()V

    .line 175
    .line 176
    .line 177
    return-void

    .line 178
    nop

    .line 179
    :array_0
    .array-data 1
        -0x65t
        -0x1et
        0x20t
        -0x74t
        -0x14t
        0x35t
        -0x4at
        -0x1at
        -0x74t
        -0x19t
        0x24t
        -0x77t
    .end array-data

    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    :array_1
    .array-data 1
        -0x26t
        -0x72t
        0x41t
        -0x2t
        -0x7ft
        0x62t
        -0x21t
        -0x78t
    .end array-data

    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    :array_2
    .array-data 1
        -0x40t
        -0x6dt
        -0x45t
        -0x44t
        0x19t
        -0x52t
        0x12t
        -0x24t
        -0xet
        -0x6at
        -0x4bt
        -0x5at
        0x1t
        -0x6ct
        0x2at
        -0x34t
        -0x1ct
    .end array-data

    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    nop

    .line 211
    :array_3
    .array-data 1
        -0x6dt
        -0x6t
        -0x24t
        -0x2et
        0x78t
        -0x3et
        0x43t
        -0x57t
    .end array-data
.end method

.method public final e()V
    .locals 2

    .line 1
    iget-object v0, p0, Li7/g;->h:Landroid/view/WindowManager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Li7/g;->j:Lcom/woha/atir/CameraInfoView;

    .line 6
    .line 7
    invoke-static {v0, v1}, La/a;->v(Landroid/view/WindowManager;Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Li7/g;->h:Landroid/view/WindowManager;

    .line 11
    .line 12
    iget-object v1, p0, Li7/g;->k:Li7/w;

    .line 13
    .line 14
    invoke-static {v0, v1}, La/a;->v(Landroid/view/WindowManager;Landroid/view/View;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Li7/g;->m:Ls0/c;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v1, v0, Ls0/c;->a:Landroid/media/SoundPool;

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/media/SoundPool;->release()V

    .line 26
    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    iput-object v1, v0, Ls0/c;->a:Landroid/media/SoundPool;

    .line 30
    .line 31
    :cond_1
    return-void
.end method

.method public final g()V
    .locals 2

    .line 1
    iget-object v0, p0, Li7/g;->c:Ljava/util/concurrent/ScheduledFuture;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Li7/g;->c:Ljava/util/concurrent/ScheduledFuture;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method
