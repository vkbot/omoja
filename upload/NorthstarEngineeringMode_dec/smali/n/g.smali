.class public final Ln/g;
.super Lf0/f;
.source "SourceFile"

# interfaces
.implements Ln/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lf0/f<",
        "Li/f;",
        "Ll/x<",
        "*>;>;",
        "Ln/h;"
    }
.end annotation


# instance fields
.field public d:Ln/h$a;


# virtual methods
.method public final b(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    check-cast p1, Ll/x;

    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ll/x;->getSize()I

    move-result p0

    :goto_0
    return p0
.end method

.method public final c(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    check-cast p1, Li/f;

    check-cast p2, Ll/x;

    iget-object p0, p0, Ln/g;->d:Ln/h$a;

    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    check-cast p0, Ll/m;

    iget-object p0, p0, Ll/m;->e:Ll/a0;

    const/4 p1, 0x1

    invoke-virtual {p0, p2, p1}, Ll/a0;->a(Ll/x;Z)V

    :cond_0
    return-void
.end method
