.class public final synthetic Lj2/f;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ll2/b;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lj2/i;

.field public final synthetic d:Ld2/j;


# direct methods
.method public synthetic constructor <init>(Lj2/i;Ld2/j;I)V
    .registers 4

    .line 1
    iput p3, p0, Lj2/f;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lj2/f;->c:Lj2/i;

    .line 4
    .line 5
    iput-object p2, p0, Lj2/f;->d:Ld2/j;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final execute()Ljava/lang/Object;
    .registers 5

    .line 1
    iget v0, p0, Lj2/f;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_66

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lj2/f;->c:Lj2/i;

    .line 7
    .line 8
    iget-object v0, v0, Lj2/i;->c:Lk2/d;

    .line 9
    .line 10
    check-cast v0, Lk2/h;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    new-instance v1, Lf5/f;

    .line 16
    .line 17
    const/16 v2, 0xb

    .line 18
    .line 19
    iget-object v3, p0, Lj2/f;->d:Ld2/j;

    .line 20
    .line 21
    invoke-direct {v1, v2, v0, v3}, Lf5/f;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lk2/h;->y(Lk2/f;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Ljava/lang/Iterable;

    .line 29
    .line 30
    return-object v0

    .line 31
    :pswitch_1e
    iget-object v0, p0, Lj2/f;->d:Ld2/j;

    .line 32
    .line 33
    iget-object v1, p0, Lj2/f;->c:Lj2/i;

    .line 34
    .line 35
    iget-object v1, v1, Lj2/i;->c:Lk2/d;

    .line 36
    .line 37
    check-cast v1, Lk2/h;

    .line 38
    .line 39
    invoke-virtual {v1}, Lk2/h;->b()Landroid/database/sqlite/SQLiteDatabase;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 44
    .line 45
    .line 46
    :try_start_2d
    invoke-static {v2, v0}, Lk2/h;->c(Landroid/database/sqlite/SQLiteDatabase;Ld2/j;)Ljava/lang/Long;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    if-nez v0, :cond_36

    .line 51
    .line 52
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 53
    .line 54
    goto :goto_54

    .line 55
    :cond_36
    invoke-virtual {v1}, Lk2/h;->b()Landroid/database/sqlite/SQLiteDatabase;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    const-string v3, "SELECT 1 FROM events WHERE context_id = ? LIMIT 1"

    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    filled-new-array {v0}, [Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v1, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 70
    .line 71
    .line 72
    move-result-object v0
    :try_end_48
    .catchall {:try_start_2d .. :try_end_48} :catchall_5b

    .line 73
    :try_start_48
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 78
    .line 79
    .line 80
    move-result-object v1
    :try_end_50
    .catchall {:try_start_48 .. :try_end_50} :catchall_5d

    .line 81
    :try_start_50
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 82
    .line 83
    .line 84
    move-object v0, v1

    .line 85
    :goto_54
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_57
    .catchall {:try_start_50 .. :try_end_57} :catchall_5b

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 89
    .line 90
    .line 91
    return-object v0

    .line 92
    :catchall_5b
    move-exception v0

    .line 93
    goto :goto_62

    .line 94
    :catchall_5d
    move-exception v1

    .line 95
    :try_start_5e
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 96
    .line 97
    .line 98
    throw v1
    :try_end_62
    .catchall {:try_start_5e .. :try_end_62} :catchall_5b

    .line 99
    :goto_62
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 100
    .line 101
    .line 102
    throw v0

    .line 103
    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_1e
    .end packed-switch
.end method
