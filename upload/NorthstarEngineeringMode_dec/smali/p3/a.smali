.class public abstract Lp3/a;
.super Lp3/c;
.source "SourceFile"


# virtual methods
.method public final a()I
    .locals 0

    invoke-virtual {p0}, Lp3/a;->b()Ljava/util/Random;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Random;->nextInt()I

    move-result p0

    return p0
.end method

.method public abstract b()Ljava/util/Random;
.end method
