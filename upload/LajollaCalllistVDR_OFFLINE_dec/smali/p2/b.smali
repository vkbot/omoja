.class public final Lp2/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Lp2/f;
    .locals 9

    invoke-static {}, Lp2/f;->access$getHead$cp()Lp2/f;

    move-result-object v0

    invoke-static {v0}, Ly1/l;->w(Ljava/lang/Object;)V

    invoke-static {v0}, Lp2/f;->access$getNext$p(Lp2/f;)Lp2/f;

    move-result-object v0

    const-class v1, Lp2/f;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    invoke-static {}, Lp2/f;->access$getIDLE_TIMEOUT_MILLIS$cp()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/Object;->wait(J)V

    invoke-static {}, Lp2/f;->access$getHead$cp()Lp2/f;

    move-result-object v0

    invoke-static {v0}, Ly1/l;->w(Ljava/lang/Object;)V

    invoke-static {v0}, Lp2/f;->access$getNext$p(Lp2/f;)Lp2/f;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long/2addr v0, v3

    invoke-static {}, Lp2/f;->access$getIDLE_TIMEOUT_NANOS$cp()J

    move-result-wide v3

    cmp-long v0, v0, v3

    if-ltz v0, :cond_0

    invoke-static {}, Lp2/f;->access$getHead$cp()Lp2/f;

    move-result-object v2

    :cond_0
    return-object v2

    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lp2/f;->access$remainingNanos(Lp2/f;J)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_2

    const-wide/32 v5, 0xf4240

    div-long v7, v3, v5

    mul-long/2addr v5, v7

    sub-long/2addr v3, v5

    long-to-int v0, v3

    invoke-virtual {v1, v7, v8, v0}, Ljava/lang/Object;->wait(JI)V

    return-object v2

    :cond_2
    invoke-static {}, Lp2/f;->access$getHead$cp()Lp2/f;

    move-result-object v1

    invoke-static {v1}, Ly1/l;->w(Ljava/lang/Object;)V

    invoke-static {v0}, Lp2/f;->access$getNext$p(Lp2/f;)Lp2/f;

    move-result-object v3

    invoke-static {v1, v3}, Lp2/f;->access$setNext$p(Lp2/f;Lp2/f;)V

    invoke-static {v0, v2}, Lp2/f;->access$setNext$p(Lp2/f;Lp2/f;)V

    return-object v0
.end method
