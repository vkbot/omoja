.class public final Li8/o;
.super Lx7/e;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Le8/e;


# instance fields
.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Li8/o;->b:Ljava/lang/Object;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Li8/o;->b:Ljava/lang/Object;

    .line 2
    .line 3
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
    iget-object v0, p0, Li8/o;->b:Ljava/lang/Object;

    .line 7
    .line 8
    invoke-interface {p1, v0}, Lx7/f;->c(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
