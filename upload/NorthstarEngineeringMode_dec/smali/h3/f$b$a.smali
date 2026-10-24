.class public final Lh3/f$b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh3/f$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Lh3/f$b;Lh3/f$c;)Lh3/f$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lh3/f$b;",
            ">(",
            "Lh3/f$b;",
            "Lh3/f$c<",
            "TE;>;)TE;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lo3/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lh3/f$b;->getKey()Lh3/f$c;

    move-result-object v0

    invoke-static {v0, p1}, Lo3/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static b(Lh3/f$b;Lh3/f$c;)Lh3/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh3/f$b;",
            "Lh3/f$c<",
            "*>;)",
            "Lh3/f;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lo3/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lh3/f$b;->getKey()Lh3/f$c;

    move-result-object v0

    invoke-static {v0, p1}, Lo3/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p0, Lh3/g;->c:Lh3/g;

    :cond_0
    return-object p0
.end method

.method public static c(Lh3/f$b;Lh3/f;)Lh3/f;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo3/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lh3/f$a;->a(Lh3/f;Lh3/f;)Lh3/f;

    move-result-object p0

    return-object p0
.end method
