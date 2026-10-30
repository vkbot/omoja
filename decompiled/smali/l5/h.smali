.class public final Ll5/h;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ll5/j;


# instance fields
.field public final a:Ln/p;


# direct methods
.method public constructor <init>(Ln/p;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ll5/h;->a:Ln/p;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lm5/b;)Z
    .locals 4

    .line 1
    iget v0, p1, Lm5/b;->b:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v1, 0x4

    .line 8
    if-ne v0, v1, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    const/4 v1, 0x5

    .line 12
    if-ne v0, v1, :cond_3

    .line 13
    .line 14
    :goto_0
    iget-object v0, p0, Ll5/h;->a:Ln/p;

    .line 15
    .line 16
    iget-object p1, p1, Lm5/b;->a:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v0, v0, Ln/p;->c:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Lo7/a;

    .line 21
    .line 22
    iget-object v1, v0, Lo7/a;->b:Ljava/lang/Object;

    .line 23
    .line 24
    monitor-enter v1

    .line 25
    :try_start_0
    iget-boolean v2, v0, Lo7/a;->a:Z

    .line 26
    .line 27
    const/4 v3, 0x1

    .line 28
    if-eqz v2, :cond_2

    .line 29
    .line 30
    monitor-exit v1

    .line 31
    return v3

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    goto :goto_1

    .line 34
    :cond_2
    iput-boolean v3, v0, Lo7/a;->a:Z

    .line 35
    .line 36
    iput-object p1, v0, Lo7/a;->d:Ljava/lang/Object;

    .line 37
    .line 38
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    iget-object p1, v0, Lo7/a;->c:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p1, Lcom/bumptech/glide/manager/t;

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/manager/t;->n(Lo7/a;)V

    .line 44
    .line 45
    .line 46
    return v3

    .line 47
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    throw p1

    .line 49
    :cond_3
    const/4 p1, 0x0

    .line 50
    return p1
.end method

.method public final b(Ljava/lang/Exception;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method
