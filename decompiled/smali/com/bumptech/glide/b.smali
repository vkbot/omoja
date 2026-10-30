.class public final Lcom/bumptech/glide/b;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# static fields
.field public static volatile i:Lcom/bumptech/glide/b;

.field public static volatile j:Z


# instance fields
.field public final b:Lk/b;

.field public final c:Ll/f;

.field public final d:Lcom/bumptech/glide/e;

.field public final e:Lk/g;

.field public final f:Lcom/bumptech/glide/manager/m;

.field public final g:Lc5/e;

.field public final h:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lj/r;Ll/f;Lk/b;Lk/g;Lcom/bumptech/glide/manager/m;Lc5/e;Lp2/e;Landroidx/collection/ArrayMap;Ljava/util/List;Ljava/util/ArrayList;Lo4/b;Lr5/c;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/bumptech/glide/b;->h:Ljava/util/ArrayList;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/bumptech/glide/b;->b:Lk/b;

    .line 12
    .line 13
    iput-object p5, p0, Lcom/bumptech/glide/b;->e:Lk/g;

    .line 14
    .line 15
    iput-object p3, p0, Lcom/bumptech/glide/b;->c:Ll/f;

    .line 16
    .line 17
    iput-object p6, p0, Lcom/bumptech/glide/b;->f:Lcom/bumptech/glide/manager/m;

    .line 18
    .line 19
    iput-object p7, p0, Lcom/bumptech/glide/b;->g:Lc5/e;

    .line 20
    .line 21
    new-instance p4, Lcom/bumptech/glide/manager/t;

    .line 22
    .line 23
    invoke-direct {p4, p0, p11, p12}, Lcom/bumptech/glide/manager/t;-><init>(Lcom/bumptech/glide/b;Ljava/util/ArrayList;Lo4/b;)V

    .line 24
    .line 25
    .line 26
    move-object p3, p5

    .line 27
    new-instance p5, Lw7/c;

    .line 28
    .line 29
    const/16 p6, 0x13

    .line 30
    .line 31
    invoke-direct {p5, p6}, Lw7/c;-><init>(I)V

    .line 32
    .line 33
    .line 34
    move-object p7, p9

    .line 35
    move-object p9, p2

    .line 36
    move-object p2, p1

    .line 37
    new-instance p1, Lcom/bumptech/glide/e;

    .line 38
    .line 39
    move-object p6, p8

    .line 40
    move-object p8, p10

    .line 41
    move-object p10, p13

    .line 42
    invoke-direct/range {p1 .. p10}, Lcom/bumptech/glide/e;-><init>(Landroid/content/Context;Lk/g;Lcom/bumptech/glide/manager/t;Lw7/c;Lp2/e;Landroidx/collection/ArrayMap;Ljava/util/List;Lj/r;Lr5/c;)V

    .line 43
    .line 44
    .line 45
    iput-object p1, p0, Lcom/bumptech/glide/b;->d:Lcom/bumptech/glide/e;

    .line 46
    .line 47
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/bumptech/glide/b;
    .locals 4

    .line 1
    sget-object v0, Lcom/bumptech/glide/b;->i:Lcom/bumptech/glide/b;

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "Glide"

    .line 10
    .line 11
    :try_start_0
    const-string v2, "com.bumptech.glide.GeneratedAppGlideModuleImpl"

    .line 12
    .line 13
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const-class v3, Landroid/content/Context;

    .line 18
    .line 19
    filled-new-array {v3}, [Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Lcom/bumptech/glide/GeneratedAppGlideModule;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catch_0
    move-exception p0

    .line 43
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 44
    .line 45
    const-string v1, "GeneratedAppGlideModuleImpl is implemented incorrectly. If you\'ve manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation."

    .line 46
    .line 47
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    .line 49
    .line 50
    throw v0

    .line 51
    :catch_1
    move-exception p0

    .line 52
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 53
    .line 54
    const-string v1, "GeneratedAppGlideModuleImpl is implemented incorrectly. If you\'ve manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation."

    .line 55
    .line 56
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    .line 58
    .line 59
    throw v0

    .line 60
    :catch_2
    move-exception p0

    .line 61
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 62
    .line 63
    const-string v1, "GeneratedAppGlideModuleImpl is implemented incorrectly. If you\'ve manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation."

    .line 64
    .line 65
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    .line 67
    .line 68
    throw v0

    .line 69
    :catch_3
    move-exception p0

    .line 70
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 71
    .line 72
    const-string v1, "GeneratedAppGlideModuleImpl is implemented incorrectly. If you\'ve manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation."

    .line 73
    .line 74
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    .line 76
    .line 77
    throw v0

    .line 78
    :catch_4
    const/4 v0, 0x5

    .line 79
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_0

    .line 84
    .line 85
    const-string v0, "Failed to find GeneratedAppGlideModule. You should include an annotationProcessor compile dependency on com.github.bumptech.glide:compiler in your application and a @GlideModule annotated AppGlideModule implementation or LibraryGlideModules will be silently ignored"

    .line 86
    .line 87
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    :cond_0
    const/4 v0, 0x0

    .line 91
    :goto_0
    const-class v1, Lcom/bumptech/glide/b;

    .line 92
    .line 93
    monitor-enter v1

    .line 94
    :try_start_1
    sget-object v2, Lcom/bumptech/glide/b;->i:Lcom/bumptech/glide/b;

    .line 95
    .line 96
    if-nez v2, :cond_2

    .line 97
    .line 98
    sget-boolean v2, Lcom/bumptech/glide/b;->j:Z

    .line 99
    .line 100
    if-nez v2, :cond_1

    .line 101
    .line 102
    const/4 v2, 0x1

    .line 103
    sput-boolean v2, Lcom/bumptech/glide/b;->j:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 104
    .line 105
    const/4 v2, 0x0

    .line 106
    :try_start_2
    invoke-static {p0, v0}, Lcom/bumptech/glide/b;->b(Landroid/content/Context;Lcom/bumptech/glide/GeneratedAppGlideModule;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 107
    .line 108
    .line 109
    :try_start_3
    sput-boolean v2, Lcom/bumptech/glide/b;->j:Z

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :catchall_0
    move-exception p0

    .line 113
    sput-boolean v2, Lcom/bumptech/glide/b;->j:Z

    .line 114
    .line 115
    throw p0

    .line 116
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 117
    .line 118
    const-string v0, "Glide has been called recursively, this is probably an internal library error!"

    .line 119
    .line 120
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    throw p0

    .line 124
    :cond_2
    :goto_1
    monitor-exit v1

    .line 125
    goto :goto_2

    .line 126
    :catchall_1
    move-exception p0

    .line 127
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 128
    throw p0

    .line 129
    :cond_3
    :goto_2
    sget-object p0, Lcom/bumptech/glide/b;->i:Lcom/bumptech/glide/b;

    .line 130
    .line 131
    return-object p0
.end method

.method public static b(Landroid/content/Context;Lcom/bumptech/glide/GeneratedAppGlideModule;)V
    .locals 27

    .line 1
    new-instance v9, Landroidx/collection/ArrayMap;

    .line 2
    .line 3
    invoke-direct {v9}, Landroidx/collection/ArrayMap;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/bumptech/glide/f;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-direct {v1, v0}, Lcom/bumptech/glide/f;-><init>(I)V

    .line 10
    .line 11
    .line 12
    new-instance v8, Lp2/e;

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    invoke-direct {v8, v0}, Lp2/e;-><init>(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 23
    .line 24
    const-string v0, "Got app info metadata: "

    .line 25
    .line 26
    const-string v3, "ManifestParser"

    .line 27
    .line 28
    const/4 v4, 0x3

    .line 29
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    if-eqz v5, :cond_0

    .line 34
    .line 35
    const-string v5, "Loading Glide modules"

    .line 36
    .line 37
    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    :cond_0
    new-instance v11, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .line 44
    .line 45
    const/4 v5, 0x2

    .line 46
    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    const/16 v10, 0x80

    .line 55
    .line 56
    invoke-virtual {v6, v7, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    if-eqz v6, :cond_5

    .line 61
    .line 62
    iget-object v7, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 63
    .line 64
    if-nez v7, :cond_1

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_1
    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 68
    .line 69
    .line 70
    move-result v7

    .line 71
    if-eqz v7, :cond_2

    .line 72
    .line 73
    new-instance v7, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget-object v0, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 79
    .line 80
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    goto :goto_3

    .line 93
    :cond_2
    :goto_0
    iget-object v0, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 94
    .line 95
    invoke-virtual {v0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 104
    .line 105
    .line 106
    move-result v7

    .line 107
    if-eqz v7, :cond_4

    .line 108
    .line 109
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v7

    .line 113
    check-cast v7, Ljava/lang/String;

    .line 114
    .line 115
    const-string v10, "GlideModule"

    .line 116
    .line 117
    iget-object v12, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 118
    .line 119
    invoke-virtual {v12, v7}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v12

    .line 123
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v10

    .line 127
    if-nez v10, :cond_3

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_3
    invoke-static {v7}, Le3/d;->o(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    const/4 v0, 0x0

    .line 134
    throw v0

    .line 135
    :cond_4
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    if-eqz v0, :cond_6

    .line 140
    .line 141
    const-string v0, "Finished loading Glide modules"

    .line 142
    .line 143
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    .line 145
    .line 146
    goto :goto_4

    .line 147
    :cond_5
    :goto_2
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    if-eqz v0, :cond_6

    .line 152
    .line 153
    const-string v0, "Got null app info metadata"

    .line 154
    .line 155
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    .line 157
    .line 158
    goto :goto_4

    .line 159
    :goto_3
    const/4 v6, 0x6

    .line 160
    invoke-static {v3, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 161
    .line 162
    .line 163
    move-result v6

    .line 164
    if-eqz v6, :cond_6

    .line 165
    .line 166
    const-string v6, "Failed to parse glide modules"

    .line 167
    .line 168
    invoke-static {v3, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 169
    .line 170
    .line 171
    :cond_6
    :goto_4
    if-eqz p1, :cond_8

    .line 172
    .line 173
    new-instance v0, Ljava/util/HashSet;

    .line 174
    .line 175
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    if-nez v0, :cond_8

    .line 183
    .line 184
    new-instance v0, Ljava/util/HashSet;

    .line 185
    .line 186
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 194
    .line 195
    .line 196
    move-result v3

    .line 197
    if-nez v3, :cond_7

    .line 198
    .line 199
    goto :goto_5

    .line 200
    :cond_7
    invoke-static {v0}, Lcom/bumptech/glide/g;->b(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    throw v0

    .line 205
    :cond_8
    :goto_5
    const-string v0, "Glide"

    .line 206
    .line 207
    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 208
    .line 209
    .line 210
    move-result v0

    .line 211
    if-eqz v0, :cond_a

    .line 212
    .line 213
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 218
    .line 219
    .line 220
    move-result v3

    .line 221
    if-nez v3, :cond_9

    .line 222
    .line 223
    goto :goto_6

    .line 224
    :cond_9
    invoke-static {v0}, Lcom/bumptech/glide/g;->b(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    throw v0

    .line 229
    :cond_a
    :goto_6
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 234
    .line 235
    .line 236
    move-result v3

    .line 237
    if-nez v3, :cond_17

    .line 238
    .line 239
    new-instance v0, Lm/b;

    .line 240
    .line 241
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 242
    .line 243
    .line 244
    sget v3, Lm/e;->c:I

    .line 245
    .line 246
    const/4 v4, 0x4

    .line 247
    if-nez v3, :cond_b

    .line 248
    .line 249
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 250
    .line 251
    .line 252
    move-result-object v3

    .line 253
    invoke-virtual {v3}, Ljava/lang/Runtime;->availableProcessors()I

    .line 254
    .line 255
    .line 256
    move-result v3

    .line 257
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    .line 258
    .line 259
    .line 260
    move-result v3

    .line 261
    sput v3, Lm/e;->c:I

    .line 262
    .line 263
    :cond_b
    sget v13, Lm/e;->c:I

    .line 264
    .line 265
    const-string v3, "source"

    .line 266
    .line 267
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 268
    .line 269
    .line 270
    move-result v6

    .line 271
    if-nez v6, :cond_16

    .line 272
    .line 273
    new-instance v12, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 274
    .line 275
    new-instance v18, Ljava/util/concurrent/PriorityBlockingQueue;

    .line 276
    .line 277
    invoke-direct/range {v18 .. v18}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    .line 278
    .line 279
    .line 280
    new-instance v6, Lm/c;

    .line 281
    .line 282
    const/4 v7, 0x0

    .line 283
    invoke-direct {v6, v0, v3, v7}, Lm/c;-><init>(Lm/b;Ljava/lang/String;Z)V

    .line 284
    .line 285
    .line 286
    const-wide/16 v15, 0x0

    .line 287
    .line 288
    sget-object v24, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 289
    .line 290
    move v14, v13

    .line 291
    move-object/from16 v19, v6

    .line 292
    .line 293
    move-object/from16 v17, v24

    .line 294
    .line 295
    invoke-direct/range {v12 .. v19}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 296
    .line 297
    .line 298
    new-instance v0, Lm/e;

    .line 299
    .line 300
    invoke-direct {v0, v12}, Lm/e;-><init>(Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 301
    .line 302
    .line 303
    new-instance v3, Lm/b;

    .line 304
    .line 305
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 306
    .line 307
    .line 308
    const-string v6, "disk-cache"

    .line 309
    .line 310
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 311
    .line 312
    .line 313
    move-result v10

    .line 314
    if-nez v10, :cond_15

    .line 315
    .line 316
    new-instance v19, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 317
    .line 318
    new-instance v25, Ljava/util/concurrent/PriorityBlockingQueue;

    .line 319
    .line 320
    invoke-direct/range {v25 .. v25}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    .line 321
    .line 322
    .line 323
    new-instance v10, Lm/c;

    .line 324
    .line 325
    const/4 v12, 0x1

    .line 326
    invoke-direct {v10, v3, v6, v12}, Lm/c;-><init>(Lm/b;Ljava/lang/String;Z)V

    .line 327
    .line 328
    .line 329
    const-wide/16 v22, 0x0

    .line 330
    .line 331
    move/from16 v21, v12

    .line 332
    .line 333
    move-object/from16 v26, v10

    .line 334
    .line 335
    move/from16 v20, v12

    .line 336
    .line 337
    invoke-direct/range {v19 .. v26}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 338
    .line 339
    .line 340
    move-object/from16 v3, v19

    .line 341
    .line 342
    new-instance v6, Lm/e;

    .line 343
    .line 344
    invoke-direct {v6, v3}, Lm/e;-><init>(Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 345
    .line 346
    .line 347
    sget v3, Lm/e;->c:I

    .line 348
    .line 349
    if-nez v3, :cond_c

    .line 350
    .line 351
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 352
    .line 353
    .line 354
    move-result-object v3

    .line 355
    invoke-virtual {v3}, Ljava/lang/Runtime;->availableProcessors()I

    .line 356
    .line 357
    .line 358
    move-result v3

    .line 359
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    .line 360
    .line 361
    .line 362
    move-result v3

    .line 363
    sput v3, Lm/e;->c:I

    .line 364
    .line 365
    :cond_c
    sget v3, Lm/e;->c:I

    .line 366
    .line 367
    const/4 v10, 0x1

    .line 368
    if-lt v3, v4, :cond_d

    .line 369
    .line 370
    move/from16 v20, v5

    .line 371
    .line 372
    goto :goto_7

    .line 373
    :cond_d
    move/from16 v20, v10

    .line 374
    .line 375
    :goto_7
    new-instance v3, Lm/b;

    .line 376
    .line 377
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 378
    .line 379
    .line 380
    const-string v4, "animation"

    .line 381
    .line 382
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 383
    .line 384
    .line 385
    move-result v5

    .line 386
    if-nez v5, :cond_14

    .line 387
    .line 388
    new-instance v19, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 389
    .line 390
    new-instance v25, Ljava/util/concurrent/PriorityBlockingQueue;

    .line 391
    .line 392
    invoke-direct/range {v25 .. v25}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    .line 393
    .line 394
    .line 395
    new-instance v5, Lm/c;

    .line 396
    .line 397
    invoke-direct {v5, v3, v4, v10}, Lm/c;-><init>(Lm/b;Ljava/lang/String;Z)V

    .line 398
    .line 399
    .line 400
    const-wide/16 v22, 0x0

    .line 401
    .line 402
    move/from16 v21, v20

    .line 403
    .line 404
    move-object/from16 v26, v5

    .line 405
    .line 406
    invoke-direct/range {v19 .. v26}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 407
    .line 408
    .line 409
    move-object/from16 v3, v19

    .line 410
    .line 411
    new-instance v4, Lm/e;

    .line 412
    .line 413
    invoke-direct {v4, v3}, Lm/e;-><init>(Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 414
    .line 415
    .line 416
    new-instance v3, Ll/g;

    .line 417
    .line 418
    invoke-direct {v3, v2}, Ll/g;-><init>(Landroid/content/Context;)V

    .line 419
    .line 420
    .line 421
    new-instance v5, Ll/h;

    .line 422
    .line 423
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 424
    .line 425
    .line 426
    iget-object v10, v3, Ll/g;->a:Landroid/content/Context;

    .line 427
    .line 428
    iget v12, v3, Ll/g;->d:F

    .line 429
    .line 430
    iget-object v13, v3, Ll/g;->b:Landroid/app/ActivityManager;

    .line 431
    .line 432
    invoke-virtual {v13}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    .line 433
    .line 434
    .line 435
    move-result v14

    .line 436
    if-eqz v14, :cond_e

    .line 437
    .line 438
    const/high16 v14, 0x200000

    .line 439
    .line 440
    goto :goto_8

    .line 441
    :cond_e
    const/high16 v14, 0x400000

    .line 442
    .line 443
    :goto_8
    iput v14, v5, Ll/h;->c:I

    .line 444
    .line 445
    invoke-virtual {v13}, Landroid/app/ActivityManager;->getMemoryClass()I

    .line 446
    .line 447
    .line 448
    move-result v15

    .line 449
    const/high16 v16, 0x100000

    .line 450
    .line 451
    mul-int v15, v15, v16

    .line 452
    .line 453
    invoke-virtual {v13}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    .line 454
    .line 455
    .line 456
    move-result v16

    .line 457
    int-to-float v15, v15

    .line 458
    if-eqz v16, :cond_f

    .line 459
    .line 460
    const v16, 0x3ea8f5c3    # 0.33f

    .line 461
    .line 462
    .line 463
    goto :goto_9

    .line 464
    :cond_f
    const v16, 0x3ecccccd    # 0.4f

    .line 465
    .line 466
    .line 467
    :goto_9
    mul-float v15, v15, v16

    .line 468
    .line 469
    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    .line 470
    .line 471
    .line 472
    move-result v15

    .line 473
    iget-object v3, v3, Ll/g;->c:Lr5/c;

    .line 474
    .line 475
    iget-object v3, v3, Lr5/c;->c:Ljava/lang/Object;

    .line 476
    .line 477
    check-cast v3, Landroid/util/DisplayMetrics;

    .line 478
    .line 479
    iget v7, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 480
    .line 481
    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 482
    .line 483
    mul-int/2addr v7, v3

    .line 484
    mul-int/lit8 v7, v7, 0x4

    .line 485
    .line 486
    int-to-float v3, v7

    .line 487
    mul-float v7, v3, v12

    .line 488
    .line 489
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    .line 490
    .line 491
    .line 492
    move-result v7

    .line 493
    const/high16 v16, 0x40000000    # 2.0f

    .line 494
    .line 495
    mul-float v3, v3, v16

    .line 496
    .line 497
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 498
    .line 499
    .line 500
    move-result v3

    .line 501
    move-object/from16 v17, v0

    .line 502
    .line 503
    sub-int v0, v15, v14

    .line 504
    .line 505
    move-object/from16 v18, v4

    .line 506
    .line 507
    add-int v4, v3, v7

    .line 508
    .line 509
    if-gt v4, v0, :cond_10

    .line 510
    .line 511
    iput v3, v5, Ll/h;->b:I

    .line 512
    .line 513
    iput v7, v5, Ll/h;->a:I

    .line 514
    .line 515
    goto :goto_a

    .line 516
    :cond_10
    int-to-float v0, v0

    .line 517
    add-float v3, v12, v16

    .line 518
    .line 519
    div-float/2addr v0, v3

    .line 520
    mul-float v16, v16, v0

    .line 521
    .line 522
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    .line 523
    .line 524
    .line 525
    move-result v3

    .line 526
    iput v3, v5, Ll/h;->b:I

    .line 527
    .line 528
    mul-float/2addr v0, v12

    .line 529
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 530
    .line 531
    .line 532
    move-result v0

    .line 533
    iput v0, v5, Ll/h;->a:I

    .line 534
    .line 535
    :goto_a
    const/4 v0, 0x3

    .line 536
    const-string v3, "MemorySizeCalculator"

    .line 537
    .line 538
    invoke-static {v3, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 539
    .line 540
    .line 541
    move-result v0

    .line 542
    if-eqz v0, :cond_12

    .line 543
    .line 544
    new-instance v0, Ljava/lang/StringBuilder;

    .line 545
    .line 546
    const-string v7, "Calculation complete, Calculated memory cache size: "

    .line 547
    .line 548
    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 549
    .line 550
    .line 551
    iget v7, v5, Ll/h;->b:I

    .line 552
    .line 553
    move-object/from16 v16, v6

    .line 554
    .line 555
    int-to-long v6, v7

    .line 556
    invoke-static {v10, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    .line 557
    .line 558
    .line 559
    move-result-object v6

    .line 560
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    .line 562
    .line 563
    const-string v6, ", pool size: "

    .line 564
    .line 565
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    .line 567
    .line 568
    iget v6, v5, Ll/h;->a:I

    .line 569
    .line 570
    int-to-long v6, v6

    .line 571
    invoke-static {v10, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    .line 572
    .line 573
    .line 574
    move-result-object v6

    .line 575
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    .line 577
    .line 578
    const-string v6, ", byte array size: "

    .line 579
    .line 580
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    .line 582
    .line 583
    int-to-long v6, v14

    .line 584
    invoke-static {v10, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    .line 585
    .line 586
    .line 587
    move-result-object v6

    .line 588
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    .line 590
    .line 591
    const-string v6, ", memory class limited? "

    .line 592
    .line 593
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    .line 595
    .line 596
    if-le v4, v15, :cond_11

    .line 597
    .line 598
    const/4 v4, 0x1

    .line 599
    goto :goto_b

    .line 600
    :cond_11
    const/4 v4, 0x0

    .line 601
    :goto_b
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 602
    .line 603
    .line 604
    const-string v4, ", max size: "

    .line 605
    .line 606
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    .line 608
    .line 609
    int-to-long v6, v15

    .line 610
    invoke-static {v10, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    .line 611
    .line 612
    .line 613
    move-result-object v4

    .line 614
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    .line 616
    .line 617
    const-string v4, ", memoryClass: "

    .line 618
    .line 619
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    .line 621
    .line 622
    invoke-virtual {v13}, Landroid/app/ActivityManager;->getMemoryClass()I

    .line 623
    .line 624
    .line 625
    move-result v4

    .line 626
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 627
    .line 628
    .line 629
    const-string v4, ", isLowMemoryDevice: "

    .line 630
    .line 631
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    .line 633
    .line 634
    invoke-virtual {v13}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    .line 635
    .line 636
    .line 637
    move-result v4

    .line 638
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 639
    .line 640
    .line 641
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 642
    .line 643
    .line 644
    move-result-object v0

    .line 645
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    .line 647
    .line 648
    goto :goto_c

    .line 649
    :cond_12
    move-object/from16 v16, v6

    .line 650
    .line 651
    :goto_c
    new-instance v7, Lc5/e;

    .line 652
    .line 653
    const/4 v0, 0x2

    .line 654
    invoke-direct {v7, v0}, Lc5/e;-><init>(I)V

    .line 655
    .line 656
    .line 657
    iget v0, v5, Ll/h;->a:I

    .line 658
    .line 659
    if-lez v0, :cond_13

    .line 660
    .line 661
    new-instance v3, Lk/h;

    .line 662
    .line 663
    int-to-long v12, v0

    .line 664
    invoke-direct {v3, v12, v13}, Lk/h;-><init>(J)V

    .line 665
    .line 666
    .line 667
    :goto_d
    move-object v4, v3

    .line 668
    goto :goto_e

    .line 669
    :cond_13
    new-instance v3, Lc5/e;

    .line 670
    .line 671
    const/16 v0, 0xd

    .line 672
    .line 673
    invoke-direct {v3, v0}, Lc5/e;-><init>(I)V

    .line 674
    .line 675
    .line 676
    goto :goto_d

    .line 677
    :goto_e
    new-instance v0, Lk/g;

    .line 678
    .line 679
    iget v3, v5, Ll/h;->c:I

    .line 680
    .line 681
    invoke-direct {v0, v3}, Lk/g;-><init>(I)V

    .line 682
    .line 683
    .line 684
    new-instance v14, Ll/f;

    .line 685
    .line 686
    iget v3, v5, Ll/h;->b:I

    .line 687
    .line 688
    int-to-long v5, v3

    .line 689
    invoke-direct {v14, v5, v6}, Lc0/l;-><init>(J)V

    .line 690
    .line 691
    .line 692
    new-instance v15, Lr5/c;

    .line 693
    .line 694
    invoke-direct {v15, v2}, Lr5/c;-><init>(Landroid/content/Context;)V

    .line 695
    .line 696
    .line 697
    new-instance v13, Lj/r;

    .line 698
    .line 699
    new-instance v3, Lm/e;

    .line 700
    .line 701
    new-instance v19, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 702
    .line 703
    new-instance v25, Ljava/util/concurrent/SynchronousQueue;

    .line 704
    .line 705
    invoke-direct/range {v25 .. v25}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    .line 706
    .line 707
    .line 708
    new-instance v5, Lm/c;

    .line 709
    .line 710
    new-instance v6, Lm/b;

    .line 711
    .line 712
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 713
    .line 714
    .line 715
    const-string v10, "source-unlimited"

    .line 716
    .line 717
    const/4 v12, 0x0

    .line 718
    invoke-direct {v5, v6, v10, v12}, Lm/c;-><init>(Lm/b;Ljava/lang/String;Z)V

    .line 719
    .line 720
    .line 721
    const/16 v20, 0x0

    .line 722
    .line 723
    const v21, 0x7fffffff

    .line 724
    .line 725
    .line 726
    const-wide/16 v22, 0x2710

    .line 727
    .line 728
    move-object/from16 v26, v5

    .line 729
    .line 730
    invoke-direct/range {v19 .. v26}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 731
    .line 732
    .line 733
    move-object/from16 v5, v19

    .line 734
    .line 735
    invoke-direct {v3, v5}, Lm/e;-><init>(Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 736
    .line 737
    .line 738
    move-object/from16 v19, v18

    .line 739
    .line 740
    move-object/from16 v18, v3

    .line 741
    .line 742
    invoke-direct/range {v13 .. v19}, Lj/r;-><init>(Ll/f;Lr5/c;Lm/e;Lm/e;Lm/e;Lm/e;)V

    .line 743
    .line 744
    .line 745
    sget-object v10, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 746
    .line 747
    move-object v3, v2

    .line 748
    move-object v2, v13

    .line 749
    new-instance v13, Lr5/c;

    .line 750
    .line 751
    invoke-direct {v13, v1}, Lr5/c;-><init>(Lcom/bumptech/glide/f;)V

    .line 752
    .line 753
    .line 754
    new-instance v6, Lcom/bumptech/glide/manager/m;

    .line 755
    .line 756
    invoke-direct {v6}, Lcom/bumptech/glide/manager/m;-><init>()V

    .line 757
    .line 758
    .line 759
    move-object v5, v0

    .line 760
    new-instance v0, Lcom/bumptech/glide/b;

    .line 761
    .line 762
    move-object/from16 v12, p1

    .line 763
    .line 764
    move-object v1, v3

    .line 765
    move-object v3, v14

    .line 766
    invoke-direct/range {v0 .. v13}, Lcom/bumptech/glide/b;-><init>(Landroid/content/Context;Lj/r;Ll/f;Lk/b;Lk/g;Lcom/bumptech/glide/manager/m;Lc5/e;Lp2/e;Landroidx/collection/ArrayMap;Ljava/util/List;Ljava/util/ArrayList;Lo4/b;Lr5/c;)V

    .line 767
    .line 768
    .line 769
    invoke-virtual {v1, v0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 770
    .line 771
    .line 772
    sput-object v0, Lcom/bumptech/glide/b;->i:Lcom/bumptech/glide/b;

    .line 773
    .line 774
    return-void

    .line 775
    :cond_14
    const-string v0, "Name must be non-null and non-empty, but given: animation"

    .line 776
    .line 777
    invoke-static {v0}, Lj1/i;->k(Ljava/lang/String;)V

    .line 778
    .line 779
    .line 780
    return-void

    .line 781
    :cond_15
    const-string v0, "Name must be non-null and non-empty, but given: disk-cache"

    .line 782
    .line 783
    invoke-static {v0}, Lj1/i;->k(Ljava/lang/String;)V

    .line 784
    .line 785
    .line 786
    return-void

    .line 787
    :cond_16
    const-string v0, "Name must be non-null and non-empty, but given: source"

    .line 788
    .line 789
    invoke-static {v0}, Lj1/i;->k(Ljava/lang/String;)V

    .line 790
    .line 791
    .line 792
    return-void

    .line 793
    :cond_17
    invoke-static {v0}, Lcom/bumptech/glide/g;->b(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    .line 794
    .line 795
    .line 796
    move-result-object v0

    .line 797
    throw v0
.end method

.method public static c(Landroidx/fragment/app/Fragment;)Lcom/bumptech/glide/p;
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed)."

    .line 6
    .line 7
    invoke-static {v0, v1}, Lc0/g;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lcom/bumptech/glide/b;->a(Landroid/content/Context;)Lcom/bumptech/glide/b;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v0, v0, Lcom/bumptech/glide/b;->f:Lcom/bumptech/glide/manager/m;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v2, "You cannot start a load on a fragment before it is attached or after it is destroyed"

    .line 24
    .line 25
    invoke-static {v1, v2}, Lc0/g;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    sget-object v1, Lc0/p;->a:[C

    .line 29
    .line 30
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    if-ne v1, v2, :cond_0

    .line 39
    .line 40
    const/4 v1, 0x1

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 v1, 0x0

    .line 43
    :goto_0
    if-nez v1, :cond_1

    .line 44
    .line 45
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-virtual {v0, p0}, Lcom/bumptech/glide/manager/m;->b(Landroid/content/Context;)Lcom/bumptech/glide/p;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    return-object p0

    .line 58
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    if-eqz v1, :cond_2

    .line 63
    .line 64
    iget-object v1, v0, Lcom/bumptech/glide/manager/m;->c:Lcom/bumptech/glide/manager/g;

    .line 65
    .line 66
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-interface {v1, v2}, Lcom/bumptech/glide/manager/g;->b(Landroidx/fragment/app/FragmentActivity;)V

    .line 71
    .line 72
    .line 73
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-static {v1}, Lcom/bumptech/glide/b;->a(Landroid/content/Context;)Lcom/bumptech/glide/b;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    iget-object v3, v0, Lcom/bumptech/glide/manager/m;->d:Lcom/bumptech/glide/manager/k;

    .line 90
    .line 91
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    .line 96
    .line 97
    .line 98
    move-result v8

    .line 99
    invoke-virtual/range {v3 .. v8}, Lcom/bumptech/glide/manager/k;->a(Landroid/content/Context;Lcom/bumptech/glide/b;Landroidx/lifecycle/Lifecycle;Landroidx/fragment/app/FragmentManager;Z)Lcom/bumptech/glide/p;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    return-object p0
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onLowMemory()V
    .locals 3

    .line 1
    invoke-static {}, Lc0/p;->a()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/bumptech/glide/b;->c:Ll/f;

    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Lc0/l;->e(J)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/bumptech/glide/b;->b:Lk/b;

    .line 12
    .line 13
    invoke-interface {v0}, Lk/b;->n()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/bumptech/glide/b;->e:Lk/g;

    .line 17
    .line 18
    monitor-enter v0

    .line 19
    const/4 v1, 0x0

    .line 20
    :try_start_0
    invoke-virtual {v0, v1}, Lk/g;->b(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    monitor-exit v0

    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception v1

    .line 26
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    throw v1
.end method

.method public final onTrimMemory(I)V
    .locals 9

    .line 1
    invoke-static {}, Lc0/p;->a()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/bumptech/glide/b;->h:Ljava/util/ArrayList;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/b;->h:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x0

    .line 14
    move v4, v3

    .line 15
    :goto_0
    if-ge v4, v2, :cond_0

    .line 16
    .line 17
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    add-int/lit8 v4, v4, 0x1

    .line 22
    .line 23
    check-cast v5, Lcom/bumptech/glide/p;

    .line 24
    .line 25
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    goto :goto_3

    .line 31
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    iget-object v1, p0, Lcom/bumptech/glide/b;->c:Ll/f;

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    const/16 v0, 0xf

    .line 38
    .line 39
    const/16 v2, 0x14

    .line 40
    .line 41
    const/16 v4, 0x28

    .line 42
    .line 43
    if-lt p1, v4, :cond_1

    .line 44
    .line 45
    const-wide/16 v5, 0x0

    .line 46
    .line 47
    invoke-virtual {v1, v5, v6}, Lc0/l;->e(J)V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    if-ge p1, v2, :cond_2

    .line 52
    .line 53
    if-ne p1, v0, :cond_3

    .line 54
    .line 55
    :cond_2
    monitor-enter v1

    .line 56
    :try_start_1
    iget-wide v5, v1, Lc0/l;->b:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 57
    .line 58
    monitor-exit v1

    .line 59
    const-wide/16 v7, 0x2

    .line 60
    .line 61
    div-long/2addr v5, v7

    .line 62
    invoke-virtual {v1, v5, v6}, Lc0/l;->e(J)V

    .line 63
    .line 64
    .line 65
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/bumptech/glide/b;->b:Lk/b;

    .line 66
    .line 67
    invoke-interface {v1, p1}, Lk/b;->l(I)V

    .line 68
    .line 69
    .line 70
    iget-object v5, p0, Lcom/bumptech/glide/b;->e:Lk/g;

    .line 71
    .line 72
    monitor-enter v5

    .line 73
    if-lt p1, v4, :cond_4

    .line 74
    .line 75
    :try_start_2
    monitor-enter v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 76
    :try_start_3
    invoke-virtual {v5, v3}, Lk/g;->b(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 77
    .line 78
    .line 79
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 80
    goto :goto_2

    .line 81
    :catchall_1
    move-exception p1

    .line 82
    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 83
    :try_start_6
    throw p1

    .line 84
    :cond_4
    if-ge p1, v2, :cond_5

    .line 85
    .line 86
    if-ne p1, v0, :cond_6

    .line 87
    .line 88
    :cond_5
    iget p1, v5, Lk/g;->e:I

    .line 89
    .line 90
    div-int/lit8 p1, p1, 0x2

    .line 91
    .line 92
    invoke-virtual {v5, p1}, Lk/g;->b(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 93
    .line 94
    .line 95
    :cond_6
    :goto_2
    monitor-exit v5

    .line 96
    return-void

    .line 97
    :catchall_2
    move-exception p1

    .line 98
    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 99
    throw p1

    .line 100
    :catchall_3
    move-exception p1

    .line 101
    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 102
    throw p1

    .line 103
    :goto_3
    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 104
    throw p1
.end method
