.class public final synthetic Le0/t0;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, Le0/t0;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Le0/t0;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Le0/t0;->c:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Le0/t0;->d:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 8

    .line 1
    iget p1, p0, Le0/t0;->a:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    packed-switch p1, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Le0/t0;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p1, Lm0/s0;

    .line 10
    .line 11
    iget-object v1, p0, Le0/t0;->c:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v1, Lp0/b;

    .line 14
    .line 15
    iget-object v2, p0, Le0/t0;->d:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v2, Lp0/a;

    .line 18
    .line 19
    new-instance v3, Lf5/f;

    .line 20
    .line 21
    invoke-direct {v3, p1, v1, v2}, Lf5/f;-><init>(Lm0/s0;Lp0/b;Lp0/a;)V

    .line 22
    .line 23
    .line 24
    iget-boolean p1, v2, Lp0/a;->e:Z

    .line 25
    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    goto/16 :goto_1

    .line 29
    .line 30
    :cond_0
    sget-object p1, Lp0/b;->c:Ljava/lang/Object;

    .line 31
    .line 32
    monitor-enter p1

    .line 33
    :try_start_0
    iget-object v4, v1, Lp0/b;->a:Landroid/content/Context;

    .line 34
    .line 35
    invoke-static {v4}, Lp0/b;->f(Landroid/content/Context;)Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-eqz v4, :cond_1

    .line 40
    .line 41
    monitor-exit p1

    .line 42
    goto :goto_1

    .line 43
    :catchall_0
    move-exception p2

    .line 44
    goto :goto_2

    .line 45
    :cond_1
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    const/16 v5, 0x16

    .line 50
    .line 51
    new-array v5, v5, [B

    .line 52
    .line 53
    fill-array-data v5, :array_0

    .line 54
    .line 55
    .line 56
    const/16 v6, 0x8

    .line 57
    .line 58
    new-array v7, v6, [B

    .line 59
    .line 60
    fill-array-data v7, :array_1

    .line 61
    .line 62
    .line 63
    invoke-static {v5, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    const/4 v7, 0x0

    .line 68
    invoke-virtual {v4, v5, v7}, Lu0/a;->loadBoolean(Ljava/lang/String;Z)Z

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    if-nez v4, :cond_3

    .line 73
    .line 74
    iget-object v4, v2, Lp0/a;->b:Landroid/content/ComponentName;

    .line 75
    .line 76
    iget-object v5, v1, Lp0/b;->a:Landroid/content/Context;

    .line 77
    .line 78
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    if-eqz p2, :cond_2

    .line 83
    .line 84
    move v7, v0

    .line 85
    goto :goto_0

    .line 86
    :cond_2
    const/4 v7, 0x2

    .line 87
    :goto_0
    invoke-virtual {v5, v4, v7, v0}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 88
    .line 89
    .line 90
    :cond_3
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    new-instance v4, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    sget-object v5, Lp0/b;->h:Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    iget-object v5, v2, Lp0/a;->a:Ljava/lang/String;

    .line 105
    .line 106
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    invoke-virtual {v0, v4, p2}, Lu0/a;->saveBoolean(Ljava/lang/String;Z)V

    .line 114
    .line 115
    .line 116
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    if-nez p2, :cond_4

    .line 118
    .line 119
    iget-object p1, v2, Lp0/a;->b:Landroid/content/ComponentName;

    .line 120
    .line 121
    new-instance p2, Ljava/lang/Thread;

    .line 122
    .line 123
    new-instance v0, Lb1/n;

    .line 124
    .line 125
    const/16 v2, 0xb

    .line 126
    .line 127
    invoke-direct {v0, v1, p1, v3, v2}, Lb1/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 128
    .line 129
    .line 130
    const/16 p1, 0x14

    .line 131
    .line 132
    new-array p1, p1, [B

    .line 133
    .line 134
    fill-array-data p1, :array_2

    .line 135
    .line 136
    .line 137
    new-array v1, v6, [B

    .line 138
    .line 139
    fill-array-data v1, :array_3

    .line 140
    .line 141
    .line 142
    invoke-static {p1, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-direct {p2, v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 150
    .line 151
    .line 152
    :cond_4
    :goto_1
    return-void

    .line 153
    :goto_2
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    throw p2

    .line 155
    :pswitch_0
    iget-object p1, p0, Le0/t0;->b:Ljava/lang/Object;

    .line 156
    .line 157
    check-cast p1, Lcom/example/navistart/MainActivity;

    .line 158
    .line 159
    iget-object v1, p0, Le0/t0;->c:Ljava/lang/Object;

    .line 160
    .line 161
    check-cast v1, Ljava/lang/String;

    .line 162
    .line 163
    iget-object v2, p0, Le0/t0;->d:Ljava/lang/Object;

    .line 164
    .line 165
    check-cast v2, Lcom/google/android/material/materialswitch/MaterialSwitch;

    .line 166
    .line 167
    sget-object v3, Lcom/example/navistart/MainActivity;->e1:Ljava/lang/String;

    .line 168
    .line 169
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    invoke-virtual {v3, v1, p2}, Lu0/a;->saveBoolean(Ljava/lang/String;Z)V

    .line 174
    .line 175
    .line 176
    :try_start_2
    invoke-static {v1}, Lcom/example/navistart/cores/BezFunEnum;->valueOf(Ljava/lang/String;)Lcom/example/navistart/cores/BezFunEnum;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 181
    .line 182
    .line 183
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 184
    .line 185
    .line 186
    move-result-object v3

    .line 187
    xor-int/2addr p2, v0

    .line 188
    invoke-interface {v3, v1, p2}, Lcom/example/navistart/cores/CarCmdProxy;->bezoff(Lcom/example/navistart/cores/BezFunEnum;Z)V

    .line 189
    .line 190
    .line 191
    iget-object p1, p1, Lcom/example/navistart/MainActivity;->d1:Ljava/util/HashMap;

    .line 192
    .line 193
    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    .line 194
    .line 195
    .line 196
    :catch_0
    return-void

    .line 197
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    :array_0
    .array-data 1
        -0x7dt
        -0x49t
        0x8t
        0x10t
        -0x9t
        -0x31t
        0x2bt
        -0x41t
        -0x7bt
        -0x65t
        0x5t
        0xbt
        -0x34t
        -0x35t
        0x4t
        -0x56t
        -0x68t
        -0x5bt
        0xft
        0xet
        -0x33t
        -0x36t
    .end array-data

    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    nop

    .line 219
    :array_1
    .array-data 1
        -0xat
        -0x3ct
        0x6dt
        0x62t
        -0x58t
        -0x52t
        0x5bt
        -0x31t
    .end array-data

    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    :array_2
    .array-data 1
        -0xft
        -0xbt
        0x1at
        -0x74t
        0x6t
        -0x5t
        -0x31t
        -0x1at
        -0x31t
        -0x2bt
        0x3bt
        -0x2bt
        0x58t
        -0x10t
        -0x34t
        -0xft
        -0x26t
        -0x28t
        0x3bt
        -0x2ft
    .end array-data

    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    :array_3
    .array-data 1
        -0x45t
        -0x4at
        0x4et
        -0x5ft
        0x75t
        -0x6dt
        -0x60t
        -0x6ct
    .end array-data
.end method
