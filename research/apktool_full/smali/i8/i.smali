.class public final Li8/i;
.super Lb1/u;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final b:Lx7/e;

.field public final c:Lf5/f;


# direct methods
.method public constructor <init>(Lx7/e;Lf5/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Li8/i;->b:Lx7/e;

    .line 5
    .line 6
    iput-object p2, p0, Li8/i;->c:Lf5/f;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final B(Lx7/a;)V
    .locals 3

    .line 1
    new-instance v0, Li8/h;

    .line 2
    .line 3
    iget-object v1, p0, Li8/i;->c:Lf5/f;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v2, p1, v1}, Li8/h;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    invoke-interface {p1, v0}, Lx7/a;->b(Lz7/a;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Li8/i;->b:Lx7/e;

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lx7/e;->c(Lx7/f;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
