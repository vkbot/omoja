.class public abstract Lw0/a0;
.super Lw0/z;
.source "SourceFile"


# static fields
.field public static h:Z = true

.field public static i:Z = true


# virtual methods
.method public o(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 1

    sget-boolean v0, Lw0/a0;->h:Z

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {p1, p2}, Lokhttp3/internal/platform/a;->n(Landroid/view/View;Landroid/graphics/Matrix;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    sput-boolean p1, Lw0/a0;->h:Z

    :cond_0
    :goto_0
    return-void
.end method

.method public p(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 1

    sget-boolean v0, Lw0/a0;->i:Z

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {p1, p2}, Lokhttp3/internal/platform/a;->h(Landroid/view/View;Landroid/graphics/Matrix;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    sput-boolean p1, Lw0/a0;->i:Z

    :cond_0
    :goto_0
    return-void
.end method
