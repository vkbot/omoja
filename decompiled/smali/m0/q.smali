.class public final synthetic Lm0/q;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lm0/v;


# direct methods
.method public synthetic constructor <init>(Lm0/v;I)V
    .locals 0

    .line 1
    iput p2, p0, Lm0/q;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lm0/q;->c:Lm0/v;

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
    iget v0, p0, Lm0/q;->b:I

    .line 2
    .line 3
    iget-object v1, p0, Lm0/q;->c:Lm0/v;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget-object v0, Lm0/v;->h:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v1}, Lm0/v;->C()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void

    .line 20
    :pswitch_0
    sget-object v0, Lm0/v;->h:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    new-instance v2, Lm0/q;

    .line 29
    .line 30
    const/4 v3, 0x2

    .line 31
    invoke-direct {v2, v1, v3}, Lm0/q;-><init>(Lm0/v;I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    return-void

    .line 38
    :pswitch_1
    sget-object v0, Lm0/v;->h:Ljava/lang/String;

    .line 39
    .line 40
    new-instance v0, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .line 44
    .line 45
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 46
    .line 47
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 48
    .line 49
    .line 50
    const/4 v2, 0x6

    .line 51
    new-array v2, v2, [B

    .line 52
    .line 53
    fill-array-data v2, :array_0

    .line 54
    .line 55
    .line 56
    const/16 v3, 0x8

    .line 57
    .line 58
    new-array v4, v3, [B

    .line 59
    .line 60
    fill-array-data v4, :array_1

    .line 61
    .line 62
    .line 63
    invoke-static {v2, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    const/16 v4, 0x9

    .line 68
    .line 69
    new-array v4, v4, [B

    .line 70
    .line 71
    fill-array-data v4, :array_2

    .line 72
    .line 73
    .line 74
    new-array v5, v3, [B

    .line 75
    .line 76
    fill-array-data v5, :array_3

    .line 77
    .line 78
    .line 79
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    .line 85
    .line 86
    const/4 v2, 0x3

    .line 87
    new-array v2, v2, [B

    .line 88
    .line 89
    fill-array-data v2, :array_4

    .line 90
    .line 91
    .line 92
    new-array v4, v3, [B

    .line 93
    .line 94
    fill-array-data v4, :array_5

    .line 95
    .line 96
    .line 97
    invoke-static {v2, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    new-array v4, v3, [B

    .line 102
    .line 103
    fill-array-data v4, :array_6

    .line 104
    .line 105
    .line 106
    new-array v3, v3, [B

    .line 107
    .line 108
    fill-array-data v3, :array_7

    .line 109
    .line 110
    .line 111
    invoke-static {v4, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 116
    .line 117
    .line 118
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    invoke-virtual {v2}, Lh0/b;->j()Lcom/example/navistart/cores/InterC;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    invoke-interface {v2, v0}, Lcom/example/navistart/cores/InterC;->tx(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    if-nez v0, :cond_2

    .line 131
    .line 132
    const/4 v0, 0x0

    .line 133
    goto :goto_0

    .line 134
    :cond_2
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    :goto_0
    invoke-static {v0}, Lm0/v;->B(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 143
    .line 144
    .line 145
    move-result v3

    .line 146
    if-eqz v3, :cond_3

    .line 147
    .line 148
    invoke-static {}, Lm0/v;->z()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-static {v0}, Lm0/v;->B(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    goto :goto_1

    .line 157
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 158
    .line 159
    .line 160
    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    if-eqz v3, :cond_4

    .line 162
    .line 163
    goto :goto_1

    .line 164
    :cond_4
    :try_start_1
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    sget-object v4, Lm0/v;->i:Ljava/lang/String;

    .line 169
    .line 170
    invoke-static {v0}, Lm0/v;->x(Ljava/lang/String;)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-virtual {v3, v4, v0}, Lu0/a;->saveString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 175
    .line 176
    .line 177
    goto :goto_1

    .line 178
    :catch_0
    invoke-static {}, Lm0/v;->z()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    invoke-static {v0}, Lm0/v;->B(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    :catch_1
    :goto_1
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    if-nez v0, :cond_5

    .line 191
    .line 192
    goto :goto_2

    .line 193
    :cond_5
    new-instance v3, Le0/j2;

    .line 194
    .line 195
    const/16 v4, 0x10

    .line 196
    .line 197
    invoke-direct {v3, v4, v1, v2}, Le0/j2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 201
    .line 202
    .line 203
    :goto_2
    return-void

    .line 204
    nop

    .line 205
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    :array_0
    .array-data 1
        -0x78t
        -0x4ct
        0x5et
        -0x29t
        -0x60t
        0x26t
    .end array-data

    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    nop

    .line 221
    :array_1
    .array-data 1
        -0x4t
        -0x2bt
        0x2ct
        -0x50t
        -0x3bt
        0x52t
        -0x21t
        0xat
    .end array-data

    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    :array_2
    .array-data 1
        0x1at
        -0x53t
        -0x61t
        -0xbt
        -0x59t
        -0x27t
        0x1bt
        0x0t
        0x1et
    .end array-data

    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    nop

    .line 239
    :array_3
    .array-data 1
        0x7bt
        -0x23t
        -0x11t
        -0x56t
        -0x2ct
        -0x53t
        0x74t
        0x72t
    .end array-data

    :array_4
    .array-data 1
        0x68t
        0x2ct
        -0x2et
    .end array-data

    :array_5
    .array-data 1
        0xbt
        0x41t
        -0x4at
        -0x61t
        -0x26t
        0x7dt
        -0x57t
        -0x5dt
    .end array-data

    :array_6
    .array-data 1
        -0x10t
        -0x76t
        0xdt
        -0x3et
        0x27t
        0x3at
        -0x77t
        0x13t
    .end array-data

    :array_7
    .array-data 1
        -0x69t
        -0x11t
        0x79t
        -0x63t
        0x4bt
        0x53t
        -0x6t
        0x67t
    .end array-data
.end method
