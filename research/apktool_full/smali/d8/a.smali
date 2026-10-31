.class public final Ld8/a;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/util/concurrent/Callable;
.implements Lb8/c;


# instance fields
.field public final synthetic b:I

.field public final c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Ld8/a;->b:I

    .line 2
    .line 3
    iput-object p2, p0, Ld8/a;->c:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p1, p0, Ld8/a;->c:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method public final call()Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Ld8/a;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ld8/a;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lf/c;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Ld8/a;->c:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v1, Lf/c;

    .line 14
    .line 15
    iget-object v2, v1, Lf/c;->j:Ljava/io/BufferedWriter;

    .line 16
    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    monitor-exit v0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    invoke-virtual {v1}, Lf/c;->k0()V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Ld8/a;->c:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v1, Lf/c;

    .line 29
    .line 30
    invoke-virtual {v1}, Lf/c;->d0()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    iget-object v1, p0, Ld8/a;->c:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v1, Lf/c;

    .line 39
    .line 40
    invoke-virtual {v1}, Lf/c;->i0()V

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Ld8/a;->c:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v1, Lf/c;

    .line 46
    .line 47
    const/4 v2, 0x0

    .line 48
    iput v2, v1, Lf/c;->l:I

    .line 49
    .line 50
    :cond_1
    monitor-exit v0

    .line 51
    :goto_0
    const/4 v0, 0x0

    .line 52
    return-object v0

    .line 53
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    throw v1

    .line 55
    :pswitch_0
    iget-object v0, p0, Ld8/a;->c:Ljava/lang/Object;

    .line 56
    .line 57
    return-object v0

    .line 58
    nop

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
