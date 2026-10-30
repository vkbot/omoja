.class public final Lh8/f;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ln9/b;


# instance fields
.field public final b:Lx7/d;

.field public final c:Ljava/lang/Object;

.field public d:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lx7/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lh8/f;->c:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Lh8/f;->b:Lx7/d;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 0

    .line 1
    return-void
.end method

.method public final d(J)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long p1, p1, v0

    .line 4
    .line 5
    if-lez p1, :cond_0

    .line 6
    .line 7
    iget-boolean p1, p0, Lh8/f;->d:Z

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lh8/f;->d:Z

    .line 13
    .line 14
    iget-object p1, p0, Lh8/f;->c:Ljava/lang/Object;

    .line 15
    .line 16
    iget-object p2, p0, Lh8/f;->b:Lx7/d;

    .line 17
    .line 18
    invoke-interface {p2, p1}, Lx7/d;->e(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-interface {p2}, Lx7/d;->a()V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method
