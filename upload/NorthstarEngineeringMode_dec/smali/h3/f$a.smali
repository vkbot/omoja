.class public final Lh3/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh3/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Lh3/f;Lh3/f;)Lh3/f;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo3/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lh3/g;->c:Lh3/g;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lh3/f$a$a;->r:Lh3/f$a$a;

    invoke-interface {p1, p0, v0}, Lh3/f;->r(Ljava/lang/Object;Ln3/p;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lh3/f;

    :goto_0
    return-object p0
.end method
