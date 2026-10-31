.class public final synthetic Lf5/f;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lb8/a;
.implements Lb8/c;
.implements Lk5/a;
.implements Lj1/u;
.implements Ll2/b;
.implements Lk2/f;
.implements Lorg/apache/commons/io/function/IOBooleanSupplier;
.implements Lorg/apache/commons/io/function/IOSupplier;
.implements Lorg/apache/commons/io/function/IOBiConsumer;
.implements Lorg/apache/commons/io/function/IOQuadFunction;
.implements Lorg/apache/commons/io/function/IOTriConsumer;
.implements Lorg/apache/commons/io/function/IOTriFunction;
.implements Lt4/c;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 13
    iput p1, p0, Lf5/f;->b:I

    iput-object p2, p0, Lf5/f;->c:Ljava/lang/Object;

    iput-object p3, p0, Lf5/f;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lm0/s0;Lp0/b;Lp0/a;)V
    .registers 4

    .line 1
    const/16 p2, 0xc

    .line 2
    .line 3
    iput p2, p0, Lf5/f;->b:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lf5/f;->c:Ljava/lang/Object;

    .line 9
    .line 10
    iput-object p3, p0, Lf5/f;->d:Ljava/lang/Object;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public a(Ld2/h;)Ljava/lang/Object;
    .registers 5

    .line 1
    iget v0, p0, Lf5/f;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_ac

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lf5/f;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Ljava/lang/String;

    .line 9
    .line 10
    iget-object v1, p0, Lf5/f;->d:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Lt4/a;

    .line 13
    .line 14
    :try_start_d
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, v1, Lt4/a;->f:Lt4/c;

    .line 18
    .line 19
    invoke-interface {v0, p1}, Lt4/c;->a(Ld2/h;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_1a

    .line 23
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 24
    .line 25
    .line 26
    return-object p1

    .line 27
    :catchall_1a
    move-exception p1

    .line 28
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 29
    .line 30
    .line 31
    throw p1

    .line 32
    :pswitch_1f
    iget-object v0, p0, Lf5/f;->c:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v0, Ljava/lang/String;

    .line 35
    .line 36
    iget-object v1, p0, Lf5/f;->d:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v1, Ln0/b;

    .line 39
    .line 40
    const-class v2, Landroid/content/Context;

    .line 41
    .line 42
    invoke-virtual {p1, v2}, Ld2/h;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Landroid/content/Context;

    .line 47
    .line 48
    iget v1, v1, Ln0/b;->b:I

    .line 49
    .line 50
    packed-switch v1, :pswitch_data_b2

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    if-eqz p1, :cond_47

    .line 66
    .line 67
    invoke-static {p1}, Lcom/google/firebase/FirebaseCommonRegistrar;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    goto :goto_a5

    .line 72
    :cond_47
    const-string p1, ""

    .line 73
    .line 74
    goto :goto_a5

    .line 75
    :pswitch_4a
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    const-string v2, "android.hardware.type.television"

    .line 80
    .line 81
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-eqz v1, :cond_59

    .line 86
    .line 87
    const-string p1, "tv"

    .line 88
    .line 89
    goto :goto_a5

    .line 90
    :cond_59
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    const-string v2, "android.hardware.type.watch"

    .line 95
    .line 96
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    if-eqz v1, :cond_68

    .line 101
    .line 102
    const-string p1, "watch"

    .line 103
    .line 104
    goto :goto_a5

    .line 105
    :cond_68
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    const-string v2, "android.hardware.type.automotive"

    .line 110
    .line 111
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    if-eqz v1, :cond_77

    .line 116
    .line 117
    const-string p1, "auto"

    .line 118
    .line 119
    goto :goto_a5

    .line 120
    :cond_77
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 121
    .line 122
    const/16 v2, 0x1a

    .line 123
    .line 124
    if-lt v1, v2, :cond_47

    .line 125
    .line 126
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    const-string v1, "android.hardware.type.embedded"

    .line 131
    .line 132
    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    if-eqz p1, :cond_47

    .line 137
    .line 138
    const-string p1, "embedded"

    .line 139
    .line 140
    goto :goto_a5

    .line 141
    :pswitch_8c
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    if-eqz p1, :cond_47

    .line 146
    .line 147
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    .line 148
    .line 149
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    goto :goto_a5

    .line 154
    :pswitch_99
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    if-eqz p1, :cond_47

    .line 159
    .line 160
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 161
    .line 162
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    :goto_a5
    new-instance v1, Lr5/a;

    .line 167
    .line 168
    invoke-direct {v1, v0, p1}, Lr5/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    return-object v1

    .line 172
    nop

    .line 173
    :pswitch_data_ac
    .packed-switch 0x18
        :pswitch_1f
    .end packed-switch

    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    :pswitch_data_b2
    .packed-switch 0x8
        :pswitch_99
        :pswitch_8c
        :pswitch_4a
    .end packed-switch
.end method

.method public accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lf5/f;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lorg/apache/commons/io/function/IOBiConsumer;

    .line 4
    .line 5
    iget-object v1, p0, Lf5/f;->d:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lorg/apache/commons/io/function/IOBiConsumer;

    .line 8
    .line 9
    invoke-static {v0, v1, p1, p2}, Lorg/apache/commons/io/function/IOBiConsumer;->j(Lorg/apache/commons/io/function/IOBiConsumer;Lorg/apache/commons/io/function/IOBiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6

    .line 13
    iget-object v0, p0, Lf5/f;->c:Ljava/lang/Object;

    check-cast v0, Lorg/apache/commons/io/function/IOTriConsumer;

    iget-object v1, p0, Lf5/f;->d:Ljava/lang/Object;

    check-cast v1, Lorg/apache/commons/io/function/IOTriConsumer;

    invoke-static {v0, v1, p1, p2, p3}, Lorg/apache/commons/io/function/IOTriConsumer;->n(Lorg/apache/commons/io/function/IOTriConsumer;Lorg/apache/commons/io/function/IOTriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, Lf5/f;->b:I

    .line 4
    .line 5
    const/4 v2, 0x5

    .line 6
    const/4 v5, 0x1

    .line 7
    const/4 v6, 0x0

    .line 8
    packed-switch v0, :pswitch_data_5de

    .line 9
    .line 10
    .line 11
    :pswitch_a
    iget-object v0, v1, Lf5/f;->c:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Lk2/h;

    .line 14
    .line 15
    iget-object v2, v1, Lf5/f;->d:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v2, Ld2/j;

    .line 18
    .line 19
    move-object/from16 v7, p1

    .line 20
    .line 21
    check-cast v7, Landroid/database/sqlite/SQLiteDatabase;

    .line 22
    .line 23
    iget-object v8, v0, Lk2/h;->e:Lk2/a;

    .line 24
    .line 25
    iget v9, v8, Lk2/a;->b:I

    .line 26
    .line 27
    invoke-virtual {v0, v7, v2, v9}, Lk2/h;->S(Landroid/database/sqlite/SQLiteDatabase;Ld2/j;I)Ljava/util/ArrayList;

    .line 28
    .line 29
    .line 30
    move-result-object v15

    .line 31
    invoke-static {}, La2/b;->values()[La2/b;

    .line 32
    .line 33
    .line 34
    move-result-object v9

    .line 35
    array-length v10, v9

    .line 36
    move v11, v6

    .line 37
    :goto_24
    if-ge v11, v10, :cond_65

    .line 38
    .line 39
    aget-object v12, v9, v11

    .line 40
    .line 41
    iget-object v13, v2, Ld2/j;->c:La2/b;

    .line 42
    .line 43
    if-ne v12, v13, :cond_2f

    .line 44
    .line 45
    const/16 v16, 0x0

    .line 46
    .line 47
    goto :goto_4f

    .line 48
    :cond_2f
    iget v13, v8, Lk2/a;->b:I

    .line 49
    .line 50
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 51
    .line 52
    .line 53
    move-result v14

    .line 54
    sub-int/2addr v13, v14

    .line 55
    if-gtz v13, :cond_39

    .line 56
    .line 57
    goto :goto_65

    .line 58
    :cond_39
    iget-object v14, v2, Ld2/j;->a:Ljava/lang/String;

    .line 59
    .line 60
    if-eqz v14, :cond_5d

    .line 61
    .line 62
    if-eqz v12, :cond_52

    .line 63
    .line 64
    const/16 v16, 0x0

    .line 65
    .line 66
    iget-object v4, v2, Ld2/j;->b:[B

    .line 67
    .line 68
    new-instance v3, Ld2/j;

    .line 69
    .line 70
    invoke-direct {v3, v14, v4, v12}, Ld2/j;-><init>(Ljava/lang/String;[BLa2/b;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v7, v3, v13}, Lk2/h;->S(Landroid/database/sqlite/SQLiteDatabase;Ld2/j;I)Ljava/util/ArrayList;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 78
    .line 79
    .line 80
    :goto_4f
    add-int/lit8 v11, v11, 0x1

    .line 81
    .line 82
    goto :goto_24

    .line 83
    :cond_52
    const/16 v16, 0x0

    .line 84
    .line 85
    const-string v0, "Null priority"

    .line 86
    .line 87
    invoke-static {v0}, Ln0/b;->n(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    :goto_59
    move-object/from16 v4, v16

    .line 91
    .line 92
    goto/16 :goto_13b

    .line 93
    .line 94
    :cond_5d
    const/16 v16, 0x0

    .line 95
    .line 96
    const-string v0, "Null backendName"

    .line 97
    .line 98
    invoke-static {v0}, Ln0/b;->n(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    goto :goto_59

    .line 102
    :cond_65
    :goto_65
    new-instance v0, Ljava/util/HashMap;

    .line 103
    .line 104
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 105
    .line 106
    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    const-string v3, "event_id IN ("

    .line 110
    .line 111
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    move v3, v6

    .line 115
    :goto_72
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 116
    .line 117
    .line 118
    move-result v4

    .line 119
    if-ge v3, v4, :cond_92

    .line 120
    .line 121
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    check-cast v4, Lk2/b;

    .line 126
    .line 127
    iget-wide v8, v4, Lk2/b;->a:J

    .line 128
    .line 129
    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 133
    .line 134
    .line 135
    move-result v4

    .line 136
    sub-int/2addr v4, v5

    .line 137
    if-ge v3, v4, :cond_8f

    .line 138
    .line 139
    const/16 v4, 0x2c

    .line 140
    .line 141
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    :cond_8f
    add-int/lit8 v3, v3, 0x1

    .line 145
    .line 146
    goto :goto_72

    .line 147
    :cond_92
    const/16 v3, 0x29

    .line 148
    .line 149
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    const-string v8, "event_metadata"

    .line 153
    .line 154
    const-string v3, "event_id"

    .line 155
    .line 156
    const-string v4, "name"

    .line 157
    .line 158
    const-string v9, "value"

    .line 159
    .line 160
    filled-new-array {v3, v4, v9}, [Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v9

    .line 164
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v10

    .line 168
    const/4 v13, 0x0

    .line 169
    const/4 v14, 0x0

    .line 170
    const/4 v11, 0x0

    .line 171
    const/4 v12, 0x0

    .line 172
    invoke-virtual/range {v7 .. v14}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    :goto_af
    :try_start_af
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 177
    .line 178
    .line 179
    move-result v3

    .line 180
    if-eqz v3, :cond_e3

    .line 181
    .line 182
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    .line 183
    .line 184
    .line 185
    move-result-wide v3

    .line 186
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 187
    .line 188
    .line 189
    move-result-object v7

    .line 190
    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v7

    .line 194
    check-cast v7, Ljava/util/Set;

    .line 195
    .line 196
    if-nez v7, :cond_d1

    .line 197
    .line 198
    new-instance v7, Ljava/util/HashSet;

    .line 199
    .line 200
    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 201
    .line 202
    .line 203
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 204
    .line 205
    .line 206
    move-result-object v3

    .line 207
    invoke-virtual {v0, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    :cond_d1
    new-instance v3, Lk2/g;

    .line 211
    .line 212
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v4

    .line 216
    const/4 v8, 0x2

    .line 217
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v9

    .line 221
    invoke-direct {v3, v4, v9}, Lk2/g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    invoke-interface {v7, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_e2
    .catchall {:try_start_af .. :try_end_e2} :catchall_13c

    .line 225
    .line 226
    .line 227
    goto :goto_af

    .line 228
    :cond_e3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v15}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    .line 232
    .line 233
    .line 234
    move-result-object v2

    .line 235
    :goto_ea
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    .line 236
    .line 237
    .line 238
    move-result v3

    .line 239
    if-eqz v3, :cond_13a

    .line 240
    .line 241
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v3

    .line 245
    check-cast v3, Lk2/b;

    .line 246
    .line 247
    iget-wide v4, v3, Lk2/b;->a:J

    .line 248
    .line 249
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 250
    .line 251
    .line 252
    move-result-object v6

    .line 253
    invoke-virtual {v0, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    move-result v6

    .line 257
    if-nez v6, :cond_103

    .line 258
    .line 259
    goto :goto_ea

    .line 260
    :cond_103
    iget-object v6, v3, Lk2/b;->c:Ld2/i;

    .line 261
    .line 262
    invoke-virtual {v6}, Ld2/i;->c()Ld2/h;

    .line 263
    .line 264
    .line 265
    move-result-object v6

    .line 266
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 267
    .line 268
    .line 269
    move-result-object v7

    .line 270
    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v7

    .line 274
    check-cast v7, Ljava/util/Set;

    .line 275
    .line 276
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 277
    .line 278
    .line 279
    move-result-object v7

    .line 280
    :goto_117
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 281
    .line 282
    .line 283
    move-result v8

    .line 284
    if-eqz v8, :cond_12b

    .line 285
    .line 286
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object v8

    .line 290
    check-cast v8, Lk2/g;

    .line 291
    .line 292
    iget-object v9, v8, Lk2/g;->a:Ljava/lang/String;

    .line 293
    .line 294
    iget-object v8, v8, Lk2/g;->b:Ljava/lang/String;

    .line 295
    .line 296
    invoke-virtual {v6, v9, v8}, Ld2/h;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    goto :goto_117

    .line 300
    :cond_12b
    iget-object v3, v3, Lk2/b;->b:Ld2/j;

    .line 301
    .line 302
    invoke-virtual {v6}, Ld2/h;->l()Ld2/i;

    .line 303
    .line 304
    .line 305
    move-result-object v6

    .line 306
    new-instance v7, Lk2/b;

    .line 307
    .line 308
    invoke-direct {v7, v4, v5, v3, v6}, Lk2/b;-><init>(JLd2/j;Ld2/i;)V

    .line 309
    .line 310
    .line 311
    invoke-interface {v2, v7}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 312
    .line 313
    .line 314
    goto :goto_ea

    .line 315
    :cond_13a
    move-object v4, v15

    .line 316
    :goto_13b
    return-object v4

    .line 317
    :catchall_13c
    move-exception v0

    .line 318
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 319
    .line 320
    .line 321
    throw v0

    .line 322
    :pswitch_141
    iget-object v0, v1, Lf5/f;->c:Ljava/lang/Object;

    .line 323
    .line 324
    check-cast v0, Lf5/t;

    .line 325
    .line 326
    iget-object v2, v1, Lf5/f;->d:Ljava/lang/Object;

    .line 327
    .line 328
    check-cast v2, Ljava/lang/String;

    .line 329
    .line 330
    move-object/from16 v3, p1

    .line 331
    .line 332
    check-cast v3, Lx5/c;

    .line 333
    .line 334
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 335
    .line 336
    .line 337
    invoke-virtual {v3}, Lx5/c;->q()Z

    .line 338
    .line 339
    .line 340
    move-result v4

    .line 341
    if-nez v4, :cond_1e9

    .line 342
    .line 343
    const-string v4, "ON_FOREGROUND"

    .line 344
    .line 345
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 346
    .line 347
    .line 348
    move-result v2

    .line 349
    if-eqz v2, :cond_1e9

    .line 350
    .line 351
    iget-object v2, v0, Lf5/t;->h:Lf5/i0;

    .line 352
    .line 353
    iget-object v0, v0, Lf5/t;->i:Lj5/b;

    .line 354
    .line 355
    iget-object v4, v2, Lf5/i0;->c:Lx7/e;

    .line 356
    .line 357
    iget-object v7, v2, Lf5/i0;->a:Lf5/y;

    .line 358
    .line 359
    invoke-static {}, Lf5/f0;->p()Lcom/google/protobuf/x0;

    .line 360
    .line 361
    .line 362
    move-result-object v8

    .line 363
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 364
    .line 365
    .line 366
    new-instance v9, Lf5/x;

    .line 367
    .line 368
    invoke-direct {v9, v6, v7, v8}, Lf5/x;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 369
    .line 370
    .line 371
    new-instance v7, Li8/l;

    .line 372
    .line 373
    invoke-direct {v7, v9}, Li8/l;-><init>(Ljava/util/concurrent/Callable;)V

    .line 374
    .line 375
    .line 376
    new-instance v8, Lf5/h0;

    .line 377
    .line 378
    invoke-direct {v8, v2, v6}, Lf5/h0;-><init>(Lf5/i0;I)V

    .line 379
    .line 380
    .line 381
    new-instance v9, Li8/r;

    .line 382
    .line 383
    sget-object v10, Ld8/b;->d:Lz3/f;

    .line 384
    .line 385
    invoke-direct {v9, v7, v8, v10}, Li8/r;-><init>(Lx7/e;Lb8/b;Lb8/b;)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {v4, v9}, Lx7/e;->e(Lx7/e;)Lx7/e;

    .line 389
    .line 390
    .line 391
    move-result-object v4

    .line 392
    new-instance v7, Lf5/h0;

    .line 393
    .line 394
    invoke-direct {v7, v2, v5}, Lf5/h0;-><init>(Lf5/i0;I)V

    .line 395
    .line 396
    .line 397
    new-instance v8, Li8/r;

    .line 398
    .line 399
    invoke-direct {v8, v4, v10, v7}, Li8/r;-><init>(Lx7/e;Lb8/b;Lb8/b;)V

    .line 400
    .line 401
    .line 402
    invoke-static {}, Lf5/f0;->n()Lf5/f0;

    .line 403
    .line 404
    .line 405
    move-result-object v4

    .line 406
    invoke-static {v4}, Lx7/e;->a(Ljava/lang/Object;)Li8/o;

    .line 407
    .line 408
    .line 409
    move-result-object v4

    .line 410
    invoke-virtual {v8, v4}, Lx7/e;->e(Lx7/e;)Lx7/e;

    .line 411
    .line 412
    .line 413
    move-result-object v4

    .line 414
    new-instance v7, Lf5/g0;

    .line 415
    .line 416
    invoke-direct {v7, v2, v0}, Lf5/g0;-><init>(Lf5/i0;Lj5/b;)V

    .line 417
    .line 418
    .line 419
    new-instance v8, Li8/k;

    .line 420
    .line 421
    invoke-direct {v8, v4, v7, v5}, Li8/k;-><init>(Lx7/e;Lb8/c;I)V

    .line 422
    .line 423
    .line 424
    new-instance v4, Lf5/g0;

    .line 425
    .line 426
    invoke-direct {v4, v2, v0}, Lf5/g0;-><init>(Lf5/i0;Lj5/b;)V

    .line 427
    .line 428
    .line 429
    new-instance v0, Li8/f;

    .line 430
    .line 431
    invoke-direct {v0, v8, v4, v6}, Li8/f;-><init>(Lx7/e;Ljava/lang/Object;I)V

    .line 432
    .line 433
    .line 434
    new-instance v2, Li8/n;

    .line 435
    .line 436
    invoke-direct {v2, v0}, Li8/n;-><init>(Lx7/e;)V

    .line 437
    .line 438
    .line 439
    new-instance v0, Le0/g;

    .line 440
    .line 441
    const/16 v4, 0xe

    .line 442
    .line 443
    invoke-direct {v0, v4}, Le0/g;-><init>(I)V

    .line 444
    .line 445
    .line 446
    new-instance v4, Lk8/a;

    .line 447
    .line 448
    invoke-direct {v4, v2, v0, v5}, Lk8/a;-><init>(Lx7/l;Ljava/lang/Object;I)V

    .line 449
    .line 450
    .line 451
    new-instance v0, Lk8/b;

    .line 452
    .line 453
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 454
    .line 455
    .line 456
    new-instance v2, Ld8/a;

    .line 457
    .line 458
    invoke-direct {v2, v6, v0}, Ld8/a;-><init>(ILjava/lang/Object;)V

    .line 459
    .line 460
    .line 461
    new-instance v0, Lk8/a;

    .line 462
    .line 463
    const/4 v8, 0x2

    .line 464
    invoke-direct {v0, v4, v2, v8}, Lk8/a;-><init>(Lx7/l;Ljava/lang/Object;I)V

    .line 465
    .line 466
    .line 467
    new-instance v2, Le0/g;

    .line 468
    .line 469
    const/16 v4, 0xf

    .line 470
    .line 471
    invoke-direct {v2, v4}, Le0/g;-><init>(I)V

    .line 472
    .line 473
    .line 474
    new-instance v4, Li8/g;

    .line 475
    .line 476
    invoke-direct {v4, v6, v0, v2}, Li8/g;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 477
    .line 478
    .line 479
    new-instance v0, Lf5/p;

    .line 480
    .line 481
    invoke-direct {v0, v3}, Lf5/p;-><init>(Lx5/c;)V

    .line 482
    .line 483
    .line 484
    new-instance v2, Li8/k;

    .line 485
    .line 486
    invoke-direct {v2, v4, v0, v5}, Li8/k;-><init>(Lx7/e;Lb8/c;I)V

    .line 487
    .line 488
    .line 489
    goto :goto_1ed

    .line 490
    :cond_1e9
    invoke-static {v3}, Lx7/e;->a(Ljava/lang/Object;)Li8/o;

    .line 491
    .line 492
    .line 493
    move-result-object v2

    .line 494
    :goto_1ed
    return-object v2

    .line 495
    :pswitch_1ee
    const/16 v16, 0x0

    .line 496
    .line 497
    iget-object v0, v1, Lf5/f;->c:Ljava/lang/Object;

    .line 498
    .line 499
    check-cast v0, Lf5/t;

    .line 500
    .line 501
    iget-object v3, v1, Lf5/f;->d:Ljava/lang/Object;

    .line 502
    .line 503
    check-cast v3, Ly5/c;

    .line 504
    .line 505
    move-object/from16 v4, p1

    .line 506
    .line 507
    check-cast v4, Lf5/d;

    .line 508
    .line 509
    iget-object v7, v0, Lf5/t;->e:Lf5/c;

    .line 510
    .line 511
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 512
    .line 513
    .line 514
    const-string v0, "Fetching campaigns from service."

    .line 515
    .line 516
    invoke-static {v0}, Le3/d;->n(Ljava/lang/String;)V

    .line 517
    .line 518
    .line 519
    iget-object v0, v7, Lf5/c;->d:Lf5/z;

    .line 520
    .line 521
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 522
    .line 523
    .line 524
    :try_start_20b
    iget-object v0, v0, Lf5/z;->a:Landroid/app/Application;

    .line 525
    .line 526
    invoke-static {v0}, Ly2/a;->a(Landroid/content/Context;)V
    :try_end_210
    .catch Lp2/b; {:try_start_20b .. :try_end_210} :catch_213
    .catch Lp2/c; {:try_start_20b .. :try_end_210} :catch_211

    .line 527
    .line 528
    .line 529
    goto :goto_217

    .line 530
    :catch_211
    move-exception v0

    .line 531
    goto :goto_214

    .line 532
    :catch_213
    move-exception v0

    .line 533
    :goto_214
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 534
    .line 535
    .line 536
    :goto_217
    iget-object v0, v7, Lf5/c;->a:Lt8/a;

    .line 537
    .line 538
    invoke-interface {v0}, Lt8/a;->get()Ljava/lang/Object;

    .line 539
    .line 540
    .line 541
    move-result-object v0

    .line 542
    move-object v8, v0

    .line 543
    check-cast v8, Lf5/l;

    .line 544
    .line 545
    invoke-static {}, Ly5/g;->s()Ly5/f;

    .line 546
    .line 547
    .line 548
    move-result-object v9

    .line 549
    iget-object v0, v7, Lf5/c;->b:Lo4/f;

    .line 550
    .line 551
    invoke-virtual {v0}, Lo4/f;->a()V

    .line 552
    .line 553
    .line 554
    iget-object v0, v0, Lo4/f;->c:Lo4/h;

    .line 555
    .line 556
    iget-object v0, v0, Lo4/h;->e:Ljava/lang/String;

    .line 557
    .line 558
    invoke-virtual {v9}, Lcom/google/protobuf/w;->c()V

    .line 559
    .line 560
    .line 561
    iget-object v10, v9, Lcom/google/protobuf/w;->c:Lcom/google/protobuf/y;

    .line 562
    .line 563
    check-cast v10, Ly5/g;

    .line 564
    .line 565
    invoke-static {v10, v0}, Ly5/g;->n(Ly5/g;Ljava/lang/String;)V

    .line 566
    .line 567
    .line 568
    invoke-virtual {v3}, Ly5/c;->o()Lcom/google/protobuf/a0;

    .line 569
    .line 570
    .line 571
    move-result-object v0

    .line 572
    invoke-virtual {v9}, Lcom/google/protobuf/w;->c()V

    .line 573
    .line 574
    .line 575
    iget-object v3, v9, Lcom/google/protobuf/w;->c:Lcom/google/protobuf/y;

    .line 576
    .line 577
    check-cast v3, Ly5/g;

    .line 578
    .line 579
    invoke-static {v3, v0}, Ly5/g;->o(Ly5/g;Lcom/google/protobuf/a0;)V

    .line 580
    .line 581
    .line 582
    invoke-static {}, Ln4/b;->r()Ln4/a;

    .line 583
    .line 584
    .line 585
    move-result-object v3

    .line 586
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 587
    .line 588
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 589
    .line 590
    .line 591
    move-result-object v0

    .line 592
    invoke-virtual {v3}, Lcom/google/protobuf/w;->c()V

    .line 593
    .line 594
    .line 595
    iget-object v10, v3, Lcom/google/protobuf/w;->c:Lcom/google/protobuf/y;

    .line 596
    .line 597
    check-cast v10, Ln4/b;

    .line 598
    .line 599
    invoke-static {v10, v0}, Ln4/b;->p(Ln4/b;Ljava/lang/String;)V

    .line 600
    .line 601
    .line 602
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 603
    .line 604
    .line 605
    move-result-object v0

    .line 606
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    .line 607
    .line 608
    .line 609
    move-result-object v0

    .line 610
    invoke-virtual {v3}, Lcom/google/protobuf/w;->c()V

    .line 611
    .line 612
    .line 613
    iget-object v10, v3, Lcom/google/protobuf/w;->c:Lcom/google/protobuf/y;

    .line 614
    .line 615
    check-cast v10, Ln4/b;

    .line 616
    .line 617
    invoke-static {v10, v0}, Ln4/b;->q(Ln4/b;Ljava/lang/String;)V

    .line 618
    .line 619
    .line 620
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    .line 621
    .line 622
    .line 623
    move-result-object v0

    .line 624
    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    .line 625
    .line 626
    .line 627
    move-result-object v0

    .line 628
    invoke-virtual {v3}, Lcom/google/protobuf/w;->c()V

    .line 629
    .line 630
    .line 631
    iget-object v10, v3, Lcom/google/protobuf/w;->c:Lcom/google/protobuf/y;

    .line 632
    .line 633
    check-cast v10, Ln4/b;

    .line 634
    .line 635
    invoke-static {v10, v0}, Ln4/b;->o(Ln4/b;Ljava/lang/String;)V

    .line 636
    .line 637
    .line 638
    iget-object v0, v7, Lf5/c;->c:Landroid/app/Application;

    .line 639
    .line 640
    :try_start_27f
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 641
    .line 642
    .line 643
    move-result-object v10

    .line 644
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 645
    .line 646
    .line 647
    move-result-object v0

    .line 648
    invoke-virtual {v10, v0, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 649
    .line 650
    .line 651
    move-result-object v0

    .line 652
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_28d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_27f .. :try_end_28d} :catch_28e

    .line 653
    .line 654
    goto :goto_2a8

    .line 655
    :catch_28e
    move-exception v0

    .line 656
    new-instance v10, Ljava/lang/StringBuilder;

    .line 657
    .line 658
    const-string v11, "Error finding versionName : "

    .line 659
    .line 660
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 661
    .line 662
    .line 663
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 664
    .line 665
    .line 666
    move-result-object v0

    .line 667
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    .line 669
    .line 670
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 671
    .line 672
    .line 673
    move-result-object v0

    .line 674
    const-string v10, "FIAM.Headless"

    .line 675
    .line 676
    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    .line 678
    .line 679
    move-object/from16 v0, v16

    .line 680
    .line 681
    :goto_2a8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 682
    .line 683
    .line 684
    move-result v10

    .line 685
    if-nez v10, :cond_2b8

    .line 686
    .line 687
    invoke-virtual {v3}, Lcom/google/protobuf/w;->c()V

    .line 688
    .line 689
    .line 690
    iget-object v10, v3, Lcom/google/protobuf/w;->c:Lcom/google/protobuf/y;

    .line 691
    .line 692
    check-cast v10, Ln4/b;

    .line 693
    .line 694
    invoke-static {v10, v0}, Ln4/b;->n(Ln4/b;Ljava/lang/String;)V

    .line 695
    .line 696
    .line 697
    :cond_2b8
    invoke-virtual {v3}, Lcom/google/protobuf/w;->a()Lcom/google/protobuf/y;

    .line 698
    .line 699
    .line 700
    move-result-object v0

    .line 701
    check-cast v0, Ln4/b;

    .line 702
    .line 703
    invoke-virtual {v9}, Lcom/google/protobuf/w;->c()V

    .line 704
    .line 705
    .line 706
    iget-object v3, v9, Lcom/google/protobuf/w;->c:Lcom/google/protobuf/y;

    .line 707
    .line 708
    check-cast v3, Ly5/g;

    .line 709
    .line 710
    invoke-static {v3, v0}, Ly5/g;->p(Ly5/g;Ln4/b;)V

    .line 711
    .line 712
    .line 713
    invoke-static {}, Ly5/e;->q()Ly5/d;

    .line 714
    .line 715
    .line 716
    move-result-object v0

    .line 717
    iget-object v3, v7, Lf5/c;->b:Lo4/f;

    .line 718
    .line 719
    invoke-virtual {v3}, Lo4/f;->a()V

    .line 720
    .line 721
    .line 722
    iget-object v3, v3, Lo4/f;->c:Lo4/h;

    .line 723
    .line 724
    iget-object v3, v3, Lo4/h;->b:Ljava/lang/String;

    .line 725
    .line 726
    invoke-virtual {v0}, Lcom/google/protobuf/w;->c()V

    .line 727
    .line 728
    .line 729
    iget-object v7, v0, Lcom/google/protobuf/w;->c:Lcom/google/protobuf/y;

    .line 730
    .line 731
    check-cast v7, Ly5/e;

    .line 732
    .line 733
    invoke-static {v7, v3}, Ly5/e;->n(Ly5/e;Ljava/lang/String;)V

    .line 734
    .line 735
    .line 736
    iget-object v3, v4, Lf5/d;->a:Ljava/lang/String;

    .line 737
    .line 738
    invoke-virtual {v0}, Lcom/google/protobuf/w;->c()V

    .line 739
    .line 740
    .line 741
    iget-object v7, v0, Lcom/google/protobuf/w;->c:Lcom/google/protobuf/y;

    .line 742
    .line 743
    check-cast v7, Ly5/e;

    .line 744
    .line 745
    invoke-static {v7, v3}, Ly5/e;->o(Ly5/e;Ljava/lang/String;)V

    .line 746
    .line 747
    .line 748
    iget-object v3, v4, Lf5/d;->b:Ll5/a;

    .line 749
    .line 750
    iget-object v3, v3, Ll5/a;->a:Ljava/lang/String;

    .line 751
    .line 752
    invoke-virtual {v0}, Lcom/google/protobuf/w;->c()V

    .line 753
    .line 754
    .line 755
    iget-object v4, v0, Lcom/google/protobuf/w;->c:Lcom/google/protobuf/y;

    .line 756
    .line 757
    check-cast v4, Ly5/e;

    .line 758
    .line 759
    invoke-static {v4, v3}, Ly5/e;->p(Ly5/e;Ljava/lang/String;)V

    .line 760
    .line 761
    .line 762
    invoke-virtual {v0}, Lcom/google/protobuf/w;->a()Lcom/google/protobuf/y;

    .line 763
    .line 764
    .line 765
    move-result-object v0

    .line 766
    check-cast v0, Ly5/e;

    .line 767
    .line 768
    invoke-virtual {v9}, Lcom/google/protobuf/w;->c()V

    .line 769
    .line 770
    .line 771
    iget-object v3, v9, Lcom/google/protobuf/w;->c:Lcom/google/protobuf/y;

    .line 772
    .line 773
    check-cast v3, Ly5/g;

    .line 774
    .line 775
    invoke-static {v3, v0}, Ly5/g;->q(Ly5/g;Ly5/e;)V

    .line 776
    .line 777
    .line 778
    invoke-virtual {v9}, Lcom/google/protobuf/w;->a()Lcom/google/protobuf/y;

    .line 779
    .line 780
    .line 781
    move-result-object v0

    .line 782
    check-cast v0, Ly5/g;

    .line 783
    .line 784
    iget-object v3, v8, Lf5/l;->a:Ly5/j;

    .line 785
    .line 786
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 787
    .line 788
    iget-object v7, v3, Ly5/j;->a:Ln7/d;

    .line 789
    .line 790
    iget-object v3, v3, Ly5/j;->b:Ln7/c;

    .line 791
    .line 792
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 793
    .line 794
    .line 795
    const-string v8, "units"

    .line 796
    .line 797
    if-eqz v4, :cond_428

    .line 798
    .line 799
    new-instance v4, Ln7/o;

    .line 800
    .line 801
    const-wide v8, 0x6fc23ac00L

    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    invoke-direct {v4, v8, v9}, Ln7/o;-><init>(J)V

    .line 807
    .line 808
    .line 809
    invoke-static {v3}, Ln7/c;->b(Ln7/c;)Lc2/k;

    .line 810
    .line 811
    .line 812
    move-result-object v3

    .line 813
    iput-object v4, v3, Lc2/k;->c:Ljava/lang/Object;

    .line 814
    .line 815
    new-instance v4, Ln7/c;

    .line 816
    .line 817
    invoke-direct {v4, v3}, Ln7/c;-><init>(Lc2/k;)V

    .line 818
    .line 819
    .line 820
    const-string v3, "channel"

    .line 821
    .line 822
    invoke-static {v7, v3}, Lo4/b;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 823
    .line 824
    .line 825
    sget-object v3, Ly5/k;->a:Ln7/x0;

    .line 826
    .line 827
    if-nez v3, :cond_36e

    .line 828
    .line 829
    const-class v8, Ly5/k;

    .line 830
    .line 831
    monitor-enter v8

    .line 832
    :try_start_33f
    sget-object v3, Ly5/k;->a:Ln7/x0;

    .line 833
    .line 834
    if-nez v3, :cond_36a

    .line 835
    .line 836
    const-string v3, "google.internal.firebase.inappmessaging.v1.sdkserving.InAppMessagingSdkServing"

    .line 837
    .line 838
    const-string v9, "FetchEligibleCampaigns"

    .line 839
    .line 840
    invoke-static {v3, v9}, Ln7/x0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 841
    .line 842
    .line 843
    move-result-object v3

    .line 844
    invoke-static {}, Ly5/g;->r()Ly5/g;

    .line 845
    .line 846
    .line 847
    move-result-object v9

    .line 848
    sget-object v10, Lt7/c;->a:Lcom/google/protobuf/p;

    .line 849
    .line 850
    new-instance v10, Lt7/b;

    .line 851
    .line 852
    invoke-direct {v10, v9}, Lt7/b;-><init>(Lcom/google/protobuf/a;)V

    .line 853
    .line 854
    .line 855
    invoke-static {}, Ly5/i;->o()Ly5/i;

    .line 856
    .line 857
    .line 858
    move-result-object v9

    .line 859
    new-instance v11, Lt7/b;

    .line 860
    .line 861
    invoke-direct {v11, v9}, Lt7/b;-><init>(Lcom/google/protobuf/a;)V

    .line 862
    .line 863
    .line 864
    new-instance v9, Ln7/x0;

    .line 865
    .line 866
    invoke-direct {v9, v3, v10, v11}, Ln7/x0;-><init>(Ljava/lang/String;Lt7/b;Lt7/b;)V

    .line 867
    .line 868
    .line 869
    sput-object v9, Ly5/k;->a:Ln7/x0;

    .line 870
    .line 871
    move-object v3, v9

    .line 872
    goto :goto_36a

    .line 873
    :catchall_368
    move-exception v0

    .line 874
    goto :goto_36c

    .line 875
    :cond_36a
    :goto_36a
    monitor-exit v8

    .line 876
    goto :goto_36e

    .line 877
    :goto_36c
    monitor-exit v8
    :try_end_36d
    .catchall {:try_start_33f .. :try_end_36d} :catchall_368

    .line 878
    throw v0

    .line 879
    :cond_36e
    :goto_36e
    sget-object v8, Lu7/e;->a:Ljava/util/logging/Logger;

    .line 880
    .line 881
    new-instance v8, Lu7/c;

    .line 882
    .line 883
    invoke-direct {v8}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 884
    .line 885
    .line 886
    sget-object v9, Lu7/e;->c:La9/w;

    .line 887
    .line 888
    sget-object v10, Lu7/b;->b:Lu7/b;

    .line 889
    .line 890
    invoke-virtual {v4, v9, v10}, Ln7/c;->c(La9/w;Ljava/lang/Object;)Ln7/c;

    .line 891
    .line 892
    .line 893
    move-result-object v4

    .line 894
    invoke-static {v4}, Ln7/c;->b(Ln7/c;)Lc2/k;

    .line 895
    .line 896
    .line 897
    move-result-object v4

    .line 898
    iput-object v8, v4, Lc2/k;->d:Ljava/lang/Object;

    .line 899
    .line 900
    new-instance v9, Ln7/c;

    .line 901
    .line 902
    invoke-direct {v9, v4}, Ln7/c;-><init>(Lc2/k;)V

    .line 903
    .line 904
    .line 905
    invoke-virtual {v7, v3, v9}, Ln7/d;->f(Ln7/x0;Ln7/c;)Ln7/t;

    .line 906
    .line 907
    .line 908
    move-result-object v3

    .line 909
    :try_start_38c
    invoke-static {v3, v0}, Lu7/e;->b(Ln7/t;Ly5/g;)Lu7/a;

    .line 910
    .line 911
    .line 912
    move-result-object v4

    .line 913
    :goto_390
    invoke-virtual {v4}, Lm4/m;->isDone()Z

    .line 914
    .line 915
    .line 916
    move-result v0
    :try_end_394
    .catch Ljava/lang/RuntimeException; {:try_start_38c .. :try_end_394} :catch_3a2
    .catch Ljava/lang/Error; {:try_start_38c .. :try_end_394} :catch_39e
    .catchall {:try_start_38c .. :try_end_394} :catchall_39a

    .line 917
    if-nez v0, :cond_3b3

    .line 918
    .line 919
    :try_start_396
    invoke-virtual {v8}, Lu7/c;->a()V
    :try_end_399
    .catch Ljava/lang/InterruptedException; {:try_start_396 .. :try_end_399} :catch_3a4
    .catch Ljava/lang/RuntimeException; {:try_start_396 .. :try_end_399} :catch_3a2
    .catch Ljava/lang/Error; {:try_start_396 .. :try_end_399} :catch_39e
    .catchall {:try_start_396 .. :try_end_399} :catchall_39a

    .line 920
    .line 921
    .line 922
    goto :goto_390

    .line 923
    :catchall_39a
    move-exception v0

    .line 924
    move v5, v6

    .line 925
    goto/16 :goto_41e

    .line 926
    .line 927
    :catch_39e
    move-exception v0

    .line 928
    :goto_39f
    move v5, v6

    .line 929
    goto/16 :goto_41a

    .line 930
    .line 931
    :catch_3a2
    move-exception v0

    .line 932
    goto :goto_39f

    .line 933
    :catch_3a4
    move-exception v0

    .line 934
    :try_start_3a5
    const-string v6, "Thread interrupted"

    .line 935
    .line 936
    invoke-virtual {v3, v6, v0}, Ln7/t;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3aa
    .catch Ljava/lang/RuntimeException; {:try_start_3a5 .. :try_end_3aa} :catch_3b1
    .catch Ljava/lang/Error; {:try_start_3a5 .. :try_end_3aa} :catch_3af
    .catchall {:try_start_3a5 .. :try_end_3aa} :catchall_3ac

    .line 937
    .line 938
    .line 939
    move v6, v5

    .line 940
    goto :goto_390

    .line 941
    :catchall_3ac
    move-exception v0

    .line 942
    goto/16 :goto_41e

    .line 943
    .line 944
    :catch_3af
    move-exception v0

    .line 945
    goto :goto_41a

    .line 946
    :catch_3b1
    move-exception v0

    .line 947
    goto :goto_41a

    .line 948
    :cond_3b3
    :try_start_3b3
    invoke-virtual {v8}, Lu7/c;->shutdown()V

    .line 949
    .line 950
    .line 951
    invoke-static {v4}, Lu7/e;->c(Lu7/a;)Ljava/lang/Object;

    .line 952
    .line 953
    .line 954
    move-result-object v0
    :try_end_3ba
    .catch Ljava/lang/RuntimeException; {:try_start_3b3 .. :try_end_3ba} :catch_3a2
    .catch Ljava/lang/Error; {:try_start_3b3 .. :try_end_3ba} :catch_39e
    .catchall {:try_start_3b3 .. :try_end_3ba} :catchall_39a

    .line 955
    if-eqz v6, :cond_3c3

    .line 956
    .line 957
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 958
    .line 959
    .line 960
    move-result-object v3

    .line 961
    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 962
    .line 963
    .line 964
    :cond_3c3
    check-cast v0, Ly5/i;

    .line 965
    .line 966
    invoke-virtual {v0}, Ly5/i;->p()J

    .line 967
    .line 968
    .line 969
    move-result-wide v3

    .line 970
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 971
    .line 972
    .line 973
    move-result-wide v5

    .line 974
    const-wide/32 v7, 0xea60

    .line 975
    .line 976
    .line 977
    add-long/2addr v5, v7

    .line 978
    cmp-long v3, v3, v5

    .line 979
    .line 980
    if-ltz v3, :cond_3e8

    .line 981
    .line 982
    invoke-virtual {v0}, Ly5/i;->p()J

    .line 983
    .line 984
    .line 985
    move-result-wide v3

    .line 986
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 987
    .line 988
    .line 989
    move-result-wide v5

    .line 990
    const-wide/32 v7, 0xf731400

    .line 991
    .line 992
    .line 993
    add-long/2addr v5, v7

    .line 994
    cmp-long v3, v3, v5

    .line 995
    .line 996
    if-lez v3, :cond_3e6

    .line 997
    .line 998
    goto :goto_3e8

    .line 999
    :cond_3e6
    :goto_3e6
    move-object v4, v0

    .line 1000
    goto :goto_42d

    .line 1001
    :cond_3e8
    :goto_3e8
    invoke-virtual {v0, v2}, Ly5/i;->e(I)Ljava/lang/Object;

    .line 1002
    .line 1003
    .line 1004
    move-result-object v2

    .line 1005
    check-cast v2, Lcom/google/protobuf/w;

    .line 1006
    .line 1007
    iget-object v3, v2, Lcom/google/protobuf/w;->b:Lcom/google/protobuf/y;

    .line 1008
    .line 1009
    invoke-virtual {v3, v0}, Lcom/google/protobuf/y;->equals(Ljava/lang/Object;)Z

    .line 1010
    .line 1011
    .line 1012
    move-result v3

    .line 1013
    if-eqz v3, :cond_3f7

    .line 1014
    .line 1015
    goto :goto_3ff

    .line 1016
    :cond_3f7
    invoke-virtual {v2}, Lcom/google/protobuf/w;->c()V

    .line 1017
    .line 1018
    .line 1019
    iget-object v3, v2, Lcom/google/protobuf/w;->c:Lcom/google/protobuf/y;

    .line 1020
    .line 1021
    invoke-static {v3, v0}, Lcom/google/protobuf/w;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1022
    .line 1023
    .line 1024
    :goto_3ff
    check-cast v2, Ly5/h;

    .line 1025
    .line 1026
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1027
    .line 1028
    .line 1029
    move-result-wide v3

    .line 1030
    const-wide/32 v5, 0x5265c00

    .line 1031
    .line 1032
    .line 1033
    add-long/2addr v3, v5

    .line 1034
    invoke-virtual {v2}, Lcom/google/protobuf/w;->c()V

    .line 1035
    .line 1036
    .line 1037
    iget-object v0, v2, Lcom/google/protobuf/w;->c:Lcom/google/protobuf/y;

    .line 1038
    .line 1039
    check-cast v0, Ly5/i;

    .line 1040
    .line 1041
    invoke-static {v0, v3, v4}, Ly5/i;->n(Ly5/i;J)V

    .line 1042
    .line 1043
    .line 1044
    invoke-virtual {v2}, Lcom/google/protobuf/w;->a()Lcom/google/protobuf/y;

    .line 1045
    .line 1046
    .line 1047
    move-result-object v0

    .line 1048
    check-cast v0, Ly5/i;

    .line 1049
    .line 1050
    goto :goto_3e6

    .line 1051
    :goto_41a
    :try_start_41a
    invoke-static {v3, v0}, Lu7/e;->a(Ln7/t;Ljava/lang/Throwable;)V

    .line 1052
    .line 1053
    .line 1054
    throw v16
    :try_end_41e
    .catchall {:try_start_41a .. :try_end_41e} :catchall_3ac

    .line 1055
    :goto_41e
    if-eqz v5, :cond_427

    .line 1056
    .line 1057
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 1058
    .line 1059
    .line 1060
    move-result-object v2

    .line 1061
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 1062
    .line 1063
    .line 1064
    :cond_427
    throw v0

    .line 1065
    :cond_428
    invoke-static {v8}, Ln0/b;->n(Ljava/lang/String;)V

    .line 1066
    .line 1067
    .line 1068
    move-object/from16 v4, v16

    .line 1069
    .line 1070
    :goto_42d
    return-object v4

    .line 1071
    :pswitch_42e
    iget-object v0, v1, Lf5/f;->c:Ljava/lang/Object;

    .line 1072
    .line 1073
    check-cast v0, Lf5/t;

    .line 1074
    .line 1075
    iget-object v3, v1, Lf5/f;->d:Ljava/lang/Object;

    .line 1076
    .line 1077
    check-cast v3, Lx7/e;

    .line 1078
    .line 1079
    move-object/from16 v4, p1

    .line 1080
    .line 1081
    check-cast v4, Ly5/c;

    .line 1082
    .line 1083
    iget-object v7, v0, Lf5/t;->n:Landroid/support/v4/media/h;

    .line 1084
    .line 1085
    const-string v8, "firebase_inapp_messaging_auto_data_collection_enabled"

    .line 1086
    .line 1087
    iget-object v9, v7, Landroid/support/v4/media/h;->c:Ljava/lang/Object;

    .line 1088
    .line 1089
    check-cast v9, Lf5/l0;

    .line 1090
    .line 1091
    const-string v10, "auto_init"

    .line 1092
    .line 1093
    iget-object v11, v9, Lf5/l0;->a:Lo4/f;

    .line 1094
    .line 1095
    invoke-virtual {v11}, Lo4/f;->a()V

    .line 1096
    .line 1097
    .line 1098
    iget-object v11, v11, Lo4/f;->a:Landroid/content/Context;

    .line 1099
    .line 1100
    check-cast v11, Landroid/app/Application;

    .line 1101
    .line 1102
    const-string v12, "com.google.firebase.inappmessaging"

    .line 1103
    .line 1104
    invoke-virtual {v11, v12, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 1105
    .line 1106
    .line 1107
    move-result-object v11

    .line 1108
    invoke-interface {v11, v10}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 1109
    .line 1110
    .line 1111
    move-result v11

    .line 1112
    iget-object v9, v9, Lf5/l0;->a:Lo4/f;

    .line 1113
    .line 1114
    iget-object v13, v9, Lo4/f;->a:Landroid/content/Context;

    .line 1115
    .line 1116
    if-eqz v11, :cond_473

    .line 1117
    .line 1118
    invoke-virtual {v9}, Lo4/f;->a()V

    .line 1119
    .line 1120
    .line 1121
    check-cast v13, Landroid/app/Application;

    .line 1122
    .line 1123
    invoke-virtual {v13, v12, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 1124
    .line 1125
    .line 1126
    move-result-object v7

    .line 1127
    invoke-interface {v7, v10}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 1128
    .line 1129
    .line 1130
    move-result v8

    .line 1131
    if-eqz v8, :cond_471

    .line 1132
    .line 1133
    invoke-interface {v7, v10, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 1134
    .line 1135
    .line 1136
    move-result v7

    .line 1137
    goto :goto_4c0

    .line 1138
    :catch_471
    :cond_471
    move v7, v5

    .line 1139
    goto :goto_4c0

    .line 1140
    :cond_473
    invoke-virtual {v9}, Lo4/f;->a()V

    .line 1141
    .line 1142
    .line 1143
    check-cast v13, Landroid/app/Application;

    .line 1144
    .line 1145
    :try_start_478
    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 1146
    .line 1147
    .line 1148
    move-result-object v10

    .line 1149
    if-eqz v10, :cond_4b8

    .line 1150
    .line 1151
    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 1152
    .line 1153
    .line 1154
    move-result-object v11

    .line 1155
    const/16 v12, 0x80

    .line 1156
    .line 1157
    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 1158
    .line 1159
    .line 1160
    move-result-object v10

    .line 1161
    if-eqz v10, :cond_4b8

    .line 1162
    .line 1163
    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 1164
    .line 1165
    if-eqz v10, :cond_4b8

    .line 1166
    .line 1167
    invoke-virtual {v10, v8}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 1168
    .line 1169
    .line 1170
    move-result v10
    :try_end_492
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_478 .. :try_end_492} :catch_4b8

    .line 1171
    if-eqz v10, :cond_4b8

    .line 1172
    .line 1173
    invoke-virtual {v9}, Lo4/f;->a()V

    .line 1174
    .line 1175
    .line 1176
    :try_start_497
    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 1177
    .line 1178
    .line 1179
    move-result-object v7

    .line 1180
    if-eqz v7, :cond_471

    .line 1181
    .line 1182
    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 1183
    .line 1184
    .line 1185
    move-result-object v9

    .line 1186
    invoke-virtual {v7, v9, v12}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 1187
    .line 1188
    .line 1189
    move-result-object v7

    .line 1190
    if-eqz v7, :cond_471

    .line 1191
    .line 1192
    iget-object v9, v7, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 1193
    .line 1194
    if-eqz v9, :cond_471

    .line 1195
    .line 1196
    invoke-virtual {v9, v8}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 1197
    .line 1198
    .line 1199
    move-result v9

    .line 1200
    if-eqz v9, :cond_471

    .line 1201
    .line 1202
    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 1203
    .line 1204
    invoke-virtual {v7, v8}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 1205
    .line 1206
    .line 1207
    move-result v7
    :try_end_4b7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_497 .. :try_end_4b7} :catch_471

    .line 1208
    goto :goto_4c0

    .line 1209
    :catch_4b8
    :cond_4b8
    iget-object v7, v7, Landroid/support/v4/media/h;->d:Ljava/lang/Object;

    .line 1210
    .line 1211
    check-cast v7, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1212
    .line 1213
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 1214
    .line 1215
    .line 1216
    move-result v7

    .line 1217
    :goto_4c0
    const-wide/16 v8, 0x1

    .line 1218
    .line 1219
    if-nez v7, :cond_4e3

    .line 1220
    .line 1221
    const-string v0, "Automatic data collection is disabled, not attempting campaign fetch from service."

    .line 1222
    .line 1223
    invoke-static {v0}, Le3/d;->n(Ljava/lang/String;)V

    .line 1224
    .line 1225
    .line 1226
    invoke-static {}, Ly5/i;->r()Ly5/h;

    .line 1227
    .line 1228
    .line 1229
    move-result-object v0

    .line 1230
    invoke-virtual {v0}, Lcom/google/protobuf/w;->c()V

    .line 1231
    .line 1232
    .line 1233
    iget-object v2, v0, Lcom/google/protobuf/w;->c:Lcom/google/protobuf/y;

    .line 1234
    .line 1235
    check-cast v2, Ly5/i;

    .line 1236
    .line 1237
    invoke-static {v2, v8, v9}, Ly5/i;->n(Ly5/i;J)V

    .line 1238
    .line 1239
    .line 1240
    invoke-virtual {v0}, Lcom/google/protobuf/w;->a()Lcom/google/protobuf/y;

    .line 1241
    .line 1242
    .line 1243
    move-result-object v0

    .line 1244
    check-cast v0, Ly5/i;

    .line 1245
    .line 1246
    invoke-static {v0}, Lx7/e;->a(Ljava/lang/Object;)Li8/o;

    .line 1247
    .line 1248
    .line 1249
    move-result-object v0

    .line 1250
    goto/16 :goto_564

    .line 1251
    .line 1252
    :cond_4e3
    new-instance v7, Le0/g;

    .line 1253
    .line 1254
    const/16 v10, 0x10

    .line 1255
    .line 1256
    invoke-direct {v7, v10}, Le0/g;-><init>(I)V

    .line 1257
    .line 1258
    .line 1259
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1260
    .line 1261
    .line 1262
    new-instance v10, Li8/f;

    .line 1263
    .line 1264
    invoke-direct {v10, v3, v7, v6}, Li8/f;-><init>(Lx7/e;Ljava/lang/Object;I)V

    .line 1265
    .line 1266
    .line 1267
    new-instance v3, Lf5/f;

    .line 1268
    .line 1269
    invoke-direct {v3, v2, v0, v4}, Lf5/f;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1270
    .line 1271
    .line 1272
    new-instance v2, Li8/k;

    .line 1273
    .line 1274
    invoke-direct {v2, v10, v3, v5}, Li8/k;-><init>(Lx7/e;Lb8/c;I)V

    .line 1275
    .line 1276
    .line 1277
    invoke-static {}, Ly5/i;->r()Ly5/h;

    .line 1278
    .line 1279
    .line 1280
    move-result-object v3

    .line 1281
    invoke-virtual {v3}, Lcom/google/protobuf/w;->c()V

    .line 1282
    .line 1283
    .line 1284
    iget-object v4, v3, Lcom/google/protobuf/w;->c:Lcom/google/protobuf/y;

    .line 1285
    .line 1286
    check-cast v4, Ly5/i;

    .line 1287
    .line 1288
    invoke-static {v4, v8, v9}, Ly5/i;->n(Ly5/i;J)V

    .line 1289
    .line 1290
    .line 1291
    invoke-virtual {v3}, Lcom/google/protobuf/w;->a()Lcom/google/protobuf/y;

    .line 1292
    .line 1293
    .line 1294
    move-result-object v3

    .line 1295
    check-cast v3, Ly5/i;

    .line 1296
    .line 1297
    invoke-static {v3}, Lx7/e;->a(Ljava/lang/Object;)Li8/o;

    .line 1298
    .line 1299
    .line 1300
    move-result-object v3

    .line 1301
    invoke-virtual {v2, v3}, Lx7/e;->e(Lx7/e;)Lx7/e;

    .line 1302
    .line 1303
    .line 1304
    move-result-object v2

    .line 1305
    new-instance v3, Le0/g;

    .line 1306
    .line 1307
    const/16 v4, 0x11

    .line 1308
    .line 1309
    invoke-direct {v3, v4}, Le0/g;-><init>(I)V

    .line 1310
    .line 1311
    .line 1312
    new-instance v4, Li8/r;

    .line 1313
    .line 1314
    sget-object v5, Ld8/b;->d:Lz3/f;

    .line 1315
    .line 1316
    invoke-direct {v4, v2, v3, v5}, Li8/r;-><init>(Lx7/e;Lb8/b;Lb8/b;)V

    .line 1317
    .line 1318
    .line 1319
    new-instance v2, Lf5/q;

    .line 1320
    .line 1321
    invoke-direct {v2, v0, v6}, Lf5/q;-><init>(Lf5/t;I)V

    .line 1322
    .line 1323
    .line 1324
    new-instance v3, Li8/r;

    .line 1325
    .line 1326
    invoke-direct {v3, v4, v2, v5}, Li8/r;-><init>(Lx7/e;Lb8/b;Lb8/b;)V

    .line 1327
    .line 1328
    .line 1329
    iget-object v2, v0, Lf5/t;->j:Lf5/b;

    .line 1330
    .line 1331
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1332
    .line 1333
    .line 1334
    new-instance v4, Landroidx/fragment/app/h;

    .line 1335
    .line 1336
    const/16 v6, 0x9

    .line 1337
    .line 1338
    invoke-direct {v4, v6, v2}, Landroidx/fragment/app/h;-><init>(ILjava/lang/Object;)V

    .line 1339
    .line 1340
    .line 1341
    new-instance v2, Li8/r;

    .line 1342
    .line 1343
    invoke-direct {v2, v3, v4, v5}, Li8/r;-><init>(Lx7/e;Lb8/b;Lb8/b;)V

    .line 1344
    .line 1345
    .line 1346
    iget-object v0, v0, Lf5/t;->k:Lf5/m0;

    .line 1347
    .line 1348
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1349
    .line 1350
    .line 1351
    new-instance v3, Landroidx/fragment/app/h;

    .line 1352
    .line 1353
    const/16 v4, 0xa

    .line 1354
    .line 1355
    invoke-direct {v3, v4, v0}, Landroidx/fragment/app/h;-><init>(ILjava/lang/Object;)V

    .line 1356
    .line 1357
    .line 1358
    new-instance v0, Li8/r;

    .line 1359
    .line 1360
    invoke-direct {v0, v2, v3, v5}, Li8/r;-><init>(Lx7/e;Lb8/b;Lb8/b;)V

    .line 1361
    .line 1362
    .line 1363
    new-instance v2, Le0/g;

    .line 1364
    .line 1365
    const/16 v3, 0x12

    .line 1366
    .line 1367
    invoke-direct {v2, v3}, Le0/g;-><init>(I)V

    .line 1368
    .line 1369
    .line 1370
    new-instance v3, Li8/r;

    .line 1371
    .line 1372
    invoke-direct {v3, v0, v5, v2}, Li8/r;-><init>(Lx7/e;Lb8/b;Lb8/b;)V

    .line 1373
    .line 1374
    .line 1375
    sget-object v0, Li8/d;->b:Li8/d;

    .line 1376
    .line 1377
    invoke-virtual {v3, v0}, Lx7/e;->b(Lx7/e;)Lx7/e;

    .line 1378
    .line 1379
    .line 1380
    move-result-object v0

    .line 1381
    :goto_564
    return-object v0

    .line 1382
    :pswitch_565
    iget-object v0, v1, Lf5/f;->c:Ljava/lang/Object;

    .line 1383
    .line 1384
    check-cast v0, Lf5/o;

    .line 1385
    .line 1386
    iget-object v2, v1, Lf5/f;->d:Ljava/lang/Object;

    .line 1387
    .line 1388
    check-cast v2, Ljava/util/HashSet;

    .line 1389
    .line 1390
    move-object/from16 v3, p1

    .line 1391
    .line 1392
    check-cast v3, Ly5/c;

    .line 1393
    .line 1394
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1395
    .line 1396
    .line 1397
    invoke-virtual {v3}, Lcom/google/protobuf/y;->toString()Ljava/lang/String;

    .line 1398
    .line 1399
    .line 1400
    move-result-object v4

    .line 1401
    const-string v6, "Existing impressions: "

    .line 1402
    .line 1403
    invoke-virtual {v6, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1404
    .line 1405
    .line 1406
    move-result-object v4

    .line 1407
    invoke-static {v4}, Le3/d;->m(Ljava/lang/String;)V

    .line 1408
    .line 1409
    .line 1410
    invoke-static {}, Ly5/c;->q()Ly5/b;

    .line 1411
    .line 1412
    .line 1413
    move-result-object v4

    .line 1414
    invoke-virtual {v3}, Ly5/c;->o()Lcom/google/protobuf/a0;

    .line 1415
    .line 1416
    .line 1417
    move-result-object v3

    .line 1418
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1419
    .line 1420
    .line 1421
    move-result-object v3

    .line 1422
    :cond_58d
    :goto_58d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1423
    .line 1424
    .line 1425
    move-result v6

    .line 1426
    if-eqz v6, :cond_5ae

    .line 1427
    .line 1428
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1429
    .line 1430
    .line 1431
    move-result-object v6

    .line 1432
    check-cast v6, Ly5/a;

    .line 1433
    .line 1434
    invoke-virtual {v6}, Ly5/a;->n()Ljava/lang/String;

    .line 1435
    .line 1436
    .line 1437
    move-result-object v7

    .line 1438
    invoke-virtual {v2, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 1439
    .line 1440
    .line 1441
    move-result v7

    .line 1442
    if-nez v7, :cond_58d

    .line 1443
    .line 1444
    invoke-virtual {v4}, Lcom/google/protobuf/w;->c()V

    .line 1445
    .line 1446
    .line 1447
    iget-object v7, v4, Lcom/google/protobuf/w;->c:Lcom/google/protobuf/y;

    .line 1448
    .line 1449
    check-cast v7, Ly5/c;

    .line 1450
    .line 1451
    invoke-static {v7, v6}, Ly5/c;->n(Ly5/c;Ly5/a;)V

    .line 1452
    .line 1453
    .line 1454
    goto :goto_58d

    .line 1455
    :cond_5ae
    invoke-virtual {v4}, Lcom/google/protobuf/w;->a()Lcom/google/protobuf/y;

    .line 1456
    .line 1457
    .line 1458
    move-result-object v2

    .line 1459
    check-cast v2, Ly5/c;

    .line 1460
    .line 1461
    invoke-virtual {v2}, Lcom/google/protobuf/y;->toString()Ljava/lang/String;

    .line 1462
    .line 1463
    .line 1464
    move-result-object v3

    .line 1465
    const-string v4, "New cleared impression list: "

    .line 1466
    .line 1467
    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1468
    .line 1469
    .line 1470
    move-result-object v3

    .line 1471
    invoke-static {v3}, Le3/d;->m(Ljava/lang/String;)V

    .line 1472
    .line 1473
    .line 1474
    iget-object v3, v0, Lf5/o;->a:Lf5/y;

    .line 1475
    .line 1476
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1477
    .line 1478
    .line 1479
    new-instance v4, Lf5/x;

    .line 1480
    .line 1481
    invoke-direct {v4, v5, v3, v2}, Lf5/x;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1482
    .line 1483
    .line 1484
    new-instance v3, Lg8/b;

    .line 1485
    .line 1486
    invoke-direct {v3, v4}, Lg8/b;-><init>(Lf5/x;)V

    .line 1487
    .line 1488
    .line 1489
    new-instance v4, Lf5/f;

    .line 1490
    .line 1491
    const/4 v8, 0x2

    .line 1492
    invoke-direct {v4, v8, v0, v2}, Lf5/f;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1493
    .line 1494
    .line 1495
    sget-object v0, Ld8/b;->d:Lz3/f;

    .line 1496
    .line 1497
    new-instance v2, Lg8/d;

    .line 1498
    .line 1499
    invoke-direct {v2, v3, v0, v4}, Lg8/d;-><init>(Lb1/u;Lb8/b;Lb8/a;)V

    .line 1500
    .line 1501
    .line 1502
    return-object v2

    .line 1503
    :pswitch_data_5de
    .packed-switch 0x1
        :pswitch_565
        :pswitch_a
        :pswitch_42e
        :pswitch_a
        :pswitch_1ee
        :pswitch_141
    .end packed-switch
.end method

.method public apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 1504
    iget-object v0, p0, Lf5/f;->c:Ljava/lang/Object;

    check-cast v0, Lorg/apache/commons/io/function/IOTriFunction;

    iget-object v1, p0, Lf5/f;->d:Ljava/lang/Object;

    check-cast v1, Lorg/apache/commons/io/function/IOFunction;

    invoke-static {v0, v1, p1, p2, p3}, Lorg/apache/commons/io/function/IOTriFunction;->b(Lorg/apache/commons/io/function/IOTriFunction;Lorg/apache/commons/io/function/IOFunction;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12

    .line 1503
    iget-object v0, p0, Lf5/f;->c:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lorg/apache/commons/io/function/IOQuadFunction;

    iget-object v0, p0, Lf5/f;->d:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lorg/apache/commons/io/function/IOFunction;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v1 .. v6}, Lorg/apache/commons/io/function/IOQuadFunction;->g(Lorg/apache/commons/io/function/IOQuadFunction;Lorg/apache/commons/io/function/IOFunction;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c(Landroid/content/Context;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lf5/f;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p1, Ljava/lang/String;

    .line 4
    .line 5
    iget-object v0, p0, Lf5/f;->d:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Ljava/lang/Integer;

    .line 8
    .line 9
    invoke-static {v0, p1}, Lj1/o;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public e(Lk5/b;)V
    .registers 6

    .line 1
    iget v0, p0, Lf5/f;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_4c

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lf5/f;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lk5/a;

    .line 9
    .line 10
    iget-object v1, p0, Lf5/f;->d:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Lk5/a;

    .line 13
    .line 14
    invoke-interface {v0, p1}, Lk5/a;->e(Lk5/b;)V

    .line 15
    .line 16
    .line 17
    invoke-interface {v1, p1}, Lk5/a;->e(Lk5/b;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_14
    iget-object v0, p0, Lf5/f;->c:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v0, Lf5/a0;

    .line 24
    .line 25
    iget-object v1, p0, Lf5/f;->d:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v1, Lp2/e;

    .line 28
    .line 29
    iget-object v2, v0, Lf5/a0;->b:Lf5/a0;

    .line 30
    .line 31
    sget-object v3, Lf5/a0;->c:Ljava/lang/Object;

    .line 32
    .line 33
    if-ne v2, v3, :cond_23

    .line 34
    .line 35
    goto :goto_48

    .line 36
    :cond_23
    invoke-interface {p1}, Lk5/b;->get()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Lf5/b0;

    .line 41
    .line 42
    invoke-virtual {p1, v1}, Lf5/b0;->a(Lp2/e;)Lf5/a0;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iput-object p1, v0, Lf5/a0;->b:Lf5/a0;

    .line 47
    .line 48
    monitor-enter v0

    .line 49
    :try_start_30
    iget-object v1, v0, Lf5/a0;->a:Ljava/util/HashSet;

    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-nez v1, :cond_47

    .line 56
    .line 57
    iget-object v1, v0, Lf5/a0;->a:Ljava/util/HashSet;

    .line 58
    .line 59
    invoke-virtual {p1, v1}, Lf5/a0;->a(Ljava/util/Set;)V

    .line 60
    .line 61
    .line 62
    new-instance p1, Ljava/util/HashSet;

    .line 63
    .line 64
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 65
    .line 66
    .line 67
    iput-object p1, v0, Lf5/a0;->a:Ljava/util/HashSet;

    .line 68
    .line 69
    goto :goto_47

    .line 70
    :catchall_45
    move-exception p1

    .line 71
    goto :goto_49

    .line 72
    :cond_47
    :goto_47
    monitor-exit v0

    .line 73
    :goto_48
    return-void

    .line 74
    :goto_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_30 .. :try_end_4a} :catchall_45

    .line 75
    throw p1

    .line 76
    nop

    .line 77
    :pswitch_data_4c
    .packed-switch 0x7
        :pswitch_14
    .end packed-switch
.end method

.method public execute()Ljava/lang/Object;
    .registers 8

    .line 1
    iget v0, p0, Lf5/f;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_70

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lf5/f;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lj2/i;

    .line 9
    .line 10
    iget-object v1, p0, Lf5/f;->d:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_3c

    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Ljava/util/Map$Entry;

    .line 33
    .line 34
    iget-object v3, v0, Lj2/i;->i:Lk2/c;

    .line 35
    .line 36
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    check-cast v4, Ljava/lang/Integer;

    .line 41
    .line 42
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    int-to-long v4, v4

    .line 47
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Ljava/lang/String;

    .line 52
    .line 53
    check-cast v3, Lk2/h;

    .line 54
    .line 55
    sget-object v6, Lg2/c;->h:Lg2/c;

    .line 56
    .line 57
    invoke-virtual {v3, v4, v5, v6, v2}, Lk2/h;->V(JLg2/c;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    goto :goto_15

    .line 61
    :cond_3c
    const/4 v0, 0x0

    .line 62
    return-object v0

    .line 63
    :pswitch_3e
    iget-object v0, p0, Lf5/f;->c:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v0, Lj2/i;

    .line 66
    .line 67
    iget-object v1, p0, Lf5/f;->d:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v1, Ljava/lang/Iterable;

    .line 70
    .line 71
    iget-object v0, v0, Lj2/i;->c:Lk2/d;

    .line 72
    .line 73
    check-cast v0, Lk2/h;

    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    if-nez v2, :cond_58

    .line 87
    .line 88
    goto :goto_6d

    .line 89
    :cond_58
    invoke-static {v1}, Lk2/h;->d0(Ljava/lang/Iterable;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    const-string v2, "DELETE FROM events WHERE _id in "

    .line 94
    .line 95
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {v0}, Lk2/h;->b()Landroid/database/sqlite/SQLiteDatabase;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 108
    .line 109
    .line 110
    :goto_6d
    const/4 v0, 0x0

    .line 111
    return-object v0

    .line 112
    nop

    .line 113
    :pswitch_data_70
    .packed-switch 0x9
        :pswitch_3e
    .end packed-switch
.end method

.method public get()Ljava/lang/Object;
    .registers 3

    .line 1
    iget v0, p0, Lf5/f;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_54

    .line 4
    .line 5
    .line 6
    :pswitch_5
    iget-object v0, p0, Lf5/f;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lorg/apache/commons/io/function/IOFunction;

    .line 9
    .line 10
    iget-object v1, p0, Lf5/f;->d:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Ljava/util/function/Supplier;

    .line 13
    .line 14
    invoke-static {v0, v1}, Lorg/apache/commons/io/function/IOFunction;->i(Lorg/apache/commons/io/function/IOFunction;Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0

    .line 19
    :pswitch_12
    iget-object v0, p0, Lf5/f;->c:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Lorg/apache/commons/io/function/IOFunction;

    .line 22
    .line 23
    iget-object v1, p0, Lf5/f;->d:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v1, Lorg/apache/commons/io/function/IOSupplier;

    .line 26
    .line 27
    invoke-static {v0, v1}, Lorg/apache/commons/io/function/IOFunction;->k(Lorg/apache/commons/io/function/IOFunction;Lorg/apache/commons/io/function/IOSupplier;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    return-object v0

    .line 32
    :pswitch_1f
    iget-object v0, p0, Lf5/f;->c:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v0, Lorg/apache/commons/io/filefilter/SizeFileFilter;

    .line 35
    .line 36
    iget-object v1, p0, Lf5/f;->d:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v1, Ljava/nio/file/Path;

    .line 39
    .line 40
    invoke-static {v0, v1}, Lorg/apache/commons/io/filefilter/SizeFileFilter;->a(Lorg/apache/commons/io/filefilter/SizeFileFilter;Ljava/nio/file/Path;)Ljava/nio/file/FileVisitResult;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    return-object v0

    .line 45
    :pswitch_2c
    iget-object v0, p0, Lf5/f;->c:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v0, Lorg/apache/commons/io/filefilter/HiddenFileFilter;

    .line 48
    .line 49
    iget-object v1, p0, Lf5/f;->d:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v1, Ljava/nio/file/Path;

    .line 52
    .line 53
    invoke-static {v0, v1}, Lorg/apache/commons/io/filefilter/HiddenFileFilter;->a(Lorg/apache/commons/io/filefilter/HiddenFileFilter;Ljava/nio/file/Path;)Ljava/nio/file/FileVisitResult;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    return-object v0

    .line 58
    :pswitch_39
    iget-object v0, p0, Lf5/f;->c:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v0, Lorg/apache/commons/io/filefilter/EmptyFileFilter;

    .line 61
    .line 62
    iget-object v1, p0, Lf5/f;->d:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v1, Ljava/nio/file/Path;

    .line 65
    .line 66
    invoke-static {v0, v1}, Lorg/apache/commons/io/filefilter/EmptyFileFilter;->a(Lorg/apache/commons/io/filefilter/EmptyFileFilter;Ljava/nio/file/Path;)Ljava/nio/file/FileVisitResult;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    return-object v0

    .line 71
    :pswitch_46
    iget-object v0, p0, Lf5/f;->c:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v0, Lorg/apache/commons/io/filefilter/AgeFileFilter;

    .line 74
    .line 75
    iget-object v1, p0, Lf5/f;->d:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast v1, Ljava/nio/file/Path;

    .line 78
    .line 79
    invoke-static {v0, v1}, Lorg/apache/commons/io/filefilter/AgeFileFilter;->a(Lorg/apache/commons/io/filefilter/AgeFileFilter;Ljava/nio/file/Path;)Ljava/nio/file/FileVisitResult;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    return-object v0

    .line 84
    nop

    .line 85
    :pswitch_data_54
    .packed-switch 0xe
        :pswitch_46
        :pswitch_39
        :pswitch_2c
        :pswitch_1f
        :pswitch_5
        :pswitch_12
    .end packed-switch
.end method

.method public getAsBoolean()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lf5/f;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/io/File;

    .line 4
    .line 5
    iget-object v1, p0, Lf5/f;->d:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ljava/time/chrono/ChronoZonedDateTime;

    .line 8
    .line 9
    invoke-static {v0, v1}, Lorg/apache/commons/io/FileUtils;->t(Ljava/io/File;Ljava/time/chrono/ChronoZonedDateTime;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public run()V
    .registers 3

    .line 1
    iget v0, p0, Lf5/f;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_22

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lf5/f;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lf5/o;

    .line 9
    .line 10
    iget-object v1, p0, Lf5/f;->d:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Ly5/c;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lx7/e;->a(Ljava/lang/Object;)Li8/o;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iput-object v1, v0, Lf5/o;->b:Lx7/e;

    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_17
    iget-object v0, p0, Lf5/f;->c:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v0, Lf5/g;

    .line 27
    .line 28
    iget-object v1, p0, Lf5/f;->d:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v1, Ly5/i;

    .line 31
    .line 32
    iput-object v1, v0, Lf5/g;->d:Ly5/i;

    .line 33
    .line 34
    return-void

    .line 35
    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_17
    .end packed-switch
.end method
