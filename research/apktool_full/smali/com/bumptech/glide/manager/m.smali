.class public final Lcom/bumptech/glide/manager/m;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final e:Lc5/e;


# instance fields
.field public volatile a:Lcom/bumptech/glide/p;

.field public final b:Lc5/e;

.field public final c:Lcom/bumptech/glide/manager/g;

.field public final d:Lcom/bumptech/glide/manager/k;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lc5/e;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-direct {v0, v1}, Lc5/e;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/bumptech/glide/manager/m;->e:Lc5/e;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/collection/ArrayMap;

    .line 5
    .line 6
    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    .line 7
    .line 8
    .line 9
    sget-object v0, Lcom/bumptech/glide/manager/m;->e:Lc5/e;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/bumptech/glide/manager/m;->b:Lc5/e;

    .line 12
    .line 13
    new-instance v1, Lcom/bumptech/glide/manager/k;

    .line 14
    .line 15
    invoke-direct {v1, v0}, Lcom/bumptech/glide/manager/k;-><init>(Lc5/e;)V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/bumptech/glide/manager/m;->d:Lcom/bumptech/glide/manager/k;

    .line 19
    .line 20
    sget-boolean v0, Lq/w;->f:Z

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    sget-boolean v0, Lq/w;->e:Z

    .line 25
    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    new-instance v0, Lcom/bumptech/glide/manager/f;

    .line 30
    .line 31
    invoke-direct {v0}, Lcom/bumptech/glide/manager/f;-><init>()V

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    :goto_0
    new-instance v0, Lp2/e;

    .line 36
    .line 37
    const/4 v1, 0x2

    .line 38
    invoke-direct {v0, v1}, Lp2/e;-><init>(I)V

    .line 39
    .line 40
    .line 41
    :goto_1
    iput-object v0, p0, Lcom/bumptech/glide/manager/m;->c:Lcom/bumptech/glide/manager/g;

    .line 42
    .line 43
    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/app/Activity;
    .locals 1

    .line 1
    instance-of v0, p0, Landroid/app/Activity;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Landroid/app/Activity;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    check-cast p0, Landroid/content/ContextWrapper;

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-static {p0}, Lcom/bumptech/glide/manager/m;->a(Landroid/content/Context;)Landroid/app/Activity;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :cond_1
    const/4 p0, 0x0

    .line 24
    return-object p0
.end method


# virtual methods
.method public final b(Landroid/content/Context;)Lcom/bumptech/glide/p;
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_9

    .line 3
    .line 4
    sget-object v1, Lc0/p;->a:[C

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const/4 v3, 0x1

    .line 15
    if-ne v1, v2, :cond_6

    .line 16
    .line 17
    instance-of v1, p1, Landroid/app/Application;

    .line 18
    .line 19
    if-nez v1, :cond_6

    .line 20
    .line 21
    instance-of v1, p1, Landroidx/fragment/app/FragmentActivity;

    .line 22
    .line 23
    if-eqz v1, :cond_5

    .line 24
    .line 25
    move-object v5, p1

    .line 26
    check-cast v5, Landroidx/fragment/app/FragmentActivity;

    .line 27
    .line 28
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const/4 v2, 0x0

    .line 37
    if-ne p1, v1, :cond_0

    .line 38
    .line 39
    move p1, v3

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    move p1, v2

    .line 42
    :goto_0
    if-nez p1, :cond_1

    .line 43
    .line 44
    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/manager/m;->b(Landroid/content/Context;)Lcom/bumptech/glide/p;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    return-object p1

    .line 53
    :cond_1
    invoke-virtual {v5}, Landroid/app/Activity;->isDestroyed()Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-nez p1, :cond_4

    .line 58
    .line 59
    iget-object p1, p0, Lcom/bumptech/glide/manager/m;->c:Lcom/bumptech/glide/manager/g;

    .line 60
    .line 61
    invoke-interface {p1, v5}, Lcom/bumptech/glide/manager/g;->b(Landroidx/fragment/app/FragmentActivity;)V

    .line 62
    .line 63
    .line 64
    invoke-static {v5}, Lcom/bumptech/glide/manager/m;->a(Landroid/content/Context;)Landroid/app/Activity;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    if-eqz p1, :cond_3

    .line 69
    .line 70
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-nez p1, :cond_2

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_2
    move v9, v2

    .line 78
    goto :goto_2

    .line 79
    :cond_3
    :goto_1
    move v9, v3

    .line 80
    :goto_2
    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-static {p1}, Lcom/bumptech/glide/b;->a(Landroid/content/Context;)Lcom/bumptech/glide/b;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    iget-object v4, p0, Lcom/bumptech/glide/manager/m;->d:Lcom/bumptech/glide/manager/k;

    .line 89
    .line 90
    invoke-virtual {v5}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 91
    .line 92
    .line 93
    move-result-object v7

    .line 94
    invoke-virtual {v5}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 95
    .line 96
    .line 97
    move-result-object v8

    .line 98
    invoke-virtual/range {v4 .. v9}, Lcom/bumptech/glide/manager/k;->a(Landroid/content/Context;Lcom/bumptech/glide/b;Landroidx/lifecycle/Lifecycle;Landroidx/fragment/app/FragmentManager;Z)Lcom/bumptech/glide/p;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    return-object p1

    .line 103
    :cond_4
    const-string p1, "You cannot start a load for a destroyed activity"

    .line 104
    .line 105
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    return-object v0

    .line 109
    :cond_5
    instance-of v0, p1, Landroid/content/ContextWrapper;

    .line 110
    .line 111
    if-eqz v0, :cond_6

    .line 112
    .line 113
    move-object v0, p1

    .line 114
    check-cast v0, Landroid/content/ContextWrapper;

    .line 115
    .line 116
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    if-eqz v1, :cond_6

    .line 125
    .line 126
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/manager/m;->b(Landroid/content/Context;)Lcom/bumptech/glide/p;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    return-object p1

    .line 135
    :cond_6
    iget-object v0, p0, Lcom/bumptech/glide/manager/m;->a:Lcom/bumptech/glide/p;

    .line 136
    .line 137
    if-nez v0, :cond_8

    .line 138
    .line 139
    monitor-enter p0

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/manager/m;->a:Lcom/bumptech/glide/p;

    .line 141
    .line 142
    if-nez v0, :cond_7

    .line 143
    .line 144
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-static {v0}, Lcom/bumptech/glide/b;->a(Landroid/content/Context;)Lcom/bumptech/glide/b;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    iget-object v1, p0, Lcom/bumptech/glide/manager/m;->b:Lc5/e;

    .line 153
    .line 154
    new-instance v2, Lz3/f;

    .line 155
    .line 156
    invoke-direct {v2, v3}, Lz3/f;-><init>(I)V

    .line 157
    .line 158
    .line 159
    new-instance v3, Lw7/c;

    .line 160
    .line 161
    const/4 v4, 0x2

    .line 162
    invoke-direct {v3, v4}, Lw7/c;-><init>(I)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 170
    .line 171
    .line 172
    new-instance v1, Lcom/bumptech/glide/p;

    .line 173
    .line 174
    invoke-direct {v1, v0, v2, v3, p1}, Lcom/bumptech/glide/p;-><init>(Lcom/bumptech/glide/b;Lcom/bumptech/glide/manager/h;Lcom/bumptech/glide/manager/n;Landroid/content/Context;)V

    .line 175
    .line 176
    .line 177
    iput-object v1, p0, Lcom/bumptech/glide/manager/m;->a:Lcom/bumptech/glide/p;

    .line 178
    .line 179
    goto :goto_3

    .line 180
    :catchall_0
    move-exception v0

    .line 181
    move-object p1, v0

    .line 182
    goto :goto_4

    .line 183
    :cond_7
    :goto_3
    monitor-exit p0

    .line 184
    goto :goto_5

    .line 185
    :goto_4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    throw p1

    .line 187
    :cond_8
    :goto_5
    iget-object p1, p0, Lcom/bumptech/glide/manager/m;->a:Lcom/bumptech/glide/p;

    .line 188
    .line 189
    return-object p1

    .line 190
    :cond_9
    const-string p1, "You cannot start a load on a null Context"

    .line 191
    .line 192
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    return-object v0
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method
