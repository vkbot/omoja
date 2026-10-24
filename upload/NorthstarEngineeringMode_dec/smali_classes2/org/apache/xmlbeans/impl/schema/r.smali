.class public final Lorg/apache/xmlbeans/impl/schema/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li5/c0;
.implements Lorg/apache/xmlbeans/impl/values/c0;


# static fields
.field public static final w0:[Li5/a0;


# instance fields
.field public A:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Li5/a0;",
            ">;"
        }
    .end annotation
.end field

.field public B:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Li5/a0;",
            ">;"
        }
    .end annotation
.end field

.field public C:Z

.field public D:Z

.field public E:Li5/k;

.field public F:Li5/k;

.field public G:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljavax/xml/namespace/QName;",
            ">;"
        }
    .end annotation
.end field

.field public H:I

.field public I:Li5/q;

.field public J:I

.field public K:I

.field public L:Z

.field public M:Li5/c0$a;

.field public N:I

.field public O:I

.field public P:Li5/c0$a;

.field public Q:[Lorg/apache/xmlbeans/impl/schema/h0;

.field public R:[Z

.field public S:I

.field public T:Z

.field public U:Z

.field public V:Z

.field public W:Z

.field public X:Z

.field public Y:Z

.field public Z:Z

.field public a:Ljavax/xml/namespace/QName;

.field public a0:Z

.field public b:Li5/o;

.field public b0:Z

.field public final c:I

.field public c0:Z

.field public d:Li5/c0$a;

.field public d0:I

.field public volatile e:Li5/r$a;

.field public e0:Z

.field public volatile f:Li5/s;

.field public f0:[Lk5/h;

.field public volatile g:I

.field public g0:[Lorg/apache/xmlbeans/impl/schema/h0;

.field public volatile h:I

.field public h0:Li5/c0$a;

.field public i:[Li5/c0$a;

.field public i0:Z

.field public j:Z

.field public volatile j0:Ljava/util/HashMap;

.field public k:Z

.field public k0:[Li5/b0;

.field public l:Ljava/lang/String;

.field public l0:Li5/c0$a;

.field public m:Ljava/lang/String;

.field public m0:Z

.field public volatile n:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/xmlbeans/XmlObject;",
            ">;"
        }
    .end annotation
.end field

.field public n0:[Li5/c0$a;

.field public volatile o:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Li5/h0;",
            ">;"
        }
    .end annotation
.end field

.field public o0:I

.field public volatile p:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/xmlbeans/impl/values/h2;",
            ">;"
        }
    .end annotation
.end field

.field public volatile p0:[Li5/c0;

.field public volatile q:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lorg/apache/xmlbeans/impl/values/h2;",
            ">;"
        }
    .end annotation
.end field

.field public volatile q0:[Li5/c0;

.field public volatile r:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lorg/apache/xmlbeans/impl/values/h2;",
            ">;"
        }
    .end annotation
.end field

.field public volatile r0:Li5/c0;

.field public volatile s:Z

.field public s0:Li5/c0$a;

.field public final t:[Ljava/lang/Object;

.field public t0:I

.field public u:Lorg/apache/xmlbeans/impl/schema/g;

.field public volatile u0:Z

.field public v:Ljava/lang/String;

.field public final v0:Li5/c0$a;

.field public w:Li5/z;

.field public volatile x:[Li5/x;

.field public volatile y:Ljava/util/HashMap;

.field public volatile z:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Li5/a0;

    sput-object v0, Lorg/apache/xmlbeans/impl/schema/r;->w0:[Li5/a0;

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlbeans/impl/schema/g;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/r;->t:[Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/r;->G:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Li5/c0$a;

    invoke-direct {v0, p0}, Li5/r$a;-><init>(Li5/r;)V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/r;->v0:Li5/c0$a;

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/r;->u:Lorg/apache/xmlbeans/impl/schema/g;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/xmlbeans/impl/schema/r;->u0:Z

    const/4 p1, 0x6

    iput p1, p0, Lorg/apache/xmlbeans/impl/schema/r;->c:I

    return-void
.end method

.method public static k(Ljava/util/ArrayList;Li5/z;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Li5/z;->t0()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Li5/x;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Li5/z;->q()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-interface {p1, v0}, Li5/z;->Y(I)Li5/z;

    move-result-object v1

    invoke-static {p0, v1}, Lorg/apache/xmlbeans/impl/schema/r;->k(Ljava/util/ArrayList;Li5/z;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public static q(Li5/z;Ljava/util/HashMap;)Li5/k;
    .locals 3

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li5/k;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p0}, Li5/z;->t0()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    new-instance v0, Li5/l;

    invoke-direct {v0}, Li5/l;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Li5/z;->q()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p0, v1}, Li5/z;->Y(I)Li5/z;

    move-result-object v2

    invoke-static {v2, p1}, Lorg/apache/xmlbeans/impl/schema/r;->q(Li5/z;Ljava/util/HashMap;)Li5/k;

    move-result-object v2

    invoke-virtual {v0, v2}, Li5/l;->a(Li5/k;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Li5/l;->k()Li5/k;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-interface {p0}, Li5/z;->r()Li5/k;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-interface {p0}, Li5/z;->B()Li5/k;

    move-result-object v0

    :goto_1
    invoke-virtual {p1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static t(Ljavax/xml/namespace/QName;Li5/z;Ljava/util/HashMap;)Li5/k;
    .locals 4

    invoke-static {p1, p2}, Lorg/apache/xmlbeans/impl/schema/r;->q(Li5/z;Ljava/util/HashMap;)Li5/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Li5/k;->a(Ljavax/xml/namespace/QName;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object p0, Li5/k;->Z:Li5/k;

    return-object p0

    :cond_0
    invoke-interface {p1}, Li5/z;->i()Ljava/math/BigInteger;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-interface {p1}, Li5/z;->i()Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-lez v1, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-interface {p1}, Li5/z;->t0()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_7

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 p1, 0x5

    if-eq v1, p1, :cond_2

    return-object v0

    :cond_2
    new-instance p1, Li5/k;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p2

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {p1, v1, p2, v0, p0}, Li5/k;-><init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    return-object p1

    :cond_3
    new-instance v0, Li5/l;

    invoke-direct {v0}, Li5/l;-><init>()V

    invoke-interface {p1}, Li5/z;->q()I

    move-result v1

    :cond_4
    :goto_0
    if-lez v1, :cond_6

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p1, v1}, Li5/z;->Y(I)Li5/z;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/xmlbeans/impl/schema/r;->q(Li5/z;Ljava/util/HashMap;)Li5/k;

    move-result-object v2

    if-eqz v3, :cond_5

    invoke-virtual {v0, v2}, Li5/l;->a(Li5/k;)V

    goto :goto_0

    :cond_5
    invoke-virtual {v2, p0}, Li5/k;->a(Ljavax/xml/namespace/QName;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1, v1}, Li5/z;->Y(I)Li5/z;

    move-result-object v2

    invoke-static {p0, v2, p2}, Lorg/apache/xmlbeans/impl/schema/r;->t(Ljavax/xml/namespace/QName;Li5/z;Ljava/util/HashMap;)Li5/k;

    move-result-object v2

    invoke-virtual {v0, v2}, Li5/l;->a(Li5/k;)V

    const/4 v2, 0x1

    move v3, v2

    goto :goto_0

    :cond_6
    invoke-virtual {v0}, Li5/l;->k()Li5/k;

    move-result-object p0

    return-object p0

    :cond_7
    new-instance v0, Li5/l;

    invoke-direct {v0}, Li5/l;-><init>()V

    :goto_1
    invoke-interface {p1}, Li5/z;->q()I

    move-result v1

    if-ge v3, v1, :cond_9

    invoke-interface {p1, v3}, Li5/z;->Y(I)Li5/z;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/xmlbeans/impl/schema/r;->q(Li5/z;Ljava/util/HashMap;)Li5/k;

    move-result-object v1

    invoke-virtual {v1, p0}, Li5/k;->a(Ljavax/xml/namespace/QName;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p1, v3}, Li5/z;->Y(I)Li5/z;

    move-result-object v1

    invoke-static {p0, v1, p2}, Lorg/apache/xmlbeans/impl/schema/r;->t(Ljavax/xml/namespace/QName;Li5/z;Ljava/util/HashMap;)Li5/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Li5/l;->a(Li5/k;)V

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_9
    invoke-virtual {v0}, Li5/l;->k()Li5/k;

    move-result-object p0

    return-object p0

    :cond_a
    :goto_2
    return-object v0
.end method


# virtual methods
.method public final A0(Li5/c0;)Li5/c0;
    .locals 2

    sget-object v0, Lorg/apache/xmlbeans/impl/schema/a;->o:Lorg/apache/xmlbeans/impl/schema/r;

    if-eq p0, v0, :cond_5

    if-eqz p1, :cond_5

    invoke-interface {p1}, Li5/c0;->x0()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_4

    :cond_0
    if-eq p1, v0, :cond_4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/r;->x0()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_3

    :cond_1
    check-cast p1, Lorg/apache/xmlbeans/impl/schema/r;

    :goto_0
    iget v0, p1, Lorg/apache/xmlbeans/impl/schema/r;->N:I

    iget v1, p0, Lorg/apache/xmlbeans/impl/schema/r;->N:I

    if-le v0, v1, :cond_2

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/r;->getBaseType()Li5/c0;

    move-result-object p1

    check-cast p1, Lorg/apache/xmlbeans/impl/schema/r;

    goto :goto_0

    :cond_2
    :goto_1
    iget v0, p0, Lorg/apache/xmlbeans/impl/schema/r;->N:I

    iget v1, p1, Lorg/apache/xmlbeans/impl/schema/r;->N:I

    if-le v0, v1, :cond_3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/r;->getBaseType()Li5/c0;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/schema/r;

    goto :goto_1

    :cond_3
    :goto_2
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/r;->getBaseType()Li5/c0;

    move-result-object p1

    check-cast p1, Lorg/apache/xmlbeans/impl/schema/r;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/r;->getBaseType()Li5/c0;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/schema/r;

    goto :goto_2

    :cond_4
    :goto_3
    return-object p1

    :cond_5
    :goto_4
    return-object p0
.end method

.method public final B(Li5/a0;)Lorg/apache/xmlbeans/XmlObject;
    .locals 11

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/r;->H0()Z

    move-result v0

    const-string v1, "Unrecognized builtin type: "

    const/4 v2, 0x0

    const-class v3, Li5/c0;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/r;->x0()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/r;->q:Ljava/lang/reflect/Constructor;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/r;->s:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/r;->E()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v5

    goto :goto_1

    :cond_0
    :try_start_0
    new-array v6, v4, [Ljava/lang/Class;

    aput-object v3, v6, v2

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/r;->q:Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/r;->q:Ljava/lang/reflect/Constructor;

    :goto_1
    if-eqz v0, :cond_2

    :try_start_1
    iget-object v6, p0, Lorg/apache/xmlbeans/impl/schema/r;->t:[Ljava/lang/Object;

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/XmlObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    move-exception v0

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "Exception trying to instantiate impl class."

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    move-object v0, v5

    goto/16 :goto_2

    :cond_3
    iget v0, p0, Lorg/apache/xmlbeans/impl/schema/r;->J:I

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lorg/apache/xmlbeans/impl/schema/r;->J:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    new-instance v0, Lorg/apache/xmlbeans/impl/values/x1;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/x1;-><init>()V

    goto/16 :goto_2

    :pswitch_1
    new-instance v0, Lorg/apache/xmlbeans/impl/values/w1;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/w1;-><init>()V

    goto/16 :goto_2

    :pswitch_2
    new-instance v0, Lorg/apache/xmlbeans/impl/values/x0;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/x0;-><init>()V

    goto/16 :goto_2

    :pswitch_3
    new-instance v0, Lorg/apache/xmlbeans/impl/values/y0;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/y0;-><init>()V

    goto/16 :goto_2

    :pswitch_4
    new-instance v0, Lorg/apache/xmlbeans/impl/values/k1;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/k1;-><init>()V

    goto/16 :goto_2

    :pswitch_5
    new-instance v0, Lorg/apache/xmlbeans/impl/values/j1;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/j1;-><init>()V

    goto/16 :goto_2

    :pswitch_6
    new-instance v0, Lorg/apache/xmlbeans/impl/values/i1;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/i1;-><init>()V

    goto/16 :goto_2

    :pswitch_7
    new-instance v0, Lorg/apache/xmlbeans/impl/values/p1;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/p1;-><init>()V

    goto/16 :goto_2

    :pswitch_8
    new-instance v0, Lorg/apache/xmlbeans/impl/values/t1;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/t1;-><init>()V

    goto/16 :goto_2

    :pswitch_9
    new-instance v0, Lorg/apache/xmlbeans/impl/values/u1;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/u1;-><init>()V

    goto/16 :goto_2

    :pswitch_a
    new-instance v0, Lorg/apache/xmlbeans/impl/values/q2;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/q2;-><init>()V

    goto/16 :goto_2

    :pswitch_b
    new-instance v0, Lorg/apache/xmlbeans/impl/values/a2;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/a2;-><init>()V

    goto/16 :goto_2

    :pswitch_c
    new-instance v0, Lorg/apache/xmlbeans/impl/values/s2;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/s2;-><init>()V

    goto/16 :goto_2

    :pswitch_d
    new-instance v0, Lorg/apache/xmlbeans/impl/values/v2;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/v2;-><init>()V

    goto/16 :goto_2

    :pswitch_e
    new-instance v0, Lorg/apache/xmlbeans/impl/values/t2;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/t2;-><init>()V

    goto/16 :goto_2

    :pswitch_f
    new-instance v0, Lorg/apache/xmlbeans/impl/values/u2;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/u2;-><init>()V

    goto/16 :goto_2

    :pswitch_10
    new-instance v0, Lorg/apache/xmlbeans/impl/values/i2;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/i2;-><init>()V

    goto/16 :goto_2

    :pswitch_11
    new-instance v0, Lorg/apache/xmlbeans/impl/values/y1;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/y1;-><init>()V

    goto/16 :goto_2

    :pswitch_12
    new-instance v0, Lorg/apache/xmlbeans/impl/values/v1;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/v1;-><init>()V

    goto/16 :goto_2

    :pswitch_13
    new-instance v0, Lorg/apache/xmlbeans/impl/values/z1;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/z1;-><init>()V

    goto/16 :goto_2

    :pswitch_14
    new-instance v0, Lorg/apache/xmlbeans/impl/values/n0;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/n0;-><init>()V

    goto/16 :goto_2

    :pswitch_15
    new-instance v0, Lorg/apache/xmlbeans/impl/values/l2;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/l2;-><init>()V

    goto/16 :goto_2

    :pswitch_16
    new-instance v0, Lorg/apache/xmlbeans/impl/values/l1;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/j;-><init>()V

    goto/16 :goto_2

    :pswitch_17
    new-instance v0, Lorg/apache/xmlbeans/impl/values/r1;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/p;-><init>()V

    goto/16 :goto_2

    :pswitch_18
    new-instance v0, Lorg/apache/xmlbeans/impl/values/n1;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/l;-><init>()V

    goto/16 :goto_2

    :pswitch_19
    new-instance v0, Lorg/apache/xmlbeans/impl/values/d1;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/d1;-><init>()V

    goto/16 :goto_2

    :pswitch_1a
    new-instance v0, Lorg/apache/xmlbeans/impl/values/b1;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/b1;-><init>()V

    goto/16 :goto_2

    :pswitch_1b
    new-instance v0, Lorg/apache/xmlbeans/impl/values/c1;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/c1;-><init>()V

    goto/16 :goto_2

    :pswitch_1c
    new-instance v0, Lorg/apache/xmlbeans/impl/values/e1;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/e1;-><init>()V

    goto/16 :goto_2

    :pswitch_1d
    new-instance v0, Lorg/apache/xmlbeans/impl/values/f1;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/f1;-><init>()V

    goto/16 :goto_2

    :pswitch_1e
    new-instance v0, Lorg/apache/xmlbeans/impl/values/q0;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/q0;-><init>()V

    goto/16 :goto_2

    :pswitch_1f
    new-instance v0, Lorg/apache/xmlbeans/impl/values/p2;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/p2;-><init>()V

    goto :goto_2

    :pswitch_20
    new-instance v0, Lorg/apache/xmlbeans/impl/values/r0;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/r0;-><init>()V

    goto :goto_2

    :pswitch_21
    new-instance v0, Lorg/apache/xmlbeans/impl/values/w0;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/w0;-><init>()V

    goto :goto_2

    :pswitch_22
    new-instance v0, Lorg/apache/xmlbeans/impl/values/n2;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/u;-><init>()V

    goto :goto_2

    :pswitch_23
    new-instance v0, Lorg/apache/xmlbeans/impl/values/s0;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/c;-><init>()V

    goto :goto_2

    :pswitch_24
    new-instance v0, Lorg/apache/xmlbeans/impl/values/u0;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/d;-><init>()V

    goto :goto_2

    :pswitch_25
    new-instance v0, Lorg/apache/xmlbeans/impl/values/z0;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/h2;-><init>()V

    goto :goto_2

    :pswitch_26
    new-instance v0, Lorg/apache/xmlbeans/impl/values/b2;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/s;-><init>()V

    goto :goto_2

    :pswitch_27
    new-instance v0, Lorg/apache/xmlbeans/impl/values/j2;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/s;-><init>()V

    goto :goto_2

    :pswitch_28
    new-instance v0, Lorg/apache/xmlbeans/impl/values/h0;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/h2;-><init>()V

    goto :goto_2

    :pswitch_29
    new-instance v0, Lorg/apache/xmlbeans/impl/values/g1;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/h;-><init>()V

    goto :goto_2

    :pswitch_2a
    new-instance v0, Lorg/apache/xmlbeans/impl/values/j0;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/a;-><init>()V

    goto :goto_2

    :pswitch_2b
    new-instance v0, Lorg/apache/xmlbeans/impl/values/l0;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/h2;-><init>()V

    goto :goto_2

    :pswitch_2c
    new-instance v0, Lorg/apache/xmlbeans/impl/values/e0;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/e0;-><init>()V

    goto :goto_2

    :pswitch_2d
    new-instance v0, Lorg/apache/xmlbeans/impl/values/g0;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/g0;-><init>()V

    goto :goto_2

    :pswitch_2e
    new-instance v0, Lorg/apache/xmlbeans/impl/values/g0;

    sget-object v6, Lorg/apache/xmlbeans/impl/schema/a;->Q:Lorg/apache/xmlbeans/impl/schema/r;

    invoke-direct {v0, v6}, Lorg/apache/xmlbeans/impl/values/p0;-><init>(Li5/c0;)V

    :goto_2
    move-object v6, p0

    :goto_3
    if-nez v0, :cond_d

    move-object v0, v6

    check-cast v0, Lorg/apache/xmlbeans/impl/schema/r;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/r;->H0()Z

    move-result v7

    const/4 v8, 0x2

    if-nez v7, :cond_7

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/r;->x0()Z

    move-result v7

    if-nez v7, :cond_7

    iget-object v7, v0, Lorg/apache/xmlbeans/impl/schema/r;->r:Ljava/lang/reflect/Constructor;

    if-nez v7, :cond_5

    iget-boolean v7, v0, Lorg/apache/xmlbeans/impl/schema/r;->s:Z

    if-nez v7, :cond_5

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/r;->E()Ljava/lang/Class;

    move-result-object v7

    if-nez v7, :cond_4

    move-object v0, v5

    goto :goto_5

    :cond_4
    :try_start_2
    new-array v9, v8, [Ljava/lang/Class;

    aput-object v3, v9, v2

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v4

    invoke-virtual {v7, v9}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    iput-object v7, v0, Lorg/apache/xmlbeans/impl/schema/r;->r:Ljava/lang/reflect/Constructor;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_4
    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/r;->r:Ljava/lang/reflect/Constructor;

    :goto_5
    if-nez v0, :cond_6

    goto :goto_6

    :cond_6
    :try_start_3
    new-array v7, v8, [Ljava/lang/Object;

    aput-object p0, v7, v2

    iget-boolean v8, p0, Lorg/apache/xmlbeans/impl/schema/r;->L:Z

    xor-int/2addr v8, v4

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/XmlObject;
    :try_end_3
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_7

    :catch_3
    move-exception v0

    sget-object v7, Lj5/o;->a:Le5/g;

    invoke-interface {v7}, La5/d;->e()La5/b;

    move-result-object v7

    invoke-interface {v7, v0}, La5/b;->b(Ljava/lang/Throwable;)La5/b;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, La5/b;->f(Ljava/lang/String;)V

    :goto_6
    move-object v0, v5

    goto/16 :goto_7

    :cond_7
    iget-boolean v7, p0, Lorg/apache/xmlbeans/impl/schema/r;->L:Z

    xor-int/2addr v7, v4

    iget v9, v0, Lorg/apache/xmlbeans/impl/schema/r;->J:I

    packed-switch v9, :pswitch_data_1

    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lorg/apache/xmlbeans/impl/schema/r;->J:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_2f
    new-instance v0, Lorg/apache/xmlbeans/impl/values/x1;

    invoke-direct {v0, p0, v7}, Lorg/apache/xmlbeans/impl/values/q1;-><init>(Li5/c0;Z)V

    goto/16 :goto_7

    :pswitch_30
    new-instance v0, Lorg/apache/xmlbeans/impl/values/w1;

    invoke-direct {v0, p0, v7}, Lorg/apache/xmlbeans/impl/values/v;-><init>(Li5/c0;Z)V

    goto/16 :goto_7

    :pswitch_31
    new-instance v0, Lorg/apache/xmlbeans/impl/values/x0;

    invoke-direct {v0, p0, v7}, Lorg/apache/xmlbeans/impl/values/q1;-><init>(Li5/c0;Z)V

    goto/16 :goto_7

    :pswitch_32
    new-instance v0, Lorg/apache/xmlbeans/impl/values/y0;

    invoke-direct {v0, p0, v7}, Lorg/apache/xmlbeans/impl/values/v;-><init>(Li5/c0;Z)V

    goto/16 :goto_7

    :pswitch_33
    new-instance v0, Lorg/apache/xmlbeans/impl/values/k1;

    invoke-direct {v0, p0, v7}, Lorg/apache/xmlbeans/impl/values/q1;-><init>(Li5/c0;Z)V

    goto/16 :goto_7

    :pswitch_34
    new-instance v0, Lorg/apache/xmlbeans/impl/values/j1;

    invoke-direct {v0, p0, v7}, Lorg/apache/xmlbeans/impl/values/v;-><init>(Li5/c0;Z)V

    goto/16 :goto_7

    :pswitch_35
    new-instance v0, Lorg/apache/xmlbeans/impl/values/i1;

    invoke-direct {v0, p0, v7}, Lorg/apache/xmlbeans/impl/values/v;-><init>(Li5/c0;Z)V

    goto/16 :goto_7

    :pswitch_36
    new-instance v0, Lorg/apache/xmlbeans/impl/values/p1;

    invoke-direct {v0, p0, v7}, Lorg/apache/xmlbeans/impl/values/v;-><init>(Li5/c0;Z)V

    goto/16 :goto_7

    :pswitch_37
    new-instance v0, Lorg/apache/xmlbeans/impl/values/t1;

    invoke-direct {v0, p0, v7}, Lorg/apache/xmlbeans/impl/values/v;-><init>(Li5/c0;Z)V

    goto/16 :goto_7

    :pswitch_38
    new-instance v0, Lorg/apache/xmlbeans/impl/values/u1;

    invoke-direct {v0, p0, v7}, Lorg/apache/xmlbeans/impl/values/v;-><init>(Li5/c0;Z)V

    goto/16 :goto_7

    :pswitch_39
    new-instance v0, Lorg/apache/xmlbeans/impl/values/q2;

    invoke-direct {v0, p0, v7}, Lorg/apache/xmlbeans/impl/values/v;-><init>(Li5/c0;Z)V

    goto/16 :goto_7

    :pswitch_3a
    new-instance v0, Lorg/apache/xmlbeans/impl/values/a2;

    invoke-direct {v0, p0, v7}, Lorg/apache/xmlbeans/impl/values/v;-><init>(Li5/c0;Z)V

    goto/16 :goto_7

    :pswitch_3b
    new-instance v0, Lorg/apache/xmlbeans/impl/values/s2;

    invoke-direct {v0, p0, v7}, Lorg/apache/xmlbeans/impl/values/k;-><init>(Li5/c0;Z)V

    goto/16 :goto_7

    :pswitch_3c
    new-instance v0, Lorg/apache/xmlbeans/impl/values/v2;

    invoke-direct {v0, p0, v7}, Lorg/apache/xmlbeans/impl/values/k;-><init>(Li5/c0;Z)V

    goto/16 :goto_7

    :pswitch_3d
    new-instance v0, Lorg/apache/xmlbeans/impl/values/t2;

    invoke-direct {v0, p0, v7}, Lorg/apache/xmlbeans/impl/values/q;-><init>(Li5/c0;Z)V

    goto/16 :goto_7

    :pswitch_3e
    new-instance v0, Lorg/apache/xmlbeans/impl/values/u2;

    invoke-direct {v0, p0, v7}, Lorg/apache/xmlbeans/impl/values/m;-><init>(Li5/c0;Z)V

    goto/16 :goto_7

    :pswitch_3f
    new-instance v0, Lorg/apache/xmlbeans/impl/values/i2;

    invoke-direct {v0, p0, v7}, Lorg/apache/xmlbeans/impl/values/m;-><init>(Li5/c0;Z)V

    goto/16 :goto_7

    :pswitch_40
    new-instance v0, Lorg/apache/xmlbeans/impl/values/y1;

    invoke-direct {v0, p0, v7}, Lorg/apache/xmlbeans/impl/values/m;-><init>(Li5/c0;Z)V

    goto/16 :goto_7

    :pswitch_41
    new-instance v0, Lorg/apache/xmlbeans/impl/values/v1;

    invoke-direct {v0, p0, v7}, Lorg/apache/xmlbeans/impl/values/m;-><init>(Li5/c0;Z)V

    goto/16 :goto_7

    :pswitch_42
    new-instance v0, Lorg/apache/xmlbeans/impl/values/z1;

    invoke-direct {v0, p0, v7}, Lorg/apache/xmlbeans/impl/values/m;-><init>(Li5/c0;Z)V

    goto/16 :goto_7

    :pswitch_43
    new-instance v0, Lorg/apache/xmlbeans/impl/values/n0;

    invoke-direct {v0, p0, v7}, Lorg/apache/xmlbeans/impl/values/k;-><init>(Li5/c0;Z)V

    goto/16 :goto_7

    :pswitch_44
    new-instance v0, Lorg/apache/xmlbeans/impl/values/l2;

    invoke-direct {v0, p0, v7}, Lorg/apache/xmlbeans/impl/values/k;-><init>(Li5/c0;Z)V

    goto/16 :goto_7

    :pswitch_45
    new-instance v0, Lorg/apache/xmlbeans/impl/values/m1;

    invoke-direct {v0, p0, v7}, Lorg/apache/xmlbeans/impl/values/k;-><init>(Li5/c0;Z)V

    goto/16 :goto_7

    :pswitch_46
    new-instance v0, Lorg/apache/xmlbeans/impl/values/s1;

    invoke-direct {v0, p0, v7}, Lorg/apache/xmlbeans/impl/values/q;-><init>(Li5/c0;Z)V

    goto/16 :goto_7

    :pswitch_47
    new-instance v0, Lorg/apache/xmlbeans/impl/values/o1;

    invoke-direct {v0, p0, v7}, Lorg/apache/xmlbeans/impl/values/m;-><init>(Li5/c0;Z)V

    goto/16 :goto_7

    :pswitch_48
    new-instance v0, Lorg/apache/xmlbeans/impl/values/d1;

    invoke-direct {v0, p0, v7}, Lorg/apache/xmlbeans/impl/values/g;-><init>(Li5/c0;Z)V

    goto/16 :goto_7

    :pswitch_49
    new-instance v0, Lorg/apache/xmlbeans/impl/values/b1;

    invoke-direct {v0, p0, v7}, Lorg/apache/xmlbeans/impl/values/g;-><init>(Li5/c0;Z)V

    goto/16 :goto_7

    :pswitch_4a
    new-instance v0, Lorg/apache/xmlbeans/impl/values/c1;

    invoke-direct {v0, p0, v7}, Lorg/apache/xmlbeans/impl/values/g;-><init>(Li5/c0;Z)V

    goto/16 :goto_7

    :pswitch_4b
    new-instance v0, Lorg/apache/xmlbeans/impl/values/e1;

    invoke-direct {v0, p0, v7}, Lorg/apache/xmlbeans/impl/values/g;-><init>(Li5/c0;Z)V

    goto/16 :goto_7

    :pswitch_4c
    new-instance v0, Lorg/apache/xmlbeans/impl/values/f1;

    invoke-direct {v0, p0, v7}, Lorg/apache/xmlbeans/impl/values/g;-><init>(Li5/c0;Z)V

    goto/16 :goto_7

    :pswitch_4d
    new-instance v0, Lorg/apache/xmlbeans/impl/values/q0;

    invoke-direct {v0, p0, v7}, Lorg/apache/xmlbeans/impl/values/g;-><init>(Li5/c0;Z)V

    goto/16 :goto_7

    :pswitch_4e
    new-instance v0, Lorg/apache/xmlbeans/impl/values/p2;

    invoke-direct {v0, p0, v7}, Lorg/apache/xmlbeans/impl/values/g;-><init>(Li5/c0;Z)V

    goto/16 :goto_7

    :pswitch_4f
    new-instance v0, Lorg/apache/xmlbeans/impl/values/r0;

    invoke-direct {v0, p0, v7}, Lorg/apache/xmlbeans/impl/values/g;-><init>(Li5/c0;Z)V

    goto/16 :goto_7

    :pswitch_50
    new-instance v0, Lorg/apache/xmlbeans/impl/values/w0;

    invoke-direct {v0, p0, v7}, Lorg/apache/xmlbeans/impl/values/w0;-><init>(Li5/c0;Z)V

    goto/16 :goto_7

    :pswitch_51
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/r;->L()Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Lorg/apache/xmlbeans/impl/values/m2;

    invoke-direct {v0, p0, v7}, Lorg/apache/xmlbeans/impl/values/t;-><init>(Li5/c0;Z)V

    goto/16 :goto_7

    :cond_8
    new-instance v0, Lorg/apache/xmlbeans/impl/values/o2;

    invoke-direct {v0, p0, v7}, Lorg/apache/xmlbeans/impl/values/v;-><init>(Li5/c0;Z)V

    goto/16 :goto_7

    :pswitch_52
    new-instance v0, Lorg/apache/xmlbeans/impl/values/t0;

    invoke-direct {v0, p0, v7}, Lorg/apache/xmlbeans/impl/values/t0;-><init>(Li5/c0;Z)V

    goto/16 :goto_7

    :pswitch_53
    new-instance v0, Lorg/apache/xmlbeans/impl/values/v0;

    invoke-direct {v0, p0, v7}, Lorg/apache/xmlbeans/impl/values/e;-><init>(Li5/c0;Z)V

    goto/16 :goto_7

    :pswitch_54
    new-instance v0, Lorg/apache/xmlbeans/impl/values/a1;

    invoke-direct {v0, p0, v7}, Lorg/apache/xmlbeans/impl/values/a1;-><init>(Li5/c0;Z)V

    goto :goto_7

    :pswitch_55
    new-instance v0, Lorg/apache/xmlbeans/impl/values/c2;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/s;-><init>()V

    iput-object p0, v0, Lorg/apache/xmlbeans/impl/values/c2;->x:Li5/c0;

    invoke-virtual {v0, v7, v2}, Lorg/apache/xmlbeans/impl/values/h2;->initComplexType(ZZ)V

    goto :goto_7

    :pswitch_56
    new-instance v0, Lorg/apache/xmlbeans/impl/values/k2;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/s;-><init>()V

    iput-object p0, v0, Lorg/apache/xmlbeans/impl/values/k2;->x:Li5/c0;

    invoke-virtual {v0, v7, v2}, Lorg/apache/xmlbeans/impl/values/h2;->initComplexType(ZZ)V

    goto :goto_7

    :pswitch_57
    new-instance v0, Lorg/apache/xmlbeans/impl/values/i0;

    invoke-direct {v0, p0, v7}, Lorg/apache/xmlbeans/impl/values/i0;-><init>(Li5/c0;Z)V

    goto :goto_7

    :pswitch_58
    new-instance v0, Lorg/apache/xmlbeans/impl/values/h1;

    invoke-direct {v0, p0, v7}, Lorg/apache/xmlbeans/impl/values/i;-><init>(Li5/c0;Z)V

    goto :goto_7

    :pswitch_59
    new-instance v0, Lorg/apache/xmlbeans/impl/values/k0;

    invoke-direct {v0, p0, v7}, Lorg/apache/xmlbeans/impl/values/k0;-><init>(Li5/c0;Z)V

    goto :goto_7

    :pswitch_5a
    new-instance v0, Lorg/apache/xmlbeans/impl/values/m0;

    invoke-direct {v0, p0, v7}, Lorg/apache/xmlbeans/impl/values/m0;-><init>(Li5/c0;Z)V

    goto :goto_7

    :pswitch_5b
    iget v0, p0, Lorg/apache/xmlbeans/impl/schema/r;->K:I

    if-eqz v0, :cond_c

    if-eq v0, v4, :cond_b

    if-eq v0, v8, :cond_a

    const/4 v8, 0x3

    if-ne v0, v8, :cond_9

    new-instance v0, Lorg/apache/xmlbeans/impl/values/q1;

    invoke-direct {v0, p0, v7}, Lorg/apache/xmlbeans/impl/values/q1;-><init>(Li5/c0;Z)V

    goto :goto_7

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_a
    new-instance v0, Lorg/apache/xmlbeans/impl/values/r2;

    invoke-direct {v0, p0, v7}, Lorg/apache/xmlbeans/impl/values/r2;-><init>(Li5/c0;Z)V

    goto :goto_7

    :cond_b
    new-instance v0, Lorg/apache/xmlbeans/impl/values/f0;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/e0;-><init>()V

    iput-object p0, v0, Lorg/apache/xmlbeans/impl/values/f0;->x:Li5/c0;

    invoke-virtual {v0, v7, v2}, Lorg/apache/xmlbeans/impl/values/h2;->initComplexType(ZZ)V

    goto :goto_7

    :cond_c
    new-instance v0, Lorg/apache/xmlbeans/impl/values/p0;

    invoke-direct {v0, p0}, Lorg/apache/xmlbeans/impl/values/p0;-><init>(Li5/c0;)V

    goto :goto_7

    :pswitch_5c
    new-instance v0, Lorg/apache/xmlbeans/impl/values/g0;

    sget-object v7, Lorg/apache/xmlbeans/impl/schema/a;->Q:Lorg/apache/xmlbeans/impl/schema/r;

    invoke-direct {v0, v7}, Lorg/apache/xmlbeans/impl/values/p0;-><init>(Li5/c0;)V

    :goto_7
    invoke-interface {v6}, Li5/c0;->getBaseType()Li5/c0;

    move-result-object v6

    goto/16 :goto_3

    :cond_d
    move-object p0, v0

    check-cast p0, Lorg/apache/xmlbeans/impl/values/h2;

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->init_flags(Li5/a0;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
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
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5c
        :pswitch_5b
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
    .end packed-switch
.end method

.method public final B0()I
    .locals 0

    iget p0, p0, Lorg/apache/xmlbeans/impl/schema/r;->K:I

    return p0
.end method

.method public final C()Z
    .locals 2

    iget p0, p0, Lorg/apache/xmlbeans/impl/schema/r;->J:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public final C0()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/r;->m:Ljava/lang/String;

    return-object p0
.end method

.method public final D()[Li5/a0;
    .locals 1

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/r;->A:Ljava/util/Map;

    if-nez p0, :cond_0

    sget-object p0, Lorg/apache/xmlbeans/impl/schema/r;->w0:[Li5/a0;

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Li5/a0;

    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Li5/a0;

    return-object p0
.end method

.method public final D0(Ljavax/xml/namespace/QName;)Li5/a0;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/r;->A:Ljava/util/Map;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li5/a0;

    :goto_0
    return-object p0
.end method

.method public final E()Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/xmlbeans/impl/values/h2;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/r;->s:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/r;->p:Ljava/lang/Class;

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/r;->m:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/r;->u:Lorg/apache/xmlbeans/impl/schema/g;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/schema/g;->b()Li5/f0;

    move-result-object v2

    invoke-interface {v2}, Li5/f0;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/schema/r;->p:Ljava/lang/Class;

    goto :goto_0

    :cond_1
    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/r;->s:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/r;->s:Z

    :cond_2
    :goto_0
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/r;->p:Ljava/lang/Class;

    return-object p0
.end method

.method public final F(Ljava/lang/String;)Li5/h0;
    .locals 13

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/r;->i0:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/r;->k0:[Li5/b0;

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iput-boolean v2, p0, Lorg/apache/xmlbeans/impl/schema/r;->i0:Z

    goto/16 :goto_5

    :cond_1
    new-instance v3, Ljava/util/HashMap;

    array-length v4, v0

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, v0

    add-int/2addr v5, v2

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v5, Ljava/util/HashMap;

    array-length v6, v0

    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(I)V

    array-length v6, v0

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    if-ge v8, v6, :cond_2

    aget-object v9, v0, v8

    invoke-interface {v9}, Li5/b0;->getString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lorg/apache/xmlbeans/impl/schema/r;->h0:Li5/c0$a;

    invoke-virtual {v5}, Li5/r$a;->a()Li5/r;

    move-result-object v5

    check-cast v5, Li5/c0;

    invoke-interface {v5}, Li5/c0;->M0()Ljava/lang/Class;

    move-result-object v5

    if-eqz v5, :cond_4

    :try_start_0
    const-string v6, "table"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Li5/h0$a;

    array-length v8, v0

    move v9, v7

    :goto_1
    if-ge v9, v8, :cond_4

    aget-object v10, v0, v9

    invoke-interface {v10}, Li5/b0;->getIntValue()I

    move-result v11

    invoke-virtual {v6, v11}, Li5/h0$a;->a(I)Li5/h0;

    move-result-object v12

    invoke-interface {v10}, Li5/b0;->getString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-gt v10, v11, :cond_3

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-virtual {v4, v11, v12}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :catch_0
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Something wrong: could not locate enum table for "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    move-object v5, v1

    :cond_4
    if-nez v5, :cond_6

    array-length v5, v0

    :goto_3
    if-ge v7, v5, :cond_6

    aget-object v6, v0, v7

    invoke-interface {v6}, Li5/b0;->getIntValue()I

    move-result v8

    invoke-interface {v6}, Li5/b0;->getString()Ljava/lang/String;

    move-result-object v6

    new-instance v9, Lorg/apache/xmlbeans/impl/values/z;

    invoke-direct {v9, v6, v8}, Li5/h0;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gt v6, v8, :cond_5

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    invoke-virtual {v4, v8, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_6
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/r;->i0:Z

    if-nez v0, :cond_7

    iput-object v3, p0, Lorg/apache/xmlbeans/impl/schema/r;->j0:Ljava/util/HashMap;

    :cond_7
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-enter p0

    :try_start_2
    iput-boolean v2, p0, Lorg/apache/xmlbeans/impl/schema/r;->i0:Z

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_5
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/r;->j0:Ljava/util/HashMap;

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/r;->j0:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li5/h0;

    return-object p0

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public final G(Ljavax/xml/namespace/QName;Ljavax/xml/namespace/QName;Li5/d0;)Li5/c0;
    .locals 2

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/r;->L:Z

    if-nez v0, :cond_8

    iget v0, p0, Lorg/apache/xmlbeans/impl/schema/r;->H:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/r;->x0()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/r;->A:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li5/a0;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Li5/a0;->getType()Li5/c0;

    move-result-object p0

    goto :goto_1

    :cond_2
    if-nez p3, :cond_3

    sget-object p0, Lorg/apache/xmlbeans/impl/schema/a;->Q:Lorg/apache/xmlbeans/impl/schema/r;

    return-object p0

    :cond_3
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/r;->E:Li5/k;

    invoke-virtual {v0, p1}, Li5/k;->a(Ljavax/xml/namespace/QName;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/r;->G:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_4
    sget-object p0, Lorg/apache/xmlbeans/impl/schema/a;->Q:Lorg/apache/xmlbeans/impl/schema/r;

    return-object p0

    :cond_5
    :goto_0
    invoke-interface {p3, p1}, Li5/d0;->findElement(Ljavax/xml/namespace/QName;)Li5/u;

    move-result-object p0

    if-nez p0, :cond_6

    sget-object p0, Lorg/apache/xmlbeans/impl/schema/a;->Q:Lorg/apache/xmlbeans/impl/schema/r;

    return-object p0

    :cond_6
    invoke-interface {p0}, Li5/s;->getType()Li5/c0;

    move-result-object p0

    :goto_1
    if-eqz p2, :cond_7

    if-eqz p3, :cond_7

    invoke-interface {p3, p2}, Li5/d0;->findType(Ljavax/xml/namespace/QName;)Li5/c0;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-interface {p0, p1}, Li5/c0;->G0(Li5/c0;)Z

    move-result p2

    if-eqz p2, :cond_7

    return-object p1

    :cond_7
    return-object p0

    :cond_8
    :goto_2
    sget-object p0, Lorg/apache/xmlbeans/impl/schema/a;->Q:Lorg/apache/xmlbeans/impl/schema/r;

    return-object p0
.end method

.method public final G0(Li5/c0;)Z
    .locals 6

    const/4 v0, 0x1

    if-eqz p1, :cond_7

    invoke-interface {p1}, Li5/c0;->x0()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/r;->x0()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    return v2

    :cond_1
    iget v1, p0, Lorg/apache/xmlbeans/impl/schema/r;->K:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/r;->Q0()[Li5/c0;

    move-result-object v1

    array-length v3, v1

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v1, v4

    invoke-interface {v5, p1}, Li5/c0;->G0(Li5/c0;)Z

    move-result v5

    if-eqz v5, :cond_2

    return v0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    move-object v1, p1

    check-cast v1, Lorg/apache/xmlbeans/impl/schema/r;

    iget v1, v1, Lorg/apache/xmlbeans/impl/schema/r;->N:I

    iget v3, p0, Lorg/apache/xmlbeans/impl/schema/r;->N:I

    sub-int/2addr v1, v3

    if-gez v1, :cond_4

    return v2

    :cond_4
    :goto_1
    if-lez v1, :cond_5

    invoke-interface {p1}, Li5/c0;->getBaseType()Li5/c0;

    move-result-object p1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_5
    if-eqz p1, :cond_6

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_2

    :cond_6
    move v0, v2

    :cond_7
    :goto_2
    return v0
.end method

.method public final H()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/r;->v:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/r;->w0()Li5/c0;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/r;->w0()Li5/c0;

    move-result-object p0

    invoke-interface {p0}, Li5/r;->H()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/r;->V()Li5/s;

    move-result-object p0

    if-eqz p0, :cond_3

    instance-of v0, p0, Li5/u;

    if-eqz v0, :cond_2

    check-cast p0, Li5/u;

    invoke-interface {p0}, Li5/r;->H()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of v0, p0, Li5/t;

    if-eqz v0, :cond_3

    check-cast p0, Li5/t;

    invoke-interface {p0}, Li5/r;->H()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public final H0()Z
    .locals 0

    iget p0, p0, Lorg/apache/xmlbeans/impl/schema/r;->J:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final I()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xmlbeans/impl/schema/r;->Z:Z

    return p0
.end method

.method public final J0()[Li5/b0;
    .locals 3

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/r;->k0:[Li5/b0;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    array-length v0, p0

    new-array v1, v0, [Li5/b0;

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public final K()Li5/r$a;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/r;->v0:Li5/c0$a;

    return-object p0
.end method

.method public final K0()I
    .locals 0

    iget p0, p0, Lorg/apache/xmlbeans/impl/schema/r;->d0:I

    return p0
.end method

.method public final L()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/r;->k0:[Li5/b0;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final L0()[Li5/i0;
    .locals 5

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/r;->g0:[Lorg/apache/xmlbeans/impl/schema/h0;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    array-length v0, v0

    new-array v2, v0, [Li5/i0;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    iget-object v4, p0, Lorg/apache/xmlbeans/impl/schema/r;->g0:[Lorg/apache/xmlbeans/impl/schema/h0;

    aget-object v4, v4, v3

    if-nez v4, :cond_1

    move-object v4, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Lorg/apache/xmlbeans/impl/schema/h0;->a()Li5/i0;

    move-result-object v4

    :goto_1
    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public final M(Ljavax/xml/namespace/QName;)Z
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/r;->G:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final M0()Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Li5/h0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/r;->o:Ljava/lang/Class;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/r;->n0()Li5/c0;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/r;->n0()Li5/c0;

    move-result-object v1

    invoke-interface {v1}, Li5/c0;->w()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "$Enum"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/r;->u:Lorg/apache/xmlbeans/impl/schema/g;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/g;->b()Li5/f0;

    move-result-object v1

    invoke-interface {v1}, Li5/f0;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/r;->o:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/r;->o:Ljava/lang/Class;

    :cond_0
    :goto_0
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/r;->o:Ljava/lang/Class;

    return-object p0
.end method

.method public final N0(I)Li5/i0;
    .locals 1

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/r;->Q:[Lorg/apache/xmlbeans/impl/schema/h0;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    aget-object p0, p0, p1

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/h0;->a()Li5/i0;

    move-result-object p0

    return-object p0
.end method

.method public final O()Li5/c0;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/r;->P:Li5/c0$a;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Li5/r$a;->a()Li5/r;

    move-result-object p0

    check-cast p0, Li5/c0;

    :goto_0
    return-object p0
.end method

.method public final O0(ZZ)V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/r;->d()V

    iput-boolean p1, p0, Lorg/apache/xmlbeans/impl/schema/r;->b0:Z

    iput-boolean p2, p0, Lorg/apache/xmlbeans/impl/schema/r;->c0:Z

    return-void
.end method

.method public final P(Ljavax/xml/namespace/QName;Li5/d0;)Li5/c0;
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/r;->L:Z

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/r;->x0()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/r;->C()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lorg/apache/xmlbeans/impl/schema/a;->p:Lorg/apache/xmlbeans/impl/schema/r;

    return-object p0

    :cond_1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/r;->B:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li5/a0;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Li5/a0;->getType()Li5/c0;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/r;->F:Li5/k;

    invoke-virtual {p0, p1}, Li5/k;->a(Ljavax/xml/namespace/QName;)Z

    move-result p0

    if-eqz p0, :cond_5

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {p2, p1}, Li5/d0;->findAttribute(Ljavax/xml/namespace/QName;)Li5/t;

    move-result-object p0

    if-nez p0, :cond_4

    sget-object p0, Lorg/apache/xmlbeans/impl/schema/a;->Q:Lorg/apache/xmlbeans/impl/schema/r;

    return-object p0

    :cond_4
    invoke-interface {p0}, Li5/s;->getType()Li5/c0;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_0
    sget-object p0, Lorg/apache/xmlbeans/impl/schema/a;->Q:Lorg/apache/xmlbeans/impl/schema/r;

    return-object p0

    :cond_6
    :goto_1
    sget-object p0, Lorg/apache/xmlbeans/impl/schema/a;->Q:Lorg/apache/xmlbeans/impl/schema/r;

    return-object p0
.end method

.method public final P0(Ljava/lang/String;)Z
    .locals 4

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/r;->e0:Z

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/r;->f0:[Lk5/h;

    if-eqz v0, :cond_3

    array-length v0, v0

    if-lez v0, :cond_3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/r;->f0:[Lk5/h;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lk5/h;->g(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/r;->f0:[Lk5/h;

    array-length v2, v2

    if-lt v1, v2, :cond_3

    return v0

    :cond_3
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/r;->getBaseType()Li5/c0;

    move-result-object p0

    invoke-interface {p0, p1}, Li5/c0;->P0(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final Q0()[Li5/c0;
    .locals 4

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/r;->n0:[Li5/c0$a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    array-length v0, v0

    :goto_0
    new-array v2, v0, [Li5/c0;

    :goto_1
    if-ge v1, v0, :cond_1

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/schema/r;->n0:[Li5/c0$a;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Li5/r$a;->a()Li5/r;

    move-result-object v3

    check-cast v3, Li5/c0;

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-object v2
.end method

.method public final R0()Li5/c0;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/r;->l0:Li5/c0$a;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Li5/r$a;->a()Li5/r;

    move-result-object p0

    check-cast p0, Li5/c0;

    :goto_0
    return-object p0
.end method

.method public final S(Ljava/lang/Object;Z)Li5/i0;
    .locals 2

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/r;->L:Z

    if-nez v0, :cond_1

    iget v0, p0, Lorg/apache/xmlbeans/impl/schema/r;->H:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/apache/xmlbeans/impl/values/x2;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/r;->B(Li5/a0;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/values/h2;

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->setValidateOnSet()V

    :cond_2
    instance-of p2, p1, Lorg/apache/xmlbeans/XmlObject;

    if-eqz p2, :cond_3

    check-cast p1, Lorg/apache/xmlbeans/XmlObject;

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->set_newValue(Lorg/apache/xmlbeans/XmlObject;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->setObjectValue(Ljava/lang/Object;)V

    :goto_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_dated()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->setImmutable()V

    check-cast p0, Li5/i0;

    return-object p0
.end method

.method public final S0()V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/r;->b()V

    return-void
.end method

.method public final T(ZZZZZ)V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/r;->d()V

    iput-boolean p1, p0, Lorg/apache/xmlbeans/impl/schema/r;->W:Z

    iput-boolean p2, p0, Lorg/apache/xmlbeans/impl/schema/r;->X:Z

    iput-boolean p3, p0, Lorg/apache/xmlbeans/impl/schema/r;->Y:Z

    iput-boolean p4, p0, Lorg/apache/xmlbeans/impl/schema/r;->Z:Z

    iput-boolean p5, p0, Lorg/apache/xmlbeans/impl/schema/r;->a0:Z

    return-void
.end method

.method public final T0()[Li5/a0;
    .locals 1

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/r;->B:Ljava/util/Map;

    if-nez p0, :cond_0

    sget-object p0, Lorg/apache/xmlbeans/impl/schema/r;->w0:[Li5/a0;

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Li5/a0;

    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Li5/a0;

    return-object p0
.end method

.method public final U(Ljava/lang/Object;)Li5/i0;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/xmlbeans/impl/schema/r;->S(Ljava/lang/Object;Z)Li5/i0;

    move-result-object p0

    return-object p0
.end method

.method public final U0(Lorg/apache/xmlbeans/impl/schema/g;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/r;->u:Lorg/apache/xmlbeans/impl/schema/g;

    return-void
.end method

.method public final declared-synchronized V()Li5/s;
    .locals 5

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/apache/xmlbeans/impl/schema/r;->g:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/r;->w0()Li5/c0;

    move-result-object v0

    iget v2, p0, Lorg/apache/xmlbeans/impl/schema/r;->g:I

    if-nez v2, :cond_1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/r;->e:Li5/r$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/r;->e:Li5/r$a;

    invoke-virtual {v0}, Li5/r$a;->a()Li5/r;

    move-result-object v0

    check-cast v0, Li5/s;

    :goto_0
    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/r;->f:Li5/s;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    iget v2, p0, Lorg/apache/xmlbeans/impl/schema/r;->g:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    invoke-interface {v0}, Li5/c0;->r0()Li5/q;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/impl/schema/f;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/f;->b()[Li5/w;

    move-result-object v0

    iget v2, p0, Lorg/apache/xmlbeans/impl/schema/r;->h:I

    aget-object v0, v0, v2

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/r;->f:Li5/s;

    goto :goto_1

    :cond_2
    check-cast v0, Lorg/apache/xmlbeans/impl/schema/r;

    iget v2, p0, Lorg/apache/xmlbeans/impl/schema/r;->h:I

    iget-object v3, v0, Lorg/apache/xmlbeans/impl/schema/r;->x:[Li5/x;

    if-nez v3, :cond_3

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, v0, Lorg/apache/xmlbeans/impl/schema/r;->w:Li5/z;

    invoke-static {v3, v4}, Lorg/apache/xmlbeans/impl/schema/r;->k(Ljava/util/ArrayList;Li5/z;)V

    const/4 v4, 0x0

    new-array v4, v4, [Li5/x;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Li5/x;

    iput-object v3, v0, Lorg/apache/xmlbeans/impl/schema/r;->x:[Li5/x;

    iget-object v3, v0, Lorg/apache/xmlbeans/impl/schema/r;->x:[Li5/x;

    :cond_3
    aget-object v0, v3, v2

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/r;->f:Li5/s;

    :goto_1
    iput v1, p0, Lorg/apache/xmlbeans/impl/schema/r;->g:I

    :cond_4
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/r;->f:Li5/s;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_2
    monitor-exit p0

    throw v0
.end method

.method public final V0(Li5/r$a;)V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/r;->i()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/r;->e:Li5/r$a;

    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/xmlbeans/impl/schema/r;->g:I

    return-void
.end method

.method public final W()Li5/z;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/r;->w:Li5/z;

    return-object p0
.end method

.method public final W0(Li5/c0$a;)V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/r;->d()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/r;->P:Li5/c0$a;

    return-void
.end method

.method public final X()Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/xmlbeans/XmlObject;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/r;->n:Ljava/lang/Class;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/r;->l:Ljava/lang/String;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/r;->u:Lorg/apache/xmlbeans/impl/schema/g;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/g;->b()Li5/f0;

    move-result-object v1

    invoke-interface {v1}, Li5/f0;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/r;->n:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/r;->n:Ljava/lang/Class;

    :cond_0
    :goto_0
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/r;->n:Ljava/lang/Class;

    return-object p0
.end method

.method public final X0(Li5/z;Lorg/apache/xmlbeans/impl/schema/f;Ljava/util/Map;Ljava/util/Map;Z)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/r;->d()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/r;->w:Li5/z;

    iput-object p2, p0, Lorg/apache/xmlbeans/impl/schema/r;->I:Li5/q;

    iput-object p3, p0, Lorg/apache/xmlbeans/impl/schema/r;->A:Ljava/util/Map;

    iput-object p4, p0, Lorg/apache/xmlbeans/impl/schema/r;->B:Ljava/util/Map;

    iput-boolean p5, p0, Lorg/apache/xmlbeans/impl/schema/r;->C:Z

    if-eqz p3, :cond_2

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/r;->G:Ljava/util/Set;

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/schema/r;->A:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Li5/a0;

    invoke-interface {p2}, Li5/a0;->n()[Ljavax/xml/namespace/QName;

    move-result-object p2

    array-length p3, p2

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p3, :cond_0

    aget-object p5, p2, p4

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/r;->A:Ljava/util/Map;

    invoke-interface {v0, p5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/r;->G:Ljava/util/Set;

    invoke-interface {v0, p5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final Y(Li5/o;)V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/r;->i()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/r;->b:Li5/o;

    return-void
.end method

.method public final Y0(Z)V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/r;->i()V

    iput-boolean p1, p0, Lorg/apache/xmlbeans/impl/schema/r;->j:Z

    return-void
.end method

.method public final Z0([Lorg/apache/xmlbeans/impl/schema/h0;)V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/r;->d()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [Lorg/apache/xmlbeans/impl/schema/h0;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/xmlbeans/impl/schema/h0;

    :goto_0
    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/r;->g0:[Lorg/apache/xmlbeans/impl/schema/h0;

    return-void
.end method

.method public final a()Lorg/apache/xmlbeans/impl/values/b0;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/r;->B(Li5/a0;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/values/b0;

    return-object p0
.end method

.method public final a0()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xmlbeans/impl/schema/r;->T:Z

    return p0
.end method

.method public final a1(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/r;->i()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/r;->v:Ljava/lang/String;

    return-void
.end method

.method public final b()V
    .locals 2

    iget v0, p0, Lorg/apache/xmlbeans/impl/schema/r;->c:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    iget-boolean p0, p0, Lorg/apache/xmlbeans/impl/schema/r;->u0:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public final b0()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xmlbeans/impl/schema/r;->D:Z

    return p0
.end method

.method public final b1(Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lorg/apache/xmlbeans/impl/schema/r;->c:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/r;->u0:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/r;->m:Ljava/lang/String;

    const/16 v0, 0x24

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/r;->m:Ljava/lang/String;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/r;->m:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    return-void
.end method

.method public final c()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xmlbeans/impl/schema/r;->b0:Z

    return p0
.end method

.method public final c0([Li5/c0$a;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [Li5/c0$a;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Li5/c0$a;

    :goto_0
    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/r;->i:[Li5/c0$a;

    return-void
.end method

.method public final c1(Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lorg/apache/xmlbeans/impl/schema/r;->c:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/r;->u0:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/r;->l:Ljava/lang/String;

    const/16 v0, 0x24

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/r;->l:Ljava/lang/String;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/r;->l:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    return-void
.end method

.method public final d()V
    .locals 2

    iget v0, p0, Lorg/apache/xmlbeans/impl/schema/r;->c:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget-boolean p0, p0, Lorg/apache/xmlbeans/impl/schema/r;->u0:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public final d0()Li5/c0;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/r;->s0:Li5/c0$a;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Li5/r$a;->a()Li5/r;

    move-result-object p0

    check-cast p0, Li5/c0;

    :goto_0
    return-object p0
.end method

.method public final d1(Li5/c0$a;)V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/r;->i()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/r;->d:Li5/c0$a;

    return-void
.end method

.method public final e()I
    .locals 0

    iget p0, p0, Lorg/apache/xmlbeans/impl/schema/r;->J:I

    return p0
.end method

.method public final e0()Ljavax/xml/namespace/QName;
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/r;->k:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/r;->I:Li5/q;

    if-eqz p0, :cond_0

    check-cast p0, Lorg/apache/xmlbeans/impl/schema/f;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/f;->b()[Li5/w;

    move-result-object p0

    if-eqz p0, :cond_0

    array-length v0, p0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-interface {p0}, Li5/s;->getName()Ljavax/xml/namespace/QName;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final e1(Li5/c0$a;)V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/r;->d()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/r;->s0:Li5/c0$a;

    return-void
.end method

.method public final f()Li5/f0;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/r;->u:Lorg/apache/xmlbeans/impl/schema/g;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/g;->b()Li5/f0;

    move-result-object p0

    return-object p0
.end method

.method public final f0()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xmlbeans/impl/schema/r;->L:Z

    return p0
.end method

.method public final f1(ZZZ)V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/r;->d()V

    iput-boolean p1, p0, Lorg/apache/xmlbeans/impl/schema/r;->Y:Z

    iput-boolean p2, p0, Lorg/apache/xmlbeans/impl/schema/r;->Z:Z

    iput-boolean p3, p0, Lorg/apache/xmlbeans/impl/schema/r;->a0:Z

    return-void
.end method

.method public final g()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xmlbeans/impl/schema/r;->c0:Z

    return p0
.end method

.method public final g0(I)V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/r;->i()V

    iput p1, p0, Lorg/apache/xmlbeans/impl/schema/r;->o0:I

    return-void
.end method

.method public final g1([Li5/b0;)V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/r;->b()V

    invoke-virtual {p1}, [Li5/b0;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Li5/b0;

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/r;->k0:[Li5/b0;

    return-void
.end method

.method public final getBaseType()Li5/c0;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/r;->M:Li5/c0$a;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Li5/r$a;->a()Li5/r;

    move-result-object p0

    check-cast p0, Li5/c0;

    :goto_0
    return-object p0
.end method

.method public final getContentType()I
    .locals 0

    iget p0, p0, Lorg/apache/xmlbeans/impl/schema/r;->H:I

    return p0
.end method

.method public final getName()Ljavax/xml/namespace/QName;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/r;->a:Ljavax/xml/namespace/QName;

    return-object p0
.end method

.method public final getProperties()[Li5/a0;
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/r;->A:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/r;->T0()[Li5/a0;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/r;->B:Ljava/util/Map;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/r;->D()[Li5/a0;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/r;->A:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/r;->B:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 p0, 0x0

    new-array p0, p0, [Li5/a0;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Li5/a0;

    return-object p0
.end method

.method public final getRef()Li5/c0$a;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/r;->v0:Li5/c0$a;

    return-object p0
.end method

.method public final h()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xmlbeans/impl/schema/r;->W:Z

    return p0
.end method

.method public final h0()I
    .locals 0

    iget p0, p0, Lorg/apache/xmlbeans/impl/schema/r;->O:I

    return p0
.end method

.method public final h1([Li5/c0$a;)V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/r;->d()V

    invoke-virtual {p1}, [Li5/c0$a;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Li5/c0$a;

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/r;->n0:[Li5/c0$a;

    return-void
.end method

.method public final i()V
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/impl/schema/r;->c:I

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lorg/apache/xmlbeans/impl/schema/r;->u0:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public final i0(Z)V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/r;->i()V

    iput-boolean p1, p0, Lorg/apache/xmlbeans/impl/schema/r;->k:Z

    return-void
.end method

.method public final i1(Z)V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/r;->d()V

    iput-boolean p1, p0, Lorg/apache/xmlbeans/impl/schema/r;->m0:Z

    return-void
.end method

.method public final isNumeric()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xmlbeans/impl/schema/r;->V:Z

    return p0
.end method

.method public final j()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xmlbeans/impl/schema/r;->Y:Z

    return p0
.end method

.method public final k0()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xmlbeans/impl/schema/r;->C:Z

    return p0
.end method

.method public final l()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xmlbeans/impl/schema/r;->X:Z

    return p0
.end method

.method public final l0()Ljavax/xml/namespace/QName;
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/r;->j:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/r;->w:Li5/z;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Li5/z;->getName()Ljavax/xml/namespace/QName;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final m()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xmlbeans/impl/schema/r;->j:Z

    return p0
.end method

.method public final m0()I
    .locals 0

    iget p0, p0, Lorg/apache/xmlbeans/impl/schema/r;->o0:I

    return p0
.end method

.method public final n()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xmlbeans/impl/schema/r;->k:Z

    return p0
.end method

.method public final n0()Li5/c0;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/r;->h0:Li5/c0$a;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Li5/r$a;->a()Li5/r;

    move-result-object p0

    check-cast p0, Li5/c0;

    :goto_0
    return-object p0
.end method

.method public final o()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final o0()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xmlbeans/impl/schema/r;->e0:Z

    return p0
.end method

.method public final p(I)Z
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/r;->R:[Z

    aget-boolean p0, p0, p1

    return p0
.end method

.method public final q0()I
    .locals 0

    iget p0, p0, Lorg/apache/xmlbeans/impl/schema/r;->S:I

    return p0
.end method

.method public final r()V
    .locals 13

    iget v0, p0, Lorg/apache/xmlbeans/impl/schema/r;->K:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {v2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/schema/r;->n0:[Li5/c0$a;

    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v7, v5

    move-object v8, v6

    :goto_0
    if-ge v7, v4, :cond_7

    aget-object v9, v3, v7

    invoke-virtual {v9}, Li5/r$a;->a()Li5/r;

    move-result-object v9

    check-cast v9, Li5/c0;

    check-cast v9, Lorg/apache/xmlbeans/impl/schema/r;

    iget v10, v9, Lorg/apache/xmlbeans/impl/schema/r;->K:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_5

    if-eq v10, v1, :cond_1

    const/4 v11, 0x3

    if-eq v10, v11, :cond_0

    goto :goto_6

    :cond_0
    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v9, v8}, Lorg/apache/xmlbeans/impl/schema/r;->A0(Li5/c0;)Li5/c0;

    move-result-object v8

    goto :goto_6

    :cond_1
    invoke-virtual {v9}, Lorg/apache/xmlbeans/impl/schema/r;->x()[Li5/c0;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    monitor-enter v9

    :try_start_0
    iget-object v10, v9, Lorg/apache/xmlbeans/impl/schema/r;->r0:Li5/c0;

    if-nez v10, :cond_2

    invoke-virtual {v9}, Lorg/apache/xmlbeans/impl/schema/r;->r()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_2
    :goto_1
    iget-object v10, v9, Lorg/apache/xmlbeans/impl/schema/r;->q0:[Li5/c0;

    if-nez v10, :cond_3

    move-object v11, v6

    goto :goto_2

    :cond_3
    array-length v11, v10

    new-array v11, v11, [Li5/c0;

    array-length v12, v10

    invoke-static {v10, v5, v11, v5, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    monitor-exit v9

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    monitor-enter v9

    :try_start_1
    iget-object v10, v9, Lorg/apache/xmlbeans/impl/schema/r;->r0:Li5/c0;

    if-nez v10, :cond_4

    invoke-virtual {v9}, Lorg/apache/xmlbeans/impl/schema/r;->r()V

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_4

    :cond_4
    :goto_3
    iget-object v10, v9, Lorg/apache/xmlbeans/impl/schema/r;->r0:Li5/c0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v9

    if-eqz v10, :cond_6

    invoke-interface {v10, v8}, Li5/c0;->A0(Li5/c0;)Li5/c0;

    move-result-object v8

    goto :goto_6

    :goto_4
    monitor-exit v9

    throw p0

    :goto_5
    monitor-exit v9

    throw p0

    :cond_5
    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v9, v8}, Lorg/apache/xmlbeans/impl/schema/r;->A0(Li5/c0;)Li5/c0;

    move-result-object v8

    :cond_6
    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_7
    sget-object v1, Lorg/apache/xmlbeans/impl/schema/e0;->a:[Li5/c0;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Li5/c0;

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/r;->p0:[Li5/c0;

    invoke-interface {v2, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Li5/c0;

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/r;->q0:[Li5/c0;

    iput-object v8, p0, Lorg/apache/xmlbeans/impl/schema/r;->r0:Li5/c0;

    return-void

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Operation is only supported on union types"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final r0()Li5/q;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/r;->I:Li5/q;

    return-object p0
.end method

.method public final s()Li5/o;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/r;->b:Li5/o;

    return-object p0
.end method

.method public final t0(Li5/c0$a;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/r;->h0:Li5/c0$a;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/r;->a:Ljavax/xml/namespace/QName;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "T="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/r;->a:Ljavax/xml/namespace/QName;

    invoke-static {p0}, Lj5/i;->f(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/r;->j:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "D="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/r;->l0()Ljavax/xml/namespace/QName;

    move-result-object p0

    invoke-static {p0}, Lj5/i;->f(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/r;->k:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "R="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/r;->e0()Ljavax/xml/namespace/QName;

    move-result-object p0

    invoke-static {p0}, Lj5/i;->f(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/r;->V()Li5/s;

    move-result-object v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/r;->V()Li5/s;

    move-result-object v1

    invoke-interface {v1}, Li5/s;->getName()Ljavax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/r;->V()Li5/s;

    move-result-object v1

    invoke-interface {v1}, Li5/s;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "Q="

    goto :goto_0

    :cond_3
    const-string v1, "E="

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/r;->V()Li5/s;

    move-result-object v1

    invoke-interface {v1}, Li5/s;->b()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "A="

    goto :goto_0

    :cond_5
    const-string v1, "U="

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/r;->V()Li5/s;

    move-result-object v1

    invoke-interface {v1}, Li5/s;->getName()Ljavax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/r;->w0()Li5/c0;

    move-result-object v1

    if-nez v1, :cond_d

    const-string v1, "@"

    invoke-static {v0, v1}, Landroidx/activity/result/a;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/r;->V()Li5/s;

    move-result-object p0

    invoke-interface {p0}, Li5/s;->getName()Ljavax/xml/namespace/QName;

    move-result-object p0

    invoke-virtual {p0}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/r;->x0()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string p0, "N="

    return-object p0

    :cond_7
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/r;->w0()Li5/c0;

    move-result-object v0

    if-nez v0, :cond_8

    const-string p0, "noouter"

    return-object p0

    :cond_8
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/r;->w0()Li5/c0;

    move-result-object v0

    invoke-interface {v0}, Li5/c0;->getBaseType()Li5/c0;

    move-result-object v0

    if-ne v0, p0, :cond_9

    const-string v0, "B="

    goto :goto_1

    :cond_9
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/r;->w0()Li5/c0;

    move-result-object v0

    invoke-interface {v0}, Li5/c0;->O()Li5/c0;

    move-result-object v0

    if-ne v0, p0, :cond_a

    const-string v0, "S="

    goto :goto_1

    :cond_a
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/r;->w0()Li5/c0;

    move-result-object v0

    invoke-interface {v0}, Li5/c0;->B0()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_b

    const-string v0, "I="

    goto :goto_1

    :cond_b
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/r;->w0()Li5/c0;

    move-result-object v0

    invoke-interface {v0}, Li5/c0;->B0()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "M="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/apache/xmlbeans/impl/schema/r;->o0:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_c
    const-string v0, "strange="

    :cond_d
    :goto_1
    const-string v1, "|"

    invoke-static {v0, v1}, Landroidx/activity/result/a;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/r;->w0()Li5/c0;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xmlbeans/impl/schema/r;->a0:Z

    return p0
.end method

.method public final u0(Ljavax/xml/namespace/QName;)Li5/a0;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/r;->B:Ljava/util/Map;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li5/a0;

    :goto_0
    return-object p0
.end method

.method public final v()[Li5/c0;
    .locals 4

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/r;->i:[Li5/c0$a;

    array-length v0, v0

    new-array v1, v0, [Li5/c0;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/schema/r;->i:[Li5/c0$a;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Li5/r$a;->a()Li5/r;

    move-result-object v3

    check-cast v3, Li5/c0;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final v0([Lorg/apache/xmlbeans/impl/schema/h0;[Z)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/r;->d()V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [Lorg/apache/xmlbeans/impl/schema/h0;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/xmlbeans/impl/schema/h0;

    :goto_0
    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/r;->Q:[Lorg/apache/xmlbeans/impl/schema/h0;

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, [Z->clone()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, [Z

    :goto_1
    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/r;->R:[Z

    return-void
.end method

.method public final w()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/r;->l:Ljava/lang/String;

    return-object p0
.end method

.method public final w0()Li5/c0;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/r;->d:Li5/c0$a;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Li5/r$a;->a()Li5/r;

    move-result-object p0

    check-cast p0, Li5/c0;

    :goto_0
    return-object p0
.end method

.method public final declared-synchronized x()[Li5/c0;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/r;->r0:Li5/c0;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/r;->r()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/r;->p0:[Li5/c0;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    array-length v1, v0

    new-array v1, v1, [Li5/c0;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    :goto_1
    monitor-exit p0

    return-object v0

    :goto_2
    monitor-exit p0

    throw v0
.end method

.method public final x0()Z
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/impl/schema/a;->Q:Lorg/apache/xmlbeans/impl/schema/r;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final z()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xmlbeans/impl/schema/r;->U:Z

    return p0
.end method

.method public final z0()I
    .locals 0

    iget p0, p0, Lorg/apache/xmlbeans/impl/schema/r;->t0:I

    return p0
.end method
