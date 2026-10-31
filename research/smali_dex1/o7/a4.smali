.class public final Lo7/a4;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lo7/c4;

.field public final synthetic d:Lo7/w4;


# direct methods
.method public synthetic constructor <init>(Lo7/w4;Lo7/c4;I)V
    .registers 4

    .line 1
    iput p3, p0, Lo7/a4;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lo7/a4;->d:Lo7/w4;

    .line 4
    .line 5
    iput-object p2, p0, Lo7/a4;->c:Lo7/c4;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 1
    iget v0, p0, Lo7/a4;->b:I

    .line 2
    .line 3
    iget-object v1, p0, Lo7/a4;->d:Lo7/w4;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_24

    .line 6
    .line 7
    .line 8
    iget-object v0, v1, Lo7/w4;->d:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lo7/v1;

    .line 11
    .line 12
    sget-object v1, Lo7/v1;->F:Ln7/q0;

    .line 13
    .line 14
    iget-object v1, p0, Lo7/a4;->c:Lo7/c4;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lo7/v1;->p(Lo7/c4;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_13
    iget-object v0, v1, Lo7/w4;->d:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, Lo7/v1;

    .line 23
    .line 24
    iget-object v0, v0, Lo7/v1;->c:Ljava/util/concurrent/Executor;

    .line 25
    .line 26
    new-instance v1, Lcom/bumptech/glide/m;

    .line 27
    .line 28
    const/16 v2, 0x15

    .line 29
    .line 30
    invoke-direct {v1, v2, p0}, Lcom/bumptech/glide/m;-><init>(ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_13
    .end packed-switch
.end method
