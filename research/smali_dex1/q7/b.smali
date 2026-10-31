.class public final Lq7/b;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final a:Z

.field public b:[Ljava/lang/String;

.field public c:[Ljava/lang/String;

.field public d:Z


# direct methods
.method public constructor <init>(Lq7/c;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p1, Lq7/c;->a:Z

    .line 5
    .line 6
    iput-boolean v0, p0, Lq7/b;->a:Z

    .line 7
    .line 8
    iget-object v0, p1, Lq7/c;->b:[Ljava/lang/String;

    .line 9
    .line 10
    iput-object v0, p0, Lq7/b;->b:[Ljava/lang/String;

    .line 11
    .line 12
    iget-object v0, p1, Lq7/c;->c:[Ljava/lang/String;

    .line 13
    .line 14
    iput-object v0, p0, Lq7/b;->c:[Ljava/lang/String;

    .line 15
    .line 16
    iget-boolean p1, p1, Lq7/c;->d:Z

    .line 17
    .line 18
    iput-boolean p1, p0, Lq7/b;->d:Z

    .line 19
    .line 20
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-boolean p1, p0, Lq7/b;->a:Z

    return-void
.end method


# virtual methods
.method public final varargs a([Lq7/a;)V
    .registers 5

    .line 1
    iget-boolean v0, p0, Lq7/b;->a:Z

    .line 2
    .line 3
    if-eqz v0, :cond_17

    .line 4
    .line 5
    array-length v0, p1

    .line 6
    new-array v0, v0, [Ljava/lang/String;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_8
    array-length v2, p1

    .line 10
    if-ge v1, v2, :cond_14

    .line 11
    .line 12
    aget-object v2, p1, v1

    .line 13
    .line 14
    iget-object v2, v2, Lq7/a;->b:Ljava/lang/String;

    .line 15
    .line 16
    aput-object v2, v0, v1

    .line 17
    .line 18
    add-int/lit8 v1, v1, 0x1

    .line 19
    .line 20
    goto :goto_8

    .line 21
    :cond_14
    iput-object v0, p0, Lq7/b;->b:[Ljava/lang/String;

    .line 22
    .line 23
    return-void

    .line 24
    :cond_17
    const-string p1, "no cipher suites for cleartext connections"

    .line 25
    .line 26
    invoke-static {p1}, Lj1/i;->l(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final varargs b([Lq7/m;)V
    .registers 5

    .line 1
    iget-boolean v0, p0, Lq7/b;->a:Z

    .line 2
    .line 3
    if-eqz v0, :cond_20

    .line 4
    .line 5
    array-length v0, p1

    .line 6
    if-eqz v0, :cond_1a

    .line 7
    .line 8
    array-length v0, p1

    .line 9
    new-array v0, v0, [Ljava/lang/String;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_b
    array-length v2, p1

    .line 13
    if-ge v1, v2, :cond_17

    .line 14
    .line 15
    aget-object v2, p1, v1

    .line 16
    .line 17
    iget-object v2, v2, Lq7/m;->b:Ljava/lang/String;

    .line 18
    .line 19
    aput-object v2, v0, v1

    .line 20
    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    goto :goto_b

    .line 24
    :cond_17
    iput-object v0, p0, Lq7/b;->c:[Ljava/lang/String;

    .line 25
    .line 26
    return-void

    .line 27
    :cond_1a
    const-string p1, "At least one TlsVersion is required"

    .line 28
    .line 29
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_20
    const-string p1, "no TLS versions for cleartext connections"

    .line 34
    .line 35
    invoke-static {p1}, Lj1/i;->l(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method
