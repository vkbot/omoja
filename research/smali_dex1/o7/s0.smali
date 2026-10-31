.class public final Lo7/s0;
.super Lo7/u2;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public e:Z

.field public final f:Ln7/f1;

.field public final g:Lo7/v;

.field public final h:[Ln7/e;


# direct methods
.method public constructor <init>(Ln7/f1;Lo7/v;[Ln7/e;)V
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lo7/u2;-><init>(I)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Ln7/f1;->f()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    xor-int/lit8 v0, v0, 0x1

    .line 10
    .line 11
    const-string v1, "error must not be OK"

    .line 12
    .line 13
    invoke-static {v1, v0}, Lo4/b;->d(Ljava/lang/String;Z)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lo7/s0;->f:Ln7/f1;

    .line 17
    .line 18
    iput-object p2, p0, Lo7/s0;->g:Lo7/v;

    .line 19
    .line 20
    iput-object p3, p0, Lo7/s0;->h:[Ln7/e;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final d(Lo7/w;)V
    .registers 7

    .line 1
    iget-boolean v0, p0, Lo7/s0;->e:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    xor-int/2addr v0, v1

    .line 5
    const-string v2, "already started"

    .line 6
    .line 7
    invoke-static {v0, v2}, Lo4/b;->m(ZLjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iput-boolean v1, p0, Lo7/s0;->e:Z

    .line 11
    .line 12
    iget-object v0, p0, Lo7/s0;->h:[Ln7/e;

    .line 13
    .line 14
    array-length v1, v0

    .line 15
    const/4 v2, 0x0

    .line 16
    :goto_f
    iget-object v3, p0, Lo7/s0;->f:Ln7/f1;

    .line 17
    .line 18
    if-ge v2, v1, :cond_1b

    .line 19
    .line 20
    aget-object v4, v0, v2

    .line 21
    .line 22
    invoke-virtual {v4, v3}, Ln7/e;->B(Ln7/f1;)V

    .line 23
    .line 24
    .line 25
    add-int/lit8 v2, v2, 0x1

    .line 26
    .line 27
    goto :goto_f

    .line 28
    :cond_1b
    new-instance v0, Ln7/v0;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lo7/s0;->g:Lo7/v;

    .line 34
    .line 35
    invoke-interface {p1, v3, v1, v0}, Lo7/w;->b(Ln7/f1;Lo7/v;Ln7/v0;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final e(Li7/i;)V
    .registers 4

    .line 1
    const-string v0, "error"

    .line 2
    .line 3
    iget-object v1, p0, Lo7/s0;->f:Ln7/f1;

    .line 4
    .line 5
    invoke-virtual {p1, v1, v0}, Li7/i;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "progress"

    .line 9
    .line 10
    iget-object v1, p0, Lo7/s0;->g:Lo7/v;

    .line 11
    .line 12
    invoke-virtual {p1, v1, v0}, Li7/i;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
