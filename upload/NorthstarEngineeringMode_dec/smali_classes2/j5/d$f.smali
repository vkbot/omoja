.class public final Lj5/d$f;
.super Lj5/d$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj5/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation


# instance fields
.field public final f:Ljava/util/HashMap;

.field public final g:Ljava/lang/Object;

.field public final h:Ljava/lang/Object;

.field public final i:Ljava/lang/Object;

.field public final synthetic j:Lj5/d;


# direct methods
.method public constructor <init>(Lj5/d;Li5/v;Lj5/n$a;Li5/c0;)V
    .locals 0

    iput-object p1, p0, Lj5/d$f;->j:Lj5/d;

    invoke-direct {p0, p1, p2, p3, p4}, Lj5/d$g;-><init>(Lj5/d;Li5/v;Lj5/n$a;Li5/c0;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lj5/d$f;->f:Ljava/util/HashMap;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj5/d$f;->g:Ljava/lang/Object;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj5/d$f;->h:Ljava/lang/Object;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj5/d$f;->i:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final d(Lj5/n$a;)V
    .locals 6

    iget-object v0, p0, Lj5/d$a;->a:Lj5/d$a;

    :goto_0
    iget-object v1, p0, Lj5/d$g;->b:Li5/v;

    iget-object v2, p0, Lj5/d$f;->j:Lj5/d;

    if-eqz v0, :cond_1

    iget-object v3, v2, Lj5/d;->b:Lj5/d$b;

    iget-object v3, v3, Lj5/d$b;->c:Lj5/d$a;

    if-eq v0, v3, :cond_1

    instance-of v2, v0, Lj5/d$g;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lj5/d$g;

    iget-object v3, v2, Lj5/d$g;->b:Li5/v;

    invoke-interface {v1}, Li5/v;->j0()Li5/v;

    move-result-object v1

    if-ne v3, v1, :cond_0

    iget-object v1, v2, Lj5/d$g;->c:Ljava/util/LinkedHashSet;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lj5/d$f;->f(Ljava/util/LinkedHashSet;Z)V

    :cond_0
    iget-object v0, v0, Lj5/d$a;->a:Lj5/d$a;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lj5/d$g;->c:Ljava/util/LinkedHashSet;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lj5/s;

    invoke-virtual {v3}, Lj5/s;->b()I

    move-result v4

    if-gez v4, :cond_2

    iget-object v4, p0, Lj5/d$f;->f:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v5, p0, Lj5/d$f;->h:Ljava/lang/Object;

    if-eq v4, v5, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v1}, Li5/r;->getName()Ljavax/xml/namespace/QName;

    move-result-object p0

    invoke-static {p0}, Lj5/i;->f(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "cvc-identity-constraint.4.3"

    invoke-static {v2, p1, v0, p0}, Lj5/d;->a(Lj5/d;Lj5/n$a;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public final f(Ljava/util/LinkedHashSet;Z)V
    .locals 6

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj5/s;

    iget-object v1, p0, Lj5/d$f;->f:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lj5/d$f;->g:Ljava/lang/Object;

    iget-object v4, p0, Lj5/d$f;->i:Ljava/lang/Object;

    if-nez v2, :cond_2

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move-object v3, v4

    :goto_1
    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lj5/d$f;->h:Ljava/lang/Object;

    if-ne v2, v3, :cond_4

    if-eqz p2, :cond_3

    invoke-virtual {v1, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    if-ne v2, v5, :cond_0

    if-nez p2, :cond_0

    invoke-virtual {v1, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    return-void
.end method
