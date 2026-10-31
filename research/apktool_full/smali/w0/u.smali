.class public final Lw0/u;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lj0/e;

.field public final c:Ljava/lang/String;

.field public d:Z

.field public final e:Lw0/i1;

.field public f:[I

.field public g:[F

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lj0/e;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    new-array v1, v0, [I

    .line 6
    .line 7
    iput-object v1, p0, Lw0/u;->f:[I

    .line 8
    .line 9
    new-array v1, v0, [F

    .line 10
    .line 11
    iput-object v1, p0, Lw0/u;->g:[F

    .line 12
    .line 13
    const-string v1, ""

    .line 14
    .line 15
    iput-object v1, p0, Lw0/u;->h:Ljava/lang/String;

    .line 16
    .line 17
    iput-object v1, p0, Lw0/u;->i:Ljava/lang/String;

    .line 18
    .line 19
    new-instance v2, Lw0/i1;

    .line 20
    .line 21
    if-nez p2, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v1, p2, Lj0/e;->i:Ljava/lang/String;

    .line 25
    .line 26
    :goto_0
    invoke-direct {v2, p1, v1}, Lw0/i1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iput-object v2, p0, Lw0/u;->e:Lw0/i1;

    .line 30
    .line 31
    iput-object p1, p0, Lw0/u;->a:Ljava/lang/String;

    .line 32
    .line 33
    iput-object p2, p0, Lw0/u;->b:Lj0/e;

    .line 34
    .line 35
    iput-object p3, p0, Lw0/u;->c:Ljava/lang/String;

    .line 36
    .line 37
    if-eqz p2, :cond_1

    .line 38
    .line 39
    invoke-static {p2}, Lj0/f;->g(Lj0/e;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-static {p1}, La/a;->f(Ljava/lang/String;)Lw0/y0;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    if-eqz p1, :cond_1

    .line 48
    .line 49
    const/4 v0, 0x1

    .line 50
    :cond_1
    iput-boolean v0, p0, Lw0/u;->d:Z

    .line 51
    .line 52
    return-void
.end method
