.class public abstract Lo7/d0;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .registers 3

    .line 1
    iput p1, p0, Lo7/d0;->b:I

    .line 2
    .line 3
    iput-object p2, p0, Lo7/d0;->c:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract b()V
.end method

.method public final run()V
    .registers 4

    .line 1
    iget v0, p0, Lo7/d0;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_36

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lo7/d0;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lp7/c;

    .line 9
    .line 10
    :try_start_9
    iget-object v1, v0, Lp7/c;->j:Ll9/e0;

    .line 11
    .line 12
    if-eqz v1, :cond_13

    .line 13
    .line 14
    invoke-virtual {p0}, Lo7/d0;->a()V

    .line 15
    .line 16
    .line 17
    goto :goto_20

    .line 18
    :catch_11
    move-exception v1

    .line 19
    goto :goto_1b

    .line 20
    :cond_13
    new-instance v1, Ljava/io/IOException;

    .line 21
    .line 22
    const-string v2, "Unable to perform write due to unavailable sink."

    .line 23
    .line 24
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw v1
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1b} :catch_11

    .line 28
    :goto_1b
    iget-object v0, v0, Lp7/c;->e:Lp7/n;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lp7/n;->n(Ljava/lang/Exception;)V

    .line 31
    .line 32
    .line 33
    :goto_20
    return-void

    .line 34
    :pswitch_21
    iget-object v0, p0, Lo7/d0;->c:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v0, Ln7/n;

    .line 37
    .line 38
    invoke-virtual {v0}, Ln7/n;->a()Ln7/n;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    :try_start_29
    invoke-virtual {p0}, Lo7/d0;->b()V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_30

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ln7/n;->c(Ln7/n;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :catchall_30
    move-exception v2

    .line 50
    invoke-virtual {v0, v1}, Ln7/n;->c(Ln7/n;)V

    .line 51
    .line 52
    .line 53
    throw v2

    .line 54
    nop

    .line 55
    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_21
    .end packed-switch
.end method
