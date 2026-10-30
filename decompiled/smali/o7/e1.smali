.class public final Lo7/e1;
.super Lk/a;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Ln7/z;


# direct methods
.method public synthetic constructor <init>(Ln7/z;I)V
    .locals 0

    .line 1
    iput p2, p0, Lo7/e1;->c:I

    .line 2
    .line 3
    iput-object p1, p0, Lo7/e1;->d:Ln7/z;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1}, Lk/a;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget v0, p0, Lo7/e1;->c:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lo7/e1;->d:Ln7/z;

    .line 7
    .line 8
    check-cast v0, Lp7/n;

    .line 9
    .line 10
    iget-object v0, v0, Lp7/n;->h:Lcom/bumptech/glide/manager/t;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/manager/t;->j(Z)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_0
    iget-object v0, p0, Lo7/e1;->d:Ln7/z;

    .line 18
    .line 19
    check-cast v0, Lo7/f2;

    .line 20
    .line 21
    invoke-virtual {v0}, Lo7/f2;->h()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :pswitch_1
    iget-object v0, p0, Lo7/e1;->d:Ln7/z;

    .line 26
    .line 27
    check-cast v0, Lo7/k1;

    .line 28
    .line 29
    iget-object v1, v0, Lo7/k1;->d:Lo7/w4;

    .line 30
    .line 31
    iget-object v1, v1, Lo7/w4;->d:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v1, Lo7/e2;

    .line 34
    .line 35
    iget-object v1, v1, Lo7/e2;->m:Lo7/f2;

    .line 36
    .line 37
    iget-object v1, v1, Lo7/f2;->Y:Lo7/e1;

    .line 38
    .line 39
    const/4 v2, 0x1

    .line 40
    invoke-virtual {v1, v0, v2}, Lk/a;->d(Ljava/lang/Object;Z)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    nop

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b()V
    .locals 3

    .line 1
    iget v0, p0, Lo7/e1;->c:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lo7/e1;->d:Ln7/z;

    .line 7
    .line 8
    check-cast v0, Lp7/n;

    .line 9
    .line 10
    iget-object v0, v0, Lp7/n;->h:Lcom/bumptech/glide/manager/t;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/manager/t;->j(Z)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_0
    iget-object v0, p0, Lo7/e1;->d:Ln7/z;

    .line 18
    .line 19
    check-cast v0, Lo7/f2;

    .line 20
    .line 21
    iget-object v1, v0, Lo7/f2;->G:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {v0}, Lo7/f2;->j()V

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void

    .line 34
    :pswitch_1
    iget-object v0, p0, Lo7/e1;->d:Ln7/z;

    .line 35
    .line 36
    check-cast v0, Lo7/k1;

    .line 37
    .line 38
    iget-object v1, v0, Lo7/k1;->d:Lo7/w4;

    .line 39
    .line 40
    iget-object v1, v1, Lo7/w4;->d:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v1, Lo7/e2;

    .line 43
    .line 44
    iget-object v1, v1, Lo7/e2;->m:Lo7/f2;

    .line 45
    .line 46
    iget-object v1, v1, Lo7/f2;->Y:Lo7/e1;

    .line 47
    .line 48
    const/4 v2, 0x0

    .line 49
    invoke-virtual {v1, v0, v2}, Lk/a;->d(Ljava/lang/Object;Z)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
