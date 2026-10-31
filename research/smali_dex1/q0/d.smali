.class public final Lq0/d;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lq0/h;


# static fields
.field public static final n:Ljava/lang/String;

.field public static final o:Ljava/lang/String;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/example/navistart/MockGPS/MockGpsService;

.field public final c:Ljava/util/concurrent/ExecutorService;

.field public final d:Ljava/util/concurrent/ScheduledExecutorService;

.field public final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final f:Ljava/lang/Object;

.field public volatile g:Ljava/lang/String;

.field public volatile h:I

.field public volatile i:Ljava/net/Socket;

.field public volatile j:J

.field public volatile k:J

.field public volatile l:Z

.field public volatile m:Lq0/c;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    const/16 v0, 0xe

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    fill-array-data v0, :array_28

    .line 6
    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    new-array v2, v1, [B

    .line 11
    .line 12
    fill-array-data v2, :array_34

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lq0/d;->n:Ljava/lang/String;

    .line 20
    .line 21
    const/16 v0, 0xf

    .line 22
    .line 23
    new-array v0, v0, [B

    .line 24
    .line 25
    fill-array-data v0, :array_3c

    .line 26
    .line 27
    .line 28
    new-array v1, v1, [B

    .line 29
    .line 30
    fill-array-data v1, :array_48

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sput-object v0, Lq0/d;->o:Ljava/lang/String;

    .line 38
    .line 39
    return-void

    .line 40
    nop

    .line 41
    :array_28
    .array-data 1
        -0x67t
        0x4et
        0xdt
        -0x54t
        0x43t
        0x46t
        0x1ft
        0x5bt
        -0x65t
        0x4ct
        0x21t
        -0x66t
        0x5ft
        0x50t
    .end array-data

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    nop

    .line 53
    :array_34
    .array-data 1
        -0x2t
        0x3et
        0x7et
        -0xdt
        0x30t
        0x23t
        0x6dt
        0x2dt
    .end array-data

    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    :array_3c
    .array-data 1
        -0x29t
        0x27t
        -0x7t
        -0x7t
        -0x3ft
        -0x5ct
        -0x43t
        0x32t
        -0x1et
        0x4t
        -0x1bt
        -0x21t
        -0x2at
        -0x4bt
        -0x52t
    .end array-data

    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    :array_48
    .array-data 1
        -0x70t
        0x57t
        -0x76t
        -0x56t
        -0x5ct
        -0x2at
        -0x35t
        0x57t
    .end array-data
.end method

.method public constructor <init>(Lcom/example/navistart/MockGPS/MockGpsService;Lcom/example/navistart/MockGPS/MockGpsService;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lq0/d;->c:Ljava/util/concurrent/ExecutorService;

    .line 9
    .line 10
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lq0/d;->d:Ljava/util/concurrent/ScheduledExecutorService;

    .line 15
    .line 16
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lq0/d;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 23
    .line 24
    new-instance v0, Ljava/lang/Object;

    .line 25
    .line 26
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lq0/d;->f:Ljava/lang/Object;

    .line 30
    .line 31
    const/16 v0, 0x22b7

    .line 32
    .line 33
    iput v0, p0, Lq0/d;->h:I

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iput-object p1, p0, Lq0/d;->a:Landroid/content/Context;

    .line 40
    .line 41
    iput-object p2, p0, Lq0/d;->b:Lcom/example/navistart/MockGPS/MockGpsService;

    .line 42
    .line 43
    return-void
.end method

.method public static c(Ljava/util/LinkedHashMap;Lq0/c;)V
    .registers 7

    .line 1
    iget-object v0, p1, Lq0/c;->b:Landroid/net/Network;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    if-nez v0, :cond_16

    .line 6
    .line 7
    const/4 v0, 0x7

    .line 8
    new-array v0, v0, [B

    .line 9
    .line 10
    fill-array-data v0, :array_40

    .line 11
    .line 12
    .line 13
    new-array v2, v1, [B

    .line 14
    .line 15
    fill-array-data v2, :array_48

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    goto :goto_1a

    .line 23
    :cond_16
    invoke-virtual {v0}, Landroid/net/Network;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    :goto_1a
    invoke-static {v0}, Lai/onnxruntime/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const/4 v2, 0x1

    .line 32
    new-array v2, v2, [B

    .line 33
    .line 34
    const/16 v3, 0xb

    .line 35
    .line 36
    const/4 v4, 0x0

    .line 37
    aput-byte v3, v2, v4

    .line 38
    .line 39
    new-array v1, v1, [B

    .line 40
    .line 41
    fill-array-data v1, :array_50

    .line 42
    .line 43
    .line 44
    invoke-static {v2, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-object v1, p1, Lq0/c;->a:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    nop

    .line 65
    :array_40
    .array-data 1
        0x4ct
        -0x6at
        -0x55t
        0x61t
        0x2t
        -0x79t
        0x76t
    .end array-data

    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    :array_48
    .array-data 1
        0x28t
        -0xdt
        -0x33t
        0x0t
        0x77t
        -0x15t
        0x2t
        0x36t
    .end array-data

    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    :array_50
    .array-data 1
        0x77t
        -0x16t
        -0x8t
        0x68t
        -0x39t
        0x22t
        -0x6at
        0x49t
    .end array-data
.end method

.method public static d(Ljava/util/LinkedHashMap;Ljava/net/Inet4Address;Landroid/net/Network;)V
    .registers 10

    .line 1
    invoke-virtual {p1}, Ljava/net/Inet4Address;->getAddress()[B

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x3

    .line 6
    aget-byte v0, p1, v0

    .line 7
    .line 8
    and-int/lit16 v0, v0, 0xff

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    aget-byte v3, p1, v2

    .line 17
    .line 18
    and-int/lit16 v3, v3, 0xff

    .line 19
    .line 20
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const/4 v3, 0x1

    .line 24
    new-array v4, v3, [B

    .line 25
    .line 26
    const/16 v5, 0x40

    .line 27
    .line 28
    aput-byte v5, v4, v2

    .line 29
    .line 30
    const/16 v5, 0x8

    .line 31
    .line 32
    new-array v6, v5, [B

    .line 33
    .line 34
    fill-array-data v6, :array_7c

    .line 35
    .line 36
    .line 37
    invoke-static {v4, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    aget-byte v4, p1, v3

    .line 45
    .line 46
    and-int/lit16 v4, v4, 0xff

    .line 47
    .line 48
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    new-array v4, v3, [B

    .line 52
    .line 53
    const/16 v6, 0x7e

    .line 54
    .line 55
    aput-byte v6, v4, v2

    .line 56
    .line 57
    new-array v6, v5, [B

    .line 58
    .line 59
    fill-array-data v6, :array_84

    .line 60
    .line 61
    .line 62
    invoke-static {v4, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const/4 v4, 0x2

    .line 70
    aget-byte p1, p1, v4

    .line 71
    .line 72
    and-int/lit16 p1, p1, 0xff

    .line 73
    .line 74
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    new-array p1, v3, [B

    .line 78
    .line 79
    const/16 v4, 0x41

    .line 80
    .line 81
    aput-byte v4, p1, v2

    .line 82
    .line 83
    new-array v2, v5, [B

    .line 84
    .line 85
    fill-array-data v2, :array_8c

    .line 86
    .line 87
    .line 88
    invoke-static {p1, v2, v1}, Lcom/google/protobuf/q;->i([B[BLjava/lang/StringBuilder;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    :goto_5b
    const/16 v1, 0xfe

    .line 93
    .line 94
    if-gt v3, v1, :cond_7b

    .line 95
    .line 96
    if-eq v3, v0, :cond_78

    .line 97
    .line 98
    new-instance v1, Lq0/c;

    .line 99
    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    invoke-direct {v1, v2, p2}, Lq0/c;-><init>(Ljava/lang/String;Landroid/net/Network;)V

    .line 116
    .line 117
    .line 118
    invoke-static {p0, v1}, Lq0/d;->c(Ljava/util/LinkedHashMap;Lq0/c;)V

    .line 119
    .line 120
    .line 121
    :cond_78
    add-int/lit8 v3, v3, 0x1

    .line 122
    .line 123
    goto :goto_5b

    .line 124
    :cond_7b
    return-void

    .line 125
    :array_7c
    .array-data 1
        0x6et
        0x2dt
        -0x3ct
        0x19t
        -0x3et
        0x5et
        -0x1ft
        -0xft
    .end array-data

    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    :array_84
    .array-data 1
        0x50t
        -0x7t
        0x7at
        0x79t
        -0x68t
        0x53t
        0x45t
        0x2t
    .end array-data

    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    :array_8c
    .array-data 1
        0x6ft
        0x3dt
        -0x3t
        -0x45t
        -0x76t
        0x51t
        0x75t
        0x3et
    .end array-data
.end method

.method public static g(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_4

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_f

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_f
    return-object p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 5

    .line 1
    iget-object v0, p0, Lq0/d;->g:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lq0/d;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_10

    .line 8
    .line 9
    iget-object v1, p0, Lq0/d;->m:Lq0/c;

    .line 10
    .line 11
    if-eqz v1, :cond_10

    .line 12
    .line 13
    iget-object v0, p0, Lq0/d;->m:Lq0/c;

    .line 14
    .line 15
    iget-object v0, v0, Lq0/c;->a:Ljava/lang/String;

    .line 16
    .line 17
    :cond_10
    if-nez v0, :cond_26

    .line 18
    .line 19
    iget-object v0, p0, Lq0/d;->a:Landroid/content/Context;

    .line 20
    .line 21
    iget v1, p0, Lq0/d;->h:I

    .line 22
    .line 23
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const v2, 0x7f130255

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    return-object v0

    .line 39
    :cond_26
    invoke-static {v0}, Lai/onnxruntime/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const/4 v1, 0x1

    .line 44
    new-array v1, v1, [B

    .line 45
    .line 46
    const/16 v2, 0x22

    .line 47
    .line 48
    const/4 v3, 0x0

    .line 49
    aput-byte v2, v1, v3

    .line 50
    .line 51
    const/16 v2, 0x8

    .line 52
    .line 53
    new-array v2, v2, [B

    .line 54
    .line 55
    fill-array-data v2, :array_4a

    .line 56
    .line 57
    .line 58
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    iget v1, p0, Lq0/d;->h:I

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    return-object v0

    .line 75
    :array_4a
    .array-data 1
        0x18t
        -0xct
        0x36t
        0x28t
        0x61t
        -0x3dt
        0x36t
        0x4bt
    .end array-data
.end method

.method public final b(Lj/i;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lq0/d;->g:Ljava/lang/String;

    .line 2
    .line 3
    iget v1, p0, Lq0/d;->h:I

    .line 4
    .line 5
    iget-object v2, p1, Lj/i;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v2, Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v2}, Lq0/d;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iput-object v2, p0, Lq0/d;->g:Ljava/lang/String;

    .line 14
    .line 15
    iget p1, p1, Lj/i;->b:I

    .line 16
    .line 17
    if-lez p1, :cond_18

    .line 18
    .line 19
    const v2, 0xffff

    .line 20
    .line 21
    .line 22
    if-gt p1, v2, :cond_18

    .line 23
    .line 24
    goto :goto_1a

    .line 25
    :cond_18
    const/16 p1, 0x22b7

    .line 26
    .line 27
    :goto_1a
    iput p1, p0, Lq0/d;->h:I

    .line 28
    .line 29
    iget-object p1, p0, Lq0/d;->g:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v0}, Lq0/d;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-static {p1}, Lq0/d;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const/4 v3, 0x0

    .line 40
    const/4 v4, 0x1

    .line 41
    if-nez v2, :cond_30

    .line 42
    .line 43
    if-nez p1, :cond_2e

    .line 44
    .line 45
    move p1, v4

    .line 46
    goto :goto_34

    .line 47
    :cond_2e
    move p1, v3

    .line 48
    goto :goto_34

    .line 49
    :cond_30
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    :goto_34
    if-nez p1, :cond_39

    .line 54
    .line 55
    const/4 p1, 0x0

    .line 56
    iput-object p1, p0, Lq0/d;->m:Lq0/c;

    .line 57
    .line 58
    :cond_39
    iget-object p1, p0, Lq0/d;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-eqz p1, :cond_60

    .line 65
    .line 66
    iget p1, p0, Lq0/d;->h:I

    .line 67
    .line 68
    if-ne v1, p1, :cond_5b

    .line 69
    .line 70
    iget-object p1, p0, Lq0/d;->g:Ljava/lang/String;

    .line 71
    .line 72
    invoke-static {v0}, Lq0/d;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-static {p1}, Lq0/d;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    if-nez v0, :cond_55

    .line 81
    .line 82
    if-nez p1, :cond_59

    .line 83
    .line 84
    move v3, v4

    .line 85
    goto :goto_59

    .line 86
    :cond_55
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    :cond_59
    :goto_59
    if-nez v3, :cond_60

    .line 91
    .line 92
    :cond_5b
    iget-object p1, p0, Lq0/d;->i:Ljava/net/Socket;

    .line 93
    .line 94
    invoke-virtual {p0, p1}, Lq0/d;->e(Ljava/net/Socket;)V

    .line 95
    .line 96
    .line 97
    :cond_60
    return-void
.end method

.method public final e(Ljava/net/Socket;)V
    .registers 3

    .line 1
    if-nez p1, :cond_3

    .line 2
    .line 3
    return-void

    .line 4
    :cond_3
    iget-object v0, p0, Lq0/d;->i:Ljava/net/Socket;

    .line 5
    .line 6
    if-ne v0, p1, :cond_a

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lq0/d;->i:Ljava/net/Socket;

    .line 10
    .line 11
    :cond_a
    :try_start_a
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_d} :catch_d

    .line 12
    .line 13
    .line 14
    :catch_d
    return-void
.end method

.method public final f(Lq0/c;Ljava/lang/String;)V
    .registers 29

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget-object v3, v0, Lq0/c;->b:Landroid/net/Network;

    .line 8
    .line 9
    if-nez v3, :cond_10

    .line 10
    .line 11
    new-instance v3, Ljava/net/Socket;

    .line 12
    .line 13
    invoke-direct {v3}, Ljava/net/Socket;-><init>()V

    .line 14
    .line 15
    .line 16
    goto :goto_18

    .line 17
    :cond_10
    invoke-virtual {v3}, Landroid/net/Network;->getSocketFactory()Ljavax/net/SocketFactory;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-virtual {v3}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    :goto_18
    iput-object v3, v1, Lq0/d;->i:Ljava/net/Socket;

    .line 26
    .line 27
    const/4 v4, 0x1

    .line 28
    invoke-virtual {v3, v4}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3, v4}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 32
    .line 33
    .line 34
    new-instance v5, Ljava/net/InetSocketAddress;

    .line 35
    .line 36
    iget-object v0, v0, Lq0/c;->a:Ljava/lang/String;

    .line 37
    .line 38
    iget v6, v1, Lq0/d;->h:I

    .line 39
    .line 40
    invoke-direct {v5, v0, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 41
    .line 42
    .line 43
    const/16 v0, 0x4b0

    .line 44
    .line 45
    invoke-virtual {v3, v5, v0}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 46
    .line 47
    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 49
    .line 50
    .line 51
    move-result-wide v5

    .line 52
    iput-wide v5, v1, Lq0/d;->j:J

    .line 53
    .line 54
    const-wide/16 v5, 0x0

    .line 55
    .line 56
    iput-wide v5, v1, Lq0/d;->k:J

    .line 57
    .line 58
    const/4 v0, 0x0

    .line 59
    iput-boolean v0, v1, Lq0/d;->l:Z

    .line 60
    .line 61
    iget-object v5, v1, Lq0/d;->b:Lcom/example/navistart/MockGPS/MockGpsService;

    .line 62
    .line 63
    iget-object v6, v1, Lq0/d;->a:Landroid/content/Context;

    .line 64
    .line 65
    const v7, 0x7f130257

    .line 66
    .line 67
    .line 68
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    invoke-static {v6, v2, v4}, Lcom/example/navistart/MockGPS/MockGpsService;->j(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 76
    .line 77
    .line 78
    iget-object v5, v1, Lq0/d;->f:Ljava/lang/Object;

    .line 79
    .line 80
    monitor-enter v5

    .line 81
    :try_start_50
    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    invoke-virtual {v6, v4}, Ljava/io/OutputStream;->write(I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 89
    .line 90
    .line 91
    monitor-exit v5
    :try_end_5b
    .catchall {:try_start_50 .. :try_end_5b} :catchall_137

    .line 92
    new-instance v5, Ljava/io/DataInputStream;

    .line 93
    .line 94
    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    invoke-direct {v5, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 99
    .line 100
    .line 101
    :goto_64
    iget-object v6, v1, Lq0/d;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 102
    .line 103
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 104
    .line 105
    .line 106
    move-result v6

    .line 107
    if-eqz v6, :cond_136

    .line 108
    .line 109
    invoke-virtual {v3}, Ljava/net/Socket;->isClosed()Z

    .line 110
    .line 111
    .line 112
    move-result v6

    .line 113
    if-nez v6, :cond_136

    .line 114
    .line 115
    :try_start_72
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    .line 116
    .line 117
    .line 118
    move-result v6
    :try_end_76
    .catch Ljava/io/EOFException; {:try_start_72 .. :try_end_76} :catch_126

    .line 119
    if-lez v6, :cond_119

    .line 120
    .line 121
    const/high16 v9, 0x10000

    .line 122
    .line 123
    if-gt v6, v9, :cond_119

    .line 124
    .line 125
    new-array v6, v6, [B

    .line 126
    .line 127
    invoke-virtual {v5, v6}, Ljava/io/DataInputStream;->readFully([B)V

    .line 128
    .line 129
    .line 130
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 131
    .line 132
    .line 133
    move-result-wide v9

    .line 134
    iput-wide v9, v1, Lq0/d;->j:J

    .line 135
    .line 136
    invoke-static {v6}, Lj4/b;->c([B)Lj4/b;

    .line 137
    .line 138
    .line 139
    move-result-object v6

    .line 140
    iget-object v9, v1, Lq0/d;->b:Lcom/example/navistart/MockGPS/MockGpsService;

    .line 141
    .line 142
    iget-object v10, v1, Lq0/d;->a:Landroid/content/Context;

    .line 143
    .line 144
    invoke-virtual {v10, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v10

    .line 148
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    .line 150
    .line 151
    invoke-static {v10, v2, v4}, Lcom/example/navistart/MockGPS/MockGpsService;->j(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 152
    .line 153
    .line 154
    iget-object v9, v6, Lj4/b;->d:Ljava/lang/Object;

    .line 155
    .line 156
    check-cast v9, Lq0/b;

    .line 157
    .line 158
    if-nez v9, :cond_a0

    .line 159
    .line 160
    goto :goto_104

    .line 161
    :cond_a0
    :try_start_a0
    iget-wide v10, v9, Lq0/b;->b:D

    .line 162
    .line 163
    iget-wide v12, v9, Lq0/b;->c:D

    .line 164
    .line 165
    iget-wide v14, v9, Lq0/b;->a:J

    .line 166
    .line 167
    iget-boolean v4, v9, Lq0/b;->i:Z

    .line 168
    .line 169
    const/16 v16, 0x0

    .line 170
    .line 171
    if-eqz v4, :cond_b5

    .line 172
    .line 173
    iget-wide v7, v9, Lq0/b;->d:D

    .line 174
    .line 175
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 176
    .line 177
    .line 178
    move-result-object v7

    .line 179
    goto :goto_b7

    .line 180
    :catch_b3
    move-exception v0

    .line 181
    goto :goto_10a

    .line 182
    :cond_b5
    move-object/from16 v7, v16

    .line 183
    .line 184
    :goto_b7
    iget-boolean v8, v9, Lq0/b;->j:Z

    .line 185
    .line 186
    if-eqz v8, :cond_c4

    .line 187
    .line 188
    iget v8, v9, Lq0/b;->e:F

    .line 189
    .line 190
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 191
    .line 192
    .line 193
    move-result-object v8

    .line 194
    move-object/from16 v17, v8

    .line 195
    .line 196
    goto :goto_c6

    .line 197
    :cond_c4
    move-object/from16 v17, v16

    .line 198
    .line 199
    :goto_c6
    iget-boolean v8, v9, Lq0/b;->k:Z

    .line 200
    .line 201
    if-eqz v8, :cond_d3

    .line 202
    .line 203
    iget v8, v9, Lq0/b;->f:F

    .line 204
    .line 205
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 206
    .line 207
    .line 208
    move-result-object v8

    .line 209
    move-object/from16 v18, v8

    .line 210
    .line 211
    goto :goto_d5

    .line 212
    :cond_d3
    move-object/from16 v18, v16

    .line 213
    .line 214
    :goto_d5
    iget-boolean v8, v9, Lq0/b;->l:Z

    .line 215
    .line 216
    if-eqz v8, :cond_df

    .line 217
    .line 218
    iget v8, v9, Lq0/b;->g:F

    .line 219
    .line 220
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 221
    .line 222
    .line 223
    move-result-object v16

    .line 224
    :cond_df
    move-object/from16 v19, v16

    .line 225
    .line 226
    iget v6, v6, Lj4/b;->b:I

    .line 227
    .line 228
    iget-object v8, v9, Lq0/b;->h:Ljava/lang/String;

    .line 229
    .line 230
    const/16 v22, 0x0

    .line 231
    .line 232
    const/16 v23, 0x0

    .line 233
    .line 234
    const/16 v24, 0x0

    .line 235
    .line 236
    move/from16 v21, v6

    .line 237
    .line 238
    move/from16 v20, v6

    .line 239
    .line 240
    move-object/from16 v16, v7

    .line 241
    .line 242
    move-object/from16 v25, v8

    .line 243
    .line 244
    invoke-static/range {v10 .. v25}, Lq0/q;->a(DDJLjava/lang/Double;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;IIILjava/lang/Float;Ljava/lang/Float;Ljava/lang/String;)Lq0/q;

    .line 245
    .line 246
    .line 247
    move-result-object v6

    .line 248
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 249
    .line 250
    .line 251
    move-result-wide v7

    .line 252
    iput-wide v7, v1, Lq0/d;->k:J

    .line 253
    .line 254
    iput-boolean v0, v1, Lq0/d;->l:Z

    .line 255
    .line 256
    iget-object v7, v1, Lq0/d;->b:Lcom/example/navistart/MockGPS/MockGpsService;

    .line 257
    .line 258
    invoke-virtual {v7, v6}, Lcom/example/navistart/MockGPS/MockGpsService;->i(Lq0/q;)V
    :try_end_104
    .catch Lorg/json/JSONException; {:try_start_a0 .. :try_end_104} :catch_b3

    .line 259
    .line 260
    .line 261
    :goto_104
    const/4 v4, 0x1

    .line 262
    const v7, 0x7f130257

    .line 263
    .line 264
    .line 265
    goto/16 :goto_64

    .line 266
    .line 267
    :goto_10a
    new-instance v2, Ljava/io/IOException;

    .line 268
    .line 269
    iget-object v3, v1, Lq0/d;->a:Landroid/content/Context;

    .line 270
    .line 271
    const v4, 0x7f130267

    .line 272
    .line 273
    .line 274
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v3

    .line 278
    invoke-direct {v2, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 279
    .line 280
    .line 281
    throw v2

    .line 282
    :cond_119
    const v4, 0x7f130267

    .line 283
    .line 284
    .line 285
    iget-object v0, v1, Lq0/d;->a:Landroid/content/Context;

    .line 286
    .line 287
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    invoke-static {v0}, Ln0/b;->A(Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    return-void

    .line 295
    :catch_126
    move-exception v0

    .line 296
    new-instance v2, Ljava/io/IOException;

    .line 297
    .line 298
    iget-object v3, v1, Lq0/d;->a:Landroid/content/Context;

    .line 299
    .line 300
    const v4, 0x7f13027d

    .line 301
    .line 302
    .line 303
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v3

    .line 307
    invoke-direct {v2, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 308
    .line 309
    .line 310
    throw v2

    .line 311
    :cond_136
    return-void

    .line 312
    :catchall_137
    move-exception v0

    .line 313
    :try_start_138
    monitor-exit v5
    :try_end_139
    .catchall {:try_start_138 .. :try_end_139} :catchall_137

    .line 314
    throw v0
.end method

.method public final getTitle()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lq0/d;->a:Landroid/content/Context;

    .line 2
    .line 3
    const v1, 0x7f130283

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lq0/d;->n:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final start()V
    .registers 9

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, Lq0/d;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_b

    .line 10
    .line 11
    return-void

    .line 12
    :cond_b
    new-instance v2, Lq0/a;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-direct {v2, p0, v0}, Lq0/a;-><init>(Lq0/d;I)V

    .line 16
    .line 17
    .line 18
    const-wide/16 v5, 0x3e8

    .line 19
    .line 20
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 21
    .line 22
    iget-object v1, p0, Lq0/d;->d:Ljava/util/concurrent/ScheduledExecutorService;

    .line 23
    .line 24
    const-wide/16 v3, 0x3e8

    .line 25
    .line 26
    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 27
    .line 28
    .line 29
    new-instance v0, Lq0/a;

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    invoke-direct {v0, p0, v1}, Lq0/a;-><init>(Lq0/d;I)V

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lq0/d;->c:Ljava/util/concurrent/ExecutorService;

    .line 36
    .line 37
    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final stop()V
    .registers 3

    .line 1
    iget-object v0, p0, Lq0/d;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lq0/d;->i:Ljava/net/Socket;

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lq0/d;->e(Ljava/net/Socket;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lq0/d;->d:Ljava/util/concurrent/ScheduledExecutorService;

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lq0/d;->c:Ljava/util/concurrent/ExecutorService;

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    return-void
.end method
