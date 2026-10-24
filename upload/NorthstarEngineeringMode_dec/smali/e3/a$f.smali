.class public final Le3/a$f;
.super Le3/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le3/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# virtual methods
.method public final a(III[J[J)Z
    .locals 0

    :goto_0
    if-eq p2, p3, :cond_0

    const-wide/16 p0, -0x1

    aput-wide p0, p4, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final c()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final d(Le3/a;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final e(II[J[JJ)Z
    .locals 0

    aget-wide p0, p3, p2

    or-long/2addr p0, p5

    aput-wide p0, p3, p2

    const/4 p0, 0x0

    return p0
.end method
