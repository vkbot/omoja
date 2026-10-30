.class public final synthetic Le4/i;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Le4/i;->b:I

    .line 2
    .line 3
    iput-object p2, p0, Le4/i;->c:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    iget p1, p0, Le4/i;->b:I

    .line 2
    .line 3
    const/4 v0, 0x3

    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x1

    .line 6
    packed-switch p1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Le4/i;->c:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p1, Ls1/n;

    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-nez v3, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1}, Ls1/n;->j()V

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eq v3, v2, :cond_1

    .line 27
    .line 28
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    if-ne p2, v0, :cond_2

    .line 33
    .line 34
    :cond_1
    invoke-virtual {p1}, Ls1/n;->l()V

    .line 35
    .line 36
    .line 37
    :cond_2
    return v1

    .line 38
    :pswitch_0
    iget-object p1, p0, Le4/i;->c:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p1, Ls1/b;

    .line 41
    .line 42
    iget-boolean v3, p1, Ls1/b;->l:Z

    .line 43
    .line 44
    if-nez v3, :cond_7

    .line 45
    .line 46
    iget-boolean v3, p1, Ls1/b;->k:Z

    .line 47
    .line 48
    if-eqz v3, :cond_7

    .line 49
    .line 50
    iget v3, p1, Ls1/b;->o:I

    .line 51
    .line 52
    if-lez v3, :cond_7

    .line 53
    .line 54
    iget-object v3, p1, Ls1/b;->f:Ls1/x;

    .line 55
    .line 56
    iget-boolean v3, v3, Ls1/x;->f:Z

    .line 57
    .line 58
    if-nez v3, :cond_3

    .line 59
    .line 60
    goto/16 :goto_1

    .line 61
    .line 62
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-ne v4, v2, :cond_6

    .line 71
    .line 72
    if-le v3, v0, :cond_4

    .line 73
    .line 74
    goto/16 :goto_0

    .line 75
    .line 76
    :cond_4
    const/4 v0, 0x2

    .line 77
    if-ne v3, v0, :cond_5

    .line 78
    .line 79
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    .line 80
    .line 81
    .line 82
    move-result-wide v4

    .line 83
    iget-wide v6, p1, Ls1/b;->p:J

    .line 84
    .line 85
    sub-long/2addr v4, v6

    .line 86
    const-wide/16 v6, 0x10

    .line 87
    .line 88
    cmp-long v0, v4, v6

    .line 89
    .line 90
    if-gez v0, :cond_5

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    .line 94
    .line 95
    .line 96
    move-result-wide v4

    .line 97
    iput-wide v4, p1, Ls1/b;->p:J

    .line 98
    .line 99
    iget-object v0, p1, Ls1/b;->f:Ls1/x;

    .line 100
    .line 101
    new-instance v4, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    .line 106
    const/4 v5, 0x6

    .line 107
    new-array v5, v5, [B

    .line 108
    .line 109
    fill-array-data v5, :array_0

    .line 110
    .line 111
    .line 112
    const/16 v6, 0x8

    .line 113
    .line 114
    new-array v6, v6, [B

    .line 115
    .line 116
    fill-array-data v6, :array_1

    .line 117
    .line 118
    .line 119
    invoke-static {v5, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    iget p1, p1, Ls1/b;->o:I

    .line 127
    .line 128
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const-string p1, " "

    .line 132
    .line 133
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 143
    .line 144
    .line 145
    move-result v3

    .line 146
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 153
    .line 154
    .line 155
    move-result v3

    .line 156
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    .line 163
    .line 164
    .line 165
    move-result-wide v5

    .line 166
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    .line 173
    .line 174
    .line 175
    move-result-wide p1

    .line 176
    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 184
    .line 185
    .line 186
    :try_start_0
    iget-object p2, v0, Ls1/x;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 187
    .line 188
    new-instance v3, Le0/j2;

    .line 189
    .line 190
    const/16 v4, 0x1c

    .line 191
    .line 192
    invoke-direct {v3, v4, v0, p1}, Le0/j2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p2, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    .line 197
    .line 198
    :cond_6
    :goto_0
    move v1, v2

    .line 199
    goto :goto_1

    .line 200
    :catch_0
    iput-boolean v1, v0, Ls1/x;->f:Z

    .line 201
    .line 202
    goto :goto_0

    .line 203
    :cond_7
    :goto_1
    return v1

    .line 204
    :pswitch_1
    iget-object p1, p0, Le4/i;->c:Ljava/lang/Object;

    .line 205
    .line 206
    check-cast p1, Le4/l;

    .line 207
    .line 208
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 209
    .line 210
    .line 211
    move-result p2

    .line 212
    if-ne p2, v2, :cond_a

    .line 213
    .line 214
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 215
    .line 216
    .line 217
    move-result-wide v3

    .line 218
    iget-wide v5, p1, Le4/l;->o:J

    .line 219
    .line 220
    sub-long/2addr v3, v5

    .line 221
    const-wide/16 v5, 0x0

    .line 222
    .line 223
    cmp-long p2, v3, v5

    .line 224
    .line 225
    if-ltz p2, :cond_8

    .line 226
    .line 227
    const-wide/16 v5, 0x12c

    .line 228
    .line 229
    cmp-long p2, v3, v5

    .line 230
    .line 231
    if-lez p2, :cond_9

    .line 232
    .line 233
    :cond_8
    iput-boolean v1, p1, Le4/l;->m:Z

    .line 234
    .line 235
    :cond_9
    invoke-virtual {p1}, Le4/l;->t()V

    .line 236
    .line 237
    .line 238
    iput-boolean v2, p1, Le4/l;->m:Z

    .line 239
    .line 240
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 241
    .line 242
    .line 243
    move-result-wide v2

    .line 244
    iput-wide v2, p1, Le4/l;->o:J

    .line 245
    .line 246
    :cond_a
    return v1

    .line 247
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    :array_0
    .array-data 1
        0xet
        -0xft
        0x3at
        0x1ct
        -0x67t
        0x49t
    .end array-data

    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    nop

    .line 263
    :array_1
    .array-data 1
        0x5at
        -0x42t
        0x6ft
        0x5ft
        -0x2ft
        0x69t
        0x36t
        0x15t
    .end array-data
.end method
