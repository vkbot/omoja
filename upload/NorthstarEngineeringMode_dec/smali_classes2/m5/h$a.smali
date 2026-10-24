.class public final Lm5/h$a;
.super Lm5/z0$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm5/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public b:Z

.field public final c:Lm5/z0;

.field public final d:Lm5/f;

.field public e:Lm5/w1;

.field public f:Z

.field public g:Lm5/w1;

.field public h:I

.field public final i:Z

.field public final j:Ljavax/xml/namespace/QName;

.field public final k:Z

.field public final l:Z

.field public final m:Z

.field public final n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lm5/z0;Li5/z1;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lm5/h$a;->b:Z

    if-nez p2, :cond_0

    sget-object p2, Li5/z1;->r:Li5/z1;

    goto :goto_0

    :cond_0
    sget-object v0, Li5/z1;->r:Li5/z1;

    :goto_0
    iput-object p1, p0, Lm5/h$a;->c:Lm5/z0;

    sget-object v0, Li5/z1$a;->V1:Li5/z1$a;

    iget-object v1, p2, Li5/z1;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lm5/z0;->q()Lm5/f;

    move-result-object v0

    goto :goto_1

    :cond_1
    sget-object v0, Lm5/f;->g:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm5/f;

    if-nez v1, :cond_2

    new-instance v1, Lm5/f;

    const v2, 0x8000

    invoke-direct {v1, v2}, Lm5/f;-><init>(I)V

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_2
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lm5/h$a;->d:Lm5/f;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lm5/h;->h(Lm5/z0;Z)Lm5/b1;

    move-result-object v1

    iput-object v1, p0, Lm5/h$a;->e:Lm5/w1;

    iput-boolean v0, p0, Lm5/h$a;->f:Z

    iput-object v1, p0, Lm5/h$a;->g:Lm5/w1;

    iput v0, p0, Lm5/h$a;->h:I

    sget-object v0, Li5/z1$a;->p1:Li5/z1$a;

    iget-object v1, p2, Li5/z1;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/xml/namespace/QName;

    iput-object v1, p0, Lm5/h$a;->j:Ljavax/xml/namespace/QName;

    iget-object v1, p2, Li5/z1;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lm5/h$a;->i:Z

    sget-object v0, Li5/z1$a;->q1:Li5/z1$a;

    iget-object v1, p2, Li5/z1;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lm5/h$a;->k:Z

    sget-object v0, Li5/z1$a;->r1:Li5/z1$a;

    iget-object v1, p2, Li5/z1;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lm5/h$a;->l:Z

    sget-object v0, Li5/z1$a;->s1:Li5/z1$a;

    iget-object v1, p2, Li5/z1;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lm5/h$a;->m:Z

    sget-object v0, Li5/z1$a;->w1:Li5/z1$a;

    iget-object v1, p2, Li5/z1;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lm5/h$a;->n:Ljava/util/Map;

    sget-object v0, Li5/z1$a;->x1:Li5/z1$a;

    iget-object p2, p2, Li5/z1;->c:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    iput-object p2, p0, Lm5/h$a;->o:Ljava/util/Map;

    iget-wide v0, p1, Lm5/z0;->k:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p1, Lm5/z0;->k:J

    iget-wide v0, p1, Lm5/z0;->l:J

    add-long/2addr v0, v2

    iput-wide v0, p1, Lm5/z0;->l:J

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lm5/h$a;->b:Z

    :goto_0
    iget-boolean v0, p0, Lm5/h$a;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lm5/h$a;->e:Lm5/w1;

    iget-object v0, v0, Lm5/w1;->f:Lm5/w1;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lm5/h$a;->e:Lm5/w1;

    :goto_1
    invoke-virtual {v0}, Lm5/w1;->x0()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lm5/h$a;->d()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lm5/h$a;->e()Lm5/h;

    move-result-object p0

    invoke-virtual {p0}, Lm5/h;->h0()V

    return-void
.end method

.method public final b(Ljava/lang/String;Ljavax/xml/namespace/QName;)V
    .locals 7

    iget-boolean v0, p0, Lm5/h$a;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lm5/h$a;->g:Lm5/w1;

    iget-object v0, v0, Lm5/w1;->f:Lm5/w1;

    :goto_0
    iget-object v0, v0, Lm5/w1;->b:Ljavax/xml/namespace/QName;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lm5/h$a;->g:Lm5/w1;

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lm5/z0$e;->a:Ljava/util/Hashtable;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const-string v0, "id"

    invoke-virtual {p2}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_4

    :cond_1
    invoke-virtual {p2}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, ":"

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {v1, v6, v3}, La4/a;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_2
    iget-object v1, p0, Lm5/z0$e;->a:Ljava/util/Hashtable;

    invoke-virtual {v1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_3

    move v0, v2

    goto :goto_4

    :cond_3
    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_3

    :cond_4
    invoke-static {v3, v6, v0}, La4/a;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_4
    const/4 v1, 0x1

    iget-object v3, p0, Lm5/h$a;->c:Lm5/z0;

    if-eqz v0, :cond_5

    new-instance v4, Lm5/a;

    invoke-virtual {p0, p2, v1}, Lm5/h$a;->c(Ljavax/xml/namespace/QName;Z)Ljavax/xml/namespace/QName;

    move-result-object p2

    invoke-direct {v4, v3, p2}, Lm5/b;-><init>(Lm5/z0;Ljavax/xml/namespace/QName;)V

    goto :goto_5

    :cond_5
    new-instance v4, Lm5/b;

    invoke-virtual {p0, p2, v1}, Lm5/h$a;->c(Ljavax/xml/namespace/QName;Z)Ljavax/xml/namespace/QName;

    move-result-object p2

    invoke-direct {v4, v3, p2}, Lm5/b;-><init>(Lm5/z0;Ljavax/xml/namespace/QName;)V

    :goto_5
    invoke-virtual {p0, v4}, Lm5/h$a;->h(Lm5/b1;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p0, v2, p2, p1}, Lm5/h$a;->k(IILjava/lang/Object;)V

    invoke-virtual {p0}, Lm5/h$a;->d()V

    if-eqz v0, :cond_7

    invoke-virtual {v4}, Lm5/w1;->k()Lm5/h;

    move-result-object p2

    invoke-virtual {p2}, Lm5/h;->x0()V

    iget-object v0, p2, Lm5/h;->b:Lm5/w1;

    invoke-virtual {p2}, Lm5/h;->h0()V

    instance-of p2, v0, Lm5/c0;

    if-eqz p2, :cond_7

    check-cast v0, Lm5/c0;

    iget-object p2, v4, Lm5/w1;->f:Lm5/w1;

    invoke-virtual {p2}, Lm5/w1;->c0()Lm5/o0$a;

    move-result-object p2

    iget-object v1, v0, Lm5/c0;->t:Ljava/util/Hashtable;

    if-nez v1, :cond_6

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, v0, Lm5/c0;->t:Ljava/util/Hashtable;

    :cond_6
    iget-object v0, v0, Lm5/c0;->t:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iput-object v4, p0, Lm5/h$a;->g:Lm5/w1;

    iput v2, p0, Lm5/h$a;->h:I

    return-void
.end method

.method public final c(Ljavax/xml/namespace/QName;Z)Ljavax/xml/namespace/QName;
    .locals 1

    iget-object v0, p0, Lm5/h$a;->n:Ljava/util/Map;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_1

    :cond_0
    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lm5/h$a;->c:Lm5/z0;

    invoke-virtual {p0, p2, v0, p1}, Lm5/z0;->F(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public final d()V
    .locals 1

    invoke-virtual {p0}, Lm5/h$a;->f()V

    iget-boolean v0, p0, Lm5/h$a;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lm5/h$a;->e:Lm5/w1;

    iget-object v0, v0, Lm5/w1;->f:Lm5/w1;

    iput-object v0, p0, Lm5/h$a;->e:Lm5/w1;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lm5/h$a;->f:Z

    :goto_0
    iget-object v0, p0, Lm5/h$a;->e:Lm5/w1;

    iput-object v0, p0, Lm5/h$a;->g:Lm5/w1;

    const/4 v0, -0x1

    iput v0, p0, Lm5/h$a;->h:I

    return-void
.end method

.method public final e()Lm5/h;
    .locals 7

    invoke-virtual {p0}, Lm5/h$a;->f()V

    iget-boolean v0, p0, Lm5/h$a;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lm5/h$a;->e:Lm5/w1;

    iget-object v0, v0, Lm5/w1;->f:Lm5/w1;

    iput-object v0, p0, Lm5/h$a;->e:Lm5/w1;

    :cond_0
    iget-object v0, p0, Lm5/h$a;->e:Lm5/w1;

    invoke-virtual {v0}, Lm5/w1;->k()Lm5/h;

    move-result-object v0

    invoke-static {v0}, Lm5/z0;->K(Lm5/h;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    iget-object v1, v0, Lm5/h;->b:Lm5/w1;

    iget-object v1, v1, Lm5/w1;->b:Ljavax/xml/namespace/QName;

    invoke-static {v1}, Lm5/z0;->y(Ljavax/xml/namespace/QName;)Z

    move-result v1

    iget-boolean v2, p0, Lm5/h$a;->i:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_2

    if-eqz v1, :cond_c

    :cond_2
    const/4 v2, 0x0

    iget-object v5, p0, Lm5/h$a;->j:Ljavax/xml/namespace/QName;

    if-eqz v5, :cond_3

    invoke-virtual {v0, v5}, Lm5/h;->m0(Ljavax/xml/namespace/QName;)V

    goto :goto_3

    :cond_3
    :goto_0
    invoke-virtual {v0, v4}, Lm5/h;->v0(Z)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lm5/h;->Z()Z

    :goto_1
    invoke-virtual {v0}, Lm5/h;->F()Z

    move-result v5

    const/4 v6, -0x1

    if-nez v5, :cond_6

    invoke-virtual {v0}, Lm5/h;->J()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v0, v6, v2}, Lm5/h;->Q(ILm5/h;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    invoke-virtual {v0, v2}, Lm5/h;->R(Lm5/h;)V

    goto :goto_1

    :cond_6
    invoke-virtual {v0}, Lm5/h;->q0()Z

    :goto_2
    invoke-virtual {v0}, Lm5/h;->G()Z

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual {v0}, Lm5/h;->J()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v0, v6, v2}, Lm5/h;->Q(ILm5/h;)Ljava/lang/Object;

    goto :goto_2

    :cond_7
    invoke-virtual {v0, v2}, Lm5/h;->R(Lm5/h;)V

    goto :goto_2

    :cond_8
    invoke-virtual {v0, v4}, Lm5/h;->v0(Z)Z

    invoke-virtual {v0}, Lm5/h;->Z()Z

    invoke-virtual {v0}, Lm5/h;->r0()Lm5/h;

    move-result-object v5

    invoke-virtual {v0, v0, v3}, Lm5/h;->T(Lm5/h;Z)V

    invoke-virtual {v0, v5}, Lm5/h;->W(Lm5/h;)V

    invoke-virtual {v5}, Lm5/h;->h0()V

    invoke-virtual {v0, v2}, Lm5/h;->R(Lm5/h;)V

    :goto_3
    if-eqz v1, :cond_c

    iget-object v1, p0, Lm5/h$a;->e:Lm5/w1;

    invoke-virtual {v0, v1, v4}, Lm5/h;->Y(Lm5/w1;I)V

    invoke-virtual {v0}, Lm5/h;->t0()Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_9
    invoke-virtual {v0}, Lm5/h;->L()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Lm5/h;->x()Ljava/lang/String;

    move-result-object v1

    const-string v5, "http://www.openuri.org/fragment"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v0, v2}, Lm5/h;->R(Lm5/h;)V

    invoke-virtual {v0}, Lm5/h;->D()Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_4

    :cond_a
    invoke-virtual {v0}, Lm5/h;->u0()Z

    move-result v1

    if-nez v1, :cond_9

    :cond_b
    :goto_4
    iget-object v1, p0, Lm5/h$a;->e:Lm5/w1;

    invoke-virtual {v0, v1, v4}, Lm5/h;->Y(Lm5/w1;I)V

    iget-object v1, p0, Lm5/h$a;->c:Lm5/z0;

    invoke-static {v1, v3}, Lm5/h;->h(Lm5/z0;Z)Lm5/b1;

    move-result-object v1

    iput-object v1, p0, Lm5/h$a;->e:Lm5/w1;

    invoke-virtual {v1}, Lm5/w1;->k()Lm5/h;

    move-result-object v1

    invoke-virtual {v1}, Lm5/h;->Z()Z

    invoke-virtual {v0, v1, v3}, Lm5/h;->T(Lm5/h;Z)V

    iget-object v2, p0, Lm5/h$a;->e:Lm5/w1;

    invoke-virtual {v0, v2, v4}, Lm5/h;->Y(Lm5/w1;I)V

    invoke-virtual {v1}, Lm5/h;->h0()V

    :cond_c
    iget-object v1, p0, Lm5/h$a;->o:Ljava/util/Map;

    if-eqz v1, :cond_d

    iget-object v2, p0, Lm5/h$a;->e:Lm5/w1;

    invoke-virtual {v0, v2, v4}, Lm5/h;->Y(Lm5/w1;I)V

    invoke-static {v0}, Lm5/z0;->K(Lm5/h;)Z

    invoke-static {v0, v1}, Lm5/z0;->b(Lm5/h;Ljava/util/Map;)V

    :cond_d
    iget-object v1, p0, Lm5/h$a;->p:Ljava/lang/String;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lm5/h$a;->q:Ljava/lang/String;

    if-nez v1, :cond_e

    iget-object v1, p0, Lm5/h$a;->r:Ljava/lang/String;

    if-eqz v1, :cond_10

    :cond_e
    invoke-static {v0, v3}, Lm5/z0;->s(Lm5/h;Z)Lm5/z0$d;

    move-result-object v1

    iget-object v2, p0, Lm5/h$a;->p:Ljava/lang/String;

    sget-object v3, Li5/t0;->e:Ljava/lang/Object;

    invoke-virtual {v1, v3, v2}, Lm5/z0$d;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lm5/h$a;->q:Ljava/lang/String;

    if-eqz v2, :cond_f

    sget-object v3, Li5/t0;->f:Ljava/lang/Object;

    invoke-virtual {v1, v3, v2}, Lm5/z0$d;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    iget-object v2, p0, Lm5/h$a;->r:Ljava/lang/String;

    if-eqz v2, :cond_10

    sget-object v3, Li5/t0;->g:Ljava/lang/Object;

    invoke-virtual {v1, v3, v2}, Lm5/z0$d;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    iget-object p0, p0, Lm5/h$a;->e:Lm5/w1;

    invoke-virtual {v0, p0, v4}, Lm5/h;->Y(Lm5/w1;I)V

    return-object v0
.end method

.method public final f()V
    .locals 5

    iget-boolean v0, p0, Lm5/h$a;->k:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lm5/h$a;->f:Z

    iget-object v1, p0, Lm5/h$a;->d:Lm5/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lm5/h$a;->e:Lm5/w1;

    iget-object v2, v0, Lm5/w1;->l:Ljava/lang/Object;

    iget v3, v0, Lm5/w1;->n:I

    iget v4, v0, Lm5/w1;->p:I

    invoke-virtual {v1, v3, v4, v2}, Lm5/f;->k(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lm5/w1;->l:Ljava/lang/Object;

    iget-object p0, p0, Lm5/h$a;->e:Lm5/w1;

    iget v0, v1, Lm5/f;->e:I

    iput v0, p0, Lm5/w1;->n:I

    iget v0, v1, Lm5/f;->f:I

    iput v0, p0, Lm5/w1;->p:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lm5/h$a;->e:Lm5/w1;

    iget-object v2, v0, Lm5/w1;->k:Ljava/lang/Object;

    iget v3, v0, Lm5/w1;->m:I

    iget v4, v0, Lm5/w1;->o:I

    invoke-virtual {v1, v3, v4, v2}, Lm5/f;->k(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lm5/w1;->k:Ljava/lang/Object;

    iget-object p0, p0, Lm5/h$a;->e:Lm5/w1;

    iget v0, v1, Lm5/f;->e:I

    iput v0, p0, Lm5/w1;->m:I

    iget v0, v1, Lm5/f;->f:I

    iput v0, p0, Lm5/w1;->o:I

    :cond_1
    :goto_0
    return-void
.end method

.method public final g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lm5/h$a;->m:Z

    if-nez v0, :cond_0

    new-instance v0, Lm5/c1;

    iget-object v1, p0, Lm5/h$a;->c:Lm5/z0;

    invoke-direct {v0, v1, p1}, Lm5/c1;-><init>(Lm5/z0;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lm5/h$a;->h(Lm5/b1;)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, p2}, Lm5/h$a;->k(IILjava/lang/Object;)V

    invoke-virtual {p0}, Lm5/h$a;->d()V

    iput-object v0, p0, Lm5/h$a;->g:Lm5/w1;

    iput v1, p0, Lm5/h$a;->h:I

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lm5/h$a;->b:Z

    return-void
.end method

.method public final h(Lm5/b1;)V
    .locals 2

    invoke-virtual {p0}, Lm5/h$a;->f()V

    iget-boolean v0, p0, Lm5/h$a;->f:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lm5/h$a;->e:Lm5/w1;

    iget-object v0, v0, Lm5/w1;->f:Lm5/w1;

    iput-object v0, p0, Lm5/h$a;->e:Lm5/w1;

    iput-boolean v1, p0, Lm5/h$a;->f:Z

    :cond_0
    iget-object v0, p0, Lm5/h$a;->e:Lm5/w1;

    invoke-virtual {v0, p1}, Lm5/w1;->N(Lm5/w1;)V

    iput-object p1, p0, Lm5/h$a;->e:Lm5/w1;

    iput-object p1, p0, Lm5/h$a;->g:Lm5/w1;

    iput v1, p0, Lm5/h$a;->h:I

    return-void
.end method

.method public final i(Ljavax/xml/namespace/QName;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lm5/h$a;->c(Ljavax/xml/namespace/QName;Z)Ljavax/xml/namespace/QName;

    move-result-object p1

    iget-boolean v0, p0, Lm5/h$a;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lm5/h$a;->e:Lm5/w1;

    iget-object v0, v0, Lm5/w1;->f:Lm5/w1;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lm5/h$a;->e:Lm5/w1;

    :goto_0
    iget-object v0, v0, Lm5/w1;->b:Ljavax/xml/namespace/QName;

    iget-object v1, p0, Lm5/h$a;->c:Lm5/z0;

    invoke-static {v1, p1, v0}, Lm5/h;->j(Lm5/z0;Ljavax/xml/namespace/QName;Ljavax/xml/namespace/QName;)Lm5/r0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lm5/h$a;->h(Lm5/b1;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lm5/h$a;->b:Z

    return-void
.end method

.method public final j(IILjava/lang/Object;)V
    .locals 8

    iget-boolean v0, p0, Lm5/h$a;->k:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lm5/h$a;->b:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lm5/h$a;->d:Lm5/f;

    if-lez p2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v3, p3, [C

    if-eqz v3, :cond_0

    move-object v3, p3

    check-cast v3, [C

    :goto_0
    if-lez p2, :cond_6

    aget-char v4, v3, p1

    invoke-static {v4}, Lm5/f;->f(C)Z

    move-result v4

    if-eqz v4, :cond_6

    add-int/lit8 p2, p2, -0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    instance-of v3, p3, Ljava/lang/String;

    if-eqz v3, :cond_1

    move-object v3, p3

    check-cast v3, Ljava/lang/String;

    :goto_1
    if-lez p2, :cond_6

    invoke-virtual {v3, p1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lm5/f;->f(C)Z

    move-result v4

    if-eqz v4, :cond_6

    add-int/lit8 p2, p2, -0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    iget-object v3, v2, Lm5/f;->a:Lm5/f$a;

    invoke-virtual {v3, p3, p1, p2, v1}, Lm5/f$a;->a(Ljava/lang/Object;III)V

    move v4, v1

    :goto_2
    iget v5, v3, Lm5/f$a;->d:I

    iget v6, v3, Lm5/f$a;->c:I

    const/4 v7, 0x1

    if-ge v5, v6, :cond_2

    move v6, v7

    goto :goto_3

    :cond_2
    move v6, v1

    :goto_3
    if-eqz v6, :cond_5

    iget v6, v3, Lm5/f$a;->g:I

    add-int/2addr v6, v5

    iget v5, v3, Lm5/f$a;->e:I

    sub-int/2addr v6, v5

    iget-object v5, v3, Lm5/f$a;->i:[C

    if-nez v5, :cond_3

    iget-object v5, v3, Lm5/f$a;->h:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    goto :goto_4

    :cond_3
    aget-char v5, v5, v6

    :goto_4
    iget v6, v3, Lm5/f$a;->d:I

    add-int/2addr v6, v7

    invoke-virtual {v3, v6}, Lm5/f$a;->b(I)V

    invoke-static {v5}, Lm5/f;->f(C)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_5

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    :goto_5
    iput-object v0, v3, Lm5/f$a;->a:Ljava/lang/Object;

    iput-object v0, v3, Lm5/f$a;->h:Ljava/lang/String;

    iput-object v0, v3, Lm5/f$a;->i:[C

    add-int/2addr p1, v4

    :cond_6
    if-nez p2, :cond_7

    iput v1, v2, Lm5/f;->e:I

    iput v1, v2, Lm5/f;->f:I

    move-object p3, v0

    goto :goto_6

    :cond_7
    iput p1, v2, Lm5/f;->e:I

    iput p2, v2, Lm5/f;->f:I

    :goto_6
    iput-boolean v1, p0, Lm5/h$a;->b:Z

    iget p1, v2, Lm5/f;->e:I

    iget p2, v2, Lm5/f;->f:I

    :cond_8
    invoke-virtual {p0, p1, p2, p3}, Lm5/h$a;->k(IILjava/lang/Object;)V

    return-void
.end method

.method public final k(IILjava/lang/Object;)V
    .locals 10

    if-gtz p2, :cond_0

    return-void

    :cond_0
    iget-object v8, p0, Lm5/h$a;->e:Lm5/w1;

    iput-object v8, p0, Lm5/h$a;->g:Lm5/w1;

    iget v7, v8, Lm5/w1;->o:I

    add-int/lit8 v1, v7, 0x1

    iput v1, p0, Lm5/h$a;->h:I

    iget-boolean v2, p0, Lm5/h$a;->f:Z

    iget-object v9, p0, Lm5/h$a;->d:Lm5/f;

    if-eqz v2, :cond_1

    iget v7, v8, Lm5/w1;->p:I

    add-int/lit8 v2, v7, 0x1

    add-int/2addr v2, v1

    iput v2, p0, Lm5/h$a;->h:I

    iget-object v1, p0, Lm5/h$a;->d:Lm5/f;

    iget-object v5, v8, Lm5/w1;->l:Ljava/lang/Object;

    iget v6, v8, Lm5/w1;->n:I

    move-object v2, p3

    move v3, p1

    move v4, p2

    invoke-virtual/range {v1 .. v7}, Lm5/f;->j(Ljava/lang/Object;IILjava/lang/Object;II)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v8, Lm5/w1;->l:Ljava/lang/Object;

    iget-object v0, p0, Lm5/h$a;->e:Lm5/w1;

    iget v1, v9, Lm5/f;->e:I

    iput v1, v0, Lm5/w1;->n:I

    iget v1, v9, Lm5/f;->f:I

    iput v1, v0, Lm5/w1;->p:I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lm5/h$a;->d:Lm5/f;

    iget-object v5, v8, Lm5/w1;->k:Ljava/lang/Object;

    iget v6, v8, Lm5/w1;->m:I

    move-object v2, p3

    move v3, p1

    move v4, p2

    invoke-virtual/range {v1 .. v7}, Lm5/f;->j(Ljava/lang/Object;IILjava/lang/Object;II)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v8, Lm5/w1;->k:Ljava/lang/Object;

    iget-object v0, p0, Lm5/h$a;->e:Lm5/w1;

    iget v1, v9, Lm5/f;->e:I

    iput v1, v0, Lm5/w1;->m:I

    iget v1, v9, Lm5/f;->f:I

    iput v1, v0, Lm5/w1;->o:I

    :goto_0
    return-void
.end method

.method public final l(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lm5/h$a;->n:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    move-object p2, v0

    :cond_0
    new-instance v0, Lm5/b;

    iget-object v1, p0, Lm5/h$a;->c:Lm5/z0;

    invoke-virtual {v1, p1}, Lm5/z0;->h(Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lm5/b;-><init>(Lm5/z0;Ljavax/xml/namespace/QName;)V

    invoke-virtual {p0, v0}, Lm5/h$a;->h(Lm5/b1;)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, p2}, Lm5/h$a;->k(IILjava/lang/Object;)V

    invoke-virtual {p0}, Lm5/h$a;->d()V

    iput-object v0, p0, Lm5/h$a;->g:Lm5/w1;

    iput v1, p0, Lm5/h$a;->h:I

    return-void
.end method
