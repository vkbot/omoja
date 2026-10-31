.class public final Lo7/y1;
.super Ln7/e;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public b:Lb1/m;

.field public final synthetic c:Lo7/f2;


# direct methods
.method public constructor <init>(Lo7/f2;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lo7/y1;->c:Lo7/f2;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final D(Ln7/j;Ln7/h0;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lo7/y1;->c:Lo7/f2;

    .line 2
    .line 3
    iget-object v0, v0, Lo7/f2;->m:Ln7/k1;

    .line 4
    .line 5
    invoke-virtual {v0}, Ln7/k1;->d()V

    .line 6
    .line 7
    .line 8
    const-string v1, "newState"

    .line 9
    .line 10
    invoke-static {p1, v1}, Lo4/b;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v1, "newPicker"

    .line 14
    .line 15
    invoke-static {p2, v1}, Lo4/b;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    new-instance v1, Lc3/e;

    .line 19
    .line 20
    const/4 v2, 0x4

    .line 21
    invoke-direct {v1, p0, p2, p1, v2}, Lc3/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ln7/k1;->execute(Ljava/lang/Runnable;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final b(Ln7/e0;)Ln7/t;
    .registers 5

    .line 1
    iget-object v0, p0, Lo7/y1;->c:Lo7/f2;

    .line 2
    .line 3
    iget-object v1, v0, Lo7/f2;->m:Ln7/k1;

    .line 4
    .line 5
    invoke-virtual {v1}, Ln7/k1;->d()V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, v0, Lo7/f2;->H:Z

    .line 9
    .line 10
    xor-int/lit8 v1, v1, 0x1

    .line 11
    .line 12
    const-string v2, "Channel is being terminated"

    .line 13
    .line 14
    invoke-static {v1, v2}, Lo4/b;->m(ZLjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    new-instance v1, Lo7/e2;

    .line 18
    .line 19
    invoke-direct {v1, v0, p1}, Lo7/e2;-><init>(Lo7/f2;Ln7/e0;)V

    .line 20
    .line 21
    .line 22
    return-object v1
.end method

.method public final c()Ln7/e;
    .registers 2

    .line 1
    iget-object v0, p0, Lo7/y1;->c:Lo7/f2;

    .line 2
    .line 3
    iget-object v0, v0, Lo7/f2;->N:Lo7/m;

    .line 4
    .line 5
    return-object v0
.end method

.method public final d()Ljava/util/concurrent/ScheduledExecutorService;
    .registers 2

    .line 1
    iget-object v0, p0, Lo7/y1;->c:Lo7/f2;

    .line 2
    .line 3
    iget-object v0, v0, Lo7/f2;->g:Lo7/d2;

    .line 4
    .line 5
    return-object v0
.end method

.method public final f()Ln7/k1;
    .registers 2

    .line 1
    iget-object v0, p0, Lo7/y1;->c:Lo7/f2;

    .line 2
    .line 3
    iget-object v0, v0, Lo7/f2;->m:Ln7/k1;

    .line 4
    .line 5
    return-object v0
.end method

.method public final y()V
    .registers 4

    .line 1
    iget-object v0, p0, Lo7/y1;->c:Lo7/f2;

    .line 2
    .line 3
    iget-object v0, v0, Lo7/f2;->m:Ln7/k1;

    .line 4
    .line 5
    invoke-virtual {v0}, Ln7/k1;->d()V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lcom/bumptech/glide/m;

    .line 9
    .line 10
    const/16 v2, 0xf

    .line 11
    .line 12
    invoke-direct {v1, v2, p0}, Lcom/bumptech/glide/m;-><init>(ILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ln7/k1;->execute(Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
