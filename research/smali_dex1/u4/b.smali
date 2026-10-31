.class public final synthetic Lu4/b;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Runnable;

.field public final synthetic d:Ln/p;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;Ln/p;I)V
    .registers 4

    .line 1
    iput p3, p0, Lu4/b;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lu4/b;->c:Ljava/lang/Runnable;

    .line 4
    .line 5
    iput-object p2, p0, Lu4/b;->d:Ln/p;

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
    .registers 3

    .line 1
    iget v0, p0, Lu4/b;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_3c

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lu4/b;->c:Ljava/lang/Runnable;

    .line 7
    .line 8
    iget-object v1, p0, Lu4/b;->d:Ln/p;

    .line 9
    .line 10
    iget-object v1, v1, Ln/p;->c:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Lu4/h;

    .line 13
    .line 14
    :try_start_d
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-virtual {v1, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->set(Ljava/lang/Object;)Z
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_14} :catch_15

    .line 19
    .line 20
    .line 21
    goto :goto_19

    .line 22
    :catch_15
    move-exception v0

    .line 23
    invoke-virtual {v1, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 24
    .line 25
    .line 26
    :goto_19
    return-void

    .line 27
    :pswitch_1a
    iget-object v0, p0, Lu4/b;->c:Ljava/lang/Runnable;

    .line 28
    .line 29
    :try_start_1c
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1f} :catch_20

    .line 30
    .line 31
    .line 32
    goto :goto_2a

    .line 33
    :catch_20
    move-exception v0

    .line 34
    iget-object v1, p0, Lu4/b;->d:Ln/p;

    .line 35
    .line 36
    iget-object v1, v1, Ln/p;->c:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v1, Lu4/h;

    .line 39
    .line 40
    invoke-virtual {v1, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 41
    .line 42
    .line 43
    :goto_2a
    return-void

    .line 44
    :pswitch_2b
    iget-object v0, p0, Lu4/b;->c:Ljava/lang/Runnable;

    .line 45
    .line 46
    :try_start_2d
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_30} :catch_31

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :catch_31
    move-exception v0

    .line 51
    iget-object v1, p0, Lu4/b;->d:Ln/p;

    .line 52
    .line 53
    iget-object v1, v1, Ln/p;->c:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v1, Lu4/h;

    .line 56
    .line 57
    invoke-virtual {v1, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 58
    .line 59
    .line 60
    throw v0

    .line 61
    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_1a
    .end packed-switch
.end method
