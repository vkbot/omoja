.class public final Lo7/j;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final e:Ljava/util/logging/Logger;


# instance fields
.field public final a:Ljava/util/concurrent/ScheduledExecutorService;

.field public final b:Ln7/k1;

.field public c:Lo7/r0;

.field public d:Ll/d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    const-class v0, Lo7/j;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lo7/j;->e:Ljava/util/logging/Logger;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Lo7/u2;Lo7/d2;Ln7/k1;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lo7/j;->a:Ljava/util/concurrent/ScheduledExecutorService;

    .line 5
    .line 6
    iput-object p3, p0, Lo7/j;->b:Ln7/k1;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lcom/bumptech/glide/m;)V
    .registers 9

    .line 1
    iget-object v0, p0, Lo7/j;->b:Ln7/k1;

    .line 2
    .line 3
    invoke-virtual {v0}, Ln7/k1;->d()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lo7/j;->c:Lo7/r0;

    .line 7
    .line 8
    if-nez v0, :cond_f

    .line 9
    .line 10
    invoke-static {}, Lo7/u2;->s()Lo7/r0;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lo7/j;->c:Lo7/r0;

    .line 15
    .line 16
    :cond_f
    iget-object v0, p0, Lo7/j;->d:Ll/d;

    .line 17
    .line 18
    if-eqz v0, :cond_20

    .line 19
    .line 20
    iget-object v0, v0, Ll/d;->c:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, Ln7/j1;

    .line 23
    .line 24
    iget-boolean v1, v0, Ln7/j1;->d:Z

    .line 25
    .line 26
    if-nez v1, :cond_20

    .line 27
    .line 28
    iget-boolean v0, v0, Ln7/j1;->c:Z

    .line 29
    .line 30
    if-nez v0, :cond_20

    .line 31
    .line 32
    return-void

    .line 33
    :cond_20
    iget-object v0, p0, Lo7/j;->c:Lo7/r0;

    .line 34
    .line 35
    invoke-virtual {v0}, Lo7/r0;->a()J

    .line 36
    .line 37
    .line 38
    move-result-wide v3

    .line 39
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 40
    .line 41
    iget-object v6, p0, Lo7/j;->a:Ljava/util/concurrent/ScheduledExecutorService;

    .line 42
    .line 43
    iget-object v1, p0, Lo7/j;->b:Ln7/k1;

    .line 44
    .line 45
    move-object v2, p1

    .line 46
    invoke-virtual/range {v1 .. v6}, Ln7/k1;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Ll/d;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iput-object p1, p0, Lo7/j;->d:Ll/d;

    .line 51
    .line 52
    sget-object p1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 53
    .line 54
    const-string v0, "Scheduling DNS resolution backoff for {0}ns"

    .line 55
    .line 56
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    sget-object v2, Lo7/j;->e:Ljava/util/logging/Logger;

    .line 61
    .line 62
    invoke-virtual {v2, p1, v0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method
