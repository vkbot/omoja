.class public final Lj5/d$d;
.super Lj5/d$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj5/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final b:Lj5/d$e;

.field public final c:Ljava/util/ArrayList;

.field public final synthetic d:Lj5/d;


# direct methods
.method public constructor <init>(Lj5/d;Lj5/d$e;)V
    .locals 0

    iput-object p1, p0, Lj5/d$d;->d:Lj5/d;

    invoke-direct {p0, p1}, Lj5/d$a;-><init>(Lj5/d;)V

    iput-object p2, p0, Lj5/d$d;->b:Lj5/d$e;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lj5/d$d;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(Lj5/n$a;Ljavax/xml/namespace/QName;Li5/c0;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p4, p3}, Lj5/d$d;->f(Ljava/lang/String;Li5/c0;)V

    return-void
.end method

.method public final b(Lj5/n$a;Li5/c0;)V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public final d(Lj5/n$a;)V
    .locals 4

    iget-object v0, p0, Lj5/d$d;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj5/s;

    iget-object v2, p0, Lj5/d$d;->b:Lj5/d$e;

    iget-object v2, v2, Lj5/d$e;->b:Ljava/util/LinkedHashSet;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ID not found for IDRef value \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lj5/d$d;->d:Lj5/d;

    invoke-static {v2, p1, v1}, Lj5/d;->b(Lj5/d;Lj5/n$a;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final e(Lj5/n$a;Li5/c0;Ljava/lang/String;Z)V
    .locals 0

    if-eqz p4, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p3, p2}, Lj5/d$d;->f(Ljava/lang/String;Li5/c0;)V

    return-void
.end method

.method public final f(Ljava/lang/String;Li5/c0;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_5

    invoke-interface {p2}, Li5/c0;->x0()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    sget-object v0, Li5/k1;->U:Li5/c0;

    invoke-interface {v0, p2}, Li5/c0;->G0(Li5/c0;)Z

    move-result v1

    iget-object p0, p0, Lj5/d$d;->c:Ljava/util/ArrayList;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    :try_start_0
    invoke-interface {v0, p1}, Li5/c0;->U(Ljava/lang/Object;)Li5/i0;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    check-cast p1, Li5/k1;

    if-nez p1, :cond_2

    return-void

    :cond_2
    invoke-interface {p1}, Li5/k1;->xgetListValue()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Li5/i0;

    new-instance v0, Lj5/s;

    invoke-direct {v0, v3}, Lj5/s;-><init>(I)V

    invoke-virtual {v0, v2, p2}, Lj5/s;->a(ILi5/i0;)Z

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    sget-object v0, Li5/j1;->Q:Li5/c0;

    invoke-interface {v0, p2}, Li5/c0;->G0(Li5/c0;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lj5/s;

    invoke-direct {v0, v3}, Lj5/s;-><init>(I)V

    invoke-interface {p2, p1}, Li5/c0;->U(Ljava/lang/Object;)Li5/i0;

    move-result-object p1

    check-cast p1, Li5/j1;

    if-nez p1, :cond_4

    return-void

    :cond_4
    invoke-virtual {v0, v2, p1}, Lj5/s;->a(ILi5/i0;)Z

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_2
    return-void
.end method
