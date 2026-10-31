.class public final Lc2/d;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lx4/d;


# static fields
.field public static final a:Lc2/d;

.field public static final b:Lx4/c;

.field public static final c:Lx4/c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lc2/d;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lc2/d;->a:Lc2/d;

    .line 7
    .line 8
    const-string v0, "clientType"

    .line 9
    .line 10
    invoke-static {v0}, Lx4/c;->a(Ljava/lang/String;)Lx4/c;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lc2/d;->b:Lx4/c;

    .line 15
    .line 16
    const-string v0, "androidClientInfo"

    .line 17
    .line 18
    invoke-static {v0}, Lx4/c;->a(Ljava/lang/String;)Lx4/c;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sput-object v0, Lc2/d;->c:Lx4/c;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    .line 1
    check-cast p1, Lc2/r;

    .line 2
    .line 3
    check-cast p2, Lx4/e;

    .line 4
    .line 5
    check-cast p1, Lc2/j;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    sget-object v0, Lc2/q;->b:Lc2/q;

    .line 11
    .line 12
    sget-object v1, Lc2/d;->b:Lx4/c;

    .line 13
    .line 14
    invoke-interface {p2, v1, v0}, Lx4/e;->d(Lx4/c;Ljava/lang/Object;)Lx4/e;

    .line 15
    .line 16
    .line 17
    sget-object v0, Lc2/d;->c:Lx4/c;

    .line 18
    .line 19
    iget-object p1, p1, Lc2/j;->a:Lc2/h;

    .line 20
    .line 21
    invoke-interface {p2, v0, p1}, Lx4/e;->d(Lx4/c;Ljava/lang/Object;)Lx4/e;

    .line 22
    .line 23
    .line 24
    return-void
.end method
