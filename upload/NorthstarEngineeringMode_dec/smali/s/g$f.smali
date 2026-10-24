.class public final Ls/g$f;
.super Ls/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# virtual methods
.method public final a(IIII)Ls/g$g;
    .locals 0

    sget-object p0, Ls/g$g;->r:Ls/g$g;

    return-object p0
.end method

.method public final b(IIII)F
    .locals 0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method
