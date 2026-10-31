.class public final Lt4/n;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lk5/b;


# static fields
.field public static final c:Lorg/apache/commons/net/ftp/a;

.field public static final d:Lt4/d;


# instance fields
.field public a:Lk5/a;

.field public volatile b:Lk5/b;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lorg/apache/commons/net/ftp/a;

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    invoke-direct {v0, v1}, Lorg/apache/commons/net/ftp/a;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lt4/n;->c:Lorg/apache/commons/net/ftp/a;

    .line 8
    .line 9
    new-instance v0, Lt4/d;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-direct {v0, v1}, Lt4/d;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lt4/n;->d:Lt4/d;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/net/ftp/a;Lk5/b;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lt4/n;->a:Lk5/a;

    .line 5
    .line 6
    iput-object p2, p0, Lt4/n;->b:Lk5/b;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lk5/a;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lt4/n;->b:Lk5/b;

    .line 2
    .line 3
    sget-object v1, Lt4/n;->d:Lt4/d;

    .line 4
    .line 5
    if-eq v0, v1, :cond_a

    .line 6
    .line 7
    invoke-interface {p1, v0}, Lk5/a;->e(Lk5/b;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_a
    monitor-enter p0

    .line 12
    :try_start_b
    iget-object v0, p0, Lt4/n;->b:Lk5/b;

    .line 13
    .line 14
    if-eq v0, v1, :cond_11

    .line 15
    .line 16
    move-object v1, v0

    .line 17
    goto :goto_1d

    .line 18
    :cond_11
    iget-object v1, p0, Lt4/n;->a:Lk5/a;

    .line 19
    .line 20
    new-instance v2, Lf5/f;

    .line 21
    .line 22
    const/16 v3, 0x1a

    .line 23
    .line 24
    invoke-direct {v2, v3, v1, p1}, Lf5/f;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iput-object v2, p0, Lt4/n;->a:Lk5/a;

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    :goto_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_b .. :try_end_1e} :catchall_24

    .line 31
    if-eqz v1, :cond_23

    .line 32
    .line 33
    invoke-interface {p1, v0}, Lk5/a;->e(Lk5/b;)V

    .line 34
    .line 35
    .line 36
    :cond_23
    return-void

    .line 37
    :catchall_24
    move-exception p1

    .line 38
    :try_start_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    .line 39
    throw p1
.end method

.method public final get()Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Lt4/n;->b:Lk5/b;

    .line 2
    .line 3
    invoke-interface {v0}, Lk5/b;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
