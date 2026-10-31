.class public final Li8/n;
.super Lx7/l;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final a:Lx7/e;


# direct methods
.method public constructor <init>(Lx7/e;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Li8/n;->a:Lx7/e;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final b(Lx7/m;)V
    .registers 3

    .line 1
    new-instance v0, Li8/m;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Li8/m;-><init>(Lx7/m;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Li8/n;->a:Lx7/e;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lx7/e;->c(Lx7/f;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
