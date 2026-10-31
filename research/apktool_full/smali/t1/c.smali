.class public final synthetic Lt1/c;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/bumptech/glide/m;

.field public final synthetic c:D

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/bumptech/glide/m;DI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lt1/c;->b:Lcom/bumptech/glide/m;

    .line 5
    .line 6
    iput-wide p2, p0, Lt1/c;->c:D

    .line 7
    .line 8
    iput p4, p0, Lt1/c;->d:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-wide v5, p0, Lt1/c;->c:D

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    :try_start_0
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v2, Lorg/json/JSONObject;

    .line 13
    .line 14
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 15
    .line 16
    .line 17
    const/4 v3, 0x3

    .line 18
    new-array v3, v3, [B

    .line 19
    .line 20
    fill-array-data v3, :array_0

    .line 21
    .line 22
    .line 23
    new-array v4, v1, [B

    .line 24
    .line 25
    fill-array-data v4, :array_1

    .line 26
    .line 27
    .line 28
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    const/16 v4, 0x10

    .line 33
    .line 34
    new-array v4, v4, [B

    .line 35
    .line 36
    fill-array-data v4, :array_2

    .line 37
    .line 38
    .line 39
    new-array v7, v1, [B

    .line 40
    .line 41
    fill-array-data v7, :array_3

    .line 42
    .line 43
    .line 44
    invoke-static {v4, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-interface {v0, v2}, Lcom/example/navistart/cores/CarCmdProxy;->c(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    const-wide/16 v2, 0x0

    .line 57
    .line 58
    cmpl-double v2, v5, v2

    .line 59
    .line 60
    if-nez v2, :cond_0

    .line 61
    .line 62
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    .line 63
    .line 64
    invoke-static {v0, v2, v3}, Lt1/e;->a(Lorg/json/JSONObject;D)D

    .line 65
    .line 66
    .line 67
    move-result-wide v0

    .line 68
    goto :goto_0

    .line 69
    :cond_0
    invoke-static {v0, v5, v6}, Lt1/e;->a(Lorg/json/JSONObject;D)D

    .line 70
    .line 71
    .line 72
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    move-wide v3, v0

    .line 74
    goto :goto_1

    .line 75
    :catch_0
    move-exception v0

    .line 76
    const/16 v2, 0xa

    .line 77
    .line 78
    new-array v2, v2, [B

    .line 79
    .line 80
    fill-array-data v2, :array_4

    .line 81
    .line 82
    .line 83
    new-array v3, v1, [B

    .line 84
    .line 85
    fill-array-data v3, :array_5

    .line 86
    .line 87
    .line 88
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    const/16 v3, 0xf

    .line 93
    .line 94
    new-array v3, v3, [B

    .line 95
    .line 96
    fill-array-data v3, :array_6

    .line 97
    .line 98
    .line 99
    new-array v1, v1, [B

    .line 100
    .line 101
    fill-array-data v1, :array_7

    .line 102
    .line 103
    .line 104
    invoke-static {v3, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 109
    .line 110
    .line 111
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :goto_1
    iget-object v1, p0, Lt1/c;->b:Lcom/bumptech/glide/m;

    .line 115
    .line 116
    iget-object v0, v1, Lcom/bumptech/glide/m;->c:Ljava/lang/Object;

    .line 117
    .line 118
    check-cast v0, Lt1/e;

    .line 119
    .line 120
    iget-object v7, v0, Lt1/e;->b:Landroid/os/Handler;

    .line 121
    .line 122
    new-instance v0, Lt1/d;

    .line 123
    .line 124
    iget v2, p0, Lt1/c;->d:I

    .line 125
    .line 126
    invoke-direct/range {v0 .. v6}, Lt1/d;-><init>(Lcom/bumptech/glide/m;IDD)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 130
    .line 131
    .line 132
    return-void

    .line 133
    :array_0
    .array-data 1
        -0x78t
        -0xdt
        0x47t
    .end array-data

    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    :array_1
    .array-data 1
        -0x15t
        -0x62t
        0x23t
        -0x4et
        -0x67t
        0x12t
        0x73t
        0x25t
    .end array-data

    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    :array_2
    .array-data 1
        -0x79t
        -0x1et
        0x71t
        -0x2dt
        0x67t
        -0x3at
        0x10t
        -0x49t
        -0x41t
        -0x9t
        0x60t
        -0x2t
        0x62t
        -0x2at
        0x1bt
        -0x51t
    .end array-data

    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    :array_3
    .array-data 1
        -0x20t
        -0x79t
        0x5t
        -0x74t
        0x1t
        -0x4dt
        0x75t
        -0x25t
    .end array-data

    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    :array_4
    .array-data 1
        -0x4ct
        -0x16t
        -0xct
        0x70t
        -0x56t
        0x44t
        0x22t
        0x6dt
        -0x69t
        -0x15t
    .end array-data

    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    nop

    .line 177
    :array_5
    .array-data 1
        -0xet
        -0x61t
        -0x6ft
        0x1ct
        -0x3t
        0x2dt
        0x46t
        0xat
    .end array-data

    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    :array_6
    .array-data 1
        -0x1dt
        -0x2ft
        -0x62t
        0x6at
        -0xct
        0x5dt
        0x4dt
        -0x6at
        -0x23t
        -0x6ct
        -0x6dt
        0x6bt
        -0x5et
        0x5et
        0x54t
    .end array-data

    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    :array_7
    .array-data 1
        -0x4ft
        -0x4ct
        -0x1t
        0xet
        -0x2ct
        0x3bt
        0x38t
        -0xdt
    .end array-data
.end method
