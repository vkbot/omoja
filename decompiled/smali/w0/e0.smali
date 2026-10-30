.class public final synthetic Lw0/e0;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lw0/l0;


# direct methods
.method public synthetic constructor <init>(Lw0/l0;I)V
    .locals 0

    .line 1
    iput p2, p0, Lw0/e0;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lw0/e0;->c:Lw0/l0;

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
    .locals 2

    .line 1
    iget v0, p0, Lw0/e0;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lw0/e0;->c:Lw0/l0;

    .line 7
    .line 8
    iget-object v1, v0, Lw0/l0;->n:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Lw0/l0;->j0()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0}, Lw0/l0;->c0()V

    .line 23
    .line 24
    .line 25
    iget-object v1, v0, Lw0/l0;->f:Lw0/n0;

    .line 26
    .line 27
    invoke-virtual {v1}, Lw0/n0;->c()V

    .line 28
    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    iput-boolean v1, v0, Lw0/l0;->i:Z

    .line 32
    .line 33
    :cond_0
    invoke-virtual {v0}, Lw0/l0;->S()V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :pswitch_0
    iget-object v0, p0, Lw0/e0;->c:Lw0/l0;

    .line 38
    .line 39
    const/4 v1, -0x1

    .line 40
    iput v1, v0, Lw0/l0;->q:I

    .line 41
    .line 42
    iget-object v0, v0, Lw0/l0;->f:Lw0/n0;

    .line 43
    .line 44
    invoke-virtual {v0}, Lw0/n0;->c()V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :pswitch_1
    iget-object v0, p0, Lw0/e0;->c:Lw0/l0;

    .line 49
    .line 50
    invoke-virtual {v0}, Lw0/l0;->c0()V

    .line 51
    .line 52
    .line 53
    iget-object v0, v0, Lw0/l0;->d:Ljava/util/concurrent/ScheduledExecutorService;

    .line 54
    .line 55
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
