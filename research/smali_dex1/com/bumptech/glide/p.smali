.class public final Lcom/bumptech/glide/p;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/content/ComponentCallbacks2;
.implements Lcom/bumptech/glide/manager/i;


# static fields
.field public static final l:Ly/e;


# instance fields
.field public final b:Lcom/bumptech/glide/b;

.field public final c:Landroid/content/Context;

.field public final d:Lcom/bumptech/glide/manager/h;

.field public final e:Lcom/bumptech/glide/manager/t;

.field public final f:Lcom/bumptech/glide/manager/n;

.field public final g:Lcom/bumptech/glide/manager/u;

.field public final h:Lcom/bumptech/glide/m;

.field public final i:Lcom/bumptech/glide/manager/b;

.field public final j:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final k:Ly/e;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Ly/e;

    .line 2
    .line 3
    invoke-direct {v0}, Ly/a;-><init>()V

    .line 4
    .line 5
    .line 6
    const-class v1, Landroid/graphics/Bitmap;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ly/a;->c(Ljava/lang/Class;)Ly/a;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Ly/e;

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    iput-boolean v1, v0, Ly/a;->o:Z

    .line 16
    .line 17
    sput-object v0, Lcom/bumptech/glide/p;->l:Ly/e;

    .line 18
    .line 19
    new-instance v0, Ly/e;

    .line 20
    .line 21
    invoke-direct {v0}, Ly/a;-><init>()V

    .line 22
    .line 23
    .line 24
    const-class v2, Lu/b;

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Ly/a;->c(Ljava/lang/Class;)Ly/a;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Ly/e;

    .line 31
    .line 32
    iput-boolean v1, v0, Ly/a;->o:Z

    .line 33
    .line 34
    new-instance v0, Ly/e;

    .line 35
    .line 36
    invoke-direct {v0}, Ly/a;-><init>()V

    .line 37
    .line 38
    .line 39
    sget-object v1, Lj/m;->c:Lj/m;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ly/a;->d(Lj/m;)Ly/a;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Ly/e;

    .line 46
    .line 47
    invoke-virtual {v0}, Ly/a;->k()Ly/a;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Ly/e;

    .line 52
    .line 53
    invoke-virtual {v0}, Ly/a;->o()Ly/a;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Ly/e;

    .line 58
    .line 59
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/b;Lcom/bumptech/glide/manager/h;Lcom/bumptech/glide/manager/n;Landroid/content/Context;)V
    .registers 11

    .line 1
    new-instance v0, Lcom/bumptech/glide/manager/t;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, v1}, Lcom/bumptech/glide/manager/t;-><init>(I)V

    .line 5
    .line 6
    .line 7
    iget-object v1, p1, Lcom/bumptech/glide/b;->g:Lc5/e;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v2, Lcom/bumptech/glide/manager/u;

    .line 13
    .line 14
    invoke-direct {v2}, Lcom/bumptech/glide/manager/u;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v2, p0, Lcom/bumptech/glide/p;->g:Lcom/bumptech/glide/manager/u;

    .line 18
    .line 19
    new-instance v2, Lcom/bumptech/glide/m;

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-direct {v2, v3, p0}, Lcom/bumptech/glide/m;-><init>(ILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iput-object v2, p0, Lcom/bumptech/glide/p;->h:Lcom/bumptech/glide/m;

    .line 26
    .line 27
    iput-object p1, p0, Lcom/bumptech/glide/p;->b:Lcom/bumptech/glide/b;

    .line 28
    .line 29
    iput-object p2, p0, Lcom/bumptech/glide/p;->d:Lcom/bumptech/glide/manager/h;

    .line 30
    .line 31
    iput-object p3, p0, Lcom/bumptech/glide/p;->f:Lcom/bumptech/glide/manager/n;

    .line 32
    .line 33
    iput-object v0, p0, Lcom/bumptech/glide/p;->e:Lcom/bumptech/glide/manager/t;

    .line 34
    .line 35
    iput-object p4, p0, Lcom/bumptech/glide/p;->c:Landroid/content/Context;

    .line 36
    .line 37
    invoke-virtual {p4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object p3

    .line 41
    new-instance p4, Lcom/bumptech/glide/o;

    .line 42
    .line 43
    invoke-direct {p4, p0, v0}, Lcom/bumptech/glide/o;-><init>(Lcom/bumptech/glide/p;Lcom/bumptech/glide/manager/t;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    const-string v0, "ConnectivityMonitor"

    .line 50
    .line 51
    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    .line 52
    .line 53
    invoke-static {p3, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    const/4 v4, 0x1

    .line 58
    if-nez v1, :cond_3d

    .line 59
    .line 60
    move v1, v4

    .line 61
    goto :goto_3e

    .line 62
    :cond_3d
    move v1, v3

    .line 63
    :goto_3e
    const/4 v5, 0x3

    .line 64
    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    if-eqz v5, :cond_4f

    .line 69
    .line 70
    if-eqz v1, :cond_4a

    .line 71
    .line 72
    const-string v5, "ACCESS_NETWORK_STATE permission granted, registering connectivity monitor"

    .line 73
    .line 74
    goto :goto_4c

    .line 75
    :cond_4a
    const-string v5, "ACCESS_NETWORK_STATE permission missing, cannot register connectivity monitor"

    .line 76
    .line 77
    :goto_4c
    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    :cond_4f
    if-eqz v1, :cond_57

    .line 81
    .line 82
    new-instance v0, Lcom/bumptech/glide/manager/c;

    .line 83
    .line 84
    invoke-direct {v0, p3, p4}, Lcom/bumptech/glide/manager/c;-><init>(Landroid/content/Context;Lcom/bumptech/glide/o;)V

    .line 85
    .line 86
    .line 87
    goto :goto_5c

    .line 88
    :cond_57
    new-instance v0, Lcom/bumptech/glide/manager/l;

    .line 89
    .line 90
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 91
    .line 92
    .line 93
    :goto_5c
    iput-object v0, p0, Lcom/bumptech/glide/p;->i:Lcom/bumptech/glide/manager/b;

    .line 94
    .line 95
    iget-object p3, p1, Lcom/bumptech/glide/b;->h:Ljava/util/ArrayList;

    .line 96
    .line 97
    monitor-enter p3

    .line 98
    :try_start_61
    iget-object p4, p1, Lcom/bumptech/glide/b;->h:Ljava/util/ArrayList;

    .line 99
    .line 100
    invoke-virtual {p4, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result p4

    .line 104
    if-nez p4, :cond_d9

    .line 105
    .line 106
    iget-object p4, p1, Lcom/bumptech/glide/b;->h:Ljava/util/ArrayList;

    .line 107
    .line 108
    invoke-virtual {p4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    monitor-exit p3
    :try_end_6f
    .catchall {:try_start_61 .. :try_end_6f} :catchall_d7

    .line 112
    sget-object p3, Lc0/p;->a:[C

    .line 113
    .line 114
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 115
    .line 116
    .line 117
    move-result-object p3

    .line 118
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 119
    .line 120
    .line 121
    move-result-object p4

    .line 122
    if-ne p3, p4, :cond_7c

    .line 123
    .line 124
    move v3, v4

    .line 125
    :cond_7c
    if-nez v3, :cond_86

    .line 126
    .line 127
    invoke-static {}, Lc0/p;->f()Landroid/os/Handler;

    .line 128
    .line 129
    .line 130
    move-result-object p3

    .line 131
    invoke-virtual {p3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 132
    .line 133
    .line 134
    goto :goto_89

    .line 135
    :cond_86
    invoke-interface {p2, p0}, Lcom/bumptech/glide/manager/h;->a(Lcom/bumptech/glide/manager/i;)V

    .line 136
    .line 137
    .line 138
    :goto_89
    invoke-interface {p2, v0}, Lcom/bumptech/glide/manager/h;->a(Lcom/bumptech/glide/manager/i;)V

    .line 139
    .line 140
    .line 141
    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 142
    .line 143
    iget-object p3, p1, Lcom/bumptech/glide/b;->d:Lcom/bumptech/glide/e;

    .line 144
    .line 145
    iget-object p3, p3, Lcom/bumptech/glide/e;->e:Ljava/util/List;

    .line 146
    .line 147
    invoke-direct {p2, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    .line 148
    .line 149
    .line 150
    iput-object p2, p0, Lcom/bumptech/glide/p;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 151
    .line 152
    iget-object p1, p1, Lcom/bumptech/glide/b;->d:Lcom/bumptech/glide/e;

    .line 153
    .line 154
    monitor-enter p1

    .line 155
    :try_start_9a
    iget-object p2, p1, Lcom/bumptech/glide/e;->j:Ly/e;

    .line 156
    .line 157
    if-nez p2, :cond_af

    .line 158
    .line 159
    iget-object p2, p1, Lcom/bumptech/glide/e;->d:Lp2/e;

    .line 160
    .line 161
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 162
    .line 163
    .line 164
    new-instance p2, Ly/e;

    .line 165
    .line 166
    invoke-direct {p2}, Ly/a;-><init>()V

    .line 167
    .line 168
    .line 169
    iput-boolean v4, p2, Ly/a;->o:Z

    .line 170
    .line 171
    iput-object p2, p1, Lcom/bumptech/glide/e;->j:Ly/e;

    .line 172
    .line 173
    goto :goto_af

    .line 174
    :catchall_ad
    move-exception p2

    .line 175
    goto :goto_d5

    .line 176
    :cond_af
    :goto_af
    iget-object p2, p1, Lcom/bumptech/glide/e;->j:Ly/e;
    :try_end_b1
    .catchall {:try_start_9a .. :try_end_b1} :catchall_ad

    .line 177
    .line 178
    monitor-exit p1

    .line 179
    monitor-enter p0

    .line 180
    :try_start_b3
    invoke-virtual {p2}, Ly/a;->b()Ly/a;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    check-cast p1, Ly/e;

    .line 185
    .line 186
    iget-boolean p2, p1, Ly/a;->o:Z

    .line 187
    .line 188
    if-eqz p2, :cond_ca

    .line 189
    .line 190
    iget-boolean p2, p1, Ly/a;->p:Z

    .line 191
    .line 192
    if-eqz p2, :cond_c2

    .line 193
    .line 194
    goto :goto_ca

    .line 195
    :cond_c2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 196
    .line 197
    const-string p2, "You cannot auto lock an already locked options object, try clone() first"

    .line 198
    .line 199
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    throw p1

    .line 203
    :cond_ca
    :goto_ca
    iput-boolean v4, p1, Ly/a;->p:Z

    .line 204
    .line 205
    iput-boolean v4, p1, Ly/a;->o:Z

    .line 206
    .line 207
    iput-object p1, p0, Lcom/bumptech/glide/p;->k:Ly/e;
    :try_end_d0
    .catchall {:try_start_b3 .. :try_end_d0} :catchall_d2

    .line 208
    .line 209
    monitor-exit p0

    .line 210
    return-void

    .line 211
    :catchall_d2
    move-exception p1

    .line 212
    :try_start_d3
    monitor-exit p0
    :try_end_d4
    .catchall {:try_start_d3 .. :try_end_d4} :catchall_d2

    .line 213
    throw p1

    .line 214
    :goto_d5
    :try_start_d5
    monitor-exit p1
    :try_end_d6
    .catchall {:try_start_d5 .. :try_end_d6} :catchall_ad

    .line 215
    throw p2

    .line 216
    :catchall_d7
    move-exception p1

    .line 217
    goto :goto_e1

    .line 218
    :cond_d9
    :try_start_d9
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 219
    .line 220
    const-string p2, "Cannot register already registered manager"

    .line 221
    .line 222
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    throw p1

    .line 226
    :goto_e1
    monitor-exit p3
    :try_end_e2
    .catchall {:try_start_d9 .. :try_end_e2} :catchall_d7

    .line 227
    throw p1
.end method


# virtual methods
.method public final declared-synchronized c()V
    .registers 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/p;->g:Lcom/bumptech/glide/manager/u;

    .line 3
    .line 4
    invoke-virtual {v0}, Lcom/bumptech/glide/manager/u;->c()V

    .line 5
    .line 6
    .line 7
    monitor-enter p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_86

    .line 8
    :try_start_7
    iget-object v0, p0, Lcom/bumptech/glide/p;->g:Lcom/bumptech/glide/manager/u;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/bumptech/glide/manager/u;->b:Ljava/util/Set;

    .line 11
    .line 12
    invoke-static {v0}, Lc0/p;->e(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const/4 v2, 0x0

    .line 21
    move v3, v2

    .line 22
    :goto_15
    if-ge v3, v1, :cond_25

    .line 23
    .line 24
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    add-int/lit8 v3, v3, 0x1

    .line 29
    .line 30
    check-cast v4, Lz/d;

    .line 31
    .line 32
    invoke-virtual {p0, v4}, Lcom/bumptech/glide/p;->k(Lz/d;)V

    .line 33
    .line 34
    .line 35
    goto :goto_15

    .line 36
    :catchall_23
    move-exception v0

    .line 37
    goto :goto_88

    .line 38
    :cond_25
    iget-object v0, p0, Lcom/bumptech/glide/p;->g:Lcom/bumptech/glide/manager/u;

    .line 39
    .line 40
    iget-object v0, v0, Lcom/bumptech/glide/manager/u;->b:Ljava/util/Set;

    .line 41
    .line 42
    invoke-interface {v0}, Ljava/util/Set;->clear()V
    :try_end_2c
    .catchall {:try_start_7 .. :try_end_2c} :catchall_23

    .line 43
    .line 44
    .line 45
    :try_start_2c
    monitor-exit p0

    .line 46
    iget-object v0, p0, Lcom/bumptech/glide/p;->e:Lcom/bumptech/glide/manager/t;

    .line 47
    .line 48
    iget-object v1, v0, Lcom/bumptech/glide/manager/t;->d:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v1, Ljava/util/Set;

    .line 51
    .line 52
    invoke-static {v1}, Lc0/p;->e(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    :goto_3b
    if-ge v2, v3, :cond_49

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    add-int/lit8 v2, v2, 0x1

    .line 67
    .line 68
    check-cast v4, Ly/c;

    .line 69
    .line 70
    invoke-virtual {v0, v4}, Lcom/bumptech/glide/manager/t;->b(Ly/c;)Z

    .line 71
    .line 72
    .line 73
    goto :goto_3b

    .line 74
    :cond_49
    iget-object v0, v0, Lcom/bumptech/glide/manager/t;->e:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v0, Ljava/util/HashSet;

    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/bumptech/glide/p;->d:Lcom/bumptech/glide/manager/h;

    .line 82
    .line 83
    invoke-interface {v0, p0}, Lcom/bumptech/glide/manager/h;->b(Lcom/bumptech/glide/manager/i;)V

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lcom/bumptech/glide/p;->d:Lcom/bumptech/glide/manager/h;

    .line 87
    .line 88
    iget-object v1, p0, Lcom/bumptech/glide/p;->i:Lcom/bumptech/glide/manager/b;

    .line 89
    .line 90
    invoke-interface {v0, v1}, Lcom/bumptech/glide/manager/h;->b(Lcom/bumptech/glide/manager/i;)V

    .line 91
    .line 92
    .line 93
    iget-object v0, p0, Lcom/bumptech/glide/p;->h:Lcom/bumptech/glide/m;

    .line 94
    .line 95
    invoke-static {}, Lc0/p;->f()Landroid/os/Handler;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 100
    .line 101
    .line 102
    iget-object v0, p0, Lcom/bumptech/glide/p;->b:Lcom/bumptech/glide/b;

    .line 103
    .line 104
    iget-object v1, v0, Lcom/bumptech/glide/b;->h:Ljava/util/ArrayList;

    .line 105
    .line 106
    monitor-enter v1
    :try_end_6a
    .catchall {:try_start_2c .. :try_end_6a} :catchall_86

    .line 107
    :try_start_6a
    iget-object v2, v0, Lcom/bumptech/glide/b;->h:Ljava/util/ArrayList;

    .line 108
    .line 109
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    if-eqz v2, :cond_7c

    .line 114
    .line 115
    iget-object v0, v0, Lcom/bumptech/glide/b;->h:Ljava/util/ArrayList;

    .line 116
    .line 117
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    monitor-exit v1
    :try_end_78
    .catchall {:try_start_6a .. :try_end_78} :catchall_7a

    .line 121
    monitor-exit p0

    .line 122
    return-void

    .line 123
    :catchall_7a
    move-exception v0

    .line 124
    goto :goto_84

    .line 125
    :cond_7c
    :try_start_7c
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 126
    .line 127
    const-string v2, "Cannot unregister not yet registered manager"

    .line 128
    .line 129
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    throw v0

    .line 133
    :goto_84
    monitor-exit v1
    :try_end_85
    .catchall {:try_start_7c .. :try_end_85} :catchall_7a

    .line 134
    :try_start_85
    throw v0
    :try_end_86
    .catchall {:try_start_85 .. :try_end_86} :catchall_86

    .line 135
    :catchall_86
    move-exception v0

    .line 136
    goto :goto_8a

    .line 137
    :goto_88
    :try_start_88
    monitor-exit p0
    :try_end_89
    .catchall {:try_start_88 .. :try_end_89} :catchall_23

    .line 138
    :try_start_89
    throw v0

    .line 139
    :goto_8a
    monitor-exit p0
    :try_end_8b
    .catchall {:try_start_89 .. :try_end_8b} :catchall_86

    .line 140
    throw v0
.end method

.method public final declared-synchronized e()V
    .registers 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/p;->g:Lcom/bumptech/glide/manager/u;

    .line 3
    .line 4
    invoke-virtual {v0}, Lcom/bumptech/glide/manager/u;->e()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/bumptech/glide/p;->l()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 8
    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :catchall_b
    move-exception v0

    .line 13
    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    .line 14
    throw v0
.end method

.method public final k(Lz/d;)V
    .registers 8

    .line 1
    if-nez p1, :cond_3

    .line 2
    .line 3
    goto :goto_3a

    .line 4
    :cond_3
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/p;->n(Lz/d;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-interface {p1}, Lz/d;->i()Ly/c;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-nez v0, :cond_3a

    .line 13
    .line 14
    iget-object v0, p0, Lcom/bumptech/glide/p;->b:Lcom/bumptech/glide/b;

    .line 15
    .line 16
    iget-object v2, v0, Lcom/bumptech/glide/b;->h:Ljava/util/ArrayList;

    .line 17
    .line 18
    monitor-enter v2

    .line 19
    :try_start_12
    iget-object v0, v0, Lcom/bumptech/glide/b;->h:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    const/4 v4, 0x0

    .line 26
    :cond_19
    if-ge v4, v3, :cond_2d

    .line 27
    .line 28
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    add-int/lit8 v4, v4, 0x1

    .line 33
    .line 34
    check-cast v5, Lcom/bumptech/glide/p;

    .line 35
    .line 36
    invoke-virtual {v5, p1}, Lcom/bumptech/glide/p;->n(Lz/d;)Z

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    if-eqz v5, :cond_19

    .line 41
    .line 42
    monitor-exit v2

    .line 43
    return-void

    .line 44
    :catchall_2b
    move-exception p1

    .line 45
    goto :goto_38

    .line 46
    :cond_2d
    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_12 .. :try_end_2e} :catchall_2b

    .line 47
    if-eqz v1, :cond_3a

    .line 48
    .line 49
    const/4 v0, 0x0

    .line 50
    invoke-interface {p1, v0}, Lz/d;->h(Ly/c;)V

    .line 51
    .line 52
    .line 53
    invoke-interface {v1}, Ly/c;->clear()V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :goto_38
    :try_start_38
    monitor-exit v2
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_2b

    .line 58
    throw p1

    .line 59
    :cond_3a
    :goto_3a
    return-void
.end method

.method public final declared-synchronized l()V
    .registers 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/p;->e:Lcom/bumptech/glide/manager/t;

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    iput-boolean v1, v0, Lcom/bumptech/glide/manager/t;->c:Z

    .line 6
    .line 7
    iget-object v1, v0, Lcom/bumptech/glide/manager/t;->d:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Ljava/util/Set;

    .line 10
    .line 11
    invoke-static {v1}, Lc0/p;->e(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const/4 v3, 0x0

    .line 20
    :cond_13
    :goto_13
    if-ge v3, v2, :cond_2e

    .line 21
    .line 22
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    add-int/lit8 v3, v3, 0x1

    .line 27
    .line 28
    check-cast v4, Ly/c;

    .line 29
    .line 30
    invoke-interface {v4}, Ly/c;->isRunning()Z

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    if-eqz v5, :cond_13

    .line 35
    .line 36
    invoke-interface {v4}, Ly/c;->d()V

    .line 37
    .line 38
    .line 39
    iget-object v5, v0, Lcom/bumptech/glide/manager/t;->e:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v5, Ljava/util/HashSet;

    .line 42
    .line 43
    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_30

    .line 44
    .line 45
    .line 46
    goto :goto_13

    .line 47
    :cond_2e
    monitor-exit p0

    .line 48
    return-void

    .line 49
    :catchall_30
    move-exception v0

    .line 50
    :try_start_31
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    .line 51
    throw v0
.end method

.method public final declared-synchronized m()V
    .registers 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/p;->e:Lcom/bumptech/glide/manager/t;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iput-boolean v1, v0, Lcom/bumptech/glide/manager/t;->c:Z

    .line 6
    .line 7
    iget-object v2, v0, Lcom/bumptech/glide/manager/t;->d:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v2, Ljava/util/Set;

    .line 10
    .line 11
    invoke-static {v2}, Lc0/p;->e(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    :cond_12
    :goto_12
    if-ge v1, v3, :cond_2c

    .line 20
    .line 21
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    add-int/lit8 v1, v1, 0x1

    .line 26
    .line 27
    check-cast v4, Ly/c;

    .line 28
    .line 29
    invoke-interface {v4}, Ly/c;->j()Z

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    if-nez v5, :cond_12

    .line 34
    .line 35
    invoke-interface {v4}, Ly/c;->isRunning()Z

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    if-nez v5, :cond_12

    .line 40
    .line 41
    invoke-interface {v4}, Ly/c;->i()V

    .line 42
    .line 43
    .line 44
    goto :goto_12

    .line 45
    :cond_2c
    iget-object v0, v0, Lcom/bumptech/glide/manager/t;->e:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v0, Ljava/util/HashSet;

    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_35

    .line 50
    .line 51
    .line 52
    monitor-exit p0

    .line 53
    return-void

    .line 54
    :catchall_35
    move-exception v0

    .line 55
    :try_start_36
    monitor-exit p0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    .line 56
    throw v0
.end method

.method public final declared-synchronized n(Lz/d;)Z
    .registers 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    invoke-interface {p1}, Lz/d;->i()Ly/c;

    .line 3
    .line 4
    .line 5
    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_1f

    .line 6
    const/4 v1, 0x1

    .line 7
    if-nez v0, :cond_a

    .line 8
    .line 9
    monitor-exit p0

    .line 10
    return v1

    .line 11
    :cond_a
    :try_start_a
    iget-object v2, p0, Lcom/bumptech/glide/p;->e:Lcom/bumptech/glide/manager/t;

    .line 12
    .line 13
    invoke-virtual {v2, v0}, Lcom/bumptech/glide/manager/t;->b(Ly/c;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_21

    .line 18
    .line 19
    iget-object v0, p0, Lcom/bumptech/glide/p;->g:Lcom/bumptech/glide/manager/u;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/bumptech/glide/manager/u;->b:Ljava/util/Set;

    .line 22
    .line 23
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    invoke-interface {p1, v0}, Lz/d;->h(Ly/c;)V
    :try_end_1d
    .catchall {:try_start_a .. :try_end_1d} :catchall_1f

    .line 28
    .line 29
    .line 30
    monitor-exit p0

    .line 31
    return v1

    .line 32
    :catchall_1f
    move-exception p1

    .line 33
    goto :goto_24

    .line 34
    :cond_21
    monitor-exit p0

    .line 35
    const/4 p1, 0x0

    .line 36
    return p1

    .line 37
    :goto_24
    :try_start_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_1f

    .line 38
    throw p1
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 1
    return-void
.end method

.method public final onLowMemory()V
    .registers 1

    .line 1
    return-void
.end method

.method public final declared-synchronized onStart()V
    .registers 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    invoke-virtual {p0}, Lcom/bumptech/glide/p;->m()V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lcom/bumptech/glide/p;->g:Lcom/bumptech/glide/manager/u;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/bumptech/glide/manager/u;->onStart()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 8
    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :catchall_b
    move-exception v0

    .line 13
    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    .line 14
    throw v0
.end method

.method public final onTrimMemory(I)V
    .registers 2

    .line 1
    return-void
.end method

.method public final declared-synchronized toString()Ljava/lang/String;
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    .line 6
    .line 7
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, "{tracker="

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/bumptech/glide/p;->e:Lcom/bumptech/glide/manager/t;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, ", treeNode="

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/bumptech/glide/p;->f:Lcom/bumptech/glide/manager/n;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v1, "}"

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2c

    .line 43
    monitor-exit p0

    .line 44
    return-object v0

    .line 45
    :catchall_2c
    move-exception v0

    .line 46
    :try_start_2d
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    .line 47
    throw v0
.end method
