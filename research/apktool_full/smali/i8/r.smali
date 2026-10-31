.class public final Li8/r;
.super Li8/a;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final c:Lb8/b;

.field public final d:Lb8/b;


# direct methods
.method public constructor <init>(Lx7/e;Lb8/b;Lb8/b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Li8/a;-><init>(Lx7/e;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Li8/r;->c:Lb8/b;

    .line 5
    .line 6
    iput-object p3, p0, Li8/r;->d:Lb8/b;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final d(Lx7/f;)V
    .locals 2

    .line 1
    new-instance v0, Lg8/c;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, p1, p0, v1}, Lg8/c;-><init>(Lx7/f;Ljava/lang/Object;I)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Li8/a;->b:Lx7/e;

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lx7/e;->c(Lx7/f;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
