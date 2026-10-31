.class public final synthetic Le0/c;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/example/navistart/AllWidgetServices;


# direct methods
.method public synthetic constructor <init>(Lcom/example/navistart/AllWidgetServices;I)V
    .locals 0

    .line 1
    iput p2, p0, Le0/c;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Le0/c;->c:Lcom/example/navistart/AllWidgetServices;

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
    .locals 8

    .line 1
    iget v0, p0, Le0/c;->b:I

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Le0/c;->c:Lcom/example/navistart/AllWidgetServices;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/example/navistart/AllWidgetServices;->e:Ljava/util/HashMap;

    .line 11
    .line 12
    const/16 v2, 0x23

    .line 13
    .line 14
    new-array v2, v2, [B

    .line 15
    .line 16
    fill-array-data v2, :array_0

    .line 17
    .line 18
    .line 19
    new-array v1, v1, [B

    .line 20
    .line 21
    fill-array-data v1, :array_1

    .line 22
    .line 23
    .line 24
    invoke-static {v2, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Landroid/view/View;

    .line 33
    .line 34
    instance-of v1, v0, Lt1/e;

    .line 35
    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    check-cast v0, Lt1/e;

    .line 39
    .line 40
    invoke-virtual {v0}, Lt1/e;->b()V

    .line 41
    .line 42
    .line 43
    :cond_0
    return-void

    .line 44
    :pswitch_0
    iget-object v0, p0, Le0/c;->c:Lcom/example/navistart/AllWidgetServices;

    .line 45
    .line 46
    sget-object v2, Lcom/example/navistart/AllWidgetServices;->g:Lcom/example/navistart/AllWidgetServices;

    .line 47
    .line 48
    invoke-static {}, Le0/h;->values()[Le0/h;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    array-length v3, v2

    .line 53
    const/4 v4, 0x0

    .line 54
    :goto_0
    if-ge v4, v3, :cond_2

    .line 55
    .line 56
    aget-object v5, v2, v4

    .line 57
    .line 58
    const/16 v6, 0x12

    .line 59
    .line 60
    new-array v6, v6, [B

    .line 61
    .line 62
    fill-array-data v6, :array_2

    .line 63
    .line 64
    .line 65
    new-array v7, v1, [B

    .line 66
    .line 67
    fill-array-data v7, :array_3

    .line 68
    .line 69
    .line 70
    invoke-static {v6, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    iget-object v7, v5, Le0/h;->b:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    sget-object v7, Le0/h;->h:Le0/h;

    .line 81
    .line 82
    if-ne v5, v7, :cond_1

    .line 83
    .line 84
    sget-boolean v6, Lcom/example/navistart/AllWidgetServices;->h:Z

    .line 85
    .line 86
    invoke-virtual {v0, v5, v6}, Lcom/example/navistart/AllWidgetServices;->e(Le0/h;Z)V

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_1
    iget-object v5, v0, Lcom/example/navistart/AllWidgetServices;->e:Ljava/util/HashMap;

    .line 91
    .line 92
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    check-cast v5, Landroid/view/View;

    .line 97
    .line 98
    invoke-virtual {v0, v5, v6}, Lcom/example/navistart/AllWidgetServices;->b(Landroid/view/View;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_2
    iget-object v1, v0, Lcom/example/navistart/AllWidgetServices;->e:Ljava/util/HashMap;

    .line 105
    .line 106
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    if-eqz v2, :cond_4

    .line 119
    .line 120
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    check-cast v2, Ljava/util/Map$Entry;

    .line 125
    .line 126
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    instance-of v3, v3, Lx0/c;

    .line 131
    .line 132
    if-eqz v3, :cond_3

    .line 133
    .line 134
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    check-cast v3, Landroid/view/View;

    .line 139
    .line 140
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    check-cast v2, Ljava/lang/String;

    .line 145
    .line 146
    invoke-virtual {v0, v3, v2}, Lcom/example/navistart/AllWidgetServices;->b(Landroid/view/View;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_4
    return-void

    .line 151
    :pswitch_1
    iget-object v0, p0, Le0/c;->c:Lcom/example/navistart/AllWidgetServices;

    .line 152
    .line 153
    iget-object v1, v0, Lcom/example/navistart/AllWidgetServices;->e:Ljava/util/HashMap;

    .line 154
    .line 155
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    :cond_5
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 164
    .line 165
    .line 166
    move-result v2

    .line 167
    if-eqz v2, :cond_7

    .line 168
    .line 169
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    check-cast v2, Ljava/util/Map$Entry;

    .line 174
    .line 175
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    check-cast v2, Landroid/view/View;

    .line 180
    .line 181
    instance-of v3, v2, Lx0/c;

    .line 182
    .line 183
    if-eqz v3, :cond_5

    .line 184
    .line 185
    iget-object v3, v0, Lcom/example/navistart/AllWidgetServices;->f:Ljava/util/HashMap;

    .line 186
    .line 187
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v3

    .line 191
    check-cast v3, Landroid/view/WindowManager;

    .line 192
    .line 193
    if-eqz v3, :cond_6

    .line 194
    .line 195
    invoke-static {v3, v2}, La/a;->v(Landroid/view/WindowManager;Landroid/view/View;)V

    .line 196
    .line 197
    .line 198
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 199
    .line 200
    .line 201
    goto :goto_3

    .line 202
    :cond_7
    invoke-virtual {v0}, Lcom/example/navistart/AllWidgetServices;->a()V

    .line 203
    .line 204
    .line 205
    return-void

    .line 206
    nop

    .line 207
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    :array_0
    .array-data 1
        0x38t
        -0x23t
        -0x13t
        0x38t
        0x47t
        0x18t
        0x61t
        0x2et
        0xdt
        -0x1et
        -0x1ct
        0x1dt
        0x58t
        0x15t
        0x65t
        0x2et
        0xat
        -0x12t
        -0x39t
        0x1at
        0x4bt
        0x10t
        0x54t
        0x2et
        0x14t
        -0x30t
        -0x18t
        0x1t
        0x47t
        0x12t
        0x61t
        0x1dt
        0x10t
        -0x2ct
        -0xat
    .end array-data

    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
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
    :array_1
    .array-data 1
        0x79t
        -0x4ft
        -0x7ft
        0x6ft
        0x2et
        0x7ct
        0x6t
        0x4bt
    .end array-data

    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    :array_2
    .array-data 1
        0x70t
        -0x23t
        0x69t
        0x7dt
        0x7bt
        0x4bt
        0x38t
        -0x60t
        0x45t
        -0x1et
        0x60t
        0x58t
        0x64t
        0x46t
        0x3ct
        -0x60t
        0x42t
        -0x12t
    .end array-data

    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    nop

    .line 259
    :array_3
    .array-data 1
        0x31t
        -0x4ft
        0x5t
        0x2at
        0x12t
        0x2ft
        0x5ft
        -0x3bt
    .end array-data
.end method
