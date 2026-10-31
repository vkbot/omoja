.class public final Lo7/g1;
.super Lo7/u0;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final a:Lo7/c0;

.field public final b:Lb1/m;


# direct methods
.method public constructor <init>(Lo7/c0;Lb1/m;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lo7/g1;->a:Lo7/c0;

    .line 5
    .line 6
    iput-object p2, p0, Lo7/g1;->b:Lb1/m;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final d(Ln7/x0;Ln7/v0;Ln7/c;[Ln7/e;)Lo7/u;
    .locals 1

    .line 1
    iget-object v0, p0, Lo7/g1;->a:Lo7/c0;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3, p4}, Lo7/x;->d(Ln7/x0;Ln7/v0;Ln7/c;[Ln7/e;)Lo7/u;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    new-instance p2, Lo7/w4;

    .line 8
    .line 9
    const/4 p3, 0x3

    .line 10
    invoke-direct {p2, p3, p0, p1}, Lo7/w4;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-object p2
.end method

.method public final e()Lo7/c0;
    .locals 1

    .line 1
    iget-object v0, p0, Lo7/g1;->a:Lo7/c0;

    .line 2
    .line 3
    return-object v0
.end method
