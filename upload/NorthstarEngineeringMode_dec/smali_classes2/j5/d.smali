.class public final Lj5/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj5/d$b;,
        Lj5/d$d;,
        Lj5/d$e;,
        Lj5/d$c;,
        Lj5/d$f;,
        Lj5/d$g;,
        Lj5/d$a;
    }
.end annotation


# instance fields
.field public a:Lj5/d$a;

.field public b:Lj5/d$b;

.field public final c:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Li5/y0;",
            ">;"
        }
    .end annotation
.end field

.field public d:Z

.field public final e:Z


# direct methods
.method public constructor <init>(Ljava/util/Collection;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Li5/y0;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj5/d;->c:Ljava/util/Collection;

    iput-boolean p2, p0, Lj5/d;->e:Z

    return-void
.end method

.method public static a(Lj5/d;Lj5/n$a;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lj5/d;->d:Z

    iget-object p0, p0, Lj5/d;->c:Ljava/util/Collection;

    if-eqz p0, :cond_0

    check-cast p1, Lm5/v1;

    new-instance v0, Lm5/y;

    iget-object p1, p1, Lm5/v1;->b:Lm5/h;

    invoke-direct {v0, p1}, Lm5/y;-><init>(Lm5/h;)V

    new-instance p1, Li5/y0;

    const/4 v1, 0x0

    invoke-direct {p1, p2, p3, v1, v0}, Li5/y0;-><init>(Ljava/lang/String;[Ljava/lang/Object;ILi5/p0;)V

    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static b(Lj5/d;Lj5/n$a;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lj5/d;->d:Z

    iget-object p0, p0, Lj5/d;->c:Ljava/util/Collection;

    if-eqz p0, :cond_0

    check-cast p1, Lm5/v1;

    new-instance v0, Lm5/y;

    iget-object p1, p1, Lm5/v1;->b:Lm5/h;

    invoke-direct {v0, p1}, Lm5/y;-><init>(Lm5/h;)V

    new-instance p1, Li5/y0;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p1, p2, v1, v2, v0}, Li5/y0;-><init>(Ljava/lang/String;Ljava/lang/String;ILi5/p0;)V

    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static c(Li5/c0;)Z
    .locals 1

    invoke-interface {p0}, Li5/c0;->f0()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Li5/c0;->getContentType()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
