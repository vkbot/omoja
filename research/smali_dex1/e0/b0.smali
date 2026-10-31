.class public final synthetic Le0/b0;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lokhttp3/Interceptor;


# virtual methods
.method public final intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .registers 6

    .line 1
    const v0, 0xf00d

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 5
    .line 6
    .line 7
    :try_start_6
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/16 v1, 0xa

    .line 16
    .line 17
    new-array v1, v1, [B

    .line 18
    .line 19
    fill-array-data v1, :array_46

    .line 20
    .line 21
    .line 22
    const/16 v2, 0x8

    .line 23
    .line 24
    new-array v3, v2, [B

    .line 25
    .line 26
    fill-array-data v3, :array_50

    .line 27
    .line 28
    .line 29
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const/16 v3, 0x10

    .line 34
    .line 35
    new-array v3, v3, [B

    .line 36
    .line 37
    fill-array-data v3, :array_58

    .line 38
    .line 39
    .line 40
    new-array v2, v2, [B

    .line 41
    .line 42
    fill-array-data v2, :array_64

    .line 43
    .line 44
    .line 45
    invoke-static {v3, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    .line 58
    .line 59
    .line 60
    move-result-object p1
    :try_end_3c
    .catchall {:try_start_6 .. :try_end_3c} :catchall_40

    .line 61
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 62
    .line 63
    .line 64
    return-object p1

    .line 65
    :catchall_40
    move-exception p1

    .line 66
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 67
    .line 68
    .line 69
    throw p1

    .line 70
    nop

    .line 71
    :array_46
    .array-data 1
        -0x30t
        0x8t
        -0x1dt
        0x5et
        -0x7dt
        0x73t
        -0x53t
        -0x49t
        -0x15t
        0xft
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
    nop

    .line 81
    :array_50
    .array-data 1
        -0x7bt
        0x7bt
        -0x7at
        0x2ct
        -0x52t
        0x32t
        -0x36t
        -0x2et
    .end array-data

    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    :array_58
    .array-data 1
        0x2ct
        0x4dt
        0x35t
        0x6dt
        0x4bt
        -0x77t
        -0x7ft
        -0x64t
        0x15t
        0x4ft
        0x24t
        0x6ft
        0x30t
        -0x29t
        -0x40t
        -0x40t
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
    .line 100
    .line 101
    :array_64
    .array-data 1
        0x66t
        0xet
        0x54t
        0x1ft
        0x1ft
        -0x1at
        -0x12t
        -0x10t
    .end array-data
.end method
