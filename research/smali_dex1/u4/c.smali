.class public final synthetic Lu4/c;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lu4/g;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lu4/f;

.field public final synthetic d:Ljava/lang/Runnable;

.field public final synthetic e:J

.field public final synthetic f:J

.field public final synthetic g:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public synthetic constructor <init>(Lu4/f;Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;I)V
    .registers 9

    .line 1
    iput p8, p0, Lu4/c;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lu4/c;->c:Lu4/f;

    .line 4
    .line 5
    iput-object p2, p0, Lu4/c;->d:Ljava/lang/Runnable;

    .line 6
    .line 7
    iput-wide p3, p0, Lu4/c;->e:J

    .line 8
    .line 9
    iput-wide p5, p0, Lu4/c;->f:J

    .line 10
    .line 11
    iput-object p7, p0, Lu4/c;->g:Ljava/util/concurrent/TimeUnit;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final a(Ln/p;)Ljava/util/concurrent/ScheduledFuture;
    .registers 10

    .line 1
    iget v0, p0, Lu4/c;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_34

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lu4/c;->c:Lu4/f;

    .line 7
    .line 8
    iget-object v1, v0, Lu4/f;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 9
    .line 10
    new-instance v2, Lu4/d;

    .line 11
    .line 12
    const/4 v3, 0x2

    .line 13
    iget-object v4, p0, Lu4/c;->d:Ljava/lang/Runnable;

    .line 14
    .line 15
    invoke-direct {v2, v0, v4, p1, v3}, Lu4/d;-><init>(Lu4/f;Ljava/lang/Runnable;Ln/p;I)V

    .line 16
    .line 17
    .line 18
    iget-wide v3, p0, Lu4/c;->e:J

    .line 19
    .line 20
    iget-wide v5, p0, Lu4/c;->f:J

    .line 21
    .line 22
    iget-object v7, p0, Lu4/c;->g:Ljava/util/concurrent/TimeUnit;

    .line 23
    .line 24
    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    return-object p1

    .line 29
    :pswitch_1c
    iget-object v0, p0, Lu4/c;->c:Lu4/f;

    .line 30
    .line 31
    iget-object v1, v0, Lu4/f;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 32
    .line 33
    new-instance v2, Lu4/d;

    .line 34
    .line 35
    const/4 v3, 0x0

    .line 36
    iget-object v4, p0, Lu4/c;->d:Ljava/lang/Runnable;

    .line 37
    .line 38
    invoke-direct {v2, v0, v4, p1, v3}, Lu4/d;-><init>(Lu4/f;Ljava/lang/Runnable;Ln/p;I)V

    .line 39
    .line 40
    .line 41
    iget-wide v3, p0, Lu4/c;->e:J

    .line 42
    .line 43
    iget-wide v5, p0, Lu4/c;->f:J

    .line 44
    .line 45
    iget-object v7, p0, Lu4/c;->g:Ljava/util/concurrent/TimeUnit;

    .line 46
    .line 47
    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    return-object p1

    .line 52
    nop

    .line 53
    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_1c
    .end packed-switch
.end method
