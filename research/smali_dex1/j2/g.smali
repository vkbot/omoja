.class public final synthetic Lj2/g;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ll2/b;
.implements Lu4/g;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:J

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lj2/i;Ljava/lang/Iterable;Ld2/j;J)V
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lj2/g;->b:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lj2/g;->d:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Lj2/g;->e:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p3, p0, Lj2/g;->f:Ljava/lang/Object;

    .line 12
    .line 13
    iput-wide p4, p0, Lj2/g;->c:J

    .line 14
    .line 15
    return-void
.end method

.method public synthetic constructor <init>(Lu4/f;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;I)V
    .registers 7

    .line 16
    iput p6, p0, Lj2/g;->b:I

    iput-object p1, p0, Lj2/g;->d:Ljava/lang/Object;

    iput-object p2, p0, Lj2/g;->e:Ljava/lang/Object;

    iput-wide p3, p0, Lj2/g;->c:J

    iput-object p5, p0, Lj2/g;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ln/p;)Ljava/util/concurrent/ScheduledFuture;
    .registers 8

    .line 1
    iget v0, p0, Lj2/g;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_3a

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lj2/g;->d:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lu4/f;

    .line 9
    .line 10
    iget-object v1, p0, Lj2/g;->e:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Ljava/util/concurrent/Callable;

    .line 13
    .line 14
    iget-object v2, p0, Lj2/g;->f:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v2, Ljava/util/concurrent/TimeUnit;

    .line 17
    .line 18
    iget-object v3, v0, Lu4/f;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 19
    .line 20
    new-instance v4, Lu4/e;

    .line 21
    .line 22
    invoke-direct {v4, v0, v1, p1}, Lu4/e;-><init>(Lu4/f;Ljava/util/concurrent/Callable;Ln/p;)V

    .line 23
    .line 24
    .line 25
    iget-wide v0, p0, Lj2/g;->c:J

    .line 26
    .line 27
    invoke-interface {v3, v4, v0, v1, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    return-object p1

    .line 32
    :pswitch_1f
    iget-object v0, p0, Lj2/g;->d:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v0, Lu4/f;

    .line 35
    .line 36
    iget-object v1, p0, Lj2/g;->e:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v1, Ljava/lang/Runnable;

    .line 39
    .line 40
    iget-object v2, p0, Lj2/g;->f:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v2, Ljava/util/concurrent/TimeUnit;

    .line 43
    .line 44
    iget-object v3, v0, Lu4/f;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 45
    .line 46
    new-instance v4, Lu4/d;

    .line 47
    .line 48
    const/4 v5, 0x1

    .line 49
    invoke-direct {v4, v0, v1, p1, v5}, Lu4/d;-><init>(Lu4/f;Ljava/lang/Runnable;Ln/p;I)V

    .line 50
    .line 51
    .line 52
    iget-wide v0, p0, Lj2/g;->c:J

    .line 53
    .line 54
    invoke-interface {v3, v4, v0, v1, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    return-object p1

    .line 59
    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_1f
    .end packed-switch
.end method

.method public execute()Ljava/lang/Object;
    .registers 11

    .line 1
    iget-object v0, p0, Lj2/g;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lj2/i;

    .line 4
    .line 5
    iget-object v1, p0, Lj2/g;->e:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ljava/lang/Iterable;

    .line 8
    .line 9
    iget-object v2, p0, Lj2/g;->f:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, Ld2/j;

    .line 12
    .line 13
    iget-object v3, v0, Lj2/i;->c:Lk2/d;

    .line 14
    .line 15
    check-cast v3, Lk2/h;

    .line 16
    .line 17
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    const/4 v5, 0x0

    .line 29
    if-nez v4, :cond_1f

    .line 30
    .line 31
    goto :goto_66

    .line 32
    :cond_1f
    invoke-static {v1}, Lk2/h;->d0(Ljava/lang/Iterable;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const-string v4, "UPDATE events SET num_attempts = num_attempts + 1 WHERE _id in "

    .line 37
    .line 38
    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const-string v4, "SELECT COUNT(*), transport_name FROM events WHERE num_attempts >= 16 GROUP BY transport_name"

    .line 43
    .line 44
    invoke-virtual {v3}, Lk2/h;->b()Landroid/database/sqlite/SQLiteDatabase;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 49
    .line 50
    .line 51
    :try_start_32
    invoke-virtual {v6, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v6, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 59
    .line 60
    .line 61
    move-result-object v1
    :try_end_3d
    .catchall {:try_start_32 .. :try_end_3d} :catchall_78

    .line 62
    :goto_3d
    :try_start_3d
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    if-eqz v4, :cond_54

    .line 67
    .line 68
    const/4 v4, 0x0

    .line 69
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    const/4 v7, 0x1

    .line 74
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v7

    .line 78
    int-to-long v8, v4

    .line 79
    sget-object v4, Lg2/c;->g:Lg2/c;

    .line 80
    .line 81
    invoke-virtual {v3, v8, v9, v4, v7}, Lk2/h;->V(JLg2/c;Ljava/lang/String;)V
    :try_end_53
    .catchall {:try_start_3d .. :try_end_53} :catchall_7a

    .line 82
    .line 83
    .line 84
    goto :goto_3d

    .line 85
    :cond_54
    :try_start_54
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 86
    .line 87
    .line 88
    const-string v1, "DELETE FROM events WHERE num_attempts >= 16"

    .line 89
    .line 90
    invoke-virtual {v6, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_63
    .catchall {:try_start_54 .. :try_end_63} :catchall_78

    .line 98
    .line 99
    .line 100
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 101
    .line 102
    .line 103
    :goto_66
    iget-object v0, v0, Lj2/i;->g:Lm2/a;

    .line 104
    .line 105
    invoke-interface {v0}, Lm2/a;->d()J

    .line 106
    .line 107
    .line 108
    move-result-wide v0

    .line 109
    iget-wide v6, p0, Lj2/g;->c:J

    .line 110
    .line 111
    add-long/2addr v0, v6

    .line 112
    new-instance v4, Lorg/apache/commons/io/l;

    .line 113
    .line 114
    invoke-direct {v4, v0, v1, v2}, Lorg/apache/commons/io/l;-><init>(JLd2/j;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v3, v4}, Lk2/h;->y(Lk2/f;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    return-object v5

    .line 121
    :catchall_78
    move-exception v0

    .line 122
    goto :goto_7f

    .line 123
    :catchall_7a
    move-exception v0

    .line 124
    :try_start_7b
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 125
    .line 126
    .line 127
    throw v0
    :try_end_7f
    .catchall {:try_start_7b .. :try_end_7f} :catchall_78

    .line 128
    :goto_7f
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 129
    .line 130
    .line 131
    throw v0
.end method
