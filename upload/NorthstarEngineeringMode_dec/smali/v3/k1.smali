.class public Lv3/k1;
.super Lv3/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lv3/a<",
        "Lf3/g;",
        ">;"
    }
.end annotation


# virtual methods
.method public final J(Ljava/lang/Throwable;)Z
    .locals 0

    iget-object p0, p0, Lv3/a;->x:Lh3/f;

    invoke-static {p0, p1}, Lv3/y;->a(Lh3/f;Ljava/lang/Throwable;)V

    const/4 p0, 0x1

    return p0
.end method
