.class public final Ll/j;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final a:Lc0/l;

.field public final b:Ld0/d;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lc0/l;

    .line 5
    .line 6
    const-wide/16 v1, 0x3e8

    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Lc0/l;-><init>(J)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Ll/j;->a:Lc0/l;

    .line 12
    .line 13
    new-instance v0, Lz3/f;

    .line 14
    .line 15
    const/16 v1, 0xd

    .line 16
    .line 17
    invoke-direct {v0, v1}, Lz3/f;-><init>(I)V

    .line 18
    .line 19
    .line 20
    const/16 v1, 0xa

    .line 21
    .line 22
    invoke-static {v1, v0}, Ld0/g;->a(ILd0/c;)Ld0/d;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Ll/j;->b:Ld0/d;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final a(Lh/e;)Ljava/lang/String;
    .registers 10

    .line 1
    iget-object v0, p0, Ll/j;->a:Lc0/l;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Ll/j;->a:Lc0/l;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Lc0/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Ljava/lang/String;

    .line 11
    .line 12
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_64

    .line 13
    if-nez v1, :cond_57

    .line 14
    .line 15
    iget-object v0, p0, Ll/j;->b:Ld0/d;

    .line 16
    .line 17
    invoke-virtual {v0}, Ld0/d;->acquire()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Ll/i;

    .line 22
    .line 23
    :try_start_16
    iget-object v1, v0, Ll/i;->b:Ljava/security/MessageDigest;

    .line 24
    .line 25
    invoke-interface {p1, v1}, Lh/e;->b(Ljava/security/MessageDigest;)V

    .line 26
    .line 27
    .line 28
    iget-object v1, v0, Ll/i;->b:Ljava/security/MessageDigest;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    sget-object v2, Lc0/p;->b:[C

    .line 35
    .line 36
    monitor-enter v2
    :try_end_24
    .catchall {:try_start_16 .. :try_end_24} :catchall_50

    .line 37
    const/4 v3, 0x0

    .line 38
    :goto_25
    :try_start_25
    array-length v4, v1

    .line 39
    if-ge v3, v4, :cond_41

    .line 40
    .line 41
    aget-byte v4, v1, v3

    .line 42
    .line 43
    and-int/lit16 v5, v4, 0xff

    .line 44
    .line 45
    mul-int/lit8 v6, v3, 0x2

    .line 46
    .line 47
    sget-object v7, Lc0/p;->a:[C

    .line 48
    .line 49
    ushr-int/lit8 v5, v5, 0x4

    .line 50
    .line 51
    aget-char v5, v7, v5

    .line 52
    .line 53
    aput-char v5, v2, v6

    .line 54
    .line 55
    add-int/lit8 v6, v6, 0x1

    .line 56
    .line 57
    and-int/lit8 v4, v4, 0xf

    .line 58
    .line 59
    aget-char v4, v7, v4

    .line 60
    .line 61
    aput-char v4, v2, v6

    .line 62
    .line 63
    add-int/lit8 v3, v3, 0x1

    .line 64
    .line 65
    goto :goto_25

    .line 66
    :cond_41
    new-instance v1, Ljava/lang/String;

    .line 67
    .line 68
    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    .line 69
    .line 70
    .line 71
    monitor-exit v2
    :try_end_47
    .catchall {:try_start_25 .. :try_end_47} :catchall_4d

    .line 72
    iget-object v2, p0, Ll/j;->b:Ld0/d;

    .line 73
    .line 74
    invoke-virtual {v2, v0}, Ld0/d;->release(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    goto :goto_57

    .line 78
    :catchall_4d
    move-exception p1

    .line 79
    :try_start_4e
    monitor-exit v2
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    .line 80
    :try_start_4f
    throw p1
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_50

    .line 81
    :catchall_50
    move-exception p1

    .line 82
    iget-object v1, p0, Ll/j;->b:Ld0/d;

    .line 83
    .line 84
    invoke-virtual {v1, v0}, Ld0/d;->release(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    throw p1

    .line 88
    :cond_57
    :goto_57
    iget-object v2, p0, Ll/j;->a:Lc0/l;

    .line 89
    .line 90
    monitor-enter v2

    .line 91
    :try_start_5a
    iget-object v0, p0, Ll/j;->a:Lc0/l;

    .line 92
    .line 93
    invoke-virtual {v0, p1, v1}, Lc0/l;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    monitor-exit v2

    .line 97
    return-object v1

    .line 98
    :catchall_61
    move-exception p1

    .line 99
    monitor-exit v2
    :try_end_63
    .catchall {:try_start_5a .. :try_end_63} :catchall_61

    .line 100
    throw p1

    .line 101
    :catchall_64
    move-exception p1

    .line 102
    :try_start_65
    monitor-exit v0
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_64

    .line 103
    throw p1
.end method
