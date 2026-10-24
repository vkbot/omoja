.class public final Ls/g$e;
.super Ls/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# virtual methods
.method public final a(IIII)Ls/g$g;
    .locals 0

    sget-boolean p0, Ls/g;->e:Z

    if-eqz p0, :cond_0

    sget-object p0, Ls/g$g;->r:Ls/g$g;

    return-object p0

    :cond_0
    sget-object p0, Ls/g$g;->c:Ls/g$g;

    return-object p0
.end method

.method public final b(IIII)F
    .locals 0

    sget-boolean p0, Ls/g;->e:Z

    if-eqz p0, :cond_0

    int-to-float p0, p3

    int-to-float p1, p1

    div-float/2addr p0, p1

    int-to-float p1, p4

    int-to-float p2, p2

    div-float/2addr p1, p2

    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0

    :cond_0
    div-int/2addr p2, p4

    div-int/2addr p1, p3

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/high16 p1, 0x3f800000    # 1.0f

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p1, p0

    :goto_0
    return p1
.end method
