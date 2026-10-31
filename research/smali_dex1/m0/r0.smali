.class public final Lm0/r0;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6

    .line 1
    iput p1, p0, Lm0/r0;->b:I

    .line 2
    .line 3
    iput-object p2, p0, Lm0/r0;->f:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lm0/r0;->c:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p4, p0, Lm0/r0;->d:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p5, p0, Lm0/r0;->e:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 1
    iget v0, p0, Lm0/r0;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_106

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lm0/r0;->f:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lo7/s4;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_a
    iget-object v1, p0, Lm0/r0;->c:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v1, Lo7/q4;

    .line 14
    .line 15
    iget v1, v1, Lo7/q4;->b:I
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_45

    .line 16
    .line 17
    if-nez v1, :cond_71

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    :try_start_13
    iget-object v2, p0, Lm0/r0;->d:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v2, Lo7/r4;

    .line 23
    .line 24
    iget-object v3, p0, Lm0/r0;->e:Ljava/lang/Object;

    .line 25
    .line 26
    invoke-interface {v2, v3}, Lo7/r4;->p(Ljava/lang/Object;)V
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_47

    .line 27
    .line 28
    .line 29
    :try_start_1c
    iget-object v2, p0, Lm0/r0;->f:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v2, Lo7/s4;

    .line 32
    .line 33
    iget-object v2, v2, Lo7/s4;->a:Ljava/util/IdentityHashMap;

    .line 34
    .line 35
    iget-object v3, p0, Lm0/r0;->d:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v3, Lo7/r4;

    .line 38
    .line 39
    invoke-virtual {v2, v3}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    iget-object v2, p0, Lm0/r0;->f:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v2, Lo7/s4;

    .line 45
    .line 46
    iget-object v2, v2, Lo7/s4;->a:Ljava/util/IdentityHashMap;

    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/util/IdentityHashMap;->isEmpty()Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_71

    .line 53
    .line 54
    iget-object v2, p0, Lm0/r0;->f:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v2, Lo7/s4;

    .line 57
    .line 58
    iget-object v2, v2, Lo7/s4;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 59
    .line 60
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 61
    .line 62
    .line 63
    iget-object v2, p0, Lm0/r0;->f:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v2, Lo7/s4;

    .line 66
    .line 67
    iput-object v1, v2, Lo7/s4;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 68
    .line 69
    goto :goto_71

    .line 70
    :catchall_45
    move-exception v1

    .line 71
    goto :goto_73

    .line 72
    :catchall_47
    move-exception v2

    .line 73
    iget-object v3, p0, Lm0/r0;->f:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v3, Lo7/s4;

    .line 76
    .line 77
    iget-object v3, v3, Lo7/s4;->a:Ljava/util/IdentityHashMap;

    .line 78
    .line 79
    iget-object v4, p0, Lm0/r0;->d:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v4, Lo7/r4;

    .line 82
    .line 83
    invoke-virtual {v3, v4}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    iget-object v3, p0, Lm0/r0;->f:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast v3, Lo7/s4;

    .line 89
    .line 90
    iget-object v3, v3, Lo7/s4;->a:Ljava/util/IdentityHashMap;

    .line 91
    .line 92
    invoke-virtual {v3}, Ljava/util/IdentityHashMap;->isEmpty()Z

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    if-eqz v3, :cond_70

    .line 97
    .line 98
    iget-object v3, p0, Lm0/r0;->f:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast v3, Lo7/s4;

    .line 101
    .line 102
    iget-object v3, v3, Lo7/s4;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 103
    .line 104
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 105
    .line 106
    .line 107
    iget-object v3, p0, Lm0/r0;->f:Ljava/lang/Object;

    .line 108
    .line 109
    check-cast v3, Lo7/s4;

    .line 110
    .line 111
    iput-object v1, v3, Lo7/s4;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 112
    .line 113
    :cond_70
    throw v2

    .line 114
    :cond_71
    :goto_71
    monitor-exit v0

    .line 115
    return-void

    .line 116
    :goto_73
    monitor-exit v0
    :try_end_74
    .catchall {:try_start_1c .. :try_end_74} :catchall_45

    .line 117
    throw v1

    .line 118
    :pswitch_75
    iget-object v0, p0, Lm0/r0;->f:Ljava/lang/Object;

    .line 119
    .line 120
    check-cast v0, Lo7/v1;

    .line 121
    .line 122
    const/4 v1, 0x1

    .line 123
    iput-boolean v1, v0, Lo7/v1;->A:Z

    .line 124
    .line 125
    iget-object v0, v0, Lo7/v1;->v:Lo7/w;

    .line 126
    .line 127
    iget-object v1, p0, Lm0/r0;->c:Ljava/lang/Object;

    .line 128
    .line 129
    check-cast v1, Ln7/f1;

    .line 130
    .line 131
    iget-object v2, p0, Lm0/r0;->d:Ljava/lang/Object;

    .line 132
    .line 133
    check-cast v2, Lo7/v;

    .line 134
    .line 135
    iget-object v3, p0, Lm0/r0;->e:Ljava/lang/Object;

    .line 136
    .line 137
    check-cast v3, Ln7/v0;

    .line 138
    .line 139
    invoke-interface {v0, v1, v2, v3}, Lo7/w;->b(Ln7/f1;Lo7/v;Ln7/v0;)V

    .line 140
    .line 141
    .line 142
    return-void

    .line 143
    :pswitch_8e
    iget-object v0, p0, Lm0/r0;->f:Ljava/lang/Object;

    .line 144
    .line 145
    check-cast v0, Lo7/o0;

    .line 146
    .line 147
    iget-object v0, v0, Lo7/o0;->b:Lo7/w;

    .line 148
    .line 149
    iget-object v1, p0, Lm0/r0;->c:Ljava/lang/Object;

    .line 150
    .line 151
    check-cast v1, Ln7/f1;

    .line 152
    .line 153
    iget-object v2, p0, Lm0/r0;->d:Ljava/lang/Object;

    .line 154
    .line 155
    check-cast v2, Lo7/v;

    .line 156
    .line 157
    iget-object v3, p0, Lm0/r0;->e:Ljava/lang/Object;

    .line 158
    .line 159
    check-cast v3, Ln7/v0;

    .line 160
    .line 161
    invoke-interface {v0, v1, v2, v3}, Lo7/w;->b(Ln7/f1;Lo7/v;Ln7/v0;)V

    .line 162
    .line 163
    .line 164
    return-void

    .line 165
    :pswitch_a4
    iget-object v0, p0, Lm0/r0;->f:Ljava/lang/Object;

    .line 166
    .line 167
    check-cast v0, Lo7/b1;

    .line 168
    .line 169
    iget-object v1, p0, Lm0/r0;->c:Ljava/lang/Object;

    .line 170
    .line 171
    check-cast v1, Ln7/f1;

    .line 172
    .line 173
    iget-object v2, p0, Lm0/r0;->d:Ljava/lang/Object;

    .line 174
    .line 175
    check-cast v2, Lo7/v;

    .line 176
    .line 177
    iget-object v3, p0, Lm0/r0;->e:Ljava/lang/Object;

    .line 178
    .line 179
    check-cast v3, Ln7/v0;

    .line 180
    .line 181
    invoke-virtual {v0, v1, v2, v3}, Lo7/b1;->b(Ln7/f1;Lo7/v;Ln7/v0;)V

    .line 182
    .line 183
    .line 184
    return-void

    .line 185
    :pswitch_b8
    iget-object v0, p0, Lm0/r0;->e:Ljava/lang/Object;

    .line 186
    .line 187
    check-cast v0, Landroid/widget/LinearLayout;

    .line 188
    .line 189
    iget-object v1, p0, Lm0/r0;->d:Ljava/lang/Object;

    .line 190
    .line 191
    check-cast v1, Landroid/widget/Button;

    .line 192
    .line 193
    iget-object v2, p0, Lm0/r0;->c:Ljava/lang/Object;

    .line 194
    .line 195
    check-cast v2, Landroid/view/View;

    .line 196
    .line 197
    iget-object v3, p0, Lm0/r0;->f:Ljava/lang/Object;

    .line 198
    .line 199
    check-cast v3, Lm0/s0;

    .line 200
    .line 201
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 202
    .line 203
    .line 204
    move-result v4

    .line 205
    if-eqz v4, :cond_104

    .line 206
    .line 207
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 208
    .line 209
    .line 210
    move-result-object v4

    .line 211
    if-eq v4, v2, :cond_d5

    .line 212
    .line 213
    goto :goto_104

    .line 214
    :cond_d5
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 215
    .line 216
    .line 217
    move-result-object v3

    .line 218
    invoke-static {v3}, Lp0/b;->f(Landroid/content/Context;)Z

    .line 219
    .line 220
    .line 221
    move-result v3

    .line 222
    xor-int/lit8 v4, v3, 0x1

    .line 223
    .line 224
    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 225
    .line 226
    .line 227
    if-eqz v3, :cond_e8

    .line 228
    .line 229
    const v3, 0x7f1301ee

    .line 230
    .line 231
    .line 232
    goto :goto_eb

    .line 233
    :cond_e8
    const v3, 0x7f1301ef

    .line 234
    .line 235
    .line 236
    :goto_eb
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 237
    .line 238
    .line 239
    const/4 v1, 0x0

    .line 240
    :goto_ef
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 241
    .line 242
    .line 243
    move-result v3

    .line 244
    if-ge v1, v3, :cond_ff

    .line 245
    .line 246
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 247
    .line 248
    .line 249
    move-result-object v3

    .line 250
    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 251
    .line 252
    .line 253
    add-int/lit8 v1, v1, 0x1

    .line 254
    .line 255
    goto :goto_ef

    .line 256
    :cond_ff
    const-wide/16 v0, 0xfa

    .line 257
    .line 258
    invoke-virtual {v2, p0, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 259
    .line 260
    .line 261
    :cond_104
    :goto_104
    return-void

    .line 262
    nop

    .line 263
    :pswitch_data_106
    .packed-switch 0x0
        :pswitch_b8
        :pswitch_a4
        :pswitch_8e
        :pswitch_75
    .end packed-switch
.end method
