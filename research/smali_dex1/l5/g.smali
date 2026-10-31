.class public final Ll5/g;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ll5/j;


# instance fields
.field public final a:Ll5/k;

.field public final b:Ln/p;


# direct methods
.method public constructor <init>(Ll5/k;Ln/p;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ll5/g;->a:Ll5/k;

    .line 5
    .line 6
    iput-object p2, p0, Ll5/g;->b:Ln/p;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lm5/b;)Z
    .registers 9

    .line 1
    iget v0, p1, Lm5/b;->b:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    if-ne v0, v1, :cond_2c

    .line 5
    .line 6
    iget-object v0, p0, Ll5/g;->a:Ll5/k;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ll5/k;->a(Lm5/b;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_2c

    .line 13
    .line 14
    iget-object v2, p1, Lm5/b;->c:Ljava/lang/String;

    .line 15
    .line 16
    if-eqz v2, :cond_25

    .line 17
    .line 18
    iget-wide v3, p1, Lm5/b;->e:J

    .line 19
    .line 20
    iget-wide v5, p1, Lm5/b;->f:J

    .line 21
    .line 22
    new-instance v1, Ll5/a;

    .line 23
    .line 24
    invoke-direct/range {v1 .. v6}, Ll5/a;-><init>(Ljava/lang/String;JJ)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Ll5/g;->b:Ln/p;

    .line 28
    .line 29
    iget-object p1, p1, Ln/p;->c:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast p1, Lo7/a;

    .line 32
    .line 33
    invoke-virtual {p1, v1}, Lo7/a;->g(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    const/4 p1, 0x1

    .line 37
    return p1

    .line 38
    :cond_25
    const-string p1, "Null token"

    .line 39
    .line 40
    invoke-static {p1}, Ln0/b;->n(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const/4 p1, 0x0

    .line 44
    return p1

    .line 45
    :cond_2c
    const/4 p1, 0x0

    .line 46
    return p1
.end method

.method public final b(Ljava/lang/Exception;)Z
    .registers 6

    .line 1
    iget-object v0, p0, Ll5/g;->b:Ln/p;

    .line 2
    .line 3
    iget-object v0, v0, Ln/p;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lo7/a;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object v1, v0, Lo7/a;->b:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v1

    .line 13
    :try_start_c
    iget-boolean v2, v0, Lo7/a;->a:Z

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    if-eqz v2, :cond_15

    .line 17
    .line 18
    monitor-exit v1

    .line 19
    return v3

    .line 20
    :catchall_13
    move-exception p1

    .line 21
    goto :goto_22

    .line 22
    :cond_15
    iput-boolean v3, v0, Lo7/a;->a:Z

    .line 23
    .line 24
    iput-object p1, v0, Lo7/a;->e:Ljava/lang/Object;

    .line 25
    .line 26
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_c .. :try_end_1a} :catchall_13

    .line 27
    iget-object p1, v0, Lo7/a;->c:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p1, Lcom/bumptech/glide/manager/t;

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/manager/t;->n(Lo7/a;)V

    .line 32
    .line 33
    .line 34
    return v3

    .line 35
    :goto_22
    :try_start_22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_13

    .line 36
    throw p1
.end method
