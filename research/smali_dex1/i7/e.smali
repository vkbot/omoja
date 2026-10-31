.class public final synthetic Li7/e;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Li7/g;


# direct methods
.method public synthetic constructor <init>(Li7/g;I)V
    .registers 3

    .line 1
    iput p2, p0, Li7/e;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Li7/e;->c:Li7/g;

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
    .registers 13

    .line 1
    iget v0, p0, Li7/e;->b:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/16 v2, 0x8

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_e2

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Li7/e;->c:Li7/g;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    const/16 v4, 0x1b

    .line 19
    .line 20
    new-array v4, v4, [B

    .line 21
    .line 22
    fill-array-data v4, :array_ec

    .line 23
    .line 24
    .line 25
    new-array v2, v2, [B

    .line 26
    .line 27
    fill-array-data v2, :array_fe

    .line 28
    .line 29
    .line 30
    invoke-static {v4, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v3, v2, v1}, Lu0/a;->loadInt(Ljava/lang/String;I)I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-lez v2, :cond_7d

    .line 39
    .line 40
    iget-object v3, v0, Li7/g;->m:Ls0/c;

    .line 41
    .line 42
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    const/16 v4, 0x64

    .line 46
    .line 47
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    int-to-float v4, v2

    .line 56
    const/high16 v5, 0x42c80000    # 100.0f

    .line 57
    .line 58
    div-float/2addr v4, v5

    .line 59
    iput v4, v3, Ls0/c;->e:F

    .line 60
    .line 61
    const/16 v4, 0x46

    .line 62
    .line 63
    if-lt v2, v4, :cond_44

    .line 64
    .line 65
    const/4 v2, 0x6

    .line 66
    iput v2, v3, Ls0/c;->f:I

    .line 67
    .line 68
    goto :goto_57

    .line 69
    :cond_44
    const/16 v4, 0x32

    .line 70
    .line 71
    if-lt v2, v4, :cond_4c

    .line 72
    .line 73
    const/4 v2, 0x4

    .line 74
    iput v2, v3, Ls0/c;->f:I

    .line 75
    .line 76
    goto :goto_57

    .line 77
    :cond_4c
    const/16 v4, 0x1e

    .line 78
    .line 79
    if-lt v2, v4, :cond_54

    .line 80
    .line 81
    const/4 v2, 0x2

    .line 82
    iput v2, v3, Ls0/c;->f:I

    .line 83
    .line 84
    goto :goto_57

    .line 85
    :cond_54
    const/4 v2, 0x1

    .line 86
    iput v2, v3, Ls0/c;->f:I

    .line 87
    .line 88
    :goto_57
    iget-object v2, v0, Li7/g;->m:Ls0/c;

    .line 89
    .line 90
    iget-boolean v3, v2, Ls0/c;->d:Z

    .line 91
    .line 92
    if-eqz v3, :cond_7d

    .line 93
    .line 94
    iget-object v3, v2, Ls0/c;->a:Landroid/media/SoundPool;

    .line 95
    .line 96
    if-nez v3, :cond_62

    .line 97
    .line 98
    goto :goto_7d

    .line 99
    :cond_62
    move v3, v1

    .line 100
    :goto_63
    iget v4, v2, Ls0/c;->f:I

    .line 101
    .line 102
    if-ge v3, v4, :cond_7d

    .line 103
    .line 104
    iget-object v4, v2, Ls0/c;->c:[I

    .line 105
    .line 106
    iget-object v5, v2, Ls0/c;->a:Landroid/media/SoundPool;

    .line 107
    .line 108
    iget v6, v2, Ls0/c;->b:I

    .line 109
    .line 110
    iget v7, v2, Ls0/c;->e:F

    .line 111
    .line 112
    const/4 v10, 0x0

    .line 113
    const/high16 v11, 0x3f800000    # 1.0f

    .line 114
    .line 115
    const/4 v9, 0x1

    .line 116
    move v8, v7

    .line 117
    invoke-virtual/range {v5 .. v11}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 118
    .line 119
    .line 120
    move-result v5

    .line 121
    aput v5, v4, v3

    .line 122
    .line 123
    add-int/lit8 v3, v3, 0x1

    .line 124
    .line 125
    goto :goto_63

    .line 126
    :cond_7d
    :goto_7d
    iput-boolean v1, v0, Li7/g;->a:Z

    .line 127
    .line 128
    return-void

    .line 129
    :pswitch_80
    iget-object v0, p0, Li7/e;->c:Li7/g;

    .line 130
    .line 131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 132
    .line 133
    .line 134
    move-result-wide v1

    .line 135
    iget-object v3, v0, Li7/g;->e:Ljava/lang/Object;

    .line 136
    .line 137
    monitor-enter v3

    .line 138
    :try_start_89
    iget-object v4, v0, Li7/g;->f:Ljava/util/LinkedList;

    .line 139
    .line 140
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 141
    .line 142
    .line 143
    move-result v4

    .line 144
    if-nez v4, :cond_b0

    .line 145
    .line 146
    iget-wide v4, v0, Li7/g;->n:J

    .line 147
    .line 148
    sub-long/2addr v1, v4

    .line 149
    const-wide/16 v4, 0x2710

    .line 150
    .line 151
    cmp-long v1, v1, v4

    .line 152
    .line 153
    if-lez v1, :cond_b0

    .line 154
    .line 155
    iget-object v1, v0, Li7/g;->f:Ljava/util/LinkedList;

    .line 156
    .line 157
    invoke-virtual {v1}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    iget-object v1, v0, Li7/g;->f:Ljava/util/LinkedList;

    .line 161
    .line 162
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    if-eqz v1, :cond_b0

    .line 167
    .line 168
    invoke-virtual {v0}, Li7/g;->c()V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0}, Li7/g;->g()V

    .line 172
    .line 173
    .line 174
    goto :goto_b0

    .line 175
    :catchall_ae
    move-exception v0

    .line 176
    goto :goto_b2

    .line 177
    :cond_b0
    :goto_b0
    monitor-exit v3

    .line 178
    return-void

    .line 179
    :goto_b2
    monitor-exit v3
    :try_end_b3
    .catchall {:try_start_89 .. :try_end_b3} :catchall_ae

    .line 180
    throw v0

    .line 181
    :pswitch_b4
    iget-object v0, p0, Li7/e;->c:Li7/g;

    .line 182
    .line 183
    iget-object v3, v0, Li7/g;->j:Lcom/woha/atir/CameraInfoView;

    .line 184
    .line 185
    if-eqz v3, :cond_bd

    .line 186
    .line 187
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 188
    .line 189
    .line 190
    :cond_bd
    iget-object v0, v0, Li7/g;->k:Li7/w;

    .line 191
    .line 192
    if-eqz v0, :cond_c4

    .line 193
    .line 194
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 195
    .line 196
    .line 197
    :cond_c4
    invoke-static {}, Lv1/d;->a()Lv1/d;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    invoke-virtual {v0}, Lv1/d;->c()Li7/s;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    iget-object v0, v0, Li7/s;->c:Landroidx/lifecycle/MutableLiveData;

    .line 206
    .line 207
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 208
    .line 209
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 210
    .line 211
    .line 212
    return-void

    .line 213
    :pswitch_d4
    iget-object v0, p0, Li7/e;->c:Li7/g;

    .line 214
    .line 215
    iget-object v3, v0, Li7/g;->j:Lcom/woha/atir/CameraInfoView;

    .line 216
    .line 217
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 218
    .line 219
    .line 220
    iget-object v0, v0, Li7/g;->k:Li7/w;

    .line 221
    .line 222
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 223
    .line 224
    .line 225
    return-void

    .line 226
    nop

    .line 227
    :pswitch_data_e2
    .packed-switch 0x0
        :pswitch_d4
        :pswitch_b4
        :pswitch_80
    .end packed-switch

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
    :array_ec
    .array-data 1
        0x18t
        -0x72t
        -0x7ct
        -0x4ft
        -0x47t
        0x2at
        0x12t
        -0x3dt
        0xat
        -0x7bt
        -0x6bt
        -0x4dt
        -0x77t
        0x2at
        0x4t
        -0x3t
        0x19t
        -0x4ct
        -0x69t
        -0x4bt
        -0x69t
        0x3et
        0xdt
        -0x3dt
        0x20t
        -0x52t
        -0x48t
    .end array-data

    .line 238
    .line 239
    :array_fe
    .array-data 1
        0x6bt
        -0x15t
        -0x1ft
        -0x26t
        -0x5t
        0x4bt
        0x60t
        -0x64t
    .end array-data
.end method
