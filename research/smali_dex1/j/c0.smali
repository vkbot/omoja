.class public final Lj/c0;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lj/d0;
.implements Ld0/e;


# static fields
.field public static final f:Ld0/d;


# instance fields
.field public final b:Ld0/h;

.field public c:Lj/d0;

.field public d:Z

.field public e:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lz3/f;

    .line 2
    .line 3
    const/16 v1, 0xb

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lz3/f;-><init>(I)V

    .line 6
    .line 7
    .line 8
    const/16 v1, 0x14

    .line 9
    .line 10
    invoke-static {v1, v0}, Ld0/g;->a(ILd0/c;)Ld0/d;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lj/c0;->f:Ld0/d;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ld0/h;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lj/c0;->b:Ld0/h;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lj/c0;->b:Ld0/h;

    .line 3
    .line 4
    invoke-virtual {v0}, Ld0/h;->a()V

    .line 5
    .line 6
    .line 7
    iget-boolean v0, p0, Lj/c0;->d:Z

    .line 8
    .line 9
    if-eqz v0, :cond_19

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lj/c0;->d:Z

    .line 13
    .line 14
    iget-boolean v0, p0, Lj/c0;->e:Z

    .line 15
    .line 16
    if-eqz v0, :cond_17

    .line 17
    .line 18
    invoke-virtual {p0}, Lj/c0;->recycle()V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_15

    .line 19
    .line 20
    .line 21
    goto :goto_17

    .line 22
    :catchall_15
    move-exception v0

    .line 23
    goto :goto_21

    .line 24
    :cond_17
    :goto_17
    monitor-exit p0

    .line 25
    return-void

    .line 26
    :cond_19
    :try_start_19
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 27
    .line 28
    const-string v1, "Already unlocked"

    .line 29
    .line 30
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw v0

    .line 34
    :goto_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_19 .. :try_end_22} :catchall_15

    .line 35
    throw v0
.end method

.method public final b()I
    .registers 2

    .line 1
    iget-object v0, p0, Lj/c0;->c:Lj/d0;

    .line 2
    .line 3
    invoke-interface {v0}, Lj/d0;->b()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final c()Ld0/h;
    .registers 2

    .line 1
    iget-object v0, p0, Lj/c0;->b:Ld0/h;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d()Ljava/lang/Class;
    .registers 2

    .line 1
    iget-object v0, p0, Lj/c0;->c:Lj/d0;

    .line 2
    .line 3
    invoke-interface {v0}, Lj/d0;->d()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final get()Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Lj/c0;->c:Lj/d0;

    .line 2
    .line 3
    invoke-interface {v0}, Lj/d0;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final declared-synchronized recycle()V
    .registers 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lj/c0;->b:Ld0/h;

    .line 3
    .line 4
    invoke-virtual {v0}, Ld0/h;->a()V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lj/c0;->e:Z

    .line 9
    .line 10
    iget-boolean v0, p0, Lj/c0;->d:Z

    .line 11
    .line 12
    if-nez v0, :cond_1d

    .line 13
    .line 14
    iget-object v0, p0, Lj/c0;->c:Lj/d0;

    .line 15
    .line 16
    invoke-interface {v0}, Lj/d0;->recycle()V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lj/c0;->c:Lj/d0;

    .line 21
    .line 22
    sget-object v0, Lj/c0;->f:Ld0/d;

    .line 23
    .line 24
    invoke-virtual {v0, p0}, Ld0/d;->release(Ljava/lang/Object;)Z
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1b

    .line 25
    .line 26
    .line 27
    goto :goto_1d

    .line 28
    :catchall_1b
    move-exception v0

    .line 29
    goto :goto_1f

    .line 30
    :cond_1d
    :goto_1d
    monitor-exit p0

    .line 31
    return-void

    .line 32
    :goto_1f
    :try_start_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1b

    .line 33
    throw v0
.end method
