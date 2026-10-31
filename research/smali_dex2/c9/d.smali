.class public final Lc9/d;
.super Lc9/g;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final c:Lc9/d;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 1
    new-instance v0, Lc9/d;

    .line 2
    .line 3
    sget v2, Lc9/k;->c:I

    .line 4
    .line 5
    sget v3, Lc9/k;->d:I

    .line 6
    .line 7
    sget-wide v4, Lc9/k;->e:J

    .line 8
    .line 9
    sget-object v6, Lc9/k;->a:Ljava/lang/String;

    .line 10
    .line 11
    invoke-direct {v0}, Lv8/t;-><init>()V

    .line 12
    .line 13
    .line 14
    new-instance v1, Lc9/b;

    .line 15
    .line 16
    invoke-direct/range {v1 .. v6}, Lc9/b;-><init>(IIJLjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iput-object v1, v0, Lc9/g;->b:Lc9/b;

    .line 20
    .line 21
    sput-object v0, Lc9/d;->c:Lc9/d;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final close()V
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v1, "Dispatchers.Default cannot be closed"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw v0
.end method

.method public final limitedParallelism(I)Lv8/t;
    .registers 3

    .line 1
    invoke-static {p1}, La9/a;->a(I)V

    .line 2
    .line 3
    .line 4
    sget v0, Lc9/k;->c:I

    .line 5
    .line 6
    if-lt p1, v0, :cond_8

    .line 7
    .line 8
    return-object p0

    .line 9
    :cond_8
    invoke-super {p0, p1}, Lv8/t;->limitedParallelism(I)Lv8/t;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "Dispatchers.Default"

    .line 2
    .line 3
    return-object v0
.end method
