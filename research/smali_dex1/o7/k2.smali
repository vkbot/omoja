.class public final Lo7/k2;
.super Ln7/y;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final b:Lo7/l2;


# direct methods
.method public constructor <init>(Lo7/l2;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lo7/k2;->b:Lo7/l2;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()Ll/d;
    .registers 4

    .line 1
    new-instance v0, Ll/d;

    .line 2
    .line 3
    sget-object v1, Ln7/f1;->e:Ln7/f1;

    .line 4
    .line 5
    iget-object v2, p0, Lo7/k2;->b:Lo7/l2;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Ll/d;-><init>(Ln7/f1;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method
