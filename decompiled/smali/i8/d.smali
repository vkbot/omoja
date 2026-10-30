.class public final Li8/d;
.super Lx7/e;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Le8/e;


# static fields
.field public static final b:Li8/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Li8/d;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Li8/d;->b:Li8/d;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public final d(Lx7/f;)V
    .locals 1

    .line 1
    sget-object v0, Lc8/b;->b:Lc8/b;

    .line 2
    .line 3
    invoke-interface {p1, v0}, Lx7/f;->b(Lz7/a;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Lx7/f;->a()V

    .line 7
    .line 8
    .line 9
    return-void
.end method
