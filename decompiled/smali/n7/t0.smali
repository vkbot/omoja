.class public final Ln7/t0;
.super Ln7/s0;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final e:Ln7/u0;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLn7/u0;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2, p3}, Ln7/s0;-><init>(Ljava/lang/String;ZLjava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    const-string p2, "-bin"

    .line 5
    .line 6
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iput-object p3, p0, Ln7/t0;->e:Ln7/u0;

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string p2, "ASCII header is named %s.  Only binary headers may end with %s"

    .line 20
    .line 21
    invoke-static {p2, p1}, Le3/d;->l(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const/4 p1, 0x0

    .line 29
    throw p1
.end method


# virtual methods
.method public final a([B)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Ln7/t0;->e:Ln7/u0;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ln7/u0;->k([B)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final b(Ljava/lang/Object;)[B
    .locals 1

    .line 1
    iget-object v0, p0, Ln7/t0;->e:Ln7/u0;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ln7/u0;->b(Ljava/lang/Object;)[B

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string v0, "null marshaller.toAsciiString()"

    .line 8
    .line 9
    invoke-static {p1, v0}, Lo4/b;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object p1
.end method
