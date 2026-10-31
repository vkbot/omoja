.class public final synthetic Landroidx/fragment/app/h;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroidx/fragment/app/FragmentResultListener;
.implements Landroidx/core/os/CancellationSignal$OnCancelListener;
.implements Lt4/c;
.implements Lcom/example/navistart/cores/LCRI;
.implements Lb8/b;
.implements Lk5/a;
.implements Lz3/i;
.implements Ll2/b;
.implements Lokhttp3/EventListener$Factory;
.implements Lcom/example/navistart/cores/PFInter;
.implements Lorg/apache/commons/io/function/IOFunction;
.implements Lorg/apache/commons/io/function/IOSupplier;
.implements Lorg/apache/commons/io/function/IOTriConsumer;
.implements Lp0/d;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .registers 3

    .line 1
    iput p1, p0, Landroidx/fragment/app/h;->b:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/fragment/app/h;->c:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Ld2/h;)Ljava/lang/Object;
    .registers 9

    .line 1
    iget v0, p0, Landroidx/fragment/app/h;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_44

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/fragment/app/h;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingRegistrar;

    .line 9
    .line 10
    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingRegistrar;->a(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingRegistrar;Ld2/h;)Ld5/j;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1

    .line 15
    :pswitch_e
    iget-object v0, p0, Landroidx/fragment/app/h;->c:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Lt4/p;

    .line 18
    .line 19
    new-instance v1, Lc5/d;

    .line 20
    .line 21
    const-class v2, Landroid/content/Context;

    .line 22
    .line 23
    invoke-virtual {p1, v2}, Ld2/h;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Landroid/content/Context;

    .line 28
    .line 29
    const-class v3, Lo4/f;

    .line 30
    .line 31
    invoke-virtual {p1, v3}, Ld2/h;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Lo4/f;

    .line 36
    .line 37
    invoke-virtual {v3}, Lo4/f;->c()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    const-class v4, Lc5/e;

    .line 42
    .line 43
    invoke-static {v4}, Lt4/p;->a(Ljava/lang/Class;)Lt4/p;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-virtual {p1, v4}, Ld2/h;->e(Lt4/p;)Ljava/util/Set;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    const-class v5, Lr5/b;

    .line 52
    .line 53
    invoke-virtual {p1, v5}, Ld2/h;->c(Ljava/lang/Class;)Lk5/b;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    invoke-virtual {p1, v0}, Ld2/h;->h(Lt4/p;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    move-object v6, p1

    .line 62
    check-cast v6, Ljava/util/concurrent/Executor;

    .line 63
    .line 64
    invoke-direct/range {v1 .. v6}, Lc5/d;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;Lk5/b;Ljava/util/concurrent/Executor;)V

    .line 65
    .line 66
    .line 67
    return-object v1

    .line 68
    nop

    :pswitch_data_44
    .packed-switch 0x4
        :pswitch_e
    .end packed-switch
.end method

.method public accept(Ljava/lang/Object;)V
    .registers 7

    .line 1
    iget v0, p0, Landroidx/fragment/app/h;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_c2

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/fragment/app/h;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lf5/m0;

    .line 9
    .line 10
    check-cast p1, Ly5/i;

    .line 11
    .line 12
    iget-object v1, v0, Lf5/m0;->a:Lf5/l0;

    .line 13
    .line 14
    iget-boolean v2, v0, Lf5/m0;->b:Z

    .line 15
    .line 16
    if-nez v2, :cond_4c

    .line 17
    .line 18
    iget-boolean v2, v0, Lf5/m0;->c:Z

    .line 19
    .line 20
    const/4 v3, 0x1

    .line 21
    if-eqz v2, :cond_26

    .line 22
    .line 23
    iget v2, v0, Lf5/m0;->d:I

    .line 24
    .line 25
    add-int/2addr v2, v3

    .line 26
    iput v2, v0, Lf5/m0;->d:I

    .line 27
    .line 28
    const/4 v4, 0x5

    .line 29
    if-lt v2, v4, :cond_26

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    iput-boolean v2, v0, Lf5/m0;->c:Z

    .line 33
    .line 34
    const-string v4, "fresh_install"

    .line 35
    .line 36
    invoke-virtual {v1, v4, v2}, Lf5/l0;->a(Ljava/lang/String;Z)V

    .line 37
    .line 38
    .line 39
    :cond_26
    invoke-virtual {p1}, Ly5/i;->q()Lcom/google/protobuf/a0;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    :cond_2e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_4c

    .line 52
    .line 53
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    check-cast v2, Lx5/c;

    .line 58
    .line 59
    invoke-virtual {v2}, Lx5/c;->q()Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-eqz v2, :cond_2e

    .line 64
    .line 65
    iput-boolean v3, v0, Lf5/m0;->b:Z

    .line 66
    .line 67
    const-string p1, "test_device"

    .line 68
    .line 69
    invoke-virtual {v1, p1, v3}, Lf5/l0;->a(Ljava/lang/String;Z)V

    .line 70
    .line 71
    .line 72
    const-string p1, "Setting this device as a test device"

    .line 73
    .line 74
    invoke-static {p1}, Le3/d;->n(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    :cond_4c
    return-void

    .line 78
    :pswitch_4d
    iget-object v0, p0, Landroidx/fragment/app/h;->c:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast v0, Lf5/b;

    .line 81
    .line 82
    check-cast p1, Ly5/i;

    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    new-instance v1, Ljava/util/HashSet;

    .line 88
    .line 89
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1}, Ly5/i;->q()Lcom/google/protobuf/a0;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    :cond_63
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    if-eqz v2, :cond_9d

    .line 105
    .line 106
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    check-cast v2, Lx5/c;

    .line 111
    .line 112
    invoke-virtual {v2}, Lx5/c;->t()Lcom/google/protobuf/a0;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    :cond_77
    :goto_77
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    if-eqz v3, :cond_63

    .line 125
    .line 126
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    check-cast v3, Ld5/f;

    .line 131
    .line 132
    invoke-virtual {v3}, Ld5/f;->n()Ld5/b;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    invoke-virtual {v4}, Ld5/b;->o()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 141
    .line 142
    .line 143
    move-result v4

    .line 144
    if-nez v4, :cond_77

    .line 145
    .line 146
    invoke-virtual {v3}, Ld5/f;->n()Ld5/b;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    invoke-virtual {v3}, Ld5/b;->o()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    goto :goto_77

    .line 158
    :cond_9d
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    .line 159
    .line 160
    .line 161
    move-result p1

    .line 162
    const/16 v2, 0x32

    .line 163
    .line 164
    if-le p1, v2, :cond_aa

    .line 165
    .line 166
    const-string p1, "Too many contextual triggers defined - limiting to 50"

    .line 167
    .line 168
    invoke-static {p1}, Le3/d;->n(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    :cond_aa
    new-instance p1, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    const-string v2, "Updating contextual triggers for the following analytics events: "

    .line 174
    .line 175
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    invoke-static {p1}, Le3/d;->m(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    iget-object p1, v0, Lf5/b;->c:Lf5/a0;

    .line 189
    .line 190
    invoke-virtual {p1, v1}, Lf5/a0;->a(Ljava/util/Set;)V

    .line 191
    .line 192
    .line 193
    return-void

    .line 194
    nop

    .line 195
    :pswitch_data_c2
    .packed-switch 0x9
        :pswitch_4d
    .end packed-switch
.end method

.method public accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    .line 195
    iget-object v0, p0, Landroidx/fragment/app/h;->c:Ljava/lang/Object;

    check-cast v0, Lorg/apache/commons/io/output/UncheckedFilterOutputStream;

    check-cast p1, [B

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-static {v0, p1, p2, p3}, Lorg/apache/commons/io/output/UncheckedFilterOutputStream;->y(Lorg/apache/commons/io/output/UncheckedFilterOutputStream;[BII)V

    return-void
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/h;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lorg/apache/commons/io/filefilter/MagicNumberFileFilter;

    .line 4
    .line 5
    check-cast p1, Ljava/io/RandomAccessFile;

    .line 6
    .line 7
    invoke-static {v0, p1}, Lorg/apache/commons/io/filefilter/MagicNumberFileFilter;->a(Lorg/apache/commons/io/filefilter/MagicNumberFileFilter;Ljava/io/RandomAccessFile;)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public b(II)V
    .registers 7

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/h;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lp0/j;

    .line 4
    .line 5
    iget-object v1, v0, Lp0/j;->d:Landroid/os/Handler;

    .line 6
    .line 7
    new-instance v2, Lp0/f;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-direct {v2, v0, p1, p2, v3}, Lp0/f;-><init>(Ljava/lang/Object;III)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public create(Lokhttp3/Call;)Lokhttp3/EventListener;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/h;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lokhttp3/EventListener;

    .line 4
    .line 5
    invoke-static {v0, p1}, Lokhttp3/internal/Util;->a(Lokhttp3/EventListener;Lokhttp3/Call;)Lokhttp3/EventListener;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public e(Lk5/b;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/h;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lf5/b0;

    .line 4
    .line 5
    invoke-interface {p1}, Lk5/b;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, v0, Lf5/b0;->a:Ljava/lang/Object;

    .line 10
    .line 11
    return-void
.end method

.method public execute()Ljava/lang/Object;
    .registers 11

    .line 1
    iget v0, p0, Landroidx/fragment/app/h;->b:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    iget-object v4, p0, Landroidx/fragment/app/h;->c:Ljava/lang/Object;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_134

    .line 9
    .line 10
    .line 11
    check-cast v4, Lb1/m;

    .line 12
    .line 13
    iget-object v0, v4, Lb1/m;->d:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Lk2/d;

    .line 16
    .line 17
    check-cast v0, Lk2/h;

    .line 18
    .line 19
    invoke-virtual {v0}, Lk2/h;->b()Landroid/database/sqlite/SQLiteDatabase;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 24
    .line 25
    .line 26
    :try_start_19
    const-string v5, "SELECT distinct t._id, t.backend_name, t.priority, t.extras FROM transport_contexts AS t, events AS e WHERE e.context_id = t._id"

    .line 27
    .line 28
    new-array v6, v3, [Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    new-instance v6, Lj1/i;

    .line 35
    .line 36
    const/16 v7, 0x12

    .line 37
    .line 38
    invoke-direct {v6, v7}, Lj1/i;-><init>(I)V

    .line 39
    .line 40
    .line 41
    invoke-static {v5, v6}, Lk2/h;->e0(Landroid/database/Cursor;Lk2/f;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    check-cast v5, Ljava/util/List;

    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_31
    .catchall {:try_start_19 .. :try_end_31} :catchall_4d

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 51
    .line 52
    .line 53
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    :goto_38
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    if-eqz v5, :cond_4c

    .line 62
    .line 63
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    check-cast v5, Ld2/q;

    .line 68
    .line 69
    iget-object v6, v4, Lb1/m;->e:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v6, La5/h;

    .line 72
    .line 73
    invoke-virtual {v6, v5, v1, v3}, La5/h;->v(Ld2/q;IZ)V

    .line 74
    .line 75
    .line 76
    goto :goto_38

    .line 77
    :cond_4c
    return-object v2

    .line 78
    :catchall_4d
    move-exception v1

    .line 79
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 80
    .line 81
    .line 82
    throw v1

    .line 83
    :pswitch_52
    check-cast v4, Lj2/i;

    .line 84
    .line 85
    iget-object v0, v4, Lj2/i;->i:Lk2/c;

    .line 86
    .line 87
    check-cast v0, Lk2/h;

    .line 88
    .line 89
    invoke-virtual {v0}, Lk2/h;->b()Landroid/database/sqlite/SQLiteDatabase;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 94
    .line 95
    .line 96
    :try_start_5f
    const-string v3, "DELETE FROM log_event_dropped"

    .line 97
    .line 98
    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 103
    .line 104
    .line 105
    new-instance v3, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    const-string v4, "UPDATE global_log_event_state SET last_metrics_upload_ms="

    .line 108
    .line 109
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    iget-object v0, v0, Lk2/h;->c:Lm2/a;

    .line 113
    .line 114
    invoke-interface {v0}, Lm2/a;->d()J

    .line 115
    .line 116
    .line 117
    move-result-wide v4

    .line 118
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_86
    .catchall {:try_start_5f .. :try_end_86} :catchall_8a

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 136
    .line 137
    .line 138
    return-object v2

    .line 139
    :catchall_8a
    move-exception v0

    .line 140
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 141
    .line 142
    .line 143
    throw v0

    .line 144
    :pswitch_8f
    check-cast v4, Lk2/d;

    .line 145
    .line 146
    check-cast v4, Lk2/h;

    .line 147
    .line 148
    iget-object v0, v4, Lk2/h;->c:Lm2/a;

    .line 149
    .line 150
    invoke-interface {v0}, Lm2/a;->d()J

    .line 151
    .line 152
    .line 153
    move-result-wide v5

    .line 154
    iget-object v0, v4, Lk2/h;->e:Lk2/a;

    .line 155
    .line 156
    iget-wide v7, v0, Lk2/a;->d:J

    .line 157
    .line 158
    sub-long/2addr v5, v7

    .line 159
    invoke-virtual {v4}, Lk2/h;->b()Landroid/database/sqlite/SQLiteDatabase;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 164
    .line 165
    .line 166
    :try_start_a5
    const-string v2, "SELECT COUNT(*), transport_name FROM events WHERE timestamp_ms < ? GROUP BY transport_name"

    .line 167
    .line 168
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v5

    .line 172
    filled-new-array {v5}, [Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v5

    .line 176
    invoke-virtual {v0, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 177
    .line 178
    .line 179
    move-result-object v2
    :try_end_b3
    .catchall {:try_start_a5 .. :try_end_b3} :catchall_de

    .line 180
    :goto_b3
    :try_start_b3
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 181
    .line 182
    .line 183
    move-result v6

    .line 184
    if-eqz v6, :cond_c8

    .line 185
    .line 186
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 187
    .line 188
    .line 189
    move-result v6

    .line 190
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v7

    .line 194
    int-to-long v8, v6

    .line 195
    sget-object v6, Lg2/c;->d:Lg2/c;

    .line 196
    .line 197
    invoke-virtual {v4, v8, v9, v6, v7}, Lk2/h;->V(JLg2/c;Ljava/lang/String;)V
    :try_end_c7
    .catchall {:try_start_b3 .. :try_end_c7} :catchall_e0

    .line 198
    .line 199
    .line 200
    goto :goto_b3

    .line 201
    :cond_c8
    :try_start_c8
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 202
    .line 203
    .line 204
    const-string v1, "events"

    .line 205
    .line 206
    const-string v2, "timestamp_ms < ?"

    .line 207
    .line 208
    invoke-virtual {v0, v1, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 209
    .line 210
    .line 211
    move-result v1

    .line 212
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_d6
    .catchall {:try_start_c8 .. :try_end_d6} :catchall_de

    .line 213
    .line 214
    .line 215
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 216
    .line 217
    .line 218
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    return-object v0

    .line 223
    :catchall_de
    move-exception v1

    .line 224
    goto :goto_e5

    .line 225
    :catchall_e0
    move-exception v1

    .line 226
    :try_start_e1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 227
    .line 228
    .line 229
    throw v1
    :try_end_e5
    .catchall {:try_start_e1 .. :try_end_e5} :catchall_de

    .line 230
    :goto_e5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 231
    .line 232
    .line 233
    throw v1

    .line 234
    :pswitch_e9
    check-cast v4, Lk2/c;

    .line 235
    .line 236
    check-cast v4, Lk2/h;

    .line 237
    .line 238
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 239
    .line 240
    .line 241
    sget v0, Lg2/a;->e:I

    .line 242
    .line 243
    new-instance v0, Lb1/m;

    .line 244
    .line 245
    const/4 v1, 0x4

    .line 246
    invoke-direct {v0, v1}, Lb1/m;-><init>(I)V

    .line 247
    .line 248
    .line 249
    iput-object v2, v0, Lb1/m;->c:Ljava/lang/Object;

    .line 250
    .line 251
    new-instance v1, Ljava/util/ArrayList;

    .line 252
    .line 253
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 254
    .line 255
    .line 256
    iput-object v1, v0, Lb1/m;->e:Ljava/lang/Object;

    .line 257
    .line 258
    iput-object v2, v0, Lb1/m;->f:Ljava/lang/Object;

    .line 259
    .line 260
    const-string v1, ""

    .line 261
    .line 262
    iput-object v1, v0, Lb1/m;->d:Ljava/lang/Object;

    .line 263
    .line 264
    new-instance v1, Ljava/util/HashMap;

    .line 265
    .line 266
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 267
    .line 268
    .line 269
    const-string v2, "SELECT log_source, reason, events_dropped_count FROM log_event_dropped"

    .line 270
    .line 271
    invoke-virtual {v4}, Lk2/h;->b()Landroid/database/sqlite/SQLiteDatabase;

    .line 272
    .line 273
    .line 274
    move-result-object v5

    .line 275
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 276
    .line 277
    .line 278
    :try_start_115
    new-array v3, v3, [Ljava/lang/String;

    .line 279
    .line 280
    invoke-virtual {v5, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 281
    .line 282
    .line 283
    move-result-object v2

    .line 284
    new-instance v3, Landroidx/transition/a;

    .line 285
    .line 286
    const/4 v6, 0x3

    .line 287
    invoke-direct {v3, v4, v1, v0, v6}, Landroidx/transition/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 288
    .line 289
    .line 290
    invoke-static {v2, v3}, Lk2/h;->e0(Landroid/database/Cursor;Lk2/f;)Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    check-cast v0, Lg2/a;

    .line 295
    .line 296
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_12a
    .catchall {:try_start_115 .. :try_end_12a} :catchall_12e

    .line 297
    .line 298
    .line 299
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 300
    .line 301
    .line 302
    return-object v0

    .line 303
    :catchall_12e
    move-exception v0

    .line 304
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 305
    .line 306
    .line 307
    throw v0

    .line 308
    nop

    .line 309
    :pswitch_data_134
    .packed-switch 0xd
        :pswitch_e9
        :pswitch_8f
        :pswitch_52
    .end packed-switch
.end method

.method public f(La5/h;)Lb2/b;
    .registers 22

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    iget-object v2, v1, Landroidx/fragment/app/h;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v2, Lb2/c;

    .line 8
    .line 9
    iget-object v3, v0, La5/h;->c:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v3, Ljava/net/URL;

    .line 12
    .line 13
    const-string v4, "CctTransportBackend"

    .line 14
    .line 15
    invoke-static {v4}, Le3/d;->j(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    const/4 v6, 0x4

    .line 20
    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 21
    .line 22
    .line 23
    move-result v7

    .line 24
    if-eqz v7, :cond_26

    .line 25
    .line 26
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v7

    .line 30
    const-string v8, "Making request to: %s"

    .line 31
    .line 32
    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v7

    .line 36
    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    :cond_26
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    check-cast v3, Ljava/net/HttpURLConnection;

    .line 44
    .line 45
    const/16 v5, 0x7530

    .line 46
    .line 47
    invoke-virtual {v3, v5}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 48
    .line 49
    .line 50
    iget v5, v2, Lb2/c;->g:I

    .line 51
    .line 52
    invoke-virtual {v3, v5}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 53
    .line 54
    .line 55
    const/4 v5, 0x1

    .line 56
    invoke-virtual {v3, v5}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 57
    .line 58
    .line 59
    const/4 v5, 0x0

    .line 60
    invoke-virtual {v3, v5}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 61
    .line 62
    .line 63
    const-string v5, "POST"

    .line 64
    .line 65
    invoke-virtual {v3, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const-string v5, "User-Agent"

    .line 69
    .line 70
    const-string v7, "datatransport/3.1.9 android/"

    .line 71
    .line 72
    invoke-virtual {v3, v5, v7}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    const-string v5, "Content-Encoding"

    .line 76
    .line 77
    const-string v7, "gzip"

    .line 78
    .line 79
    invoke-virtual {v3, v5, v7}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    const-string v8, "application/json"

    .line 83
    .line 84
    const-string v9, "Content-Type"

    .line 85
    .line 86
    invoke-virtual {v3, v9, v8}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    const-string v8, "Accept-Encoding"

    .line 90
    .line 91
    invoke-virtual {v3, v8, v7}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    iget-object v8, v0, La5/h;->e:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast v8, Ljava/lang/String;

    .line 97
    .line 98
    if-eqz v8, :cond_68

    .line 99
    .line 100
    const-string v10, "X-Goog-Api-Key"

    .line 101
    .line 102
    invoke-virtual {v3, v10, v8}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    :cond_68
    :try_start_68
    invoke-virtual {v3}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 106
    .line 107
    .line 108
    move-result-object v12
    :try_end_6c
    .catch Ljava/net/ConnectException; {:try_start_68 .. :try_end_6c} :catch_ba
    .catch Ljava/net/UnknownHostException; {:try_start_68 .. :try_end_6c} :catch_b4
    .catch Lx4/b; {:try_start_68 .. :try_end_6c} :catch_b1
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_6c} :catch_ae

    .line 109
    :try_start_6c
    new-instance v13, Ljava/util/zip/GZIPOutputStream;

    .line 110
    .line 111
    invoke-direct {v13, v12}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_71
    .catchall {:try_start_6c .. :try_end_71} :catchall_16c

    .line 112
    .line 113
    .line 114
    :try_start_71
    iget-object v2, v2, Lb2/c;->a:Ln/p;

    .line 115
    .line 116
    iget-object v0, v0, La5/h;->d:Ljava/lang/Object;

    .line 117
    .line 118
    check-cast v0, Lc2/i;

    .line 119
    .line 120
    new-instance v15, Ljava/io/BufferedWriter;

    .line 121
    .line 122
    new-instance v14, Ljava/io/OutputStreamWriter;

    .line 123
    .line 124
    invoke-direct {v14, v13}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 125
    .line 126
    .line 127
    invoke-direct {v15, v14}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 128
    .line 129
    .line 130
    new-instance v14, Lz4/d;

    .line 131
    .line 132
    iget-object v2, v2, Ln/p;->c:Ljava/lang/Object;

    .line 133
    .line 134
    check-cast v2, Lz4/c;

    .line 135
    .line 136
    iget-object v8, v2, Lz4/c;->a:Ljava/util/HashMap;

    .line 137
    .line 138
    iget-object v10, v2, Lz4/c;->b:Ljava/util/HashMap;

    .line 139
    .line 140
    iget-object v11, v2, Lz4/c;->c:La5/e;

    .line 141
    .line 142
    iget-boolean v2, v2, Lz4/c;->d:Z

    .line 143
    .line 144
    move/from16 v19, v2

    .line 145
    .line 146
    move-object/from16 v16, v8

    .line 147
    .line 148
    move-object/from16 v17, v10

    .line 149
    .line 150
    move-object/from16 v18, v11

    .line 151
    .line 152
    invoke-direct/range {v14 .. v19}, Lz4/d;-><init>(Ljava/io/BufferedWriter;Ljava/util/HashMap;Ljava/util/HashMap;La5/e;Z)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v14, v0}, Lz4/d;->e(Ljava/lang/Object;)Lz4/d;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v14}, Lz4/d;->g()V

    .line 159
    .line 160
    .line 161
    iget-object v0, v14, Lz4/d;->b:Landroid/util/JsonWriter;

    .line 162
    .line 163
    invoke-virtual {v0}, Landroid/util/JsonWriter;->flush()V
    :try_end_a5
    .catchall {:try_start_71 .. :try_end_a5} :catchall_171

    .line 164
    .line 165
    .line 166
    :try_start_a5
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V
    :try_end_a8
    .catchall {:try_start_a5 .. :try_end_a8} :catchall_16c

    .line 167
    .line 168
    .line 169
    if-eqz v12, :cond_bc

    .line 170
    .line 171
    :try_start_aa
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V
    :try_end_ad
    .catch Ljava/net/ConnectException; {:try_start_aa .. :try_end_ad} :catch_ba
    .catch Ljava/net/UnknownHostException; {:try_start_aa .. :try_end_ad} :catch_b4
    .catch Lx4/b; {:try_start_aa .. :try_end_ad} :catch_b1
    .catch Ljava/io/IOException; {:try_start_aa .. :try_end_ad} :catch_ae

    .line 172
    .line 173
    .line 174
    goto :goto_bc

    .line 175
    :catch_ae
    move-exception v0

    .line 176
    goto/16 :goto_187

    .line 177
    .line 178
    :catch_b1
    move-exception v0

    .line 179
    goto/16 :goto_187

    .line 180
    .line 181
    :catch_b4
    move-exception v0

    .line 182
    :goto_b5
    const-wide/16 v5, 0x0

    .line 183
    .line 184
    const/4 v7, 0x0

    .line 185
    goto/16 :goto_197

    .line 186
    .line 187
    :catch_ba
    move-exception v0

    .line 188
    goto :goto_b5

    .line 189
    :cond_bc
    :goto_bc
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    invoke-static {v4}, Le3/d;->j(Ljava/lang/String;)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v8

    .line 201
    invoke-static {v8, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 202
    .line 203
    .line 204
    move-result v6

    .line 205
    if-eqz v6, :cond_db

    .line 206
    .line 207
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    const-string v6, "Status Code: %d"

    .line 212
    .line 213
    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v2

    .line 217
    invoke-static {v8, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    .line 219
    .line 220
    :cond_db
    const-string v2, "Content-Type: %s"

    .line 221
    .line 222
    invoke-virtual {v3, v9}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v6

    .line 226
    invoke-static {v6, v4, v2}, Le3/d;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    const-string v2, "Content-Encoding: %s"

    .line 230
    .line 231
    invoke-virtual {v3, v5}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v6

    .line 235
    invoke-static {v6, v4, v2}, Le3/d;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    const/16 v2, 0x12e

    .line 239
    .line 240
    if-eq v0, v2, :cond_159

    .line 241
    .line 242
    const/16 v2, 0x12d

    .line 243
    .line 244
    if-eq v0, v2, :cond_159

    .line 245
    .line 246
    const/16 v2, 0x133

    .line 247
    .line 248
    if-ne v0, v2, :cond_fa

    .line 249
    .line 250
    goto :goto_159

    .line 251
    :cond_fa
    const/16 v2, 0xc8

    .line 252
    .line 253
    if-eq v0, v2, :cond_107

    .line 254
    .line 255
    new-instance v2, Lb2/b;

    .line 256
    .line 257
    const-wide/16 v3, 0x0

    .line 258
    .line 259
    const/4 v5, 0x0

    .line 260
    invoke-direct {v2, v0, v5, v3, v4}, Lb2/b;-><init>(ILjava/net/URL;J)V

    .line 261
    .line 262
    .line 263
    return-object v2

    .line 264
    :cond_107
    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 265
    .line 266
    .line 267
    move-result-object v2

    .line 268
    :try_start_10b
    invoke-virtual {v3, v5}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v3

    .line 272
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 273
    .line 274
    .line 275
    move-result v3

    .line 276
    if-eqz v3, :cond_11b

    .line 277
    .line 278
    new-instance v3, Ljava/util/zip/GZIPInputStream;

    .line 279
    .line 280
    invoke-direct {v3, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_11a
    .catchall {:try_start_10b .. :try_end_11a} :catchall_138

    .line 281
    .line 282
    .line 283
    goto :goto_11c

    .line 284
    :cond_11b
    move-object v3, v2

    .line 285
    :goto_11c
    :try_start_11c
    new-instance v4, Ljava/io/BufferedReader;

    .line 286
    .line 287
    new-instance v5, Ljava/io/InputStreamReader;

    .line 288
    .line 289
    invoke-direct {v5, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 290
    .line 291
    .line 292
    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 293
    .line 294
    .line 295
    invoke-static {v4}, Lc2/n;->a(Ljava/io/BufferedReader;)Lc2/n;

    .line 296
    .line 297
    .line 298
    move-result-object v4

    .line 299
    iget-wide v4, v4, Lc2/n;->a:J

    .line 300
    .line 301
    new-instance v6, Lb2/b;

    .line 302
    .line 303
    const/4 v7, 0x0

    .line 304
    invoke-direct {v6, v0, v7, v4, v5}, Lb2/b;-><init>(ILjava/net/URL;J)V
    :try_end_132
    .catchall {:try_start_11c .. :try_end_132} :catchall_141

    .line 305
    .line 306
    .line 307
    if-eqz v3, :cond_13b

    .line 308
    .line 309
    :try_start_134
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_137
    .catchall {:try_start_134 .. :try_end_137} :catchall_138

    .line 310
    .line 311
    .line 312
    goto :goto_13b

    .line 313
    :catchall_138
    move-exception v0

    .line 314
    move-object v3, v0

    .line 315
    goto :goto_14e

    .line 316
    :cond_13b
    :goto_13b
    if-eqz v2, :cond_140

    .line 317
    .line 318
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 319
    .line 320
    .line 321
    :cond_140
    return-object v6

    .line 322
    :catchall_141
    move-exception v0

    .line 323
    move-object v4, v0

    .line 324
    if-eqz v3, :cond_14d

    .line 325
    .line 326
    :try_start_145
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_148
    .catchall {:try_start_145 .. :try_end_148} :catchall_149

    .line 327
    .line 328
    .line 329
    goto :goto_14d

    .line 330
    :catchall_149
    move-exception v0

    .line 331
    :try_start_14a
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 332
    .line 333
    .line 334
    :cond_14d
    :goto_14d
    throw v4
    :try_end_14e
    .catchall {:try_start_14a .. :try_end_14e} :catchall_138

    .line 335
    :goto_14e
    if-eqz v2, :cond_158

    .line 336
    .line 337
    :try_start_150
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_153
    .catchall {:try_start_150 .. :try_end_153} :catchall_154

    .line 338
    .line 339
    .line 340
    goto :goto_158

    .line 341
    :catchall_154
    move-exception v0

    .line 342
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 343
    .line 344
    .line 345
    :cond_158
    :goto_158
    throw v3

    .line 346
    :cond_159
    :goto_159
    const-string v2, "Location"

    .line 347
    .line 348
    invoke-virtual {v3, v2}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v2

    .line 352
    new-instance v3, Lb2/b;

    .line 353
    .line 354
    new-instance v4, Ljava/net/URL;

    .line 355
    .line 356
    invoke-direct {v4, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    const-wide/16 v5, 0x0

    .line 360
    .line 361
    invoke-direct {v3, v0, v4, v5, v6}, Lb2/b;-><init>(ILjava/net/URL;J)V

    .line 362
    .line 363
    .line 364
    return-object v3

    .line 365
    :catchall_16c
    move-exception v0

    .line 366
    move-object v2, v0

    .line 367
    goto :goto_17c

    .line 368
    :goto_16f
    move-object v2, v0

    .line 369
    goto :goto_173

    .line 370
    :catchall_171
    move-exception v0

    .line 371
    goto :goto_16f

    .line 372
    :goto_173
    :try_start_173
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V
    :try_end_176
    .catchall {:try_start_173 .. :try_end_176} :catchall_177

    .line 373
    .line 374
    .line 375
    goto :goto_17b

    .line 376
    :catchall_177
    move-exception v0

    .line 377
    :try_start_178
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 378
    .line 379
    .line 380
    :goto_17b
    throw v2
    :try_end_17c
    .catchall {:try_start_178 .. :try_end_17c} :catchall_16c

    .line 381
    :goto_17c
    if-eqz v12, :cond_186

    .line 382
    .line 383
    :try_start_17e
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V
    :try_end_181
    .catchall {:try_start_17e .. :try_end_181} :catchall_182

    .line 384
    .line 385
    .line 386
    goto :goto_186

    .line 387
    :catchall_182
    move-exception v0

    .line 388
    :try_start_183
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 389
    .line 390
    .line 391
    :cond_186
    :goto_186
    throw v2
    :try_end_187
    .catch Ljava/net/ConnectException; {:try_start_183 .. :try_end_187} :catch_ba
    .catch Ljava/net/UnknownHostException; {:try_start_183 .. :try_end_187} :catch_b4
    .catch Lx4/b; {:try_start_183 .. :try_end_187} :catch_b1
    .catch Ljava/io/IOException; {:try_start_183 .. :try_end_187} :catch_ae

    .line 392
    :goto_187
    const-string v2, "Couldn\'t encode request, returning with 400"

    .line 393
    .line 394
    invoke-static {v4, v2, v0}, Le3/d;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 395
    .line 396
    .line 397
    new-instance v0, Lb2/b;

    .line 398
    .line 399
    const/16 v2, 0x190

    .line 400
    .line 401
    const-wide/16 v5, 0x0

    .line 402
    .line 403
    const/4 v7, 0x0

    .line 404
    invoke-direct {v0, v2, v7, v5, v6}, Lb2/b;-><init>(ILjava/net/URL;J)V

    .line 405
    .line 406
    .line 407
    goto :goto_1a3

    .line 408
    :goto_197
    const-string v2, "Couldn\'t open connection, returning with 500"

    .line 409
    .line 410
    invoke-static {v4, v2, v0}, Le3/d;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 411
    .line 412
    .line 413
    new-instance v0, Lb2/b;

    .line 414
    .line 415
    const/16 v2, 0x1f4

    .line 416
    .line 417
    invoke-direct {v0, v2, v7, v5, v6}, Lb2/b;-><init>(ILjava/net/URL;J)V

    .line 418
    .line 419
    .line 420
    :goto_1a3
    return-object v0
.end method

.method public get()Ljava/lang/Object;
    .registers 2

    .line 1
    iget v0, p0, Landroidx/fragment/app/h;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_2a

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/fragment/app/h;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lorg/apache/commons/io/input/UncheckedFilterReader$Builder;

    .line 9
    .line 10
    invoke-static {v0}, Lorg/apache/commons/io/input/UncheckedFilterReader$Builder;->b(Lorg/apache/commons/io/input/UncheckedFilterReader$Builder;)Lorg/apache/commons/io/input/UncheckedFilterReader;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0

    .line 15
    :pswitch_e
    iget-object v0, p0, Landroidx/fragment/app/h;->c:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Lorg/apache/commons/io/input/UncheckedFilterInputStream$Builder;

    .line 18
    .line 19
    invoke-static {v0}, Lorg/apache/commons/io/input/UncheckedFilterInputStream$Builder;->b(Lorg/apache/commons/io/input/UncheckedFilterInputStream$Builder;)Lorg/apache/commons/io/input/UncheckedFilterInputStream;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    return-object v0

    .line 24
    :pswitch_17
    iget-object v0, p0, Landroidx/fragment/app/h;->c:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v0, Lorg/apache/commons/io/input/UncheckedBufferedReader$Builder;

    .line 27
    .line 28
    invoke-static {v0}, Lorg/apache/commons/io/input/UncheckedBufferedReader$Builder;->b(Lorg/apache/commons/io/input/UncheckedBufferedReader$Builder;)Lorg/apache/commons/io/input/UncheckedBufferedReader;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    return-object v0

    .line 33
    :pswitch_20
    iget-object v0, p0, Landroidx/fragment/app/h;->c:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v0, Lorg/apache/commons/io/input/SequenceReader;

    .line 36
    .line 37
    invoke-static {v0}, Lorg/apache/commons/io/input/SequenceReader;->b(Lorg/apache/commons/io/input/SequenceReader;)Ljava/io/Reader;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    return-object v0

    .line 42
    nop

    .line 43
    :pswitch_data_2a
    .packed-switch 0x18
        :pswitch_20
        :pswitch_17
        :pswitch_e
    .end packed-switch
.end method

.method public ls(Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/h;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/example/navistart/TestSpaceActivity;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/example/navistart/TestSpaceActivity;->f:Landroid/widget/EditText;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_24

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_23

    .line 34
    .line 35
    goto :goto_24

    .line 36
    :cond_23
    return-void

    .line 37
    :cond_24
    :goto_24
    invoke-static {p1}, Lh0/b;->v(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public onCancel()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/h;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 4
    .line 5
    invoke-static {v0}, Landroidx/fragment/app/SpecialEffectsController$Operation;->a(Landroidx/fragment/app/SpecialEffectsController$Operation;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/h;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 4
    .line 5
    invoke-static {v0, p1, p2}, Landroidx/fragment/app/FragmentKt;->a(Lkotlin/jvm/functions/Function2;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public s(Ljava/lang/String;)V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/h;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lm0/k1;

    .line 4
    .line 5
    iget-object v1, v0, Lm0/k1;->a:Lm0/l1;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    new-instance v2, Lm0/j1;

    .line 12
    .line 13
    const/4 v3, 0x3

    .line 14
    invoke-direct {v2, v0, p1, v3}, Lm0/j1;-><init>(Lm0/k1;Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
