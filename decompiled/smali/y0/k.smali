.class public final synthetic Ly0/k;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/example/navistart/Transport/TransportService;


# direct methods
.method public synthetic constructor <init>(Lcom/example/navistart/Transport/TransportService;I)V
    .locals 0

    .line 1
    iput p2, p0, Ly0/k;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Ly0/k;->c:Lcom/example/navistart/Transport/TransportService;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, Ly0/k;->b:I

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Ly0/k;->c:Lcom/example/navistart/Transport/TransportService;

    .line 9
    .line 10
    :cond_0
    :goto_0
    iget-object v2, v0, Lcom/example/navistart/Transport/TransportService;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_3

    .line 17
    .line 18
    :try_start_0
    invoke-virtual {v0}, Lcom/example/navistart/Transport/TransportService;->d()Le0/s3;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    if-nez v2, :cond_1

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/example/navistart/Transport/TransportService;->c()Le0/s3;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    goto :goto_1

    .line 29
    :catch_0
    move-exception v2

    .line 30
    goto :goto_2

    .line 31
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Lcom/example/navistart/Transport/TransportService;->j(Le0/s3;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    goto :goto_3

    .line 37
    :goto_2
    sget-object v3, Lcom/example/navistart/Transport/TransportService;->p:Ljava/lang/String;

    .line 38
    .line 39
    const/16 v4, 0x2b

    .line 40
    .line 41
    new-array v4, v4, [B

    .line 42
    .line 43
    fill-array-data v4, :array_0

    .line 44
    .line 45
    .line 46
    new-array v5, v1, [B

    .line 47
    .line 48
    fill-array-data v5, :array_1

    .line 49
    .line 50
    .line 51
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/example/navistart/Transport/TransportService;->m()V

    .line 59
    .line 60
    .line 61
    iget-object v2, v0, Lcom/example/navistart/Transport/TransportService;->l:Le0/s3;

    .line 62
    .line 63
    const/4 v3, 0x0

    .line 64
    iput-object v3, v0, Lcom/example/navistart/Transport/TransportService;->l:Le0/s3;

    .line 65
    .line 66
    if-eqz v2, :cond_2

    .line 67
    .line 68
    invoke-virtual {v2}, Le0/s3;->e()V

    .line 69
    .line 70
    .line 71
    :cond_2
    :goto_3
    iget-object v2, v0, Lcom/example/navistart/Transport/TransportService;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 72
    .line 73
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-eqz v2, :cond_0

    .line 78
    .line 79
    const-wide/16 v2, 0x5dc

    .line 80
    .line 81
    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :catch_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_3
    return-void

    .line 94
    :pswitch_0
    iget-object v0, p0, Ly0/k;->c:Lcom/example/navistart/Transport/TransportService;

    .line 95
    .line 96
    sget-object v2, Lcom/example/navistart/Transport/TransportService;->p:Ljava/lang/String;

    .line 97
    .line 98
    :try_start_2
    invoke-virtual {v0}, Lcom/example/navistart/Transport/TransportService;->h()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 99
    .line 100
    .line 101
    goto :goto_4

    .line 102
    :catch_2
    move-exception v2

    .line 103
    sget-object v3, Lcom/example/navistart/Transport/TransportService;->p:Ljava/lang/String;

    .line 104
    .line 105
    const/16 v4, 0x33

    .line 106
    .line 107
    new-array v4, v4, [B

    .line 108
    .line 109
    fill-array-data v4, :array_2

    .line 110
    .line 111
    .line 112
    new-array v1, v1, [B

    .line 113
    .line 114
    fill-array-data v1, :array_3

    .line 115
    .line 116
    .line 117
    invoke-static {v4, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-static {v3, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 122
    .line 123
    .line 124
    iget-object v0, v0, Lcom/example/navistart/Transport/TransportService;->l:Le0/s3;

    .line 125
    .line 126
    if-eqz v0, :cond_4

    .line 127
    .line 128
    invoke-virtual {v0}, Le0/s3;->e()V

    .line 129
    .line 130
    .line 131
    :cond_4
    :goto_4
    return-void

    .line 132
    nop

    .line 133
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    :array_0
    .array-data 1
        0x3ft
        -0x32t
        0x5bt
        -0x54t
        -0x13t
        0x7at
        -0x67t
        0x3bt
        0x1ft
        -0x64t
        0x59t
        -0x53t
        -0x10t
        0x64t
        -0x6dt
        0x2at
        0x1ft
        -0x2bt
        0x55t
        -0x54t
        -0x42t
        0x69t
        -0x71t
        0x2at
        0x7t
        -0x27t
        0x1at
        -0x5ct
        -0x1t
        0x63t
        -0x66t
        0x2ct
        0xft
        -0x79t
        0x1at
        -0x50t
        -0x5t
        0x7et
        -0x7ct
        0x30t
        0x2t
        -0x2et
        0x5dt
    .end array-data

    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
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
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    :array_1
    .array-data 1
        0x6bt
        -0x44t
        0x3at
        -0x3et
        -0x62t
        0xat
        -0xat
        0x49t
    .end array-data

    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    :array_2
    .array-data 1
        0x3bt
        0x69t
        -0x50t
        0x1t
        -0x7bt
        -0x4bt
        0x3t
        -0x30t
        0x1bt
        0x3bt
        -0x47t
        0xat
        -0x69t
        -0x49t
        0x18t
        -0x40t
        0xat
        0x7at
        -0x5bt
        0x4ft
        -0x70t
        -0x5ct
        0x5t
        -0x32t
        0xat
        0x7ft
        -0x16t
        0x4ft
        -0x63t
        -0x60t
        0x9t
        -0x2et
        0x6t
        0x75t
        -0x4at
        0x4ft
        -0x66t
        -0x54t
        0xat
        -0x39t
        0xct
        0x62t
        -0x4et
        0x3t
        -0x6dt
        -0x1bt
        0xdt
        -0x32t
        0x6t
        0x6dt
        -0x4ct
    .end array-data

    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
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
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    :array_3
    .array-data 1
        0x6ft
        0x1bt
        -0x2ft
        0x6ft
        -0xat
        -0x3bt
        0x6ct
        -0x5et
    .end array-data
.end method
