.class public abstract Le0/w;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final a:Ljava/util/concurrent/ConcurrentHashMap;

.field public static final b:Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    .line 6
    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Le0/w;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 14
    .line 15
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Le0/w;->b:Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    .line 21
    .line 22
    return-void
.end method

.method public static a()I
    .registers 8

    .line 1
    sget-object v0, Le0/w;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x0

    .line 13
    :cond_c
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-eqz v3, :cond_74

    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    check-cast v3, Ljava/util/Map$Entry;

    .line 24
    .line 25
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    check-cast v4, Ljava/lang/String;

    .line 30
    .line 31
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 36
    .line 37
    if-eqz v3, :cond_c

    .line 38
    .line 39
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-nez v5, :cond_c

    .line 44
    .line 45
    invoke-virtual {v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    add-int/2addr v2, v3

    .line 54
    const/16 v5, 0x1e

    .line 55
    .line 56
    if-le v3, v5, :cond_c

    .line 57
    .line 58
    new-instance v3, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    const/16 v5, 0xc

    .line 64
    .line 65
    new-array v5, v5, [B

    .line 66
    .line 67
    fill-array-data v5, :array_78

    .line 68
    .line 69
    .line 70
    const/16 v6, 0x8

    .line 71
    .line 72
    new-array v7, v6, [B

    .line 73
    .line 74
    fill-array-data v7, :array_82

    .line 75
    .line 76
    .line 77
    invoke-static {v5, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const/4 v4, 0x4

    .line 88
    new-array v4, v4, [B

    .line 89
    .line 90
    fill-array-data v4, :array_8a

    .line 91
    .line 92
    .line 93
    new-array v5, v6, [B

    .line 94
    .line 95
    fill-array-data v5, :array_90

    .line 96
    .line 97
    .line 98
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    sget-object v4, Lcom/example/navistart/cores/ColorText;->RED:Lcom/example/navistart/cores/ColorText;

    .line 110
    .line 111
    invoke-static {v3, v4}, Lh0/b;->w(Ljava/lang/String;Lcom/example/navistart/cores/ColorText;)V

    .line 112
    .line 113
    .line 114
    goto :goto_c

    .line 115
    :catchall_72
    move-exception v1

    .line 116
    goto :goto_76

    .line 117
    :cond_74
    monitor-exit v0

    .line 118
    return v2

    .line 119
    :goto_76
    monitor-exit v0
    :try_end_77
    .catchall {:try_start_3 .. :try_end_77} :catchall_72

    .line 120
    throw v1

    .line 121
    :array_78
    .array-data 1
        -0x71t
        -0x79t
        0x6ct
        -0x6et
        -0x7dt
        -0x3et
        0x9t
        -0x7bt
        -0x47t
        -0x72t
        0x29t
        -0x58t
    .end array-data

    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    :array_82
    .array-data 1
        -0x34t
        -0x15t
        0x9t
        -0xdt
        -0xft
        -0x6dt
        0x7ct
        -0x20t
    .end array-data

    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    :array_8a
    .array-data 1
        0x51t
        0x77t
        -0x4et
        -0x42t
    .end array-data

    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    :array_90
    .array-data 1
        0xct
        0x56t
        -0x6dt
        -0x61t
        -0x7dt
        0x18t
        -0x2t
        -0x67t
    .end array-data
.end method

.method public static b(JLjava/lang/String;)Le0/v;
    .registers 4

    .line 1
    const/4 v0, -0x1

    .line 2
    invoke-static {v0, p2}, Le0/w;->c(ILjava/lang/String;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 3
    .line 4
    .line 5
    move-result-object p2

    .line 6
    new-instance v0, Le0/v;

    .line 7
    .line 8
    invoke-direct {v0, p2, p0, p1}, Le0/v;-><init>(Ljava/util/concurrent/ScheduledThreadPoolExecutor;J)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public static c(ILjava/lang/String;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .registers 6

    .line 1
    if-eqz p1, :cond_c

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1e

    .line 12
    .line 13
    :cond_c
    const/16 p1, 0x10

    .line 14
    .line 15
    new-array p1, p1, [B

    .line 16
    .line 17
    fill-array-data p1, :array_46

    .line 18
    .line 19
    .line 20
    const/16 v0, 0x8

    .line 21
    .line 22
    new-array v0, v0, [B

    .line 23
    .line 24
    fill-array-data v0, :array_52

    .line 25
    .line 26
    .line 27
    invoke-static {p1, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    :cond_1e
    sget-object v0, Le0/w;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 38
    .line 39
    if-eqz v1, :cond_2f

    .line 40
    .line 41
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-nez v2, :cond_2f

    .line 46
    .line 47
    return-object v1

    .line 48
    :cond_2f
    new-instance v1, Le0/t;

    .line 49
    .line 50
    invoke-direct {v1, p1}, Le0/t;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    if-lez p0, :cond_37

    .line 54
    .line 55
    goto :goto_38

    .line 56
    :cond_37
    const/4 p0, 0x1

    .line 57
    :goto_38
    new-instance v2, Le0/o2;

    .line 58
    .line 59
    sget-object v3, Le0/w;->b:Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    .line 60
    .line 61
    invoke-direct {v2, p0, v1, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor;->prestartAllCoreThreads()I

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    return-object v2

    .line 71
    :array_46
    .array-data 1
        -0x28t
        0x1et
        -0x33t
        0x40t
        -0x29t
        0x0t
        0x1t
        0x18t
        -0x33t
        0x14t
        -0x39t
        0x55t
        -0x35t
        0x10t
        0xbt
        0x18t
    .end array-data

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    :array_52
    .array-data 1
        -0x63t
        0x66t
        -0x58t
        0x23t
        -0x5et
        0x74t
        0x6et
        0x6at
    .end array-data
.end method
