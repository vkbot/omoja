.class public final synthetic Lb1/q;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/webkit/ValueCallback;


# instance fields
.field public final synthetic a:Lb1/r;

.field public final synthetic b:Z

.field public final synthetic c:J

.field public final synthetic d:J

.field public final synthetic e:J


# direct methods
.method public synthetic constructor <init>(Lb1/r;ZJJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lb1/q;->a:Lb1/r;

    .line 5
    .line 6
    iput-boolean p2, p0, Lb1/q;->b:Z

    .line 7
    .line 8
    iput-wide p3, p0, Lb1/q;->c:J

    .line 9
    .line 10
    iput-wide p5, p0, Lb1/q;->d:J

    .line 11
    .line 12
    iput-wide p7, p0, Lb1/q;->e:J

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final onReceiveValue(Ljava/lang/Object;)V
    .locals 8

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    iget-boolean p1, p0, Lb1/q;->b:Z

    .line 4
    .line 5
    iget-wide v1, p0, Lb1/q;->d:J

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const/16 p1, 0xb

    .line 10
    .line 11
    new-array p1, p1, [B

    .line 12
    .line 13
    fill-array-data p1, :array_0

    .line 14
    .line 15
    .line 16
    const/16 v0, 0x8

    .line 17
    .line 18
    new-array v3, v0, [B

    .line 19
    .line 20
    fill-array-data v3, :array_1

    .line 21
    .line 22
    .line 23
    invoke-static {p1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    new-instance v3, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const/16 v4, 0x13

    .line 33
    .line 34
    new-array v4, v4, [B

    .line 35
    .line 36
    fill-array-data v4, :array_2

    .line 37
    .line 38
    .line 39
    new-array v5, v0, [B

    .line 40
    .line 41
    fill-array-data v5, :array_3

    .line 42
    .line 43
    .line 44
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-wide v4, p0, Lb1/q;->c:J

    .line 52
    .line 53
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const/4 v4, 0x7

    .line 57
    new-array v4, v4, [B

    .line 58
    .line 59
    fill-array-data v4, :array_4

    .line 60
    .line 61
    .line 62
    new-array v0, v0, [B

    .line 63
    .line 64
    fill-array-data v0, :array_5

    .line 65
    .line 66
    .line 67
    invoke-static {v4, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 75
    .line 76
    .line 77
    move-result-wide v4

    .line 78
    sub-long/2addr v4, v1

    .line 79
    const-wide/16 v6, 0x0

    .line 80
    .line 81
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    .line 82
    .line 83
    .line 84
    move-result-wide v4

    .line 85
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    :cond_0
    const/4 v5, 0x1

    .line 96
    iget-object v0, p0, Lb1/q;->a:Lb1/r;

    .line 97
    .line 98
    iget-wide v3, p0, Lb1/q;->e:J

    .line 99
    .line 100
    invoke-virtual/range {v0 .. v5}, Lb1/r;->g(JJZ)V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    nop

    .line 105
    :array_0
    .array-data 1
        -0x80t
        -0x5bt
        -0x7t
        0x6et
        0x48t
        0x5bt
        -0x7ft
        0x3bt
        -0x58t
        -0x42t
        -0xft
    .end array-data

    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    :array_1
    .array-data 1
        -0x33t
        -0x34t
        -0x69t
        0x7t
        0x5t
        0x3at
        -0xft
        0x6bt
    .end array-data

    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    :array_2
    .array-data 1
        0x3ct
        -0x67t
        0x23t
        -0x31t
        -0x5dt
        -0x52t
        -0x26t
        -0x1ct
        0x29t
        -0x63t
        0x22t
        -0x7ct
        -0x20t
        -0x57t
        -0x3ct
        -0x17t
        0x26t
        -0x67t
        0x7ct
    .end array-data

    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    :array_3
    .array-data 1
        0x4bt
        -0x4t
        0x41t
        -0x11t
        -0x40t
        -0x31t
        -0x4at
        -0x78t
    .end array-data

    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    :array_4
    .array-data 1
        0x66t
        0x47t
        0x42t
        0x30t
        -0x45t
        0x7ft
        0x51t
    .end array-data

    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    :array_5
    .array-data 1
        0x46t
        0x26t
        0x25t
        0x55t
        -0xat
        0xct
        0x6ct
        0x47t
    .end array-data
.end method
