.class public final Lo7/z2;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final a:Ln7/t;

.field public b:Ln7/j;

.field public final c:Lo7/w2;

.field public d:Z


# direct methods
.method public constructor <init>(Ln7/t;Lo7/w2;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lo7/z2;->d:Z

    .line 6
    .line 7
    iput-object p1, p0, Lo7/z2;->a:Ln7/t;

    .line 8
    .line 9
    sget-object p1, Ln7/j;->e:Ln7/j;

    .line 10
    .line 11
    iput-object p1, p0, Lo7/z2;->b:Ln7/j;

    .line 12
    .line 13
    iput-object p2, p0, Lo7/z2;->c:Lo7/w2;

    .line 14
    .line 15
    return-void
.end method

.method public static a(Lo7/z2;Ln7/j;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lo7/z2;->b:Ln7/j;

    .line 2
    .line 3
    sget-object v0, Ln7/j;->c:Ln7/j;

    .line 4
    .line 5
    if-eq p1, v0, :cond_2

    .line 6
    .line 7
    sget-object v0, Ln7/j;->d:Ln7/j;

    .line 8
    .line 9
    if-ne p1, v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    sget-object v0, Ln7/j;->e:Ln7/j;

    .line 13
    .line 14
    if-ne p1, v0, :cond_1

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    iput-boolean p1, p0, Lo7/z2;->d:Z

    .line 18
    .line 19
    :cond_1
    return-void

    .line 20
    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 21
    iput-boolean p1, p0, Lo7/z2;->d:Z

    .line 22
    .line 23
    return-void
.end method
