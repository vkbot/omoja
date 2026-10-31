.class public final Lv7/e;
.super Ln7/j0;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final o:Lo7/g;


# instance fields
.field public final f:Lv7/c;

.field public final g:Lv7/a;

.field public h:Ln7/k0;

.field public i:Ln7/j0;

.field public j:Ln7/k0;

.field public k:Ln7/j0;

.field public l:Ln7/j;

.field public m:Ln7/h0;

.field public n:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lo7/g;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lo7/g;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lv7/e;->o:Lo7/g;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lv7/a;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lv7/c;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lv7/c;-><init>(Lv7/e;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lv7/e;->f:Lv7/c;

    .line 10
    .line 11
    iput-object v0, p0, Lv7/e;->i:Ln7/j0;

    .line 12
    .line 13
    iput-object v0, p0, Lv7/e;->k:Ln7/j0;

    .line 14
    .line 15
    iput-object p1, p0, Lv7/e;->g:Lv7/a;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final b()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lv7/e;->g()Ln7/j0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ln7/j0;->b()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final c(Ln7/f1;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lv7/e;->g()Ln7/j0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Ln7/j0;->c(Ln7/f1;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final d(Ln7/g0;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lv7/e;->g()Ln7/j0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Ln7/j0;->d(Ln7/g0;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final e()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lv7/e;->g()Ln7/j0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ln7/j0;->e()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final f()V
    .registers 2

    .line 1
    iget-object v0, p0, Lv7/e;->k:Ln7/j0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ln7/j0;->f()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lv7/e;->i:Ln7/j0;

    .line 7
    .line 8
    invoke-virtual {v0}, Ln7/j0;->f()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final g()Ln7/j0;
    .registers 3

    .line 1
    iget-object v0, p0, Lv7/e;->k:Ln7/j0;

    .line 2
    .line 3
    iget-object v1, p0, Lv7/e;->f:Lv7/c;

    .line 4
    .line 5
    if-ne v0, v1, :cond_8

    .line 6
    .line 7
    iget-object v0, p0, Lv7/e;->i:Ln7/j0;

    .line 8
    .line 9
    :cond_8
    return-object v0
.end method

.method public final h()V
    .registers 4

    .line 1
    iget-object v0, p0, Lv7/e;->l:Ln7/j;

    .line 2
    .line 3
    iget-object v1, p0, Lv7/e;->m:Ln7/h0;

    .line 4
    .line 5
    iget-object v2, p0, Lv7/e;->g:Lv7/a;

    .line 6
    .line 7
    invoke-virtual {v2, v0, v1}, Lv7/a;->D(Ln7/j;Ln7/h0;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lv7/e;->i:Ln7/j0;

    .line 11
    .line 12
    invoke-virtual {v0}, Ln7/j0;->f()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lv7/e;->k:Ln7/j0;

    .line 16
    .line 17
    iput-object v0, p0, Lv7/e;->i:Ln7/j0;

    .line 18
    .line 19
    iget-object v0, p0, Lv7/e;->j:Ln7/k0;

    .line 20
    .line 21
    iput-object v0, p0, Lv7/e;->h:Ln7/k0;

    .line 22
    .line 23
    iget-object v0, p0, Lv7/e;->f:Lv7/c;

    .line 24
    .line 25
    iput-object v0, p0, Lv7/e;->k:Ln7/j0;

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lv7/e;->j:Ln7/k0;

    .line 29
    .line 30
    return-void
.end method

.method public final i(Ln7/k0;)V
    .registers 4

    .line 1
    const-string v0, "newBalancerFactory"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lo4/b;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lv7/e;->j:Ln7/k0;

    .line 7
    .line 8
    if-ne p1, v0, :cond_a

    .line 9
    .line 10
    return-void

    .line 11
    :cond_a
    iget-object v0, p0, Lv7/e;->k:Ln7/j0;

    .line 12
    .line 13
    invoke-virtual {v0}, Ln7/j0;->f()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lv7/e;->f:Lv7/c;

    .line 17
    .line 18
    iput-object v0, p0, Lv7/e;->k:Ln7/j0;

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lv7/e;->j:Ln7/k0;

    .line 22
    .line 23
    sget-object v0, Ln7/j;->b:Ln7/j;

    .line 24
    .line 25
    iput-object v0, p0, Lv7/e;->l:Ln7/j;

    .line 26
    .line 27
    sget-object v0, Lv7/e;->o:Lo7/g;

    .line 28
    .line 29
    iput-object v0, p0, Lv7/e;->m:Ln7/h0;

    .line 30
    .line 31
    iget-object v0, p0, Lv7/e;->h:Ln7/k0;

    .line 32
    .line 33
    if-ne p1, v0, :cond_23

    .line 34
    .line 35
    return-void

    .line 36
    :cond_23
    new-instance v0, Lv7/d;

    .line 37
    .line 38
    invoke-direct {v0, p0}, Lv7/d;-><init>(Lv7/e;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v0}, Ln7/k0;->b(Ln7/e;)Ln7/j0;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    iput-object v1, v0, Lv7/d;->c:Ljava/lang/Object;

    .line 46
    .line 47
    iput-object v1, p0, Lv7/e;->k:Ln7/j0;

    .line 48
    .line 49
    iput-object p1, p0, Lv7/e;->j:Ln7/k0;

    .line 50
    .line 51
    iget-boolean p1, p0, Lv7/e;->n:Z

    .line 52
    .line 53
    if-nez p1, :cond_39

    .line 54
    .line 55
    invoke-virtual {p0}, Lv7/e;->h()V

    .line 56
    .line 57
    .line 58
    :cond_39
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 1
    invoke-static {p0}, Lcom/bumptech/glide/c;->t(Ljava/lang/Object;)Lcom/bumptech/glide/manager/s;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "delegate"

    .line 6
    .line 7
    invoke-virtual {p0}, Lv7/e;->g()Ln7/j0;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v0, v2, v1}, Lcom/bumptech/glide/manager/s;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/bumptech/glide/manager/s;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method
