.class public final Lo7/m3;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lo7/n3;


# direct methods
.method public synthetic constructor <init>(Lo7/n3;I)V
    .registers 3

    .line 1
    iput p2, p0, Lo7/m3;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lo7/m3;->c:Lo7/n3;

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
    .registers 8

    .line 1
    iget v0, p0, Lo7/m3;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_48

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lo7/m3;->c:Lo7/n3;

    .line 7
    .line 8
    iget-object v1, v0, Lo7/n3;->b:Ln7/k1;

    .line 9
    .line 10
    new-instance v2, Lo7/m3;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-direct {v2, v0, v3}, Lo7/m3;-><init>(Lo7/n3;I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ln7/k1;->execute(Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_13
    iget-object v0, p0, Lo7/m3;->c:Lo7/n3;

    .line 21
    .line 22
    iget-boolean v1, v0, Lo7/n3;->f:Z

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    if-nez v1, :cond_1d

    .line 26
    .line 27
    iput-object v2, v0, Lo7/n3;->g:Ljava/util/concurrent/ScheduledFuture;

    .line 28
    .line 29
    goto :goto_47

    .line 30
    :cond_1d
    iget-object v1, v0, Lo7/n3;->d:Li4/f;

    .line 31
    .line 32
    invoke-virtual {v1}, Li4/f;->a()J

    .line 33
    .line 34
    .line 35
    move-result-wide v3

    .line 36
    iget-wide v5, v0, Lo7/n3;->e:J

    .line 37
    .line 38
    sub-long/2addr v5, v3

    .line 39
    const-wide/16 v3, 0x0

    .line 40
    .line 41
    cmp-long v1, v5, v3

    .line 42
    .line 43
    if-lez v1, :cond_3d

    .line 44
    .line 45
    iget-object v1, v0, Lo7/n3;->a:Ljava/util/concurrent/ScheduledExecutorService;

    .line 46
    .line 47
    new-instance v2, Lo7/m3;

    .line 48
    .line 49
    const/4 v3, 0x1

    .line 50
    invoke-direct {v2, v0, v3}, Lo7/m3;-><init>(Lo7/n3;I)V

    .line 51
    .line 52
    .line 53
    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 54
    .line 55
    invoke-interface {v1, v2, v5, v6, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    iput-object v1, v0, Lo7/n3;->g:Ljava/util/concurrent/ScheduledFuture;

    .line 60
    .line 61
    goto :goto_47

    .line 62
    :cond_3d
    const/4 v1, 0x0

    .line 63
    iput-boolean v1, v0, Lo7/n3;->f:Z

    .line 64
    .line 65
    iput-object v2, v0, Lo7/n3;->g:Ljava/util/concurrent/ScheduledFuture;

    .line 66
    .line 67
    iget-object v0, v0, Lo7/n3;->c:Lcom/bumptech/glide/m;

    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/bumptech/glide/m;->run()V

    .line 70
    .line 71
    .line 72
    :goto_47
    return-void

    .line 73
    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_13
    .end packed-switch
.end method
