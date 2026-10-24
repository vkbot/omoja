.class public abstract Lm5/g1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm5/g1$g;,
        Lm5/g1$d;,
        Lm5/g1$b;,
        Lm5/g1$c;,
        Lm5/g1$a;,
        Lm5/g1$h;,
        Lm5/g1$i;,
        Lm5/g1$e;,
        Lm5/g1$l;,
        Lm5/g1$j;,
        Lm5/g1$f;,
        Lm5/g1$m;,
        Lm5/g1$k;
    }
.end annotation


# static fields
.field public static final q:Ljava/lang/String;


# instance fields
.field public final a:Lm5/z0;

.field public final b:J

.field public c:Lm5/g1$h;

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Li5/y1;

.field public final g:Z

.field public h:Ljava/util/LinkedHashMap;

.field public final i:Z

.field public final j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljavax/xml/namespace/QName;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public m:I

.field public final n:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final o:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final p:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "line.separator"

    invoke-static {v0}, Lb1/a;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "\n"

    :cond_0
    sput-object v0, Lm5/g1;->q:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lm5/h;Li5/z1;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lm5/g1;->j:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lm5/g1;->k:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lm5/g1;->l:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lm5/g1;->n:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lm5/g1;->o:Ljava/util/HashMap;

    if-nez p2, :cond_0

    sget-object p2, Li5/z1;->r:Li5/z1;

    goto :goto_0

    :cond_0
    sget-object v0, Li5/z1;->r:Li5/z1;

    :goto_0
    sget-object v0, Li5/z1$a;->r:Li5/z1$a;

    iget-object v1, p2, Li5/z1;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/xml/namespace/QName;

    if-nez v0, :cond_2

    sget-object v1, Li5/z1$a;->g1:Li5/z1$a;

    iget-object v2, p2, Li5/z1;->c:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lm5/z0;->C:Ljavax/xml/namespace/QName;

    goto :goto_1

    :cond_1
    sget-object v1, Lm5/z0;->D:Ljavax/xml/namespace/QName;

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    sget-object v2, Li5/z1$a;->i1:Li5/z1$a;

    iget-object v3, p2, Li5/z1;->c:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    sget-object v2, Li5/z1$a;->h1:Li5/z1$a;

    iget-object v4, p2, Li5/z1;->c:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v3

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p1}, Lm5/h;->r0()Lm5/h;

    move-result-object v4

    invoke-virtual {p1}, Lm5/h;->r0()Lm5/h;

    move-result-object v5

    invoke-virtual {p1}, Lm5/h;->M()I

    move-result v6

    if-eq v6, v3, :cond_8

    const/4 v3, 0x2

    const/4 v7, 0x0

    if-eq v6, v3, :cond_4

    goto :goto_3

    :cond_4
    if-eqz v2, :cond_6

    invoke-static {p1, v4, v5}, Lm5/g1;->u(Lm5/h;Lm5/h;Lm5/h;)V

    new-instance v7, Lm5/g1$d;

    invoke-static {v4, v5}, Lm5/z0;->x(Lm5/h;Lm5/h;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v0, v1

    :cond_5
    invoke-direct {v7, v4, v5, v0}, Lm5/g1$d;-><init>(Lm5/h;Lm5/h;Ljavax/xml/namespace/QName;)V

    goto :goto_3

    :cond_6
    if-eqz v0, :cond_7

    invoke-static {p1, v4, v5}, Lm5/g1;->u(Lm5/h;Lm5/h;Lm5/h;)V

    new-instance v7, Lm5/g1$d;

    invoke-direct {v7, v4, v5, v0}, Lm5/g1$d;-><init>(Lm5/h;Lm5/h;Ljavax/xml/namespace/QName;)V

    goto :goto_3

    :cond_7
    invoke-virtual {v4, p1}, Lm5/h;->W(Lm5/h;)V

    invoke-virtual {v5, p1}, Lm5/h;->W(Lm5/h;)V

    invoke-virtual {v5}, Lm5/h;->q0()Z

    new-instance v0, Lm5/g1$d;

    invoke-direct {v0, v4, v5, v7}, Lm5/g1$d;-><init>(Lm5/h;Lm5/h;Ljavax/xml/namespace/QName;)V

    move-object v7, v0

    goto :goto_3

    :cond_8
    invoke-static {p1, v4, v5}, Lm5/g1;->u(Lm5/h;Lm5/h;Lm5/h;)V

    invoke-static {v4, v5}, Lm5/z0;->x(Lm5/h;Lm5/h;)Z

    move-result v3

    if-eqz v3, :cond_9

    new-instance v7, Lm5/g1$d;

    invoke-direct {v7, v4, v5, v1}, Lm5/g1$d;-><init>(Lm5/h;Lm5/h;Ljavax/xml/namespace/QName;)V

    goto :goto_3

    :cond_9
    if-eqz v0, :cond_a

    new-instance v7, Lm5/g1$d;

    invoke-direct {v7, v4, v5, v0}, Lm5/g1$d;-><init>(Lm5/h;Lm5/h;Ljavax/xml/namespace/QName;)V

    goto :goto_3

    :cond_a
    new-instance v7, Lm5/g1$a;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, v7}, Lm5/h;->A0(Ljava/lang/Object;)Lm5/h;

    move-result-object v0

    iput-object v0, v7, Lm5/g1$a;->c:Lm5/h;

    :goto_3
    if-nez v7, :cond_f

    if-gez v6, :cond_b

    invoke-virtual {v4, p1}, Lm5/h;->W(Lm5/h;)V

    invoke-virtual {v5, p1}, Lm5/h;->W(Lm5/h;)V

    goto :goto_4

    :cond_b
    if-nez v6, :cond_c

    invoke-virtual {v4, p1}, Lm5/h;->W(Lm5/h;)V

    invoke-virtual {v5, p1}, Lm5/h;->W(Lm5/h;)V

    invoke-virtual {v5}, Lm5/h;->Z()Z

    goto :goto_4

    :cond_c
    if-eqz v2, :cond_d

    invoke-virtual {v4, p1}, Lm5/h;->W(Lm5/h;)V

    invoke-virtual {v4}, Lm5/h;->Z()Z

    invoke-virtual {v5, p1}, Lm5/h;->W(Lm5/h;)V

    invoke-virtual {v5}, Lm5/h;->s0()V

    goto :goto_4

    :cond_d
    const/4 v0, 0x3

    if-ne v6, v0, :cond_e

    invoke-virtual {v4, p1}, Lm5/h;->W(Lm5/h;)V

    invoke-virtual {v5, p1}, Lm5/h;->W(Lm5/h;)V

    goto :goto_4

    :cond_e
    invoke-virtual {v4, p1}, Lm5/h;->W(Lm5/h;)V

    invoke-virtual {v5, p1}, Lm5/h;->W(Lm5/h;)V

    invoke-virtual {v5}, Lm5/h;->q0()Z

    :goto_4
    new-instance v7, Lm5/g1$d;

    invoke-direct {v7, v4, v5, v1}, Lm5/g1$d;-><init>(Lm5/h;Lm5/h;Ljavax/xml/namespace/QName;)V

    :cond_f
    sget-object v0, Li5/z1$a;->f1:Li5/z1$a;

    iget-object v1, p2, Li5/z1;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_10

    new-instance v1, Lm5/g1$b;

    invoke-direct {v1, v7, v0}, Lm5/g1$b;-><init>(Lm5/g1$h;Ljava/lang/String;)V

    move-object v7, v1

    :cond_10
    sget-object v0, Li5/z1$a;->x:Li5/z1$a;

    iget-object v1, p2, Li5/z1;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    new-instance v0, Lm5/g1$g;

    invoke-direct {v0, v7, p2}, Lm5/g1$g;-><init>(Lm5/g1$h;Li5/z1;)V

    move-object v7, v0

    :cond_11
    invoke-virtual {v4}, Lm5/h;->h0()V

    invoke-virtual {v5}, Lm5/h;->h0()V

    iput-object v7, p0, Lm5/g1;->c:Lm5/g1$h;

    iget-object v0, p1, Lm5/h;->a:Lm5/z0;

    iput-object v0, p0, Lm5/g1;->a:Lm5/z0;

    iget-wide v0, v0, Lm5/z0;->k:J

    iput-wide v0, p0, Lm5/g1;->b:J

    const-string v0, "xml"

    const-string v1, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {p0, v0, v1}, Lm5/g1;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Li5/z1$a;->d1:Li5/z1$a;

    iget-object v1, p2, Li5/z1;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_12

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lm5/g1;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_12
    sget-object v0, Li5/z1$a;->k1:Li5/z1$a;

    iget-object v1, p2, Li5/z1;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li5/y1;

    iput-object v0, p0, Lm5/g1;->f:Li5/y1;

    iget-object v0, p0, Lm5/g1;->o:Ljava/util/HashMap;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_13

    iput-object v1, p0, Lm5/g1;->p:Ljava/lang/String;

    invoke-virtual {p0, v1, v1}, Lm5/g1;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    sget-object v0, Li5/z1$a;->b1:Li5/z1$a;

    iget-object v1, p2, Li5/z1;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    instance-of v0, p0, Lm5/g1$k;

    if-nez v0, :cond_15

    new-instance v0, Lm5/g1$k;

    invoke-direct {v0, p1, p2}, Lm5/g1;-><init>(Lm5/h;Li5/z1;)V

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, v0, Lm5/g1$k;->r:Ljava/util/LinkedHashMap;

    :goto_6
    invoke-virtual {v0}, Lm5/g1;->v()Z

    move-result p1

    if-eqz p1, :cond_14

    goto :goto_6

    :cond_14
    iget-object p1, v0, Lm5/g1$k;->r:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    iput-object p1, p0, Lm5/g1;->h:Ljava/util/LinkedHashMap;

    :cond_15
    sget-object p1, Li5/z1$a;->c1:Li5/z1$a;

    iget-object v0, p2, Li5/z1;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lm5/g1;->g:Z

    sget-object p1, Li5/z1$a;->c:Li5/z1$a;

    iget-object v0, p2, Li5/z1;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lm5/g1;->i:Z

    sget-object p1, Li5/z1$a;->e1:Li5/z1$a;

    iget-object p2, p2, Li5/z1;->c:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lm5/g1;->e:Ljava/util/Map;

    iget-object p1, p0, Lm5/g1;->c:Lm5/g1$h;

    invoke-virtual {p1}, Lm5/g1$h;->a()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lm5/g1;->d:Ljava/util/List;

    return-void
.end method

.method public static a(Lm5/z0;Lm5/g1$j;)I
    .locals 1

    iget-boolean v0, p0, Lm5/z0;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lm5/z0;->l()V

    :try_start_0
    invoke-interface {p1}, Lm5/g1$j;->a()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lm5/z0;->m()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lm5/z0;->m()V

    throw p1

    :cond_0
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lm5/z0;->l()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {p1}, Lm5/g1$j;->a()I

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {p0}, Lm5/z0;->m()V

    monitor-exit p0

    :goto_0
    return p1

    :catchall_1
    move-exception p1

    goto :goto_1

    :catchall_2
    move-exception p1

    invoke-virtual {p0}, Lm5/z0;->m()V

    throw p1

    :goto_1
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public static o(C)Z
    .locals 1

    invoke-static {p0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x20

    if-lt p0, v0, :cond_0

    const v0, 0xd7ff

    if-le p0, v0, :cond_2

    :cond_0
    const v0, 0xe000

    if-lt p0, v0, :cond_1

    const v0, 0xfffd

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0x9

    if-eq p0, v0, :cond_2

    const/16 v0, 0xa

    if-eq p0, v0, :cond_2

    const/16 v0, 0xd

    if-eq p0, v0, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static u(Lm5/h;Lm5/h;Lm5/h;)V
    .locals 1

    invoke-virtual {p1, p0}, Lm5/h;->W(Lm5/h;)V

    invoke-virtual {p1}, Lm5/h;->t0()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lm5/h;->Z()Z

    :cond_0
    invoke-virtual {p2, p0}, Lm5/h;->W(Lm5/h;)V

    invoke-virtual {p2}, Lm5/h;->s0()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lm5/g1;->o:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lm5/g1;->l:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v1, v2

    move-object v5, v1

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move-object v5, v2

    :goto_0
    if-lez v4, :cond_4

    add-int/lit8 v6, v4, -0x1

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v6, v4, -0x7

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    add-int/lit8 v5, v4, -0x8

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_4

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, -0x8

    goto :goto_0

    :cond_3
    move-object v5, v2

    :cond_4
    :goto_1
    iget-object p0, p0, Lm5/g1;->n:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_5

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_6

    invoke-virtual {p0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    if-gtz p3, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    if-nez p3, :cond_5

    :cond_1
    invoke-virtual {p0}, Lm5/g1;->p()V

    :goto_0
    invoke-virtual {p0}, Lm5/g1;->n()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-virtual {p0}, Lm5/g1;->q()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lm5/g1;->s()V

    goto :goto_0

    :cond_3
    iget-object p3, p0, Lm5/g1;->o:Ljava/util/HashMap;

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    return-void

    :cond_4
    invoke-virtual {p0, p1, p2}, Lm5/g1;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public abstract d(Lm5/g1$h;)V
.end method

.method public abstract e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract f(Lm5/g1$h;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
.end method

.method public abstract g()V
.end method

.method public abstract h(Lm5/g1$h;)V
.end method

.method public abstract i(Lm5/g1$h;)V
.end method

.method public abstract j()V
.end method

.method public abstract k(Lm5/g1$h;)V
.end method

.method public final l(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lm5/g1;->n:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    if-nez p4, :cond_2

    :cond_1
    return-void

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p4

    if-nez p4, :cond_3

    const/4 p2, 0x0

    :cond_3
    invoke-virtual {p0, p2}, Lm5/g1;->x(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_7

    iget-object p2, p0, Lm5/g1;->e:Ljava/util/Map;

    if-eqz p2, :cond_4

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_4

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-virtual {p0, p4}, Lm5/g1;->x(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_4

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    goto :goto_1

    :cond_4
    if-eqz p3, :cond_5

    iget-boolean p2, p0, Lm5/g1;->g:Z

    if-eqz p2, :cond_5

    const-string p2, ""

    invoke-virtual {p0, p2}, Lm5/g1;->x(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_5

    goto :goto_1

    :cond_5
    invoke-static {p1}, Lj5/i;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const/4 v0, 0x1

    move-object p2, p4

    move v1, v0

    :goto_0
    invoke-virtual {p0, p2}, Lm5/g1;->x(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_1

    :cond_6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    add-int/2addr v1, v0

    goto :goto_0

    :cond_7
    :goto_1
    invoke-virtual {p0, p2, p1, p3}, Lm5/g1;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0, p2, p1}, Lm5/g1;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final m(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lm5/g1;->n:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lm5/g1;->o:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public final n()Z
    .locals 1

    iget v0, p0, Lm5/g1;->m:I

    iget-object p0, p0, Lm5/g1;->l:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final p()V
    .locals 2

    iget-object v0, p0, Lm5/g1;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lm5/g1;->m:I

    :goto_0
    iget v1, p0, Lm5/g1;->m:I

    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v1, p0, Lm5/g1;->m:I

    add-int/lit8 v1, v1, -0x8

    iput v1, p0, Lm5/g1;->m:I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final q()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lm5/g1;->m:I

    add-int/lit8 v0, v0, 0x6

    iget-object p0, p0, Lm5/g1;->l:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final r()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lm5/g1;->m:I

    add-int/lit8 v0, v0, 0x7

    iget-object p0, p0, Lm5/g1;->l:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final s()V
    .locals 1

    iget v0, p0, Lm5/g1;->m:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lm5/g1;->m:I

    return-void
.end method

.method public final t()V
    .locals 11

    :goto_0
    iget-object v0, p0, Lm5/g1;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :goto_1
    return-void

    :cond_1
    add-int/lit8 v3, v1, -0x7

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    add-int/lit8 v5, v1, -0x8

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, p0, Lm5/g1;->n:Ljava/util/HashMap;

    if-nez v6, :cond_2

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    invoke-virtual {v7, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v4, v1, -0x4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    add-int/lit8 v8, v1, -0x3

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    iget-object v10, p0, Lm5/g1;->o:Ljava/util/HashMap;

    if-nez v9, :cond_3

    invoke-virtual {v10, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_3
    invoke-virtual {v10, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    add-int/lit8 v6, v1, -0x5

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    if-eqz v9, :cond_4

    add-int/lit8 v10, v1, -0x6

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v1, -0x2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final v()Z
    .locals 10

    iget-object v0, p0, Lm5/g1;->c:Lm5/g1$h;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lm5/g1;->a:Lm5/z0;

    iget-wide v2, v2, Lm5/z0;->k:J

    iget-wide v4, p0, Lm5/g1;->b:J

    cmp-long v2, v4, v2

    if-nez v2, :cond_21

    invoke-virtual {v0}, Lm5/g1$h;->m()I

    move-result v0

    const/4 v2, -0x2

    const/4 v3, 0x1

    if-eq v0, v2, :cond_1f

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eq v0, v4, :cond_1e

    if-eqz v0, :cond_1d

    const/4 v6, 0x2

    if-eq v0, v3, :cond_11

    if-eq v0, v6, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lm5/g1;->c:Lm5/g1$h;

    invoke-virtual {p0, v0}, Lm5/g1;->i(Lm5/g1$h;)V

    iget-object v0, p0, Lm5/g1;->c:Lm5/g1$h;

    invoke-virtual {v0}, Lm5/g1$h;->r()V

    goto/16 :goto_d

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Unexpected kind"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object v0, p0, Lm5/g1;->c:Lm5/g1$h;

    invoke-virtual {p0, v0}, Lm5/g1;->d(Lm5/g1$h;)V

    iget-object v0, p0, Lm5/g1;->c:Lm5/g1$h;

    invoke-virtual {v0}, Lm5/g1$h;->r()V

    goto/16 :goto_d

    :cond_3
    iget-object v0, p0, Lm5/g1;->c:Lm5/g1$h;

    invoke-virtual {v0}, Lm5/g1$h;->e()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    move v2, v3

    goto :goto_0

    :cond_4
    move v2, v1

    :goto_0
    iget-object v4, p0, Lm5/g1;->c:Lm5/g1$h;

    iget-object v7, p0, Lm5/g1;->l:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lm5/g1$h;->p()V

    invoke-virtual {v4}, Lm5/g1$h;->s()Z

    move-result v7

    :goto_1
    if-eqz v7, :cond_6

    invoke-virtual {v4}, Lm5/g1$h;->l()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v4}, Lm5/g1$h;->f()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lm5/g1$h;->g()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8, v2}, Lm5/g1;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_5
    invoke-virtual {v4}, Lm5/g1$h;->t()Z

    move-result v7

    goto :goto_1

    :cond_6
    invoke-virtual {v4}, Lm5/g1$h;->o()V

    iget-object v4, p0, Lm5/g1;->d:Ljava/util/List;

    if-eqz v4, :cond_8

    move v4, v1

    :goto_2
    iget-object v7, p0, Lm5/g1;->d:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_7

    iget-object v7, p0, Lm5/g1;->d:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget-object v8, p0, Lm5/g1;->d:Ljava/util/List;

    add-int/lit8 v9, v4, 0x1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {p0, v7, v8, v2}, Lm5/g1;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    add-int/lit8 v4, v4, 0x2

    goto :goto_2

    :cond_7
    iput-object v5, p0, Lm5/g1;->d:Ljava/util/List;

    :cond_8
    if-eqz v2, :cond_9

    iget-object v4, p0, Lm5/g1;->o:Ljava/util/HashMap;

    const-string v7, ""

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_9

    invoke-virtual {p0, v7, v7}, Lm5/g1;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v0

    xor-int/lit8 v7, v2, 0x1

    invoke-virtual {p0, v4, v0, v7, v1}, Lm5/g1;->l(Ljava/lang/String;Ljava/lang/String;ZZ)V

    iget-object v0, p0, Lm5/g1;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v4, p0, Lm5/g1;->k:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iget-object v7, p0, Lm5/g1;->c:Lm5/g1$h;

    invoke-virtual {v7}, Lm5/g1$h;->p()V

    iget-object v7, p0, Lm5/g1;->c:Lm5/g1$h;

    invoke-virtual {v7}, Lm5/g1$h;->s()Z

    move-result v7

    :goto_3
    if-eqz v7, :cond_d

    iget-object v7, p0, Lm5/g1;->c:Lm5/g1$h;

    invoke-virtual {v7}, Lm5/g1$h;->m()I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_c

    invoke-virtual {v7}, Lm5/g1$h;->l()Z

    move-result v7

    if-nez v7, :cond_c

    iget-object v7, p0, Lm5/g1;->c:Lm5/g1$h;

    invoke-virtual {v7}, Lm5/g1$h;->e()Ljavax/xml/namespace/QName;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v6

    :goto_4
    if-ltz v8, :cond_b

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljavax/xml/namespace/QName;

    invoke-virtual {v9, v7}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v3

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_5

    :cond_a
    add-int/lit8 v8, v8, -0x1

    goto :goto_4

    :cond_b
    iget-object v8, p0, Lm5/g1;->c:Lm5/g1$h;

    invoke-virtual {v8}, Lm5/g1$h;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v8, v7, v1, v3}, Lm5/g1;->l(Ljava/lang/String;Ljava/lang/String;ZZ)V

    :cond_c
    :goto_5
    iget-object v7, p0, Lm5/g1;->c:Lm5/g1$h;

    invoke-virtual {v7}, Lm5/g1$h;->t()Z

    move-result v7

    goto :goto_3

    :cond_d
    iget-object v6, p0, Lm5/g1;->c:Lm5/g1$h;

    invoke-virtual {v6}, Lm5/g1$h;->o()V

    iget-object v6, p0, Lm5/g1;->h:Ljava/util/LinkedHashMap;

    if-eqz v6, :cond_10

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_e

    if-nez v2, :cond_e

    move v9, v3

    goto :goto_7

    :cond_e
    move v9, v1

    :goto_7
    invoke-virtual {p0, v8, v7, v9, v1}, Lm5/g1;->l(Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_6

    :cond_f
    iput-object v5, p0, Lm5/g1;->h:Ljava/util/LinkedHashMap;

    :cond_10
    iget-object v1, p0, Lm5/g1;->c:Lm5/g1$h;

    invoke-virtual {p0, v1, v0, v4}, Lm5/g1;->f(Lm5/g1$h;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {p0}, Lm5/g1;->t()V

    iget-object v0, p0, Lm5/g1;->c:Lm5/g1$h;

    invoke-virtual {v0}, Lm5/g1$h;->r()V

    goto/16 :goto_d

    :cond_11
    iget-object v0, p0, Lm5/g1;->c:Lm5/g1$h;

    invoke-virtual {v0}, Lm5/g1$h;->d()Li5/t0;

    move-result-object v0

    if-eqz v0, :cond_12

    sget-object v1, Li5/t0;->g:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Li5/t0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    sget-object v1, Li5/t0;->e:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Li5/t0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_8

    :cond_12
    move-object v1, v5

    :goto_8
    if-nez v5, :cond_13

    if-eqz v1, :cond_1c

    :cond_13
    if-nez v1, :cond_17

    iget-object v7, p0, Lm5/g1;->c:Lm5/g1$h;

    invoke-virtual {v7}, Lm5/g1$h;->p()V

    :goto_9
    iget-object v7, p0, Lm5/g1;->c:Lm5/g1$h;

    invoke-virtual {v7}, Lm5/g1$h;->m()I

    move-result v7

    if-ne v7, v6, :cond_14

    goto :goto_a

    :cond_14
    iget-object v7, p0, Lm5/g1;->c:Lm5/g1$h;

    invoke-virtual {v7}, Lm5/g1$h;->n()Z

    move-result v7

    if-eqz v7, :cond_15

    goto :goto_9

    :cond_15
    :goto_a
    iget-object v7, p0, Lm5/g1;->c:Lm5/g1$h;

    invoke-virtual {v7}, Lm5/g1$h;->m()I

    move-result v7

    if-ne v7, v6, :cond_16

    iget-object v1, p0, Lm5/g1;->c:Lm5/g1$h;

    invoke-virtual {v1}, Lm5/g1$h;->e()Ljavax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    :cond_16
    iget-object v7, p0, Lm5/g1;->c:Lm5/g1$h;

    invoke-virtual {v7}, Lm5/g1$h;->o()V

    :cond_17
    sget-object v7, Li5/t0;->f:Ljava/lang/Object;

    invoke-virtual {v0, v7}, Li5/t0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v1, :cond_1c

    iget-object v7, p0, Lm5/g1;->c:Lm5/g1$h;

    invoke-virtual {v7}, Lm5/g1$h;->e()Ljavax/xml/namespace/QName;

    move-result-object v7

    if-nez v7, :cond_1b

    iget-object v8, p0, Lm5/g1;->c:Lm5/g1$h;

    invoke-virtual {v8}, Lm5/g1$h;->p()V

    :goto_b
    iget-object v8, p0, Lm5/g1;->c:Lm5/g1$h;

    invoke-virtual {v8}, Lm5/g1$h;->m()I

    move-result v8

    if-eq v8, v2, :cond_1a

    if-ne v8, v4, :cond_18

    goto :goto_c

    :cond_18
    iget-object v8, p0, Lm5/g1;->c:Lm5/g1$h;

    invoke-virtual {v8}, Lm5/g1$h;->m()I

    move-result v8

    if-ne v8, v6, :cond_19

    iget-object v2, p0, Lm5/g1;->c:Lm5/g1$h;

    invoke-virtual {v2}, Lm5/g1$h;->e()Ljavax/xml/namespace/QName;

    move-result-object v7

    goto :goto_c

    :cond_19
    iget-object v8, p0, Lm5/g1;->c:Lm5/g1$h;

    invoke-virtual {v8}, Lm5/g1$h;->n()Z

    goto :goto_b

    :cond_1a
    :goto_c
    iget-object v2, p0, Lm5/g1;->c:Lm5/g1$h;

    invoke-virtual {v2}, Lm5/g1$h;->o()V

    :cond_1b
    if-eqz v7, :cond_1c

    invoke-virtual {v7}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-virtual {p0, v1, v0, v5}, Lm5/g1;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_1c
    invoke-virtual {p0}, Lm5/g1;->j()V

    goto :goto_d

    :cond_1d
    iget-object v0, p0, Lm5/g1;->c:Lm5/g1$h;

    invoke-virtual {p0, v0}, Lm5/g1;->k(Lm5/g1$h;)V

    goto :goto_d

    :cond_1e
    invoke-virtual {p0}, Lm5/g1;->g()V

    iget-object v0, p0, Lm5/g1;->c:Lm5/g1$h;

    invoke-virtual {v0}, Lm5/g1$h;->q()V

    iput-object v5, p0, Lm5/g1;->c:Lm5/g1$h;

    return v3

    :cond_1f
    iget-object v0, p0, Lm5/g1;->c:Lm5/g1$h;

    invoke-virtual {p0, v0}, Lm5/g1;->h(Lm5/g1$h;)V

    invoke-virtual {p0}, Lm5/g1;->t()V

    :cond_20
    :goto_d
    iget-object p0, p0, Lm5/g1;->c:Lm5/g1$h;

    invoke-virtual {p0}, Lm5/g1$h;->n()Z

    return v3

    :cond_21
    new-instance p0, Ljava/util/ConcurrentModificationException;

    const-string v0, "Document changed during save"

    invoke-direct {p0, v0}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public final x(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-static {p1}, Lm5/z0;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lm5/g1;->o:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-gtz p1, :cond_2

    iget-object p0, p0, Lm5/g1;->p:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method
