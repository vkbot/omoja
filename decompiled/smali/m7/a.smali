.class public final synthetic Lm7/a;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/woha/wifim/MainWifiManadger;


# direct methods
.method public synthetic constructor <init>(Lcom/woha/wifim/MainWifiManadger;I)V
    .locals 0

    .line 1
    iput p2, p0, Lm7/a;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lm7/a;->c:Lcom/woha/wifim/MainWifiManadger;

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
    iget v0, p0, Lm7/a;->b:I

    .line 2
    .line 3
    iget-object v1, p0, Lm7/a;->c:Lcom/woha/wifim/MainWifiManadger;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/woha/wifim/MainWifiManadger;->v:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/woha/wifim/MainWifiManadger;->B()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    sget-object v0, Lcom/woha/wifim/MainWifiManadger;->v:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/woha/wifim/MainWifiManadger;->B()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_1
    sget-object v0, Lcom/woha/wifim/MainWifiManadger;->v:Ljava/lang/String;

    .line 21
    .line 22
    sget-object v0, Lcom/example/navistart/punto;->v:[B

    .line 23
    .line 24
    sget-object v2, Le0/z2;->a:Ljava/lang/String;

    .line 25
    .line 26
    new-instance v2, Ljava/lang/String;

    .line 27
    .line 28
    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    .line 29
    .line 30
    .line 31
    new-instance v0, Lokhttp3/Request$Builder;

    .line 32
    .line 33
    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 34
    .line 35
    .line 36
    const/16 v3, 0x8

    .line 37
    .line 38
    new-array v4, v3, [B

    .line 39
    .line 40
    fill-array-data v4, :array_0

    .line 41
    .line 42
    .line 43
    new-array v3, v3, [B

    .line 44
    .line 45
    fill-array-data v3, :array_1

    .line 46
    .line 47
    .line 48
    invoke-static {v4, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v0, v2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 69
    .line 70
    .line 71
    invoke-static {}, Lh0/b;->m()Lokhttp3/OkHttpClient;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-virtual {v2, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    iput-object v0, v1, Lcom/woha/wifim/MainWifiManadger;->q:Lokhttp3/Call;

    .line 80
    .line 81
    new-instance v2, Lr5/c;

    .line 82
    .line 83
    const/16 v3, 0x1c

    .line 84
    .line 85
    invoke-direct {v2, v3, v1}, Lr5/c;-><init>(ILjava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    invoke-interface {v0, v2}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :pswitch_2
    iget-object v0, v1, Lcom/woha/wifim/MainWifiManadger;->r:Landroid/os/Handler;

    .line 93
    .line 94
    iget-object v2, v1, Lcom/woha/wifim/MainWifiManadger;->t:Lm7/a;

    .line 95
    .line 96
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 97
    .line 98
    .line 99
    iget-object v3, v1, Lcom/woha/wifim/MainWifiManadger;->q:Lokhttp3/Call;

    .line 100
    .line 101
    const/4 v4, 0x0

    .line 102
    if-eqz v3, :cond_0

    .line 103
    .line 104
    invoke-interface {v3}, Lokhttp3/Call;->cancel()V

    .line 105
    .line 106
    .line 107
    iput-object v4, v1, Lcom/woha/wifim/MainWifiManadger;->q:Lokhttp3/Call;

    .line 108
    .line 109
    :cond_0
    iget-object v3, v1, Lcom/woha/wifim/MainWifiManadger;->h:Landroid/net/ConnectivityManager;

    .line 110
    .line 111
    if-eqz v3, :cond_1

    .line 112
    .line 113
    :try_start_0
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    if-eqz v3, :cond_1

    .line 118
    .line 119
    iget-object v5, v1, Lcom/woha/wifim/MainWifiManadger;->h:Landroid/net/ConnectivityManager;

    .line 120
    .line 121
    invoke-virtual {v5, v3}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    .line 122
    .line 123
    .line 124
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :catch_0
    :cond_1
    if-eqz v4, :cond_4

    .line 126
    .line 127
    const/16 v3, 0xc

    .line 128
    .line 129
    invoke-virtual {v4, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    .line 130
    .line 131
    .line 132
    move-result v3

    .line 133
    if-nez v3, :cond_2

    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_2
    const/16 v3, 0x11

    .line 137
    .line 138
    invoke-virtual {v4, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    .line 139
    .line 140
    .line 141
    move-result v3

    .line 142
    if-eqz v3, :cond_3

    .line 143
    .line 144
    const/16 v0, 0x7e

    .line 145
    .line 146
    const/16 v2, 0x22

    .line 147
    .line 148
    const/16 v3, 0xe6

    .line 149
    .line 150
    invoke-static {v3, v0, v2}, Landroid/graphics/Color;->rgb(III)I

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    const v2, 0x7f1304e3

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1, v2, v0}, Lcom/woha/wifim/MainWifiManadger;->x(II)V

    .line 158
    .line 159
    .line 160
    goto :goto_1

    .line 161
    :cond_3
    const v3, 0x7f050382

    .line 162
    .line 163
    .line 164
    invoke-static {v1, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 165
    .line 166
    .line 167
    move-result v3

    .line 168
    const v4, 0x7f1304ec

    .line 169
    .line 170
    .line 171
    invoke-virtual {v1, v4, v3}, Lcom/woha/wifim/MainWifiManadger;->x(II)V

    .line 172
    .line 173
    .line 174
    const-wide/16 v3, 0x190

    .line 175
    .line 176
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 177
    .line 178
    .line 179
    goto :goto_1

    .line 180
    :cond_4
    :goto_0
    const v0, 0x7f1304ed

    .line 181
    .line 182
    .line 183
    const/high16 v2, -0x10000

    .line 184
    .line 185
    invoke-virtual {v1, v0, v2}, Lcom/woha/wifim/MainWifiManadger;->x(II)V

    .line 186
    .line 187
    .line 188
    :goto_1
    return-void

    .line 189
    :pswitch_3
    iget-object v0, v1, Lcom/woha/wifim/MainWifiManadger;->b:Landroid/net/wifi/WifiManager;

    .line 190
    .line 191
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    .line 192
    .line 193
    .line 194
    move-result v0

    .line 195
    invoke-virtual {v1, v0}, Lcom/woha/wifim/MainWifiManadger;->A(Z)V

    .line 196
    .line 197
    .line 198
    return-void

    .line 199
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

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
    .line 211
    :array_0
    .array-data 1
        -0x7bt
        -0x2et
        -0x48t
        -0x38t
        -0x59t
        -0x5ct
        -0x22t
        0x8t
    .end array-data

    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    :array_1
    .array-data 1
        -0x13t
        -0x5at
        -0x34t
        -0x48t
        -0x2ct
        -0x62t
        -0xft
        0x27t
    .end array-data
.end method
