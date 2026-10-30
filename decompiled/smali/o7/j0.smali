.class public final Lo7/j0;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ln/p;


# direct methods
.method public synthetic constructor <init>(Ln/p;I)V
    .locals 0

    .line 1
    iput p2, p0, Lo7/j0;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lo7/j0;->c:Ln/p;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lo7/j0;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lo7/j0;->c:Ln/p;

    .line 7
    .line 8
    iget-object v0, v0, Ln/p;->c:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lo7/f2;

    .line 11
    .line 12
    iget-object v1, v0, Lo7/f2;->G:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const-string v2, "Channel must have been shut down"

    .line 19
    .line 20
    invoke-static {v1, v2}, Lo4/b;->m(ZLjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    iput-boolean v1, v0, Lo7/f2;->H:Z

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-virtual {v0, v1}, Lo7/f2;->k(Z)V

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Lo7/f2;->g(Lo7/f2;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :pswitch_0
    iget-object v0, p0, Lo7/j0;->c:Ln/p;

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-virtual {v0, v1}, Ln/p;->k(Z)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :pswitch_1
    iget-object v0, p0, Lo7/j0;->c:Ln/p;

    .line 42
    .line 43
    const/4 v1, 0x1

    .line 44
    invoke-virtual {v0, v1}, Ln/p;->k(Z)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    nop

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
