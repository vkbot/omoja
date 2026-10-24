.class public final Lo5/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj5/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo5/a$a;,
        Lo5/a$b;
    }
.end annotation


# instance fields
.field public A:[B

.field public B:Ljava/util/ArrayList;

.field public C:Ljava/util/ArrayList;

.field public final a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lorg/apache/xmlbeans/impl/values/d0;",
            ">;"
        }
    .end annotation
.end field

.field public b:Z

.field public final c:Li5/c0;

.field public final d:Li5/s;

.field public final e:Li5/d0;

.field public f:Lo5/a$a;

.field public g:I

.field public final h:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Li5/y0;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Z

.field public final j:Z

.field public final k:Lo5/a$b;

.field public l:I

.field public final m:Lj5/d;

.field public n:I

.field public o:Li5/x;

.field public p:Li5/z;

.field public q:Li5/w;

.field public r:Li5/c0;

.field public s:Ljava/lang/String;

.field public t:Ljava/math/BigDecimal;

.field public u:Z

.field public v:F

.field public w:D

.field public x:Ljavax/xml/namespace/QName;

.field public y:Li5/d;

.field public z:Li5/g;


# direct methods
.method public constructor <init>(Li5/c0;Li5/s;Li5/d0;Li5/z1;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lo5/a;->a:Ljava/util/LinkedList;

    if-nez p4, :cond_0

    sget-object p4, Li5/z1;->r:Li5/z1;

    goto :goto_0

    :cond_0
    sget-object v0, Li5/z1;->r:Li5/z1;

    :goto_0
    sget-object v0, Li5/z1$a;->E1:Li5/z1$a;

    iget-object v1, p4, Li5/z1;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    iput-object v0, p0, Lo5/a;->h:Ljava/util/Collection;

    sget-object v1, Li5/z1$a;->I1:Li5/z1$a;

    iget-object v2, p4, Li5/z1;->c:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lo5/a;->i:Z

    sget-object v1, Li5/z1$a;->J1:Li5/z1$a;

    iget-object p4, p4, Li5/z1;->c:Ljava/util/Map;

    invoke-interface {p4, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p4

    iput-boolean p4, p0, Lo5/a;->j:Z

    if-nez v0, :cond_1

    const/4 p4, 0x0

    iput-object p4, p0, Lo5/a;->h:Ljava/util/Collection;

    :cond_1
    new-instance p4, Lj5/d;

    iget-object v0, p0, Lo5/a;->h:Ljava/util/Collection;

    invoke-interface {p1}, Li5/c0;->m()Z

    move-result v1

    invoke-direct {p4, v0, v1}, Lj5/d;-><init>(Ljava/util/Collection;Z)V

    iput-object p4, p0, Lo5/a;->m:Lj5/d;

    iput-object p3, p0, Lo5/a;->e:Li5/d0;

    iput-object p1, p0, Lo5/a;->c:Li5/c0;

    iput-object p2, p0, Lo5/a;->d:Li5/s;

    new-instance p1, Lo5/a$b;

    invoke-direct {p1, p0}, Lo5/a$b;-><init>(Lo5/a;)V

    iput-object p1, p0, Lo5/a;->k:Lo5/a$b;

    return-void
.end method


# virtual methods
.method public final a(Lj5/n$a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;ILjavax/xml/namespace/QName;Li5/c0;Ljava/util/ArrayList;Li5/c0;)V
    .locals 1

    iget p8, p0, Lo5/a;->g:I

    const/4 v0, 0x1

    add-int/2addr p8, v0

    iput p8, p0, Lo5/a;->g:I

    iget p8, p0, Lo5/a;->l:I

    if-nez p8, :cond_2

    if-nez p5, :cond_0

    iput-boolean v0, p0, Lo5/a;->b:Z

    :cond_0
    iget-object p0, p0, Lo5/a;->h:Ljava/util/Collection;

    if-eqz p0, :cond_2

    check-cast p1, Lm5/v1;

    new-instance p8, Lm5/y;

    iget-object p1, p1, Lm5/v1;->b:Lm5/h;

    invoke-direct {p8, p1}, Lm5/y;-><init>(Lm5/h;)V

    if-nez p3, :cond_1

    new-instance p1, Li5/o2;

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3, p5, p8}, Li5/y0;-><init>(Ljava/lang/String;Ljava/lang/String;ILi5/p0;)V

    iput-object p6, p1, Li5/o2;->e1:Ljavax/xml/namespace/QName;

    iput-object p7, p1, Li5/o2;->f1:Li5/c0;

    iput-object p9, p1, Li5/o2;->h1:Li5/c0;

    goto :goto_0

    :cond_1
    new-instance p1, Li5/o2;

    invoke-direct {p1, p3, p4, p5, p8}, Li5/y0;-><init>(Ljava/lang/String;[Ljava/lang/Object;ILi5/p0;)V

    iput-object p6, p1, Li5/o2;->e1:Ljavax/xml/namespace/QName;

    iput-object p7, p1, Li5/o2;->f1:Li5/c0;

    iput-object p9, p1, Li5/o2;->h1:Li5/c0;

    :goto_0
    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public final b(Lj5/n$a;Ljava/lang/String;[Ljava/lang/Object;Li5/c0;ILi5/c0;)V
    .locals 10

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v7, p4

    move-object/from16 v9, p6

    invoke-virtual/range {v0 .. v9}, Lo5/a;->a(Lj5/n$a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;ILjavax/xml/namespace/QName;Li5/c0;Ljava/util/ArrayList;Li5/c0;)V

    return-void
.end method

.method public final c(Lj5/n$a;Ljava/lang/String;[Ljava/lang/Object;Li5/c0;Ljava/util/ArrayList;ILi5/c0;)V
    .locals 10

    move-object v0, p0

    iget-object v1, v0, Lo5/a;->f:Lo5/a$a;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lo5/a$a;->b:Li5/s;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Li5/s;->getName()Ljavax/xml/namespace/QName;

    move-result-object v1

    :goto_0
    move-object v6, v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v7, p4

    move-object v8, p5

    move-object/from16 v9, p7

    invoke-virtual/range {v0 .. v9}, Lo5/a;->a(Lj5/n$a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;ILjavax/xml/namespace/QName;Li5/c0;Ljava/util/ArrayList;Li5/c0;)V

    return-void
.end method

.method public final d(Lj5/n$a;ZLi5/s;)V
    .locals 14

    move-object v6, p0

    move-object v7, p1

    move-object/from16 v8, p3

    iget-object v10, v6, Lo5/a;->f:Lo5/a$a;

    iget-boolean v0, v10, Lo5/a$a;->f:Z

    const/4 v11, 0x1

    const/4 v9, 0x0

    if-nez v0, :cond_3

    iget-boolean v0, v10, Lo5/a$a;->e:Z

    iget-object v12, v6, Lo5/a;->m:Lj5/d;

    if-eqz v0, :cond_0

    iget-object v1, v10, Lo5/a$a;->a:Li5/c0;

    const/4 v5, 0x1

    move-object v0, p0

    move-object/from16 v2, p3

    move-object v3, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lo5/a;->f(Li5/c0;Li5/s;Lj5/n$a;ZZ)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v10, Lo5/a$a;->a:Li5/c0;

    iget-object v2, v12, Lj5/d;->a:Lj5/d$a;

    :goto_0
    if-eqz v2, :cond_3

    invoke-virtual {v2, p1, v1, v0, v9}, Lj5/d$a;->e(Lj5/n$a;Li5/c0;Ljava/lang/String;Z)V

    iget-object v2, v2, Lj5/d$a;->a:Lj5/d$a;

    goto :goto_0

    :cond_0
    iget-boolean v0, v10, Lo5/a$a;->d:Z

    if-eqz v0, :cond_1

    sget-object v13, Li5/g2;->m0:Li5/c0;

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, v13

    move-object/from16 v2, p3

    move-object v3, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lo5/a;->f(Li5/c0;Li5/s;Lj5/n$a;ZZ)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v12, Lj5/d;->a:Lj5/d$a;

    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {v1, p1, v13, v0, v9}, Lj5/d$a;->e(Lj5/n$a;Li5/c0;Ljava/lang/String;Z)V

    iget-object v1, v1, Lj5/d$a;->a:Lj5/d$a;

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, v10, Lo5/a$a;->a:Li5/c0;

    iget-object v1, v12, Lj5/d;->a:Lj5/d$a;

    :goto_2
    if-eqz v1, :cond_3

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2, v11}, Lj5/d$a;->e(Lj5/n$a;Li5/c0;Ljava/lang/String;Z)V

    iget-object v1, v1, Lj5/d$a;->a:Lj5/d$a;

    goto :goto_2

    :cond_2
    iget-object v0, v10, Lo5/a$a;->a:Li5/c0;

    iget-object v1, v12, Lj5/d;->a:Lj5/d$a;

    :goto_3
    if-eqz v1, :cond_3

    const-string v2, ""

    invoke-virtual {v1, p1, v0, v2, v9}, Lj5/d$a;->e(Lj5/n$a;Li5/c0;Ljava/lang/String;Z)V

    iget-object v1, v1, Lj5/d$a;->a:Lj5/d$a;

    goto :goto_3

    :cond_3
    if-nez p2, :cond_8

    iget-boolean v0, v10, Lo5/a$a;->d:Z

    if-nez v0, :cond_8

    move-object v0, v7

    check-cast v0, Lm5/v1;

    iget-object v1, v0, Lm5/v1;->b:Lm5/h;

    invoke-virtual {v1}, Lm5/h;->D()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v1, Lm5/h;->a:Lm5/z0;

    invoke-virtual {v2}, Lm5/z0;->q()Lm5/f;

    move-result-object v2

    iget-object v3, v1, Lm5/h;->b:Lm5/w1;

    invoke-virtual {v3}, Lm5/w1;->e0()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, v1, Lm5/h;->a:Lm5/z0;

    iget v5, v4, Lm5/z0;->o:I

    iput v5, v1, Lm5/h;->r:I

    iget v4, v4, Lm5/z0;->p:I

    iput v4, v1, Lm5/h;->s:I

    invoke-virtual {v2, v5, v4, v3}, Lm5/f;->g(IILjava/lang/Object;)Z

    move-result v1

    goto :goto_4

    :cond_4
    iget-boolean v2, v0, Lm5/v1;->d:Z

    if-eqz v2, :cond_5

    iget-object v1, v1, Lm5/h;->a:Lm5/z0;

    invoke-virtual {v1}, Lm5/z0;->q()Lm5/f;

    move-result-object v1

    iget-object v2, v0, Lm5/v1;->e:Lm5/h;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lm5/h;->r(I)Ljava/lang/Object;

    move-result-object v3

    iget v4, v2, Lm5/h;->r:I

    iget v2, v2, Lm5/h;->s:I

    invoke-virtual {v1, v4, v2, v3}, Lm5/f;->g(IILjava/lang/Object;)Z

    move-result v1

    goto :goto_4

    :cond_5
    iget-object v2, v0, Lm5/v1;->f:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Lm5/h;->a:Lm5/z0;

    invoke-virtual {v1}, Lm5/z0;->q()Lm5/f;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v9, v3, v2}, Lm5/f;->g(IILjava/lang/Object;)Z

    move-result v1

    :goto_4
    if-nez v1, :cond_8

    iget-boolean v1, v10, Lo5/a$a;->e:Z

    if-nez v1, :cond_8

    instance-of v1, v8, Li5/x;

    if-eqz v1, :cond_7

    move-object v0, v8

    check-cast v0, Li5/x;

    iget-object v1, v10, Lo5/a$a;->a:Li5/c0;

    invoke-interface {v1}, Li5/c0;->getContentType()I

    move-result v1

    if-ne v1, v11, :cond_6

    const-string v1, "cvc-complex-type.2.1"

    :goto_5
    move-object v2, v1

    goto :goto_6

    :cond_6
    const-string v1, "cvc-complex-type.2.3"

    goto :goto_5

    :goto_6
    invoke-interface {v0}, Li5/s;->getName()Ljavax/xml/namespace/QName;

    move-result-object v1

    invoke-static {v1}, Lj5/i;->f(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Li5/s;->getName()Ljavax/xml/namespace/QName;

    invoke-interface/range {p3 .. p3}, Li5/s;->getType()Li5/c0;

    move-result-object v4

    const/4 v5, 0x3

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, v8

    invoke-virtual/range {v0 .. v6}, Lo5/a;->b(Lj5/n$a;Ljava/lang/String;[Ljava/lang/Object;Li5/c0;ILi5/c0;)V

    goto :goto_7

    :cond_7
    const-string v2, "Can\'t have mixed content"

    invoke-virtual {v0}, Lm5/v1;->x()Ljavax/xml/namespace/QName;

    iget-object v8, v10, Lo5/a$a;->a:Li5/c0;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, v9

    move-object v7, v8

    move-object v8, v12

    move-object v9, v13

    invoke-virtual/range {v0 .. v9}, Lo5/a;->a(Lj5/n$a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;ILjavax/xml/namespace/QName;Li5/c0;Ljava/util/ArrayList;Li5/c0;)V

    :cond_8
    :goto_7
    if-nez p2, :cond_9

    iput-boolean v11, v10, Lo5/a$a;->f:Z

    :cond_9
    return-void
.end method

.method public final e(ILj5/n$a;)V
    .locals 23

    move-object/from16 v9, p0

    move/from16 v0, p1

    move-object/from16 v10, p2

    const/4 v11, 0x0

    iput-object v11, v9, Lo5/a;->s:Ljava/lang/String;

    iput-object v11, v9, Lo5/a;->t:Ljava/math/BigDecimal;

    const/4 v12, 0x0

    iput-boolean v12, v9, Lo5/a;->u:Z

    const/4 v1, 0x0

    iput v1, v9, Lo5/a;->v:F

    const-wide/16 v1, 0x0

    iput-wide v1, v9, Lo5/a;->w:D

    iput-object v11, v9, Lo5/a;->x:Ljavax/xml/namespace/QName;

    iput-object v11, v9, Lo5/a;->y:Li5/d;

    iput-object v11, v9, Lo5/a;->z:Li5/g;

    iput-object v11, v9, Lo5/a;->A:[B

    iput-object v11, v9, Lo5/a;->B:Ljava/util/ArrayList;

    iput-object v11, v9, Lo5/a;->C:Ljava/util/ArrayList;

    iput-object v11, v9, Lo5/a;->r:Li5/c0;

    iget v1, v9, Lo5/a;->n:I

    const/4 v13, 0x1

    const/4 v14, 0x2

    if-lez v1, :cond_2

    if-eq v0, v13, :cond_1

    if-eq v0, v14, :cond_0

    goto/16 :goto_34

    :cond_0
    sub-int/2addr v1, v13

    iput v1, v9, Lo5/a;->n:I

    goto/16 :goto_34

    :cond_1
    add-int/2addr v1, v13

    iput v1, v9, Lo5/a;->n:I

    goto/16 :goto_34

    :cond_2
    iget-object v15, v9, Lo5/a;->a:Ljava/util/LinkedList;

    const-string v16, " "

    iget-object v8, v9, Lo5/a;->e:Li5/d0;

    iget-boolean v7, v9, Lo5/a;->i:Z

    const/4 v6, 0x5

    const/4 v5, 0x4

    iget-object v4, v9, Lo5/a;->m:Lj5/d;

    const/4 v3, 0x3

    if-eq v0, v13, :cond_25

    if-eq v0, v14, :cond_18

    if-eq v0, v3, :cond_16

    if-eq v0, v5, :cond_9

    if-eq v0, v6, :cond_3

    goto/16 :goto_34

    :cond_3
    iget-object v0, v9, Lo5/a;->f:Lo5/a$a;

    iget-object v1, v0, Lo5/a$a;->k:Li5/q;

    if-eqz v1, :cond_61

    check-cast v1, Lorg/apache/xmlbeans/impl/schema/f;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/f;->b()[Li5/w;

    move-result-object v11

    array-length v13, v11

    :goto_0
    if-ge v12, v13, :cond_61

    aget-object v1, v11, v12

    iget-object v2, v0, Lo5/a$a;->l:Ljava/util/HashSet;

    if-eqz v2, :cond_5

    invoke-interface {v1}, Li5/s;->getName()Ljavax/xml/namespace/QName;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    move-object v14, v4

    move-object/from16 p1, v11

    move v11, v3

    goto/16 :goto_3

    :cond_5
    :goto_1
    invoke-interface {v1}, Li5/w;->A()I

    move-result v2

    if-ne v2, v3, :cond_6

    const-string v5, "cvc-complex-type.4"

    invoke-interface {v1}, Li5/s;->getName()Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-static {v2}, Lj5/i;->f(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v1}, Li5/s;->getName()Ljavax/xml/namespace/QName;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v14, 0x3e8

    iget-object v15, v0, Lo5/a$a;->a:Li5/c0;

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 p1, v11

    move v11, v3

    move-object v3, v5

    move-object v5, v4

    move-object v4, v6

    move-object v6, v5

    move-object v5, v7

    move-object v7, v6

    move-object v6, v8

    move-object v8, v7

    move v7, v14

    move-object v14, v8

    move-object v8, v15

    invoke-virtual/range {v1 .. v8}, Lo5/a;->c(Lj5/n$a;Ljava/lang/String;[Ljava/lang/Object;Li5/c0;Ljava/util/ArrayList;ILi5/c0;)V

    goto :goto_3

    :cond_6
    move-object v14, v4

    move-object/from16 p1, v11

    move v11, v3

    invoke-interface {v1}, Li5/s;->i0()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-interface {v1}, Li5/s;->t()Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    invoke-interface {v1}, Li5/s;->getName()Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-interface {v1}, Li5/s;->getType()Li5/c0;

    move-result-object v3

    invoke-interface {v1}, Li5/s;->k()Ljava/lang/String;

    move-result-object v1

    iget-object v4, v14, Lj5/d;->a:Lj5/d$a;

    :goto_2
    if-eqz v4, :cond_8

    invoke-virtual {v4, v10, v2, v3, v1}, Lj5/d$a;->a(Lj5/n$a;Ljavax/xml/namespace/QName;Li5/c0;Ljava/lang/String;)V

    iget-object v4, v4, Lj5/d$a;->a:Lj5/d$a;

    goto :goto_2

    :cond_8
    :goto_3
    add-int/lit8 v12, v12, 0x1

    move v3, v11

    move-object v4, v14

    move-object/from16 v11, p1

    goto :goto_0

    :cond_9
    move-object v12, v4

    move-object v6, v11

    move v11, v3

    move-object v0, v10

    check-cast v0, Lm5/v1;

    invoke-virtual {v0}, Lm5/v1;->x()Ljavax/xml/namespace/QName;

    move-result-object v10

    iget-object v1, v9, Lo5/a;->f:Lo5/a$a;

    iget-object v2, v1, Lo5/a$a;->l:Ljava/util/HashSet;

    if-nez v2, :cond_a

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, v1, Lo5/a$a;->l:Ljava/util/HashSet;

    :cond_a
    iget-object v2, v1, Lo5/a$a;->l:Ljava/util/HashSet;

    invoke-virtual {v2, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v3, "uniqattspec"

    invoke-static {v10}, Lj5/i;->f(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3e8

    iget-object v8, v1, Lo5/a$a;->a:Li5/c0;

    move-object/from16 v1, p0

    move-object v2, v0

    invoke-virtual/range {v1 .. v8}, Lo5/a;->c(Lj5/n$a;Ljava/lang/String;[Ljava/lang/Object;Li5/c0;Ljava/util/ArrayList;ILi5/c0;)V

    goto/16 :goto_34

    :cond_b
    iget-object v2, v1, Lo5/a$a;->l:Ljava/util/HashSet;

    invoke-virtual {v2, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-boolean v2, v1, Lo5/a$a;->c:Z

    if-nez v2, :cond_c

    const-string v3, "cvc-complex-type.3.2.1"

    invoke-static {v10}, Lj5/i;->f(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3e8

    iget-object v8, v1, Lo5/a$a;->a:Li5/c0;

    move-object/from16 v1, p0

    move-object v2, v0

    invoke-virtual/range {v1 .. v8}, Lo5/a;->c(Lj5/n$a;Ljava/lang/String;[Ljava/lang/Object;Li5/c0;Ljava/util/ArrayList;ILi5/c0;)V

    goto/16 :goto_34

    :cond_c
    iget-object v2, v1, Lo5/a$a;->k:Li5/q;

    if-nez v2, :cond_d

    move-object v15, v6

    goto :goto_4

    :cond_d
    check-cast v2, Lorg/apache/xmlbeans/impl/schema/f;

    iget-object v2, v2, Lorg/apache/xmlbeans/impl/schema/f;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v10}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li5/w;

    move-object v15, v2

    :goto_4
    if-eqz v15, :cond_f

    iput-object v15, v9, Lo5/a;->q:Li5/w;

    invoke-interface {v15}, Li5/w;->A()I

    move-result v2

    if-ne v2, v13, :cond_e

    const-string v3, "cvc-complex-type.prohibited-attribute"

    invoke-static {v10}, Lj5/i;->f(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3e8

    iget-object v8, v1, Lo5/a$a;->a:Li5/c0;

    move-object/from16 v1, p0

    move-object v2, v0

    invoke-virtual/range {v1 .. v8}, Lo5/a;->c(Lj5/n$a;Ljava/lang/String;[Ljava/lang/Object;Li5/c0;Ljava/util/ArrayList;ILi5/c0;)V

    goto/16 :goto_34

    :cond_e
    invoke-interface {v15}, Li5/s;->getType()Li5/c0;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object v3, v15

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Lo5/a;->f(Li5/c0;Li5/s;Lj5/n$a;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v15}, Li5/s;->getType()Li5/c0;

    move-result-object v2

    iget-object v3, v12, Lj5/d;->a:Lj5/d$a;

    :goto_5
    if-eqz v3, :cond_61

    invoke-virtual {v3, v0, v10, v2, v1}, Lj5/d$a;->a(Lj5/n$a;Ljavax/xml/namespace/QName;Li5/c0;Ljava/lang/String;)V

    iget-object v3, v3, Lj5/d$a;->a:Lj5/d$a;

    goto :goto_5

    :cond_f
    iget-object v2, v1, Lo5/a$a;->k:Li5/q;

    check-cast v2, Lorg/apache/xmlbeans/impl/schema/f;

    iget v3, v2, Lorg/apache/xmlbeans/impl/schema/f;->c:I

    if-nez v3, :cond_10

    const-string v3, "cvc-complex-type.3.2.1"

    invoke-static {v10}, Lj5/i;->f(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3e8

    iget-object v8, v1, Lo5/a$a;->a:Li5/c0;

    move-object/from16 v1, p0

    move-object v2, v0

    invoke-virtual/range {v1 .. v8}, Lo5/a;->c(Lj5/n$a;Ljava/lang/String;[Ljava/lang/Object;Li5/c0;Ljava/util/ArrayList;ILi5/c0;)V

    goto/16 :goto_34

    :cond_10
    iget-object v2, v2, Lorg/apache/xmlbeans/impl/schema/f;->b:Li5/k;

    if-nez v2, :cond_11

    sget-object v2, Li5/k;->Z:Li5/k;

    :cond_11
    invoke-virtual {v2, v10}, Li5/k;->a(Ljavax/xml/namespace/QName;)Z

    move-result v2

    if-nez v2, :cond_12

    const-string v3, "cvc-complex-type.3.2.2"

    invoke-static {v10}, Lj5/i;->f(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3e8

    iget-object v8, v1, Lo5/a$a;->a:Li5/c0;

    move-object/from16 v1, p0

    move-object v2, v0

    invoke-virtual/range {v1 .. v8}, Lo5/a;->c(Lj5/n$a;Ljava/lang/String;[Ljava/lang/Object;Li5/c0;Ljava/util/ArrayList;ILi5/c0;)V

    goto/16 :goto_34

    :cond_12
    if-eq v3, v11, :cond_61

    if-ne v3, v14, :cond_13

    if-eqz v7, :cond_13

    goto/16 :goto_34

    :cond_13
    invoke-interface {v8, v10}, Li5/d0;->findAttribute(Ljavax/xml/namespace/QName;)Li5/t;

    move-result-object v7

    iput-object v7, v9, Lo5/a;->q:Li5/w;

    if-nez v7, :cond_15

    if-ne v3, v14, :cond_14

    goto/16 :goto_34

    :cond_14
    const-string v3, "cvc-assess-attr.1.2"

    invoke-static {v10}, Lj5/i;->f(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3e8

    iget-object v8, v1, Lo5/a$a;->a:Li5/c0;

    move-object/from16 v1, p0

    move-object v2, v0

    invoke-virtual/range {v1 .. v8}, Lo5/a;->c(Lj5/n$a;Ljava/lang/String;[Ljava/lang/Object;Li5/c0;Ljava/util/ArrayList;ILi5/c0;)V

    goto/16 :goto_34

    :cond_15
    invoke-interface {v7}, Li5/s;->getType()Li5/c0;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object v3, v7

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Lo5/a;->f(Li5/c0;Li5/s;Lj5/n$a;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7}, Li5/s;->getType()Li5/c0;

    move-result-object v2

    iget-object v3, v12, Lj5/d;->a:Lj5/d$a;

    :goto_6
    if-eqz v3, :cond_61

    invoke-virtual {v3, v0, v10, v2, v1}, Lj5/d$a;->a(Lj5/n$a;Ljavax/xml/namespace/QName;Li5/c0;Ljava/lang/String;)V

    iget-object v3, v3, Lj5/d$a;->a:Lj5/d$a;

    goto :goto_6

    :cond_16
    iget-object v0, v9, Lo5/a;->f:Lo5/a$a;

    iget-boolean v1, v0, Lo5/a$a;->h:Z

    if-eqz v1, :cond_17

    const-string v3, "cvc-elt.3.2.1"

    const/4 v4, 0x0

    iget-object v1, v0, Lo5/a$a;->b:Li5/s;

    invoke-interface {v1}, Li5/s;->getName()Ljavax/xml/namespace/QName;

    iget-object v8, v0, Lo5/a$a;->a:Li5/c0;

    const/4 v6, 0x0

    const/4 v7, 0x4

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object v5, v8

    invoke-virtual/range {v1 .. v8}, Lo5/a;->c(Lj5/n$a;Ljava/lang/String;[Ljava/lang/Object;Li5/c0;Ljava/util/ArrayList;ILi5/c0;)V

    goto :goto_7

    :cond_17
    iget-object v1, v0, Lo5/a$a;->b:Li5/s;

    invoke-virtual {v9, v10, v12, v1}, Lo5/a;->d(Lj5/n$a;ZLi5/s;)V

    :goto_7
    iput-boolean v12, v0, Lo5/a$a;->g:Z

    goto/16 :goto_34

    :cond_18
    move-object v6, v11

    move-object v11, v4

    iget-object v0, v9, Lo5/a;->f:Lo5/a$a;

    iget-boolean v1, v0, Lo5/a$a;->h:Z

    if-nez v1, :cond_20

    iget-boolean v1, v0, Lo5/a$a;->j:Z

    if-eqz v1, :cond_19

    iget-object v1, v0, Lo5/a$a;->i:Lorg/apache/xmlbeans/impl/schema/a0;

    invoke-virtual {v1, v6, v12}, Lorg/apache/xmlbeans/impl/schema/a0;->h(Ljavax/xml/namespace/QName;Z)Z

    move-result v1

    if-eqz v1, :cond_1a

    :cond_19
    move-object v14, v6

    goto/16 :goto_b

    :cond_1a
    iget-object v1, v0, Lo5/a$a;->a:Li5/c0;

    invoke-interface {v1}, Li5/c0;->D()[Li5/a0;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    array-length v4, v1

    :goto_8
    if-ge v12, v4, :cond_1d

    aget-object v5, v1, v12

    invoke-interface {v5}, Li5/a0;->getName()Ljavax/xml/namespace/QName;

    move-result-object v7

    iget-boolean v8, v0, Lo5/a$a;->j:Z

    if-eqz v8, :cond_1c

    iget-object v8, v0, Lo5/a$a;->i:Lorg/apache/xmlbeans/impl/schema/a0;

    invoke-virtual {v8, v7, v13}, Lorg/apache/xmlbeans/impl/schema/a0;->h(Ljavax/xml/namespace/QName;Z)Z

    move-result v7

    if-eqz v7, :cond_1c

    sget-object v7, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-interface {v5}, Li5/a0;->a()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v7

    if-nez v7, :cond_1b

    invoke-interface {v5}, Li5/a0;->getName()Ljavax/xml/namespace/QName;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_1b
    invoke-interface {v5}, Li5/a0;->getName()Ljavax/xml/namespace/QName;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1c
    :goto_9
    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    :cond_1d
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1e

    move-object v7, v2

    goto :goto_a

    :cond_1e
    move-object v7, v3

    :goto_a
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1f

    invoke-interface {v7}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/apache/poi/xwpf/usermodel/f;

    const/16 v3, 0x1b

    invoke-direct {v2, v3}, Lorg/apache/poi/xwpf/usermodel/f;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static/range {v16 .. v16}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "cvc-complex-type.2.4c"

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v8, 0x1

    iget-object v12, v0, Lo5/a$a;->a:Li5/c0;

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object v14, v6

    move-object v6, v7

    move v7, v8

    move-object v8, v12

    invoke-virtual/range {v1 .. v8}, Lo5/a;->c(Lj5/n$a;Ljava/lang/String;[Ljava/lang/Object;Li5/c0;Ljava/util/ArrayList;ILi5/c0;)V

    goto :goto_b

    :cond_1f
    move-object v14, v6

    const-string v3, "cvc-complex-type.2.4d"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x2

    iget-object v8, v0, Lo5/a$a;->a:Li5/c0;

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-virtual/range {v1 .. v8}, Lo5/a;->c(Lj5/n$a;Ljava/lang/String;[Ljava/lang/Object;Li5/c0;Ljava/util/ArrayList;ILi5/c0;)V

    :goto_b
    iget-boolean v1, v0, Lo5/a$a;->g:Z

    if-eqz v1, :cond_21

    iget-object v0, v0, Lo5/a$a;->b:Li5/s;

    invoke-virtual {v9, v10, v13, v0}, Lo5/a;->d(Lj5/n$a;ZLi5/s;)V

    goto :goto_c

    :cond_20
    move-object v14, v6

    :cond_21
    :goto_c
    iget-object v0, v9, Lo5/a;->f:Lo5/a$a;

    iget-object v0, v0, Lo5/a$a;->i:Lorg/apache/xmlbeans/impl/schema/a0;

    if-eqz v0, :cond_22

    invoke-virtual {v15, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v0, v9, Lo5/a;->f:Lo5/a$a;

    iput-object v14, v0, Lo5/a$a;->i:Lorg/apache/xmlbeans/impl/schema/a0;

    :cond_22
    iget-object v0, v9, Lo5/a;->f:Lo5/a$a;

    iget-object v0, v0, Lo5/a$a;->m:Lo5/a$a;

    iput-object v0, v9, Lo5/a;->f:Lo5/a$a;

    iget-object v0, v11, Lj5/d;->b:Lj5/d$b;

    iget-boolean v0, v0, Lj5/d$b;->b:Z

    if-eqz v0, :cond_24

    iget-object v0, v11, Lj5/d;->a:Lj5/d$a;

    :goto_d
    if-eqz v0, :cond_23

    iget-object v1, v11, Lj5/d;->b:Lj5/d$b;

    iget-object v1, v1, Lj5/d$b;->c:Lj5/d$a;

    if-eq v0, v1, :cond_23

    invoke-virtual {v0, v10}, Lj5/d$a;->d(Lj5/n$a;)V

    iget-object v0, v0, Lj5/d$a;->a:Lj5/d$a;

    goto :goto_d

    :cond_23
    iget-object v0, v11, Lj5/d;->b:Lj5/d$b;

    iget-object v0, v0, Lj5/d$b;->c:Lj5/d$a;

    iput-object v0, v11, Lj5/d;->a:Lj5/d$a;

    :cond_24
    iget-object v0, v11, Lj5/d;->b:Lj5/d$b;

    iget-object v0, v0, Lj5/d$b;->a:Lj5/d$b;

    iput-object v0, v11, Lj5/d;->b:Lj5/d$b;

    iget-object v0, v11, Lj5/d;->a:Lj5/d$a;

    :goto_e
    if-eqz v0, :cond_61

    invoke-virtual {v0}, Lj5/d$a;->c()V

    iget-object v0, v0, Lj5/d$a;->a:Lj5/d$a;

    goto :goto_e

    :cond_25
    move-object/from16 v22, v11

    move v11, v3

    move-object v3, v4

    move-object/from16 v4, v22

    iget-object v2, v9, Lo5/a;->f:Lo5/a$a;

    if-nez v2, :cond_26

    iget-object v0, v9, Lo5/a;->c:Li5/c0;

    iget-object v1, v9, Lo5/a;->d:Li5/s;

    move-object v14, v1

    move-object v11, v2

    move-object/from16 v20, v3

    move-object v13, v8

    move-object v8, v0

    goto/16 :goto_13

    :cond_26
    move-object v0, v10

    check-cast v0, Lm5/v1;

    invoke-virtual {v0}, Lm5/v1;->x()Ljavax/xml/namespace/QName;

    move-result-object v1

    iput-boolean v12, v2, Lo5/a$a;->g:Z

    iget-boolean v4, v2, Lo5/a$a;->h:Z

    if-eqz v4, :cond_27

    const-string v3, "cvc-elt.3.2.1"

    const/4 v4, 0x0

    iget-object v1, v2, Lo5/a$a;->b:Li5/s;

    invoke-interface {v1}, Li5/s;->getName()Ljavax/xml/namespace/QName;

    iget-object v8, v2, Lo5/a$a;->a:Li5/c0;

    const/4 v6, 0x0

    const/4 v7, 0x4

    move-object/from16 v1, p0

    move-object v2, v0

    move-object v5, v8

    invoke-virtual/range {v1 .. v8}, Lo5/a;->c(Lj5/n$a;Ljava/lang/String;[Ljava/lang/Object;Li5/c0;Ljava/util/ArrayList;ILi5/c0;)V

    iput v13, v9, Lo5/a;->n:I

    goto/16 :goto_34

    :cond_27
    iget-object v4, v2, Lo5/a$a;->b:Li5/s;

    if-eqz v4, :cond_28

    invoke-interface {v4}, Li5/s;->t()Z

    move-result v4

    if-eqz v4, :cond_28

    const-string v4, "cvc-elt.5.2.2.1"

    iget-object v5, v2, Lo5/a$a;->b:Li5/s;

    invoke-interface {v5}, Li5/s;->getName()Ljavax/xml/namespace/QName;

    move-result-object v5

    invoke-static {v5}, Lj5/i;->f(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    iget-object v6, v2, Lo5/a$a;->b:Li5/s;

    invoke-interface {v6}, Li5/s;->getName()Ljavax/xml/namespace/QName;

    iget-object v6, v2, Lo5/a$a;->a:Li5/c0;

    const/16 v18, 0x0

    const/16 v19, 0x2

    move-object v14, v1

    move-object/from16 v1, p0

    move-object v11, v2

    move-object v2, v0

    move-object/from16 v20, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object/from16 v17, v6

    const/4 v13, 0x5

    move-object/from16 v6, v18

    move/from16 v18, v7

    move/from16 v7, v19

    move-object/from16 v21, v8

    move-object/from16 v8, v17

    invoke-virtual/range {v1 .. v8}, Lo5/a;->c(Lj5/n$a;Ljava/lang/String;[Ljava/lang/Object;Li5/c0;Ljava/util/ArrayList;ILi5/c0;)V

    goto :goto_f

    :cond_28
    move-object v14, v1

    move-object v11, v2

    move-object/from16 v20, v3

    move v13, v6

    move/from16 v18, v7

    move-object/from16 v21, v8

    :goto_f
    iget-boolean v1, v11, Lo5/a$a;->j:Z

    if-eqz v1, :cond_5b

    iget-object v1, v11, Lo5/a$a;->i:Lorg/apache/xmlbeans/impl/schema/a0;

    invoke-virtual {v1, v14, v12}, Lorg/apache/xmlbeans/impl/schema/a0;->h(Ljavax/xml/namespace/QName;Z)Z

    move-result v1

    if-eqz v1, :cond_5b

    iget-object v1, v11, Lo5/a$a;->i:Lorg/apache/xmlbeans/impl/schema/a0;

    iget-object v1, v1, Lorg/apache/xmlbeans/impl/schema/a0;->e:Li5/z;

    iput-object v1, v9, Lo5/a;->p:Li5/z;

    invoke-interface {v1}, Li5/z;->t0()I

    move-result v2

    if-ne v2, v13, :cond_2e

    invoke-interface {v1}, Li5/z;->r()Li5/k;

    move-result-object v2

    invoke-virtual {v2, v14}, Li5/k;->a(Ljavax/xml/namespace/QName;)Z

    move-result v2

    if-nez v2, :cond_29

    const-string v3, "cvc-particle.1.3"

    invoke-static {v14}, Lj5/i;->f(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x2

    iget-object v8, v11, Lo5/a$a;->a:Li5/c0;

    move-object/from16 v1, p0

    move-object v2, v0

    invoke-virtual/range {v1 .. v8}, Lo5/a;->c(Lj5/n$a;Ljava/lang/String;[Ljava/lang/Object;Li5/c0;Ljava/util/ArrayList;ILi5/c0;)V

    const/4 v1, 0x1

    iput v1, v9, Lo5/a;->n:I

    goto/16 :goto_34

    :cond_29
    invoke-interface {v1}, Li5/z;->T()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2a

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2b

    if-eqz v18, :cond_2b

    :cond_2a
    const/4 v1, 0x1

    goto :goto_11

    :cond_2b
    move-object/from16 v13, v21

    invoke-interface {v13, v14}, Li5/d0;->findElement(Ljavax/xml/namespace/QName;)Li5/u;

    move-result-object v2

    iput-object v2, v9, Lo5/a;->o:Li5/x;

    if-nez v2, :cond_2d

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2c

    const-string v3, "cvc-assess-elt.1.1.1.3.2"

    invoke-static {v14}, Lj5/i;->f(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v4

    iget-object v8, v11, Lo5/a$a;->a:Li5/c0;

    const/4 v6, 0x0

    const/4 v7, 0x2

    move-object/from16 v1, p0

    move-object v2, v0

    move-object v5, v8

    invoke-virtual/range {v1 .. v8}, Lo5/a;->c(Lj5/n$a;Ljava/lang/String;[Ljava/lang/Object;Li5/c0;Ljava/util/ArrayList;ILi5/c0;)V

    const/4 v1, 0x1

    goto :goto_10

    :cond_2c
    move v1, v3

    :goto_10
    iput v1, v9, Lo5/a;->n:I

    goto/16 :goto_34

    :cond_2d
    move-object v1, v2

    goto :goto_12

    :goto_11
    iput v1, v9, Lo5/a;->n:I

    goto/16 :goto_34

    :cond_2e
    move-object/from16 v13, v21

    invoke-interface {v1}, Li5/z;->getName()Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    check-cast v1, Li5/x;

    invoke-interface {v1}, Li5/x;->Z()Z

    move-result v1

    if-eqz v1, :cond_2f

    const-string v3, "cvc-particle.2.3.3a"

    invoke-static {v14}, Lj5/i;->f(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v4

    iget-object v8, v11, Lo5/a$a;->a:Li5/c0;

    const/4 v6, 0x0

    const/4 v7, 0x2

    move-object/from16 v1, p0

    move-object v2, v0

    move-object v5, v8

    invoke-virtual/range {v1 .. v8}, Lo5/a;->c(Lj5/n$a;Ljava/lang/String;[Ljava/lang/Object;Li5/c0;Ljava/util/ArrayList;ILi5/c0;)V

    const/4 v1, 0x1

    iput v1, v9, Lo5/a;->n:I

    goto/16 :goto_34

    :cond_2f
    invoke-interface {v13, v14}, Li5/d0;->findElement(Ljavax/xml/namespace/QName;)Li5/u;

    move-result-object v0

    iput-object v0, v9, Lo5/a;->o:Li5/x;

    move-object v1, v0

    goto :goto_12

    :cond_30
    check-cast v1, Li5/s;

    :goto_12
    invoke-interface {v1}, Li5/s;->getType()Li5/c0;

    move-result-object v0

    move-object v8, v0

    move-object v14, v1

    :goto_13
    invoke-interface {v8}, Li5/c0;->x0()Z

    move-result v0

    if-eqz v0, :cond_31

    const-string v3, "cvc-elt.1"

    const/4 v4, 0x0

    move-object v2, v10

    check-cast v2, Lm5/v1;

    invoke-virtual {v2}, Lm5/v1;->x()Ljavax/xml/namespace/QName;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x3

    const/4 v0, 0x0

    move-object/from16 v1, p0

    move-object v12, v8

    move-object v8, v0

    invoke-virtual/range {v1 .. v8}, Lo5/a;->c(Lj5/n$a;Ljava/lang/String;[Ljava/lang/Object;Li5/c0;Ljava/util/ArrayList;ILi5/c0;)V

    const/4 v1, 0x1

    iput v1, v9, Lo5/a;->n:I

    goto :goto_14

    :cond_31
    move-object v12, v8

    :goto_14
    move-object v1, v10

    check-cast v1, Lm5/v1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lm5/z0;->B:Ljavax/xml/namespace/QName;

    iget-object v2, v1, Lm5/v1;->b:Lm5/h;

    invoke-virtual {v2, v0}, Lm5/h;->p(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v9, Lo5/a;->k:Lo5/a$b;

    if-eqz v2, :cond_36

    iget v4, v9, Lo5/a;->g:I

    iget v0, v9, Lo5/a;->l:I

    const/4 v5, 0x1

    add-int/2addr v0, v5

    iput v0, v9, Lo5/a;->l:I

    const/4 v8, 0x0

    :try_start_0
    iput-object v8, v3, Lo5/a$b;->a:Lj5/n$a;

    invoke-static {v2, v3, v10}, Lorg/apache/xmlbeans/impl/values/s;->h1(Ljava/lang/String;Lj5/m;Lj5/h;)Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-interface {v13, v0}, Li5/d0;->findType(Ljavax/xml/namespace/QName;)Li5/c0;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v6, v9, Lo5/a;->l:I

    sub-int/2addr v6, v5

    iput v6, v9, Lo5/a;->l:I

    move-object v5, v0

    goto :goto_15

    :catchall_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Ld/f;->L(Ljava/lang/Throwable;)Z

    move-result v5

    if-nez v5, :cond_35

    iget v0, v9, Lo5/a;->g:I

    const/4 v5, 0x1

    add-int/2addr v0, v5

    iput v0, v9, Lo5/a;->g:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget v0, v9, Lo5/a;->l:I

    sub-int/2addr v0, v5

    iput v0, v9, Lo5/a;->l:I

    move-object v5, v8

    :goto_15
    iget v0, v9, Lo5/a;->g:I

    if-eq v4, v0, :cond_33

    const-string v3, "cvc-elt.4.1"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1}, Lm5/v1;->x()Ljavax/xml/namespace/QName;

    const/4 v6, 0x0

    const/4 v7, 0x3

    if-nez v11, :cond_32

    goto :goto_16

    :cond_32
    iget-object v0, v11, Lo5/a$a;->a:Li5/c0;

    move-object v8, v0

    :goto_16
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-virtual/range {v1 .. v8}, Lo5/a;->c(Lj5/n$a;Ljava/lang/String;[Ljava/lang/Object;Li5/c0;Ljava/util/ArrayList;ILi5/c0;)V

    const/4 v1, 0x1

    iput v1, v9, Lo5/a;->n:I

    goto/16 :goto_34

    :cond_33
    if-nez v5, :cond_34

    const-string v3, "cvc-elt.4.2"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1}, Lm5/v1;->x()Ljavax/xml/namespace/QName;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-virtual/range {v1 .. v8}, Lo5/a;->c(Lj5/n$a;Ljava/lang/String;[Ljava/lang/Object;Li5/c0;Ljava/util/ArrayList;ILi5/c0;)V

    const/4 v1, 0x1

    iput v1, v9, Lo5/a;->n:I

    goto/16 :goto_34

    :cond_34
    move-object v6, v5

    goto :goto_18

    :catchall_1
    move-exception v0

    goto :goto_17

    :cond_35
    :try_start_2
    invoke-static {v0}, Ld/f;->W(Ljava/lang/Throwable;)V

    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_17
    iget v1, v9, Lo5/a;->l:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v9, Lo5/a;->l:I

    throw v0

    :cond_36
    const/4 v8, 0x0

    move-object v6, v8

    :goto_18
    if-eqz v6, :cond_44

    invoke-virtual {v6, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    invoke-interface {v12, v6}, Li5/c0;->G0(Li5/c0;)Z

    move-result v0

    if-nez v0, :cond_38

    const-string v3, "cvc-elt.4.3a"

    filled-new-array {v6, v12}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1}, Lm5/v1;->x()Ljavax/xml/namespace/QName;

    const/4 v6, 0x0

    const/4 v7, 0x3

    if-nez v11, :cond_37

    goto :goto_19

    :cond_37
    iget-object v0, v11, Lo5/a$a;->a:Li5/c0;

    move-object v8, v0

    :goto_19
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object v5, v12

    invoke-virtual/range {v1 .. v8}, Lo5/a;->c(Lj5/n$a;Ljava/lang/String;[Ljava/lang/Object;Li5/c0;Ljava/util/ArrayList;ILi5/c0;)V

    const/4 v1, 0x1

    iput v1, v9, Lo5/a;->n:I

    goto/16 :goto_34

    :cond_38
    invoke-interface {v12}, Li5/c0;->c()Z

    move-result v0

    if-eqz v0, :cond_3b

    move-object v0, v6

    :goto_1a
    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3b

    invoke-interface {v0}, Li5/c0;->h0()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_3a

    const-string v3, "cvc-elt.4.3b"

    filled-new-array {v6, v12}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1}, Lm5/v1;->x()Ljavax/xml/namespace/QName;

    const/4 v6, 0x0

    const/4 v7, 0x3

    if-nez v11, :cond_39

    goto :goto_1b

    :cond_39
    iget-object v0, v11, Lo5/a$a;->a:Li5/c0;

    move-object v8, v0

    :goto_1b
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object v5, v12

    invoke-virtual/range {v1 .. v8}, Lo5/a;->c(Lj5/n$a;Ljava/lang/String;[Ljava/lang/Object;Li5/c0;Ljava/util/ArrayList;ILi5/c0;)V

    const/4 v1, 0x1

    iput v1, v9, Lo5/a;->n:I

    goto/16 :goto_34

    :cond_3a
    invoke-interface {v0}, Li5/c0;->getBaseType()Li5/c0;

    move-result-object v0

    goto :goto_1a

    :cond_3b
    invoke-interface {v12}, Li5/c0;->g()Z

    move-result v0

    if-eqz v0, :cond_3e

    move-object v0, v6

    :goto_1c
    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3e

    invoke-interface {v0}, Li5/c0;->h0()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_3d

    const-string v3, "cvc-elt.4.3c"

    filled-new-array {v6, v12}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1}, Lm5/v1;->x()Ljavax/xml/namespace/QName;

    const/4 v6, 0x0

    const/4 v7, 0x3

    if-nez v11, :cond_3c

    goto :goto_1d

    :cond_3c
    iget-object v0, v11, Lo5/a$a;->a:Li5/c0;

    move-object v8, v0

    :goto_1d
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object v5, v12

    invoke-virtual/range {v1 .. v8}, Lo5/a;->c(Lj5/n$a;Ljava/lang/String;[Ljava/lang/Object;Li5/c0;Ljava/util/ArrayList;ILi5/c0;)V

    const/4 v1, 0x1

    iput v1, v9, Lo5/a;->n:I

    goto/16 :goto_34

    :cond_3d
    invoke-interface {v0}, Li5/c0;->getBaseType()Li5/c0;

    move-result-object v0

    goto :goto_1c

    :cond_3e
    instance-of v0, v14, Li5/x;

    if-eqz v0, :cond_43

    move-object v0, v14

    check-cast v0, Li5/x;

    iput-object v0, v9, Lo5/a;->o:Li5/x;

    invoke-interface {v0}, Li5/x;->c()Z

    move-result v2

    if-nez v2, :cond_3f

    invoke-interface {v0}, Li5/x;->g()Z

    move-result v2

    if-eqz v2, :cond_43

    :cond_3f
    move-object v2, v6

    :goto_1e
    invoke-virtual {v2, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_43

    invoke-interface {v2}, Li5/c0;->h0()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_40

    invoke-interface {v0}, Li5/x;->g()Z

    move-result v4

    if-nez v4, :cond_41

    :cond_40
    invoke-interface {v2}, Li5/c0;->h0()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_42

    invoke-interface {v0}, Li5/x;->c()Z

    move-result v4

    if-eqz v4, :cond_42

    :cond_41
    const-string v3, "cvc-elt.4.3d"

    invoke-interface {v0}, Li5/s;->getName()Ljavax/xml/namespace/QName;

    move-result-object v1

    invoke-static {v1}, Lj5/i;->f(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v6, v1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Li5/s;->getName()Ljavax/xml/namespace/QName;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-virtual/range {v1 .. v8}, Lo5/a;->c(Lj5/n$a;Ljava/lang/String;[Ljava/lang/Object;Li5/c0;Ljava/util/ArrayList;ILi5/c0;)V

    const/4 v1, 0x1

    iput v1, v9, Lo5/a;->n:I

    goto/16 :goto_34

    :cond_42
    invoke-interface {v2}, Li5/c0;->getBaseType()Li5/c0;

    move-result-object v2

    goto :goto_1e

    :cond_43
    move-object v12, v6

    :cond_44
    instance-of v0, v14, Li5/x;

    if-eqz v0, :cond_45

    move-object v2, v14

    check-cast v2, Li5/x;

    iput-object v2, v9, Lo5/a;->o:Li5/x;

    invoke-interface {v2}, Li5/x;->h()Z

    move-result v4

    if-eqz v4, :cond_45

    const-string v3, "cvc-elt.2"

    invoke-interface {v2}, Li5/s;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-static {v0}, Lj5/i;->f(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2}, Li5/s;->getName()Ljavax/xml/namespace/QName;

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-virtual/range {v1 .. v7}, Lo5/a;->b(Lj5/n$a;Ljava/lang/String;[Ljava/lang/Object;Li5/c0;ILi5/c0;)V

    const/4 v1, 0x1

    iput v1, v9, Lo5/a;->n:I

    goto/16 :goto_34

    :cond_45
    invoke-interface {v12}, Li5/c0;->h()Z

    move-result v2

    if-eqz v2, :cond_47

    const-string v3, "cvc-elt.2"

    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1}, Lm5/v1;->x()Ljavax/xml/namespace/QName;

    const/4 v6, 0x3

    if-nez v11, :cond_46

    move-object v7, v8

    goto :goto_1f

    :cond_46
    iget-object v0, v11, Lo5/a$a;->a:Li5/c0;

    move-object v7, v0

    :goto_1f
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object v5, v12

    invoke-virtual/range {v1 .. v7}, Lo5/a;->b(Lj5/n$a;Ljava/lang/String;[Ljava/lang/Object;Li5/c0;ILi5/c0;)V

    const/4 v1, 0x1

    iput v1, v9, Lo5/a;->n:I

    goto/16 :goto_34

    :cond_47
    sget-object v2, Lm5/z0;->A:Ljavax/xml/namespace/QName;

    iget-object v1, v1, Lm5/v1;->b:Lm5/h;

    invoke-virtual {v1, v2}, Lm5/h;->p(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_48

    iput-object v10, v3, Lo5/a$b;->a:Lj5/n$a;

    invoke-static {v1, v3}, Lorg/apache/xmlbeans/impl/values/b;->M0(Ljava/lang/String;Lj5/m;)Z

    move-result v1

    move v13, v1

    const/4 v1, 0x1

    goto :goto_20

    :cond_48
    const/4 v1, 0x0

    const/4 v13, 0x0

    :goto_20
    if-eqz v1, :cond_4c

    if-eqz v14, :cond_49

    invoke-interface {v14}, Li5/s;->g0()Z

    move-result v1

    if-nez v1, :cond_4c

    :cond_49
    const-string v3, "cvc-elt.3.1"

    const/4 v4, 0x0

    if-nez v14, :cond_4a

    goto :goto_21

    :cond_4a
    invoke-interface {v14}, Li5/s;->getName()Ljavax/xml/namespace/QName;

    :goto_21
    const/4 v6, 0x0

    const/4 v7, 0x3

    if-nez v11, :cond_4b

    goto :goto_22

    :cond_4b
    iget-object v0, v11, Lo5/a$a;->a:Li5/c0;

    move-object v8, v0

    :goto_22
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object v5, v12

    invoke-virtual/range {v1 .. v8}, Lo5/a;->c(Lj5/n$a;Ljava/lang/String;[Ljava/lang/Object;Li5/c0;Ljava/util/ArrayList;ILi5/c0;)V

    const/4 v1, 0x1

    iput v1, v9, Lo5/a;->n:I

    goto/16 :goto_34

    :cond_4c
    if-eqz v13, :cond_4e

    if-eqz v14, :cond_4e

    invoke-interface {v14}, Li5/s;->t()Z

    move-result v1

    if-eqz v1, :cond_4e

    const-string v3, "cvc-elt.3.2.2"

    const/4 v4, 0x0

    invoke-interface {v14}, Li5/s;->getName()Ljavax/xml/namespace/QName;

    const/4 v6, 0x0

    const/4 v7, 0x3

    if-nez v11, :cond_4d

    move-object v11, v8

    goto :goto_23

    :cond_4d
    iget-object v1, v11, Lo5/a$a;->a:Li5/c0;

    move-object v11, v1

    :goto_23
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object v5, v12

    move-object/from16 v16, v8

    move-object v8, v11

    invoke-virtual/range {v1 .. v8}, Lo5/a;->c(Lj5/n$a;Ljava/lang/String;[Ljava/lang/Object;Li5/c0;Ljava/util/ArrayList;ILi5/c0;)V

    goto :goto_24

    :cond_4e
    move-object/from16 v16, v8

    :goto_24
    new-instance v1, Lo5/a$a;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v12, v1, Lo5/a$a;->a:Li5/c0;

    iput-object v14, v1, Lo5/a$a;->b:Li5/s;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lo5/a$a;->g:Z

    iput-boolean v13, v1, Lo5/a$a;->h:Z

    invoke-interface {v12}, Li5/c0;->f0()Z

    move-result v3

    if-eqz v3, :cond_4f

    iput-boolean v2, v1, Lo5/a$a;->e:Z

    goto :goto_28

    :cond_4f
    iput-boolean v2, v1, Lo5/a$a;->c:Z

    invoke-interface {v12}, Li5/c0;->r0()Li5/q;

    move-result-object v3

    iput-object v3, v1, Lo5/a$a;->k:Li5/q;

    invoke-interface {v12}, Li5/c0;->getContentType()I

    move-result v3

    if-eq v3, v2, :cond_55

    const/4 v4, 0x2

    if-eq v3, v4, :cond_54

    const/4 v4, 0x3

    if-eq v3, v4, :cond_51

    const/4 v4, 0x4

    if-ne v3, v4, :cond_50

    iput-boolean v2, v1, Lo5/a$a;->d:Z

    goto :goto_25

    :cond_50
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unexpected content type"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_51
    :goto_25
    invoke-interface {v12}, Li5/c0;->W()Li5/z;

    move-result-object v2

    if-eqz v2, :cond_52

    const/4 v3, 0x1

    goto :goto_26

    :cond_52
    const/4 v3, 0x0

    :goto_26
    iput-boolean v3, v1, Lo5/a$a;->j:Z

    if-eqz v3, :cond_55

    invoke-virtual {v15}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_53

    new-instance v3, Lorg/apache/xmlbeans/impl/schema/a0;

    invoke-direct {v3, v2}, Lorg/apache/xmlbeans/impl/schema/a0;-><init>(Li5/z;)V

    goto :goto_27

    :cond_53
    invoke-virtual {v15}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xmlbeans/impl/schema/a0;

    invoke-virtual {v3, v2}, Lorg/apache/xmlbeans/impl/schema/a0;->b(Li5/z;)V

    :goto_27
    iput-object v3, v1, Lo5/a$a;->i:Lorg/apache/xmlbeans/impl/schema/a0;

    goto :goto_28

    :cond_54
    iput-boolean v2, v1, Lo5/a$a;->e:Z

    :cond_55
    :goto_28
    iget-object v2, v9, Lo5/a;->f:Lo5/a$a;

    iput-object v2, v1, Lo5/a$a;->m:Lo5/a$a;

    iput-object v1, v9, Lo5/a;->f:Lo5/a$a;

    if-eqz v0, :cond_56

    check-cast v14, Li5/x;

    invoke-interface {v14}, Li5/x;->y()[Li5/v;

    move-result-object v11

    :goto_29
    move-object/from16 v1, v20

    goto :goto_2a

    :cond_56
    move-object/from16 v11, v16

    goto :goto_29

    :goto_2a
    iget-object v0, v1, Lj5/d;->b:Lj5/d$b;

    if-nez v0, :cond_57

    const/4 v13, 0x1

    goto :goto_2b

    :cond_57
    const/4 v13, 0x0

    :goto_2b
    new-instance v2, Lj5/d$b;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v0, v2, Lj5/d$b;->a:Lj5/d$b;

    iput-object v2, v1, Lj5/d;->b:Lj5/d$b;

    if-eqz v13, :cond_58

    new-instance v0, Lj5/d$e;

    invoke-direct {v0, v1}, Lj5/d$e;-><init>(Lj5/d;)V

    iget-boolean v2, v1, Lj5/d;->e:Z

    if-eqz v2, :cond_58

    new-instance v2, Lj5/d$d;

    invoke-direct {v2, v1, v0}, Lj5/d$d;-><init>(Lj5/d;Lj5/d$e;)V

    :cond_58
    iget-object v0, v1, Lj5/d;->a:Lj5/d$a;

    :goto_2c
    if-eqz v0, :cond_59

    invoke-virtual {v0, v10, v12}, Lj5/d$a;->b(Lj5/n$a;Li5/c0;)V

    iget-object v0, v0, Lj5/d$a;->a:Lj5/d$a;

    goto :goto_2c

    :cond_59
    const/4 v0, 0x0

    :goto_2d
    if-eqz v11, :cond_61

    array-length v2, v11

    if-ge v0, v2, :cond_61

    aget-object v2, v11, v0

    invoke-interface {v2}, Li5/v;->J()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5a

    new-instance v3, Lj5/d$f;

    invoke-direct {v3, v1, v2, v10, v12}, Lj5/d$f;-><init>(Lj5/d;Li5/v;Lj5/n$a;Li5/c0;)V

    goto :goto_2e

    :cond_5a
    new-instance v3, Lj5/d$g;

    invoke-direct {v3, v1, v2, v10, v12}, Lj5/d$g;-><init>(Lj5/d;Li5/v;Lj5/n$a;Li5/c0;)V

    :goto_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    :cond_5b
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v11, Lo5/a$a;->a:Li5/c0;

    invoke-interface {v3}, Li5/c0;->D()[Li5/a0;

    move-result-object v3

    array-length v4, v3

    const/4 v12, 0x0

    :goto_2f
    if-ge v12, v4, :cond_5e

    aget-object v5, v3, v12

    invoke-interface {v5}, Li5/a0;->getName()Ljavax/xml/namespace/QName;

    move-result-object v6

    iget-boolean v7, v11, Lo5/a$a;->j:Z

    if-eqz v7, :cond_5d

    iget-object v7, v11, Lo5/a$a;->i:Lorg/apache/xmlbeans/impl/schema/a0;

    const/4 v8, 0x1

    invoke-virtual {v7, v6, v8}, Lorg/apache/xmlbeans/impl/schema/a0;->h(Ljavax/xml/namespace/QName;Z)Z

    move-result v6

    if-eqz v6, :cond_5d

    sget-object v6, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-interface {v5}, Li5/a0;->a()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v6

    if-nez v6, :cond_5c

    invoke-interface {v5}, Li5/a0;->getName()Ljavax/xml/namespace/QName;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_30

    :cond_5c
    invoke-interface {v5}, Li5/a0;->getName()Ljavax/xml/namespace/QName;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5d
    :goto_30
    add-int/lit8 v12, v12, 0x1

    goto :goto_2f

    :cond_5e
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_5f

    move-object v6, v1

    goto :goto_31

    :cond_5f
    move-object v6, v2

    :goto_31
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_60

    invoke-interface {v6}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/apache/xmlbeans/impl/schema/c0;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Lorg/apache/xmlbeans/impl/schema/c0;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static/range {v16 .. v16}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "cvc-complex-type.2.4a"

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v14}, Lj5/i;->f(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v2, v1, v4}, [Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, 0x1

    iget-object v8, v11, Lo5/a$a;->a:Li5/c0;

    move-object/from16 v1, p0

    move-object v2, v0

    invoke-virtual/range {v1 .. v8}, Lo5/a;->c(Lj5/n$a;Ljava/lang/String;[Ljava/lang/Object;Li5/c0;Ljava/util/ArrayList;ILi5/c0;)V

    :goto_32
    const/4 v1, 0x1

    goto :goto_33

    :cond_60
    const-string v3, "cvc-complex-type.2.4b"

    invoke-static {v14}, Lj5/i;->f(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    iget-object v8, v11, Lo5/a$a;->a:Li5/c0;

    move-object/from16 v1, p0

    move-object v2, v0

    invoke-virtual/range {v1 .. v8}, Lo5/a;->c(Lj5/n$a;Ljava/lang/String;[Ljava/lang/Object;Li5/c0;Ljava/util/ArrayList;ILi5/c0;)V

    goto :goto_32

    :goto_33
    iput v1, v9, Lo5/a;->n:I

    :cond_61
    :goto_34
    return-void
.end method

.method public final f(Li5/c0;Li5/s;Lj5/n$a;ZZ)Ljava/lang/String;
    .locals 11

    move-object v0, p0

    move-object v7, p1

    move-object v1, p3

    invoke-interface {p1}, Li5/c0;->f0()Z

    move-result v2

    const/4 v3, 0x2

    const/4 v10, 0x0

    if-nez v2, :cond_0

    invoke-interface {p1}, Li5/c0;->getContentType()I

    move-result v2

    if-eq v2, v3, :cond_0

    return-object v10

    :cond_0
    invoke-interface {p1}, Li5/c0;->x0()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Li5/s;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "cvc-attribute.1"

    goto :goto_0

    :cond_1
    const-string v2, "cvc-elt.1"

    :goto_0
    const/4 v3, 0x0

    invoke-interface {p2}, Li5/s;->getName()Ljavax/xml/namespace/QName;

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p3

    move-object v4, p1

    invoke-virtual/range {v0 .. v6}, Lo5/a;->b(Lj5/n$a;Ljava/lang/String;[Ljava/lang/Object;Li5/c0;ILi5/c0;)V

    return-object v10

    :cond_2
    if-nez p4, :cond_11

    invoke-interface {p1}, Li5/c0;->K0()I

    move-result v2

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-ne v2, v5, :cond_5

    move-object v2, v1

    check-cast v2, Lm5/v1;

    iget-object v3, v2, Lm5/v1;->b:Lm5/h;

    invoke-virtual {v3}, Lm5/h;->D()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v3}, Lm5/h;->w()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_7

    :cond_3
    iget-boolean v3, v2, Lm5/v1;->d:Z

    if-eqz v3, :cond_4

    iget-object v2, v2, Lm5/v1;->e:Lm5/h;

    iget-object v3, v2, Lm5/h;->b:Lm5/w1;

    iget v2, v2, Lm5/h;->c:I

    invoke-virtual {v3, v2, v4, v5}, Lm5/w1;->Z(III)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_7

    :cond_4
    iget-object v2, v2, Lm5/v1;->f:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_7

    :cond_5
    move-object v6, v1

    check-cast v6, Lm5/v1;

    iget-object v8, v6, Lm5/v1;->b:Lm5/h;

    invoke-virtual {v8}, Lm5/h;->D()Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v3, v8, Lm5/h;->b:Lm5/w1;

    invoke-virtual {v3, v2}, Lm5/w1;->h0(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_7

    :cond_6
    iget-boolean v8, v6, Lm5/v1;->d:Z

    if-eqz v8, :cond_7

    iget-object v3, v6, Lm5/v1;->e:Lm5/h;

    iget-object v5, v3, Lm5/h;->b:Lm5/w1;

    iget v3, v3, Lm5/h;->c:I

    invoke-virtual {v5, v3, v4, v2}, Lm5/w1;->Z(III)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_7

    :cond_7
    iget-object v4, v6, Lm5/v1;->f:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lm5/z0;->z:Le5/g;

    const/4 v6, 0x0

    if-nez v4, :cond_8

    move v8, v6

    goto :goto_1

    :cond_8
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    :goto_1
    if-eqz v8, :cond_10

    if-ne v2, v5, :cond_9

    goto/16 :goto_6

    :cond_9
    if-ne v2, v3, :cond_c

    move v3, v6

    :goto_2
    if-ge v3, v8, :cond_10

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v9, 0xa

    if-eq v5, v9, :cond_b

    const/16 v9, 0xd

    if-eq v5, v9, :cond_b

    const/16 v9, 0x9

    if-ne v5, v9, :cond_a

    goto :goto_3

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_b
    :goto_3
    invoke-static {v2}, Lm5/z0;->v(I)Lm5/z0$i;

    move-result-object v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v6, v3, v4}, Lm5/z0$i;->a(IILjava/lang/Object;)V

    iget-object v2, v2, Lm5/z0$i;->d:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    :cond_c
    const/4 v3, 0x3

    if-ne v2, v3, :cond_10

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lm5/f;->f(C)Z

    move-result v3

    if-nez v3, :cond_f

    add-int/lit8 v3, v8, -0x1

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lm5/f;->f(C)Z

    move-result v3

    if-eqz v3, :cond_d

    goto :goto_5

    :cond_d
    move v3, v6

    :goto_4
    if-ge v5, v8, :cond_10

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Lm5/f;->f(C)Z

    move-result v9

    if-eqz v9, :cond_e

    if-eqz v3, :cond_e

    invoke-static {v2}, Lm5/z0;->v(I)Lm5/z0$i;

    move-result-object v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v6, v3, v4}, Lm5/z0$i;->a(IILjava/lang/Object;)V

    iget-object v2, v2, Lm5/z0$i;->d:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    :cond_e
    add-int/lit8 v5, v5, 0x1

    move v3, v9

    goto :goto_4

    :cond_f
    :goto_5
    invoke-static {v2}, Lm5/z0;->v(I)Lm5/z0$i;

    move-result-object v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v6, v3, v4}, Lm5/z0$i;->a(IILjava/lang/Object;)V

    iget-object v2, v2, Lm5/z0$i;->d:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_10
    :goto_6
    move-object v2, v4

    goto :goto_7

    :cond_11
    const-string v2, ""

    :goto_7
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_15

    if-eqz p5, :cond_15

    if-eqz p2, :cond_15

    invoke-interface {p2}, Li5/s;->i0()Z

    move-result v3

    if-nez v3, :cond_12

    invoke-interface {p2}, Li5/s;->t()Z

    move-result v3

    if-eqz v3, :cond_15

    :cond_12
    sget-object v2, Li5/b2;->k0:Li5/c0;

    invoke-interface {v2, p1}, Li5/c0;->G0(Li5/c0;)Z

    move-result v2

    if-eqz v2, :cond_13

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Default QName values are unsupported for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lj5/i;->a:Ljava/util/Map;

    invoke-static {p1, v3}, Lj5/i;->g(Li5/c0;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - ignoring."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-interface {p2}, Li5/s;->getName()Ljavax/xml/namespace/QName;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p3

    move-object v7, p1

    invoke-virtual/range {v0 .. v9}, Lo5/a;->a(Lj5/n$a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;ILjavax/xml/namespace/QName;Li5/c0;Ljava/util/ArrayList;Li5/c0;)V

    return-object v10

    :cond_13
    invoke-interface {p2}, Li5/s;->k()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Li5/c0;->K0()I

    move-result v3

    invoke-static {v3, v2}, Ld/f;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p1, p3}, Lo5/a;->g(Ljava/lang/String;Li5/c0;Lj5/n$a;)Z

    move-result v0

    if-eqz v0, :cond_14

    move-object v10, v2

    :cond_14
    return-object v10

    :cond_15
    invoke-virtual {p0, v2, p1, p3}, Lo5/a;->g(Ljava/lang/String;Li5/c0;Lj5/n$a;)Z

    move-result v3

    if-nez v3, :cond_16

    return-object v10

    :cond_16
    if-eqz p2, :cond_1b

    invoke-interface {p2}, Li5/s;->t()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-interface {p2}, Li5/s;->k()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Li5/c0;->K0()I

    move-result v4

    invoke-static {v4, v3}, Ld/f;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, p1, p3}, Lo5/a;->g(Ljava/lang/String;Li5/c0;Lj5/n$a;)Z

    move-result v4

    if-nez v4, :cond_17

    return-object v10

    :cond_17
    invoke-interface {p1, v2}, Li5/c0;->U(Ljava/lang/Object;)Li5/i0;

    move-result-object v4

    invoke-interface {p1, v3}, Li5/c0;->U(Ljava/lang/Object;)Li5/i0;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/xmlbeans/XmlObject;->valueEquals(Lorg/apache/xmlbeans/XmlObject;)Z

    move-result v4

    if-nez v4, :cond_1b

    invoke-interface {p2}, Li5/s;->b()Z

    move-result v4

    if-eqz v4, :cond_18

    const-string v4, "cvc-attribute.4"

    check-cast v1, Lm5/v1;

    invoke-virtual {v1}, Lm5/v1;->x()Ljavax/xml/namespace/QName;

    move-result-object v5

    invoke-static {v5}, Lj5/i;->f(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v2, v3, v5}, [Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p2}, Li5/s;->getType()Li5/c0;

    move-result-object v5

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, v4

    move-object v4, v5

    move v5, v6

    move-object v6, v7

    invoke-virtual/range {v0 .. v6}, Lo5/a;->b(Lj5/n$a;Ljava/lang/String;[Ljava/lang/Object;Li5/c0;ILi5/c0;)V

    goto :goto_9

    :cond_18
    invoke-interface {p2}, Li5/s;->getType()Li5/c0;

    move-result-object v4

    invoke-interface {v4}, Li5/c0;->getContentType()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_19

    const-string v4, "cvc-elt.5.2.2.2.1"

    goto :goto_8

    :cond_19
    invoke-interface {p1}, Li5/c0;->f0()Z

    move-result v4

    if-eqz v4, :cond_1a

    const-string v4, "cvc-elt.5.2.2.2.2"

    goto :goto_8

    :cond_1a
    move-object v4, v10

    :goto_8
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p2}, Li5/s;->getName()Ljavax/xml/namespace/QName;

    invoke-interface {p2}, Li5/s;->getType()Li5/c0;

    move-result-object v5

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p3

    move-object v2, v4

    move-object v4, v5

    move v5, v6

    move-object v6, v7

    invoke-virtual/range {v0 .. v6}, Lo5/a;->b(Lj5/n$a;Ljava/lang/String;[Ljava/lang/Object;Li5/c0;ILi5/c0;)V

    :goto_9
    return-object v10

    :cond_1b
    return-object v2
.end method

.method public final g(Ljava/lang/String;Li5/c0;Lj5/n$a;)Z
    .locals 20

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    invoke-interface/range {p2 .. p2}, Li5/c0;->f0()Z

    move-result v1

    const/4 v11, 0x2

    if-nez v1, :cond_1

    invoke-interface/range {p2 .. p2}, Li5/c0;->getContentType()I

    move-result v1

    if-ne v1, v11, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not a simple type"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget v12, v8, Lo5/a;->g:I

    invoke-interface/range {p2 .. p2}, Li5/c0;->B0()I

    move-result v1

    const/4 v13, 0x1

    const-string v14, "Unexpected primitive type code"

    const/4 v15, 0x0

    if-eq v1, v13, :cond_17

    const/4 v7, 0x3

    if-eq v1, v11, :cond_d

    if-ne v1, v7, :cond_c

    iget v6, v8, Lo5/a;->g:I

    invoke-interface {v9, v0}, Li5/c0;->P0(Ljava/lang/String;)Z

    move-result v1

    const-string v5, "list"

    if-nez v1, :cond_2

    const-string v3, "cvc-datatype-valid.1.1"

    sget-object v1, Lj5/i;->a:Ljava/util/Map;

    invoke-static {v9, v1}, Lj5/i;->g(Li5/c0;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v5, v0, v1}, [Ljava/lang/Object;

    move-result-object v4

    const/16 v16, 0x7d0

    const/16 v17, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v18, v5

    move-object/from16 v5, p2

    move/from16 v19, v6

    move/from16 v6, v16

    move-object/from16 v7, v17

    invoke-virtual/range {v1 .. v7}, Lo5/a;->b(Lj5/n$a;Ljava/lang/String;[Ljava/lang/Object;Li5/c0;ILi5/c0;)V

    goto :goto_1

    :cond_2
    move-object/from16 v18, v5

    move/from16 v19, v6

    :goto_1
    invoke-static/range {p1 .. p1}, Lorg/apache/xmlbeans/impl/values/q1;->split_list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    invoke-interface {v9, v15}, Li5/c0;->N0(I)Li5/i0;

    move-result-object v1

    if-eqz v1, :cond_3

    check-cast v1, Li5/g0;

    invoke-interface {v1}, Li5/g0;->getIntValue()I

    move-result v1

    array-length v2, v7

    if-eq v1, v2, :cond_3

    const-string v3, "cvc-length-valid.2"

    array-length v2, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v4, Lj5/i;->a:Ljava/util/Map;

    invoke-static {v9, v4}, Lj5/i;->g(Li5/c0;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v0, v2, v1, v4}, [Ljava/lang/Object;

    move-result-object v4

    const/16 v6, 0x7d0

    const/16 v16, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v5, p2

    move-object v15, v7

    move-object/from16 v7, v16

    invoke-virtual/range {v1 .. v7}, Lo5/a;->b(Lj5/n$a;Ljava/lang/String;[Ljava/lang/Object;Li5/c0;ILi5/c0;)V

    goto :goto_2

    :cond_3
    move-object v15, v7

    :goto_2
    invoke-interface {v9, v13}, Li5/c0;->N0(I)Li5/i0;

    move-result-object v1

    if-eqz v1, :cond_4

    check-cast v1, Li5/g0;

    invoke-interface {v1}, Li5/g0;->getIntValue()I

    move-result v1

    array-length v2, v15

    if-le v1, v2, :cond_4

    const-string v3, "cvc-length-valid.2"

    array-length v2, v15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v4, Lj5/i;->a:Ljava/util/Map;

    invoke-static {v9, v4}, Lj5/i;->g(Li5/c0;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v0, v2, v1, v4}, [Ljava/lang/Object;

    move-result-object v4

    const/16 v6, 0x7d0

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v5, p2

    invoke-virtual/range {v1 .. v7}, Lo5/a;->b(Lj5/n$a;Ljava/lang/String;[Ljava/lang/Object;Li5/c0;ILi5/c0;)V

    :cond_4
    invoke-interface {v9, v11}, Li5/c0;->N0(I)Li5/i0;

    move-result-object v1

    if-eqz v1, :cond_5

    check-cast v1, Li5/g0;

    invoke-interface {v1}, Li5/g0;->getIntValue()I

    move-result v1

    array-length v2, v15

    if-ge v1, v2, :cond_5

    const-string v3, "cvc-length-valid.2"

    array-length v2, v15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v4, Lj5/i;->a:Ljava/util/Map;

    invoke-static {v9, v4}, Lj5/i;->g(Li5/c0;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v0, v2, v1, v4}, [Ljava/lang/Object;

    move-result-object v4

    const/16 v6, 0x7d0

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v5, p2

    invoke-virtual/range {v1 .. v7}, Lo5/a;->b(Lj5/n$a;Ljava/lang/String;[Ljava/lang/Object;Li5/c0;ILi5/c0;)V

    :cond_5
    invoke-interface/range {p2 .. p2}, Li5/c0;->R0()Li5/c0;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v8, Lo5/a;->B:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v8, Lo5/a;->C:Ljava/util/ArrayList;

    const/4 v2, 0x0

    :goto_3
    array-length v3, v15

    if-ge v2, v3, :cond_a

    aget-object v3, v15, v2

    invoke-virtual {v8, v3, v1, v10}, Lo5/a;->g(Ljava/lang/String;Li5/c0;Lj5/n$a;)Z

    invoke-interface {v1}, Li5/c0;->B0()I

    move-result v3

    if-eq v3, v13, :cond_6

    invoke-interface {v1}, Li5/c0;->B0()I

    move-result v3

    if-eq v3, v11, :cond_6

    goto/16 :goto_6

    :cond_6
    invoke-interface {v1}, Li5/c0;->Q0()[Li5/c0;

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x0

    if-lez v3, :cond_7

    iget-object v3, v8, Lo5/a;->r:Li5/c0;

    if-eqz v3, :cond_7

    iput-object v4, v8, Lo5/a;->r:Li5/c0;

    goto :goto_4

    :cond_7
    move-object v3, v1

    :goto_4
    iget-object v5, v8, Lo5/a;->C:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Li5/c0;->d0()Li5/c0;

    move-result-object v5

    if-nez v5, :cond_8

    iget-object v3, v8, Lo5/a;->B:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_8
    invoke-interface {v3}, Li5/c0;->d0()Li5/c0;

    move-result-object v3

    invoke-interface {v3}, Li5/c0;->e()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v3, v8, Lo5/a;->B:Ljava/util/ArrayList;

    iget-object v5, v8, Lo5/a;->y:Li5/d;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v4, v8, Lo5/a;->y:Li5/d;

    goto/16 :goto_6

    :pswitch_1
    iget-object v3, v8, Lo5/a;->B:Ljava/util/ArrayList;

    iget-object v5, v8, Lo5/a;->z:Li5/g;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v4, v8, Lo5/a;->z:Li5/g;

    goto :goto_6

    :pswitch_2
    iget-object v3, v8, Lo5/a;->B:Ljava/util/ArrayList;

    iget-object v5, v8, Lo5/a;->s:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v4, v8, Lo5/a;->s:Ljava/lang/String;

    goto :goto_6

    :pswitch_3
    iget-object v3, v8, Lo5/a;->B:Ljava/util/ArrayList;

    iget-object v5, v8, Lo5/a;->t:Ljava/math/BigDecimal;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v4, v8, Lo5/a;->t:Ljava/math/BigDecimal;

    goto :goto_6

    :pswitch_4
    iget-object v3, v8, Lo5/a;->B:Ljava/util/ArrayList;

    iget-wide v4, v8, Lo5/a;->w:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/16 v3, 0x0

    iput-wide v3, v8, Lo5/a;->w:D

    goto :goto_6

    :pswitch_5
    iget-object v3, v8, Lo5/a;->B:Ljava/util/ArrayList;

    iget v4, v8, Lo5/a;->v:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    iput v3, v8, Lo5/a;->v:F

    goto :goto_6

    :pswitch_6
    iget-object v3, v8, Lo5/a;->B:Ljava/util/ArrayList;

    iget-object v5, v8, Lo5/a;->x:Ljavax/xml/namespace/QName;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v4, v8, Lo5/a;->x:Ljavax/xml/namespace/QName;

    goto :goto_6

    :pswitch_7
    iget-object v3, v8, Lo5/a;->B:Ljava/util/ArrayList;

    iget-object v5, v8, Lo5/a;->A:[B

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v4, v8, Lo5/a;->A:[B

    goto :goto_6

    :pswitch_8
    iget-object v3, v8, Lo5/a;->B:Ljava/util/ArrayList;

    iget-boolean v4, v8, Lo5/a;->u:Z

    if-eqz v4, :cond_9

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_5

    :cond_9
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_5
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    iput-boolean v3, v8, Lo5/a;->u:Z

    goto :goto_6

    :pswitch_9
    iget-object v3, v8, Lo5/a;->B:Ljava/util/ArrayList;

    iget-object v4, v8, Lo5/a;->s:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    :cond_a
    iget v1, v8, Lo5/a;->g:I

    move/from16 v2, v19

    if-ne v2, v1, :cond_b

    invoke-interface/range {p2 .. p2}, Li5/c0;->L0()[Li5/i0;

    move-result-object v1

    if-eqz v1, :cond_b

    new-instance v1, Lorg/apache/xmlbeans/impl/values/x;

    invoke-direct {v1, v10}, Lorg/apache/xmlbeans/impl/values/x;-><init>(Lj5/h;)V

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/values/x;->t(Lorg/apache/xmlbeans/impl/values/x;)V

    :try_start_0
    move-object v1, v9

    check-cast v1, Lorg/apache/xmlbeans/impl/schema/r;

    invoke-virtual {v1, v0, v13}, Lorg/apache/xmlbeans/impl/schema/r;->S(Ljava/lang/Object;Z)Li5/i0;
    :try_end_0
    .catch Lorg/apache/xmlbeans/impl/values/x2; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_7
    invoke-static {}, Lorg/apache/xmlbeans/impl/values/x;->k()V

    goto :goto_9

    :catchall_0
    move-exception v0

    goto :goto_8

    :catch_0
    :try_start_1
    const-string v3, "cvc-enumeration-valid"

    const/4 v14, 0x3

    new-array v4, v14, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v18, v4, v1

    aput-object v0, v4, v13

    sget-object v0, Lj5/i;->a:Ljava/util/Map;

    invoke-static {v9, v0}, Lj5/i;->g(Li5/c0;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v11

    const/16 v6, 0x7d0

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v5, p2

    invoke-virtual/range {v1 .. v7}, Lo5/a;->b(Lj5/n$a;Ljava/lang/String;[Ljava/lang/Object;Li5/c0;ILi5/c0;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_7

    :goto_8
    invoke-static {}, Lorg/apache/xmlbeans/impl/values/x;->k()V

    throw v0

    :cond_b
    :goto_9
    const/16 v16, 0x0

    goto/16 :goto_12

    :cond_c
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unexpected simple variety"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    move v14, v7

    invoke-interface {v9, v0}, Li5/c0;->P0(Ljava/lang/String;)Z

    move-result v1

    const-string v15, "union"

    if-nez v1, :cond_e

    const-string v3, "cvc-datatype-valid.1.1"

    sget-object v1, Lj5/i;->a:Ljava/util/Map;

    invoke-static {v9, v1}, Lj5/i;->g(Li5/c0;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v15, v0, v1}, [Ljava/lang/Object;

    move-result-object v4

    const/16 v6, 0xbb8

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v5, p2

    invoke-virtual/range {v1 .. v7}, Lo5/a;->b(Lj5/n$a;Ljava/lang/String;[Ljava/lang/Object;Li5/c0;ILi5/c0;)V

    :cond_e
    invoke-interface/range {p2 .. p2}, Li5/c0;->Q0()[Li5/c0;

    move-result-object v1

    iget v2, v8, Lo5/a;->g:I

    move-object v5, v0

    move v4, v13

    const/4 v3, 0x0

    :goto_a
    array-length v6, v1

    if-ge v3, v6, :cond_12

    aget-object v6, v1, v3

    invoke-interface {v6}, Li5/c0;->K0()I

    move-result v6

    if-nez v6, :cond_f

    move v6, v13

    :cond_f
    if-eq v6, v4, :cond_10

    invoke-static {v6, v0}, Ld/f;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move v4, v6

    :cond_10
    iget v6, v8, Lo5/a;->g:I

    iget v7, v8, Lo5/a;->l:I

    add-int/2addr v7, v13

    iput v7, v8, Lo5/a;->l:I

    :try_start_2
    aget-object v7, v1, v3

    invoke-virtual {v8, v5, v7, v10}, Lo5/a;->g(Ljava/lang/String;Li5/c0;Lj5/n$a;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget v7, v8, Lo5/a;->l:I

    sub-int/2addr v7, v13

    iput v7, v8, Lo5/a;->l:I

    iget v7, v8, Lo5/a;->g:I

    if-ne v6, v7, :cond_11

    aget-object v4, v1, v3

    iput-object v4, v8, Lo5/a;->r:Li5/c0;

    goto :goto_b

    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :catchall_1
    move-exception v0

    iget v1, v8, Lo5/a;->l:I

    sub-int/2addr v1, v13

    iput v1, v8, Lo5/a;->l:I

    throw v0

    :cond_12
    :goto_b
    iput v2, v8, Lo5/a;->g:I

    array-length v1, v1

    if-lt v3, v1, :cond_13

    const-string v3, "cvc-datatype-valid.1.2.3"

    sget-object v1, Lj5/i;->a:Ljava/util/Map;

    invoke-static {v9, v1}, Lj5/i;->g(Li5/c0;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v4

    const/16 v6, 0xbb8

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v5, p2

    invoke-virtual/range {v1 .. v7}, Lo5/a;->b(Lj5/n$a;Ljava/lang/String;[Ljava/lang/Object;Li5/c0;ILi5/c0;)V

    goto/16 :goto_9

    :cond_13
    invoke-interface/range {p2 .. p2}, Li5/c0;->L0()[Li5/i0;

    move-result-object v1

    if-eqz v1, :cond_b

    new-instance v2, Lorg/apache/xmlbeans/impl/values/x;

    invoke-direct {v2, v10}, Lorg/apache/xmlbeans/impl/values/x;-><init>(Lj5/h;)V

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/values/x;->t(Lorg/apache/xmlbeans/impl/values/x;)V

    :try_start_3
    invoke-interface {v9, v0}, Li5/c0;->U(Ljava/lang/Object;)Li5/i0;

    move-result-object v2

    const/4 v3, 0x0

    :goto_c
    array-length v4, v1

    if-ge v3, v4, :cond_15

    aget-object v4, v1, v3

    invoke-interface {v2, v4}, Lorg/apache/xmlbeans/XmlObject;->valueEquals(Lorg/apache/xmlbeans/XmlObject;)Z

    move-result v4

    if-eqz v4, :cond_14

    goto :goto_d

    :cond_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :catchall_2
    move-exception v0

    goto :goto_e

    :cond_15
    :goto_d
    array-length v1, v1

    if-lt v3, v1, :cond_16

    const-string v3, "cvc-enumeration-valid"

    new-array v4, v14, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v15, v4, v1

    aput-object v0, v4, v13

    sget-object v1, Lj5/i;->a:Ljava/util/Map;

    invoke-static {v9, v1}, Lj5/i;->g(Li5/c0;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v11

    const/16 v6, 0xbb8

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v5, p2

    invoke-virtual/range {v1 .. v7}, Lo5/a;->b(Lj5/n$a;Ljava/lang/String;[Ljava/lang/Object;Li5/c0;ILi5/c0;)V
    :try_end_3
    .catch Lorg/apache/xmlbeans/impl/values/x2; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_16
    invoke-static {}, Lorg/apache/xmlbeans/impl/values/x;->k()V

    goto/16 :goto_9

    :catch_1
    :try_start_4
    const-string v3, "cvc-enumeration-valid"

    new-array v4, v14, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v15, v4, v16

    aput-object v0, v4, v13

    sget-object v0, Lj5/i;->a:Ljava/util/Map;

    invoke-static {v9, v0}, Lj5/i;->g(Li5/c0;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v11

    const/16 v6, 0xbb8

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v5, p2

    invoke-virtual/range {v1 .. v7}, Lo5/a;->b(Lj5/n$a;Ljava/lang/String;[Ljava/lang/Object;Li5/c0;ILi5/c0;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-static {}, Lorg/apache/xmlbeans/impl/values/x;->k()V

    goto/16 :goto_12

    :goto_e
    invoke-static {}, Lorg/apache/xmlbeans/impl/values/x;->k()V

    throw v0

    :cond_17
    move/from16 v16, v15

    iget v1, v8, Lo5/a;->g:I

    iget-object v2, v8, Lo5/a;->k:Lo5/a$b;

    iput-object v10, v2, Lo5/a$b;->a:Lj5/n$a;

    invoke-interface/range {p2 .. p2}, Li5/c0;->d0()Li5/c0;

    move-result-object v3

    invoke-interface {v3}, Li5/c0;->e()I

    move-result v3

    iget-boolean v4, v8, Lo5/a;->j:Z

    packed-switch v3, :pswitch_data_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_a
    if-eqz v4, :cond_18

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x6

    if-ne v1, v3, :cond_18

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x2d

    if-ne v1, v3, :cond_18

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_18

    const-string v1, "date"

    filled-new-array/range {p1 .. p1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lo5/a$b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_18
    :pswitch_b
    invoke-static {v0, v9, v2}, Lorg/apache/xmlbeans/impl/values/g;->validateLexical(Ljava/lang/String;Li5/c0;Lj5/m;)Li5/d;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-static {v0, v9, v2}, Lorg/apache/xmlbeans/impl/values/g;->validateValue(Li5/f;Li5/c0;Lj5/m;)V

    :cond_19
    iput-object v0, v8, Lo5/a;->y:Li5/d;

    goto/16 :goto_12

    :pswitch_c
    invoke-static {v0, v9, v2}, Lorg/apache/xmlbeans/impl/values/w0;->M0(Ljava/lang/String;Li5/c0;Lj5/m;)Li5/g;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-static {v0, v9, v2}, Lorg/apache/xmlbeans/impl/values/w0;->h1(Li5/i;Li5/c0;Lj5/m;)V

    :cond_1a
    iput-object v0, v8, Lo5/a;->z:Li5/g;

    goto/16 :goto_12

    :pswitch_d
    invoke-static {v0, v9, v2}, Lorg/apache/xmlbeans/impl/values/t;->validateLexical(Ljava/lang/String;Li5/c0;Lj5/m;)V

    iput-object v0, v8, Lo5/a;->s:Ljava/lang/String;

    goto/16 :goto_12

    :pswitch_e
    invoke-static {v0, v9, v2}, Lorg/apache/xmlbeans/impl/values/t0;->validateLexical(Ljava/lang/String;Li5/c0;Lj5/m;)V

    invoke-interface/range {p2 .. p2}, Li5/c0;->e()I

    move-result v3

    move-object v4, v9

    :goto_f
    if-nez v3, :cond_1b

    invoke-interface {v4}, Li5/c0;->getBaseType()Li5/c0;

    move-result-object v4

    invoke-interface {v4}, Li5/c0;->e()I

    move-result v3

    goto :goto_f

    :cond_1b
    const/16 v4, 0x16

    if-lt v3, v4, :cond_1c

    const/16 v4, 0x22

    if-gt v3, v4, :cond_1c

    const/16 v3, 0x2e

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-ltz v3, :cond_1c

    const-string v3, "integer"

    filled-new-array/range {p1 .. p1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lo5/a$b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1c
    iget v3, v8, Lo5/a;->g:I

    if-ne v1, v3, :cond_25

    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iput-object v1, v8, Lo5/a;->t:Ljava/math/BigDecimal;

    invoke-static {v1, v9, v2}, Lorg/apache/xmlbeans/impl/values/t0;->h1(Ljava/math/BigDecimal;Li5/c0;Lj5/m;)V

    goto/16 :goto_12

    :pswitch_f
    invoke-static {v0, v9, v2}, Lorg/apache/xmlbeans/impl/values/e;->validateLexical(Ljava/lang/String;Li5/c0;Lj5/m;)D

    move-result-wide v3

    iget v0, v8, Lo5/a;->g:I

    if-ne v1, v0, :cond_1d

    invoke-static {v3, v4, v9, v2}, Lorg/apache/xmlbeans/impl/values/e;->validateValue(DLi5/c0;Lj5/m;)V

    :cond_1d
    iput-wide v3, v8, Lo5/a;->w:D

    goto/16 :goto_12

    :pswitch_10
    sget v3, Lorg/apache/xmlbeans/impl/values/a1;->x:I

    const-string v3, "float"

    :try_start_5
    invoke-static/range {p1 .. p1}, Ln5/f;->c(Ljava/lang/CharSequence;)F

    move-result v4
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_10

    :catch_2
    filled-new-array/range {p1 .. p1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lo5/a$b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const/high16 v4, 0x7fc00000    # Float.NaN

    :goto_10
    invoke-interface {v9, v0}, Li5/c0;->P0(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1e

    sget-object v5, Lj5/i;->a:Ljava/util/Map;

    invoke-static {v9, v5}, Lj5/i;->g(Li5/c0;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v3, v0, v5}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "cvc-datatype-valid.1.1"

    invoke-virtual {v2, v3, v0}, Lo5/a$b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1e
    iget v0, v8, Lo5/a;->g:I

    if-ne v1, v0, :cond_1f

    invoke-static {v4, v9, v2}, Lorg/apache/xmlbeans/impl/values/a1;->h1(FLi5/c0;Lj5/m;)V

    :cond_1f
    iput v4, v8, Lo5/a;->v:F

    goto :goto_12

    :pswitch_11
    invoke-static {v0, v9, v2, v10}, Lorg/apache/xmlbeans/impl/values/c2;->P1(Ljava/lang/String;Li5/c0;Lj5/m;Lj5/h;)Ljavax/xml/namespace/QName;

    move-result-object v0

    iget v3, v8, Lo5/a;->g:I

    if-ne v1, v3, :cond_20

    invoke-static {v0, v9, v2}, Lorg/apache/xmlbeans/impl/values/c2;->Q1(Ljavax/xml/namespace/QName;Li5/c0;Lj5/m;)V

    :cond_20
    iput-object v0, v8, Lo5/a;->x:Ljavax/xml/namespace/QName;

    goto :goto_12

    :pswitch_12
    invoke-static {v0, v9, v2, v10}, Lorg/apache/xmlbeans/impl/values/k2;->O1(Ljava/lang/String;Li5/c0;Lj5/m;Lj5/h;)Ljavax/xml/namespace/QName;

    move-result-object v0

    iget v3, v8, Lo5/a;->g:I

    if-ne v1, v3, :cond_21

    invoke-static {v0, v9, v2}, Lorg/apache/xmlbeans/impl/values/k2;->P1(Ljavax/xml/namespace/QName;Li5/c0;Lj5/m;)V

    :cond_21
    iput-object v0, v8, Lo5/a;->x:Ljavax/xml/namespace/QName;

    goto :goto_12

    :pswitch_13
    invoke-static {v0, v9, v2}, Lorg/apache/xmlbeans/impl/values/i0;->validateLexical(Ljava/lang/String;Li5/c0;Lj5/m;)V

    if-eqz v4, :cond_22

    :try_start_6
    invoke-static/range {p1 .. p1}, Ln5/f;->a(Ljava/lang/CharSequence;)V
    :try_end_6
    .catch Lj5/e; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_11

    :catch_3
    const-string v1, "anyURI"

    filled-new-array/range {p1 .. p1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lo5/a$b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_22
    :goto_11
    iput-object v0, v8, Lo5/a;->s:Ljava/lang/String;

    goto :goto_12

    :pswitch_14
    invoke-static {v0, v9, v2}, Lorg/apache/xmlbeans/impl/values/h;->validateLexical(Ljava/lang/String;Li5/c0;Lj5/m;)[B

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-static {v0, v9, v2}, Lorg/apache/xmlbeans/impl/values/i;->validateValue([BLi5/c0;Lj5/m;)V

    :cond_23
    iput-object v0, v8, Lo5/a;->A:[B

    goto :goto_12

    :pswitch_15
    invoke-static {v0, v9, v2}, Lorg/apache/xmlbeans/impl/values/a;->validateLexical(Ljava/lang/String;Li5/c0;Lj5/m;)[B

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-static {v0, v9, v2}, Lorg/apache/xmlbeans/impl/values/k0;->validateValue([BLi5/c0;Lj5/m;)V

    :cond_24
    iput-object v0, v8, Lo5/a;->A:[B

    goto :goto_12

    :pswitch_16
    sget v1, Lorg/apache/xmlbeans/impl/values/m0;->x:I

    invoke-static {v0, v2}, Lorg/apache/xmlbeans/impl/values/b;->M0(Ljava/lang/String;Lj5/m;)Z

    move-result v1

    invoke-static {v0, v9, v2}, Lorg/apache/xmlbeans/impl/values/m0;->h1(Ljava/lang/String;Li5/c0;Lj5/m;)V

    iput-boolean v1, v8, Lo5/a;->u:Z

    goto :goto_12

    :pswitch_17
    iput-object v0, v8, Lo5/a;->s:Ljava/lang/String;

    :cond_25
    :goto_12
    iget v0, v8, Lo5/a;->g:I

    if-ne v12, v0, :cond_26

    goto :goto_13

    :cond_26
    move/from16 v13, v16

    :goto_13
    return v13

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_9
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method
