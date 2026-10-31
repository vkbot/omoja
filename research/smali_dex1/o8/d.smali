.class public final enum Lo8/d;
.super Ljava/lang/Enum;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Le8/d;


# static fields
.field public static final enum b:Lo8/d;

.field public static final synthetic c:[Lo8/d;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lo8/d;

    .line 2
    .line 3
    const-string v1, "INSTANCE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lo8/d;->b:Lo8/d;

    .line 10
    .line 11
    filled-new-array {v0}, [Lo8/d;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lo8/d;->c:[Lo8/d;

    .line 16
    .line 17
    return-void
.end method

.method public static a(Lx7/d;)V
    .registers 2

    .line 1
    sget-object v0, Lo8/d;->b:Lo8/d;

    .line 2
    .line 3
    invoke-interface {p0, v0}, Lx7/d;->f(Ln9/b;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Lx7/d;->a()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static b(Ljava/lang/Throwable;Lx7/d;)V
    .registers 3

    .line 1
    sget-object v0, Lo8/d;->b:Lo8/d;

    .line 2
    .line 3
    invoke-interface {p1, v0}, Lx7/d;->f(Ln9/b;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1, p0}, Lx7/d;->onError(Ljava/lang/Throwable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo8/d;
    .registers 2

    .line 1
    const-class v0, Lo8/d;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lo8/d;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lo8/d;
    .registers 1

    .line 1
    sget-object v0, Lo8/d;->c:[Lo8/d;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lo8/d;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lo8/d;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final cancel()V
    .registers 1

    .line 1
    return-void
.end method

.method public final clear()V
    .registers 1

    .line 1
    return-void
.end method

.method public final d(J)V
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lo8/f;->c(J)Z

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final h(I)I
    .registers 2

    .line 1
    const/4 p1, 0x2

    .line 2
    return p1
.end method

.method public final isEmpty()Z
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public final offer(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v0, "Should not be called!"

    .line 4
    .line 5
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method

.method public final poll()Ljava/lang/Object;
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "EmptySubscription"

    .line 2
    .line 3
    return-object v0
.end method
