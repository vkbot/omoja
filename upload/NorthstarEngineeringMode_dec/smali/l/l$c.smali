.class public final Ll/l$c;
.super Ll/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# virtual methods
.method public final a()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final b()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final c(Li/a;)Z
    .locals 0

    sget-object p0, Li/a;->x:Li/a;

    if-eq p1, p0, :cond_0

    sget-object p0, Li/a;->Z:Li/a;

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final d(ZLi/a;Li/c;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
