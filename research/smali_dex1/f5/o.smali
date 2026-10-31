.class public final Lf5/o;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final c:Ly5/c;


# instance fields
.field public final a:Lf5/y;

.field public b:Lx7/e;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    invoke-static {}, Ly5/c;->p()Ly5/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lf5/o;->c:Ly5/c;

    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Lf5/y;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Li8/d;->b:Li8/d;

    .line 5
    .line 6
    iput-object v0, p0, Lf5/o;->b:Lx7/e;

    .line 7
    .line 8
    iput-object p1, p0, Lf5/o;->a:Lf5/y;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a()Lx7/e;
    .registers 6

    .line 1
    iget-object v0, p0, Lf5/o;->b:Lx7/e;

    .line 2
    .line 3
    invoke-static {}, Ly5/c;->r()Lcom/google/protobuf/x0;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Lf5/o;->a:Lf5/y;

    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    new-instance v3, Lf5/x;

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    invoke-direct {v3, v4, v2, v1}, Lf5/x;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    new-instance v1, Li8/l;

    .line 19
    .line 20
    invoke-direct {v1, v3}, Li8/l;-><init>(Ljava/util/concurrent/Callable;)V

    .line 21
    .line 22
    .line 23
    new-instance v2, Lf5/n;

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    invoke-direct {v2, p0, v3}, Lf5/n;-><init>(Lf5/o;I)V

    .line 27
    .line 28
    .line 29
    new-instance v3, Li8/r;

    .line 30
    .line 31
    sget-object v4, Ld8/b;->d:Lz3/f;

    .line 32
    .line 33
    invoke-direct {v3, v1, v2, v4}, Li8/r;-><init>(Lx7/e;Lb8/b;Lb8/b;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v3}, Lx7/e;->e(Lx7/e;)Lx7/e;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    new-instance v1, Lf5/n;

    .line 41
    .line 42
    const/4 v2, 0x1

    .line 43
    invoke-direct {v1, p0, v2}, Lf5/n;-><init>(Lf5/o;I)V

    .line 44
    .line 45
    .line 46
    new-instance v2, Li8/r;

    .line 47
    .line 48
    invoke-direct {v2, v0, v4, v1}, Li8/r;-><init>(Lx7/e;Lb8/b;Lb8/b;)V

    .line 49
    .line 50
    .line 51
    return-object v2
.end method
