.class public final Ly0/h;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field public final b:Landroid/content/Context;

.field public final c:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-direct {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    iput-object p2, p0, Ly0/h;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    iput-object p1, p0, Ly0/h;->b:Landroid/content/Context;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1
    iget-object v0, p0, Ly0/h;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    if-nez v0, :cond_32

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1e

    .line 20
    .line 21
    if-nez p2, :cond_18

    .line 22
    .line 23
    const-string p2, ""

    .line 24
    .line 25
    :cond_18
    iget-object v0, p0, Ly0/h;->b:Landroid/content/Context;

    .line 26
    .line 27
    invoke-static {v0, p1, p2, p3}, Ly0/g;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1e
    const/16 p1, 0x1a

    .line 32
    .line 33
    new-array p1, p1, [B

    .line 34
    .line 35
    fill-array-data p1, :array_46

    .line 36
    .line 37
    .line 38
    new-array p2, v1, [B

    .line 39
    .line 40
    fill-array-data p2, :array_58

    .line 41
    .line 42
    .line 43
    invoke-static {p1, p2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_32
    const/16 p1, 0x19

    .line 52
    .line 53
    new-array p1, p1, [B

    .line 54
    .line 55
    fill-array-data p1, :array_60

    .line 56
    .line 57
    .line 58
    new-array p2, v1, [B

    .line 59
    .line 60
    fill-array-data p2, :array_72

    .line 61
    .line 62
    .line 63
    invoke-static {p1, p2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-static {p1}, Lj1/i;->l(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :array_46
    .array-data 1
        0x6ct
        -0x3bt
        -0x62t
        0x62t
        -0x53t
        0x7dt
        0x36t
        -0x13t
        0x4ct
        -0x69t
        -0x64t
        0x64t
        -0x41t
        0x63t
        0x37t
        -0x6t
        0x54t
        -0x69t
        -0x6at
        0x7ft
        -0x2t
        0x68t
        0x34t
        -0x11t
        0x4ct
        -0x32t
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
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    nop

    .line 89
    :array_58
    .array-data 1
        0x38t
        -0x49t
        -0x1t
        0xct
        -0x22t
        0xdt
        0x59t
        -0x61t
    .end array-data

    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    :array_60
    .array-data 1
        -0x1ct
        -0x6dt
        -0x5bt
        -0x5dt
        0x20t
        0x53t
        0x6ct
        -0x64t
        -0x3ct
        -0x3ft
        -0x58t
        -0x58t
        0x32t
        0x50t
        0x66t
        -0x32t
        -0x27t
        -0x6et
        -0x1ct
        -0x52t
        0x3ft
        0x4ct
        0x70t
        -0x75t
        -0x2ct
    .end array-data

    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    nop

    .line 115
    :array_72
    .array-data 1
        -0x50t
        -0x1ft
        -0x3ct
        -0x33t
        0x53t
        0x23t
        0x3t
        -0x12t
    .end array-data
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    const/4 v0, 0x6

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    fill-array-data v0, :array_16

    .line 5
    .line 6
    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    new-array v1, v1, [B

    .line 10
    .line 11
    fill-array-data v1, :array_1e

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p0, p1, p2, v0}, Ly0/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    nop

    .line 23
    :array_16
    .array-data 1
        0x77t
        0x4et
        -0x53t
        -0x34t
        0x66t
        0x5bt
    .end array-data

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    nop

    .line 31
    :array_1e
    .array-data 1
        0x1bt
        0x2ft
        -0x27t
        -0x57t
        0x15t
        0x2ft
        -0x34t
        0x7ct
    .end array-data
.end method

.method public final close()V
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, Ly0/h;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_c

    .line 10
    .line 11
    sget-object v0, Ly0/g;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 12
    .line 13
    :cond_c
    return-void
.end method

.method public final y(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    new-array v1, v0, [B

    .line 4
    .line 5
    fill-array-data v1, :array_14

    .line 6
    .line 7
    .line 8
    new-array v0, v0, [B

    .line 9
    .line 10
    fill-array-data v0, :array_1c

    .line 11
    .line 12
    .line 13
    invoke-static {v1, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p0, p1, p2, v0}, Ly0/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :array_14
    .array-data 1
        0x1ct
        -0x5ft
        -0x5bt
        -0x3t
        -0x76t
        0x29t
        0x1dt
        0x64t
    .end array-data

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    :array_1c
    .array-data 1
        0x6et
        -0x3ct
        -0x37t
        -0x6ct
        -0x15t
        0x4bt
        0x71t
        0x1t
    .end array-data
.end method
