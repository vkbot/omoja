.class public final Lm5/z0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/DOMImplementation;
.implements Lj5/r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm5/z0$c;,
        Lm5/z0$h;,
        Lm5/z0$g;,
        Lm5/z0$k;,
        Lm5/z0$b;,
        Lm5/z0$e;,
        Lm5/z0$f;,
        Lm5/z0$m;,
        Lm5/z0$n;,
        Lm5/z0$i;,
        Lm5/z0$a;,
        Lm5/z0$d;,
        Lm5/z0$l;,
        Lm5/z0$j;
    }
.end annotation


# static fields
.field public static final A:Ljavax/xml/namespace/QName;

.field public static final B:Ljavax/xml/namespace/QName;

.field public static final C:Ljavax/xml/namespace/QName;

.field public static final D:Ljavax/xml/namespace/QName;

.field public static final E:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/ref/SoftReference<",
            "Lm5/z0$i;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final z:Le5/g;


# instance fields
.field public a:Z

.field public b:Li5/d0;

.field public c:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Lm5/z0$f;",
            ">;"
        }
    .end annotation
.end field

.field public d:I

.field public e:I

.field public f:[Lm5/h;

.field public g:Lm5/h;

.field public h:I

.field public i:Lm5/h;

.field public j:Lm5/z0$a;

.field public k:J

.field public l:J

.field public m:Lm5/h$b;

.field public n:Lm5/f;

.field public o:I

.field public p:I

.field public q:Lm5/d1;

.field public r:Lm5/o0$a;

.field public s:Lm5/z0$c;

.field public t:Z

.field public u:I

.field public v:Lm5/z0$n;

.field public w:Lm5/z0$n;

.field public x:Lm5/z0$m;

.field public y:Lm5/z0$m;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-class v0, Lm5/z0;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lm5/z0;->z:Le5/g;

    new-instance v0, Ljavax/xml/namespace/QName;

    const-string v1, "http://www.w3.org/2001/XMLSchema-instance"

    const-string v2, "nil"

    const-string v3, "xsi"

    invoke-direct {v0, v1, v2, v3}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lm5/z0;->A:Ljavax/xml/namespace/QName;

    new-instance v0, Ljavax/xml/namespace/QName;

    const-string v2, "type"

    invoke-direct {v0, v1, v2, v3}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lm5/z0;->B:Ljavax/xml/namespace/QName;

    new-instance v0, Ljavax/xml/namespace/QName;

    const-string v2, "schemaLocation"

    invoke-direct {v0, v1, v2, v3}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljavax/xml/namespace/QName;

    const-string v2, "noNamespaceSchemaLocation"

    invoke-direct {v0, v1, v2, v3}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljavax/xml/namespace/QName;

    const-string v1, "frag"

    const-string v2, "http://www.openuri.org/fragment"

    const-string v3, "fragment"

    invoke-direct {v0, v2, v3, v1}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lm5/z0;->C:Ljavax/xml/namespace/QName;

    new-instance v0, Ljavax/xml/namespace/QName;

    const-string v1, "xml-fragment"

    invoke-direct {v0, v1}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;)V

    sput-object v0, Lm5/z0;->D:Ljavax/xml/namespace/QName;

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/g;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/g;-><init>(I)V

    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Lm5/z0;->E:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public static A(Ljavax/xml/stream/XMLStreamReader;Li5/z1;Li5/c0;Lm5/z0;)Lorg/apache/xmlbeans/XmlObject;
    .locals 0

    :try_start_0
    invoke-virtual {p3, p0, p1}, Lm5/z0;->E(Ljavax/xml/stream/XMLStreamReader;Li5/z1;)Lm5/h;

    move-result-object p0
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p0, p2, p1}, Lm5/z0;->d(Lm5/h;Li5/c0;Li5/z1;)V

    iget-object p1, p0, Lm5/h;->b:Lm5/w1;

    invoke-virtual {p1}, Lm5/w1;->g0()Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p1

    check-cast p1, Lorg/apache/xmlbeans/XmlObject;

    invoke-virtual {p0}, Lm5/h;->h0()V

    return-object p1

    :catch_0
    move-exception p0

    new-instance p1, Li5/z0;

    invoke-virtual {p0}, Ljavax/xml/stream/XMLStreamException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static B(Ljavax/xml/stream/XMLStreamReader;Lm5/h$a;)V
    .locals 4

    invoke-interface {p0}, Ljavax/xml/stream/XMLStreamReader;->getLocation()Ljavax/xml/stream/Location;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljavax/xml/stream/Location;->getLineNumber()I

    move-result v0

    invoke-interface {p0}, Ljavax/xml/stream/Location;->getColumnNumber()I

    move-result v1

    invoke-interface {p0}, Ljavax/xml/stream/Location;->getCharacterOffset()I

    move-result p0

    iget-object v2, p1, Lm5/h$a;->g:Lm5/w1;

    iget p1, p1, Lm5/h$a;->h:I

    new-instance v3, Li5/o1;

    invoke-direct {v3, v0, v1, p0}, Li5/o1;-><init>(III)V

    const-class p0, Li5/o1;

    invoke-virtual {v2, p1, p0, v3}, Lm5/w1;->K0(ILjava/lang/Class;Ljava/lang/Object;)Lm5/c;

    :cond_0
    return-void
.end method

.method public static I(Li5/d0;Li5/z1;Lm5/z0$j;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Li5/d0;",
            "Li5/z1;",
            "Lm5/z0$j<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-static {p0, p1}, Lm5/z0;->t(Li5/d0;Li5/z1;)Lm5/z0;

    move-result-object p0

    iget-boolean p1, p0, Lm5/z0;->a:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lm5/z0;->l()V

    :try_start_0
    invoke-interface {p2, p0}, Lm5/z0$j;->a(Lm5/z0;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lm5/z0;->m()V

    return-object p1

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
    invoke-interface {p2, p0}, Lm5/z0$j;->a(Lm5/z0;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {p0}, Lm5/z0;->m()V

    monitor-exit p0

    return-object p1

    :catchall_1
    move-exception p1

    goto :goto_0

    :catchall_2
    move-exception p1

    invoke-virtual {p0}, Lm5/z0;->m()V

    throw p1

    :goto_0
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public static K(Lm5/h;)Z
    .locals 6

    iget-object v0, p0, Lm5/h;->b:Lm5/w1;

    iget v1, p0, Lm5/h;->c:I

    :goto_0
    invoke-virtual {p0}, Lm5/h;->M()I

    move-result v2

    const/4 v3, -0x2

    const/4 v4, 0x0

    if-eq v2, v3, :cond_5

    const/4 v3, -0x1

    if-eq v2, v3, :cond_5

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v5, 0x2

    if-eq v2, v5, :cond_1

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    invoke-virtual {p0}, Lm5/h;->b0()Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lm5/h;->q0()Z

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lm5/h;->b:Lm5/w1;

    invoke-virtual {v2}, Lm5/w1;->l0()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lm5/h;->b:Lm5/w1;

    iget-object v2, v2, Lm5/w1;->i:Lm5/w1;

    :goto_1
    invoke-virtual {v2}, Lm5/w1;->s0()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {p0, v2, v4}, Lm5/h;->Y(Lm5/w1;I)V

    invoke-virtual {p0}, Lm5/h;->F()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {p0}, Lm5/z0;->N(Lm5/h;)Z

    move-result v2

    if-nez v2, :cond_3

    :goto_2
    invoke-virtual {p0, v0, v1}, Lm5/h;->Y(Lm5/w1;I)V

    return v4

    :cond_3
    return v3

    :cond_4
    iget-object v2, v2, Lm5/w1;->g:Lm5/w1;

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v0, v1}, Lm5/h;->Y(Lm5/w1;I)V

    return v4
.end method

.method public static L(Lm5/h;)Z
    .locals 1

    invoke-virtual {p0}, Lm5/h;->g0()V

    invoke-virtual {p0}, Lm5/h;->t0()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Lm5/h;->L()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lm5/h;->d0()V

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-virtual {p0}, Lm5/h;->u0()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    invoke-virtual {p0}, Lm5/h;->c0()Z

    const/4 p0, 0x0

    return p0
.end method

.method public static M(Lm5/h;)Z
    .locals 1

    invoke-virtual {p0}, Lm5/h;->g0()V

    :cond_0
    invoke-virtual {p0}, Lm5/h;->u0()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lm5/h;->L()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lm5/h;->d0()V

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-virtual {p0}, Lm5/h;->c0()Z

    const/4 p0, 0x0

    return p0
.end method

.method public static N(Lm5/h;)Z
    .locals 4

    invoke-virtual {p0}, Lm5/h;->y()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lm5/h;->g0()V

    invoke-virtual {p0}, Lm5/h;->M()I

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-ne v0, v2, :cond_1

    invoke-virtual {p0, v1}, Lm5/h;->v0(Z)Z

    invoke-virtual {p0}, Lm5/h;->Z()Z

    goto :goto_0

    :cond_1
    if-ne v0, v3, :cond_2

    invoke-virtual {p0}, Lm5/h;->q0()Z

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lm5/h;->M()I

    move-result v0

    if-ltz v0, :cond_5

    if-ne v0, v3, :cond_3

    invoke-virtual {p0}, Lm5/h;->d0()V

    const/4 p0, 0x1

    return p0

    :cond_3
    if-lez v0, :cond_4

    invoke-virtual {p0}, Lm5/h;->s0()V

    :cond_4
    invoke-virtual {p0}, Lm5/h;->Z()Z

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lm5/h;->c0()Z

    return v1
.end method

.method public static a(Ljava/lang/StringBuilder;Ljavax/xml/namespace/QName;)V
    .locals 1

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "<no namespace>"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-void
.end method

.method public static b(Lm5/h;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm5/h;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "xml"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lm5/h;->b:Lm5/w1;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lm5/w1;->B0(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lm5/h;->g0()V

    invoke-virtual {p0}, Lm5/h;->Z()Z

    iget-object v2, p0, Lm5/h;->a:Lm5/z0;

    invoke-virtual {v2, v1}, Lm5/z0;->h(Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {p0, v2}, Lm5/h;->f(Ljavax/xml/namespace/QName;)V

    invoke-virtual {p0}, Lm5/h;->Z()Z

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lm5/h;->A(Ljava/lang/String;)V

    invoke-virtual {p0}, Lm5/h;->c0()Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static c(Lm5/h;Li5/z1;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, Li5/z1$a;->G1:Li5/z1$a;

    iget-object p1, p1, Li5/z1;->c:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :goto_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lm5/z0;->s(Lm5/h;Z)Lm5/z0$d;

    move-result-object p0

    sget-object v0, Li5/t0;->a:Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lm5/z0$d;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public static d(Lm5/h;Li5/c0;Li5/z1;)V
    .locals 7

    if-nez p2, :cond_0

    sget-object p2, Li5/z1;->r:Li5/z1;

    goto :goto_0

    :cond_0
    sget-object v0, Li5/z1;->r:Li5/z1;

    :goto_0
    sget-object v0, Li5/z1$a;->F1:Li5/z1$a;

    iget-object p2, p2, Li5/z1;->c:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Li5/c0;

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    invoke-virtual {p0, p2, v0}, Lm5/h;->o0(Li5/c0;Z)V

    return-void

    :cond_1
    const/4 p2, 0x0

    if-eqz p1, :cond_2

    invoke-interface {p1}, Li5/c0;->getName()Ljavax/xml/namespace/QName;

    move-result-object v1

    if-eqz v1, :cond_4

    :cond_2
    iget-object v1, p0, Lm5/h;->b:Lm5/w1;

    invoke-virtual {v1}, Lm5/w1;->j0()Ljavax/xml/namespace/QName;

    move-result-object v1

    if-nez v1, :cond_3

    move-object v1, p2

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lm5/h;->a:Lm5/z0;

    iget-object v2, v2, Lm5/z0;->b:Li5/d0;

    invoke-interface {v2, v1}, Li5/d0;->findType(Ljavax/xml/namespace/QName;)Li5/c0;

    move-result-object v1

    :goto_1
    if-eqz p1, :cond_5

    invoke-interface {p1, v1}, Li5/c0;->G0(Li5/c0;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    move-object v1, p2

    :cond_5
    :goto_2
    if-nez v1, :cond_9

    if-eqz p1, :cond_6

    invoke-interface {p1}, Li5/c0;->m()Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_6
    invoke-virtual {p0}, Lm5/h;->g0()V

    iget-object v2, p0, Lm5/h;->b:Lm5/w1;

    invoke-virtual {v2}, Lm5/w1;->k0()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {p0}, Lm5/z0;->K(Lm5/h;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {p0}, Lm5/z0;->N(Lm5/h;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lm5/h;->b:Lm5/w1;

    iget-object v2, v2, Lm5/w1;->b:Ljavax/xml/namespace/QName;

    goto :goto_3

    :cond_7
    move-object v2, p2

    :goto_3
    invoke-virtual {p0}, Lm5/h;->c0()Z

    if-eqz v2, :cond_9

    iget-object v1, p0, Lm5/h;->a:Lm5/z0;

    iget-object v1, v1, Lm5/z0;->b:Li5/d0;

    invoke-interface {v1, v2}, Li5/d0;->findDocumentType(Ljavax/xml/namespace/QName;)Li5/c0;

    move-result-object v1

    if-eqz v1, :cond_9

    if-eqz p1, :cond_9

    invoke-interface {p1}, Li5/c0;->l0()Ljavax/xml/namespace/QName;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    invoke-interface {p1, v2}, Li5/c0;->M(Ljavax/xml/namespace/QName;)Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_4

    :cond_8
    new-instance p0, Li5/z0;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Element "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lj5/i;->f(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is not a valid "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lj5/i;->f(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " document or a valid substitution."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    :goto_4
    if-nez v1, :cond_b

    if-nez p1, :cond_b

    invoke-virtual {p0}, Lm5/h;->g0()V

    invoke-static {p0}, Lm5/z0;->L(Lm5/h;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-static {p0}, Lm5/z0;->M(Lm5/h;)Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lm5/h;->a:Lm5/z0;

    iget-object v1, v1, Lm5/z0;->b:Li5/d0;

    iget-object v2, p0, Lm5/h;->b:Lm5/w1;

    iget-object v2, v2, Lm5/w1;->b:Ljavax/xml/namespace/QName;

    invoke-interface {v1, v2}, Li5/d0;->findAttributeType(Ljavax/xml/namespace/QName;)Li5/c0;

    move-result-object v1

    goto :goto_5

    :cond_a
    move-object v1, p2

    :goto_5
    invoke-virtual {p0}, Lm5/h;->c0()Z

    :cond_b
    if-nez v1, :cond_c

    move-object v1, p1

    :cond_c
    if-nez v1, :cond_d

    sget-object v1, Li5/l0;->d:Lorg/apache/xmlbeans/impl/schema/r;

    :cond_d
    invoke-virtual {p0, v1, v0}, Lm5/h;->o0(Li5/c0;Z)V

    if-eqz p1, :cond_1f

    invoke-interface {v1}, Li5/c0;->m()Z

    move-result p1

    const/4 v0, 0x0

    const-string v2, "expected "

    const-string v3, " got "

    const-string v4, "The document is not a "

    if-eqz p1, :cond_16

    invoke-interface {v1}, Li5/c0;->l0()Ljavax/xml/namespace/QName;

    move-result-object p1

    invoke-virtual {p0}, Lm5/h;->g0()V

    :try_start_0
    invoke-static {p0}, Lm5/z0;->K(Lm5/h;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-static {p0}, Lm5/z0;->N(Lm5/h;)Z

    move-result v1

    if-eqz v1, :cond_e

    goto/16 :goto_7

    :cond_e
    iget-object v1, p0, Lm5/h;->b:Lm5/w1;

    iget-object v1, v1, Lm5/w1;->b:Ljavax/xml/namespace/QName;

    invoke-virtual {v1, p1}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_12

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lj5/i;->f(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const-string v4, ": document element namespace mismatch "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5, p1}, Lm5/z0;->a(Ljava/lang/StringBuilder;Ljavax/xml/namespace/QName;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5, v1}, Lm5/z0;->a(Ljava/lang/StringBuilder;Ljavax/xml/namespace/QName;)V

    goto :goto_9

    :catchall_0
    move-exception p1

    goto/16 :goto_a

    :cond_f
    if-ne p1, v1, :cond_10

    goto :goto_6

    :cond_10
    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    :goto_6
    const-string v2, ": document element local name mismatch expected "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_11
    const-string p1, ": document element mismatch got "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lj5/i;->f(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_12
    move-object v5, p2

    goto :goto_9

    :cond_13
    :goto_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lj5/i;->f(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lm5/h;->H()Z

    move-result p1

    if-eqz p1, :cond_14

    const-string p1, ": no document element"

    goto :goto_8

    :cond_14
    const-string p1, ": multiple document elements"

    :goto_8
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_9
    if-nez v5, :cond_15

    invoke-virtual {p0}, Lm5/h;->c0()Z

    goto/16 :goto_10

    :cond_15
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lm5/y;

    invoke-direct {v1, p0}, Lm5/y;-><init>(Lm5/h;)V

    new-instance v2, Li5/y0;

    invoke-direct {v2, p1, p2, v0, v1}, Li5/y0;-><init>(Ljava/lang/String;Ljava/lang/String;ILi5/p0;)V

    new-instance p1, Li5/z0;

    invoke-virtual {v2}, Li5/y0;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p2, v2}, Li5/z0;-><init>(Ljava/lang/String;Lorg/xml/sax/SAXException;Li5/y0;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_a
    invoke-virtual {p0}, Lm5/h;->c0()Z

    throw p1

    :cond_16
    invoke-interface {v1}, Li5/c0;->n()Z

    move-result p1

    if-eqz p1, :cond_1f

    invoke-interface {v1}, Li5/c0;->e0()Ljavax/xml/namespace/QName;

    move-result-object p1

    invoke-virtual {p0}, Lm5/h;->g0()V

    :try_start_2
    invoke-static {p0}, Lm5/z0;->L(Lm5/h;)Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-static {p0}, Lm5/z0;->M(Lm5/h;)Z

    move-result v1

    if-eqz v1, :cond_17

    goto/16 :goto_c

    :cond_17
    iget-object v1, p0, Lm5/h;->b:Lm5/w1;

    iget-object v1, v1, Lm5/w1;->b:Ljavax/xml/namespace/QName;

    invoke-virtual {v1, p1}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1b

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lj5/i;->f(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    const-string v4, ": attribute namespace mismatch "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5, p1}, Lm5/z0;->a(Ljava/lang/StringBuilder;Ljavax/xml/namespace/QName;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5, v1}, Lm5/z0;->a(Ljava/lang/StringBuilder;Ljavax/xml/namespace/QName;)V

    goto :goto_e

    :catchall_1
    move-exception p1

    goto/16 :goto_f

    :cond_18
    if-ne p1, v1, :cond_19

    goto :goto_b

    :cond_19
    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    :goto_b
    const-string v4, ": attribute local name mismatch "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    :cond_1a
    const-string p1, ": attribute element mismatch "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "got "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lj5/i;->f(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    :cond_1b
    move-object v5, p2

    goto :goto_e

    :cond_1c
    :goto_c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lj5/i;->f(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lm5/h;->H()Z

    move-result p1

    if-eqz p1, :cond_1d

    const-string p1, ": no attributes"

    goto :goto_d

    :cond_1d
    const-string p1, ": multiple attributes"

    :goto_d
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_e
    if-nez v5, :cond_1e

    invoke-virtual {p0}, Lm5/h;->c0()Z

    goto :goto_10

    :cond_1e
    :try_start_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lm5/y;

    invoke-direct {v1, p0}, Lm5/y;-><init>(Lm5/h;)V

    new-instance v2, Li5/y0;

    invoke-direct {v2, p1, p2, v0, v1}, Li5/y0;-><init>(Ljava/lang/String;Ljava/lang/String;ILi5/p0;)V

    new-instance p1, Li5/z0;

    invoke-virtual {v2}, Li5/y0;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p2, v2}, Li5/z0;-><init>(Ljava/lang/String;Lorg/xml/sax/SAXException;Li5/y0;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_f
    invoke-virtual {p0}, Lm5/h;->c0()Z

    throw p1

    :cond_1f
    :goto_10
    return-void
.end method

.method public static e(Ljava/lang/String;)Z
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-lt v0, v1, :cond_3

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x78

    if-eq v0, v1, :cond_0

    const/16 v1, 0x58

    if-ne v0, v1, :cond_3

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x6d

    if-eq v1, v3, :cond_1

    const/16 v3, 0x4d

    if-ne v1, v3, :cond_3

    :cond_1
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v1, 0x6c

    if-eq p0, v1, :cond_2

    const/16 v1, 0x4c

    if-ne p0, v1, :cond_3

    :cond_2
    move v2, v0

    :cond_3
    return v2
.end method

.method public static i(Ljavax/xml/stream/XMLStreamReader;Lm5/h$a;)V
    .locals 7

    invoke-interface {p0}, Ljavax/xml/stream/XMLStreamReader;->getAttributeCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-interface {p0, v1}, Ljavax/xml/stream/XMLStreamReader;->getAttributeLocalName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v1}, Ljavax/xml/stream/XMLStreamReader;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v1}, Ljavax/xml/stream/XMLStreamReader;->getAttributePrefix(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v1}, Ljavax/xml/stream/XMLStreamReader;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lm5/h$a;->c:Lm5/z0;

    invoke-virtual {v6, v3, v2, v4}, Lm5/z0;->F(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {p1, v5, v2}, Lm5/h$a;->b(Ljava/lang/String;Ljavax/xml/namespace/QName;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static j(Ljavax/xml/stream/XMLStreamReader;Lm5/h$a;)V
    .locals 7

    invoke-interface {p0}, Ljavax/xml/stream/XMLStreamReader;->getNamespaceCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-interface {p0, v1}, Ljavax/xml/stream/XMLStreamReader;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lm5/h$a;->c:Lm5/z0;

    const-string v4, "xmlns"

    const-string v5, "http://www.w3.org/2000/xmlns/"

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p0, v1}, Ljavax/xml/stream/XMLStreamReader;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v2, v4}, Lm5/z0;->F(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {p1, v6, v2}, Lm5/h$a;->b(Ljava/lang/String;Ljavax/xml/namespace/QName;)V

    goto :goto_2

    :cond_1
    :goto_1
    invoke-interface {p0, v1}, Ljavax/xml/stream/XMLStreamReader;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v4, v6}, Lm5/z0;->F(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lm5/h$a;->b(Ljava/lang/String;Ljavax/xml/namespace/QName;)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static p(Lm5/h;)Ljava/util/Map;
    .locals 4

    invoke-virtual {p0}, Lm5/h;->g0()V

    invoke-virtual {p0}, Lm5/h;->E()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lm5/h;->v0(Z)Z

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lm5/h;->u0()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lm5/h;->L()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lm5/h;->b:Lm5/w1;

    invoke-virtual {v1}, Lm5/w1;->i0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lm5/h;->x()Ljava/lang/String;

    move-result-object v2

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :cond_2
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lm5/h;->E()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_4

    invoke-virtual {p0, v2}, Lm5/h;->v0(Z)Z

    :cond_4
    invoke-virtual {p0, v2}, Lm5/h;->v0(Z)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lm5/h;->c0()Z

    return-object v0
.end method

.method public static s(Lm5/h;Z)Lm5/z0$d;
    .locals 4

    invoke-virtual {p0}, Lm5/h;->g0()V

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lm5/h;->v0(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lm5/h;->b:Lm5/w1;

    iget-object v0, v0, Lm5/w1;->d:Lm5/c;

    :goto_1
    const-class v1, Lm5/z0$d;

    if-eqz v0, :cond_2

    iget v2, v0, Lm5/c;->b:I

    iget v3, p0, Lm5/h;->c:I

    if-ne v2, v3, :cond_1

    iget-object v2, v0, Lm5/c;->e:Ljava/lang/Object;

    if-ne v2, v1, :cond_1

    iget-object v0, v0, Lm5/c;->f:Ljava/lang/Object;

    goto :goto_2

    :cond_1
    iget-object v0, v0, Lm5/c;->c:Lm5/c;

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_2
    check-cast v0, Lm5/z0$d;

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    new-instance v0, Lm5/z0$d;

    invoke-direct {v0}, Lm5/z0$d;-><init>()V

    iget-object p1, p0, Lm5/h;->b:Lm5/w1;

    iget v2, p0, Lm5/h;->c:I

    invoke-virtual {p1, v2, v1, v0}, Lm5/w1;->K0(ILjava/lang/Class;Ljava/lang/Object;)Lm5/c;

    :cond_3
    invoke-virtual {p0}, Lm5/h;->c0()Z

    return-object v0
.end method

.method public static t(Li5/d0;Li5/z1;)Lm5/z0;
    .locals 5

    if-nez p0, :cond_0

    invoke-static {}, Li5/l0;->a()Lorg/apache/xmlbeans/impl/schema/t;

    move-result-object p0

    :cond_0
    if-nez p1, :cond_1

    sget-object p1, Li5/z1;->r:Li5/z1;

    goto :goto_0

    :cond_1
    sget-object v0, Li5/z1;->r:Li5/z1;

    :goto_0
    sget-object v0, Li5/z1$a;->N1:Li5/z1$a;

    iget-object v1, p1, Li5/z1;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Li5/z1$a;->U1:Li5/z1$a;

    sget-object v2, Li5/z1$a;->H1:Li5/z1$a;

    if-nez v0, :cond_3

    new-instance v0, Lm5/z0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Lm5/z0$n;

    invoke-direct {v3, v0}, Lm5/z0$n;-><init>(Lm5/z0;)V

    iput-object v3, v0, Lm5/z0;->v:Lm5/z0$n;

    new-instance v3, Lm5/z0$n;

    invoke-direct {v3, v0}, Lm5/z0$n;-><init>(Lm5/z0;)V

    iput-object v3, v0, Lm5/z0;->w:Lm5/z0$n;

    new-instance v3, Lm5/z0$m;

    invoke-direct {v3, v0}, Lm5/z0$m;-><init>(Lm5/z0;)V

    iput-object v3, v0, Lm5/z0;->x:Lm5/z0$m;

    new-instance v3, Lm5/z0$m;

    invoke-direct {v3, v0}, Lm5/z0$m;-><init>(Lm5/z0;)V

    iput-object v3, v0, Lm5/z0;->y:Lm5/z0$m;

    sget-object v3, Li5/z1$a;->L1:Li5/z1$a;

    iget-object v4, p1, Li5/z1;->c:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, v0, Lm5/z0;->a:Z

    const/16 v3, 0x8

    iput v3, v0, Lm5/z0;->e:I

    new-array v3, v3, [Lm5/h;

    iput-object v3, v0, Lm5/z0;->f:[Lm5/h;

    new-instance v3, Lm5/z0$c;

    invoke-direct {v3}, Lm5/z0$c;-><init>()V

    iput-object v3, v0, Lm5/z0;->s:Lm5/z0$c;

    new-instance v3, Lm5/h$b;

    invoke-direct {v3, v0}, Lm5/h$b;-><init>(Lm5/z0;)V

    iput-object v3, v0, Lm5/z0;->m:Lm5/h$b;

    iput-object p0, v0, Lm5/z0;->b:Li5/d0;

    iget-object p0, p1, Li5/z1;->c:Ljava/util/Map;

    invoke-interface {p0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    iput-boolean p0, v0, Lm5/z0;->t:Z

    iget-object p0, p1, Li5/z1;->c:Ljava/util/Map;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lm5/d1;

    iput-object p0, v0, Lm5/z0;->q:Lm5/d1;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lm5/d1;->a()V

    :cond_2
    return-object v0

    :cond_3
    instance-of v3, v0, Lm5/z0;

    if-eqz v3, :cond_4

    check-cast v0, Lm5/z0;

    goto :goto_1

    :cond_4
    instance-of v3, v0, Li5/j2;

    if-eqz v3, :cond_a

    check-cast v0, Li5/j2;

    invoke-interface {v0}, Li5/j2;->monitor()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm5/z0;

    :goto_1
    iget-object v3, v0, Lm5/z0;->b:Li5/d0;

    if-ne v3, p0, :cond_9

    iget-object p0, v0, Lm5/z0;->q:Lm5/d1;

    if-eqz p0, :cond_6

    iget-object v3, p1, Li5/z1;->c:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm5/d1;

    if-ne p0, v1, :cond_5

    goto :goto_2

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Source locale does not support same saaj"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_2
    iget-boolean p0, v0, Lm5/z0;->t:Z

    if-eqz p0, :cond_8

    iget-object p0, p1, Li5/z1;->c:Ljava/util/Map;

    invoke-interface {p0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_3

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Source locale does not support same validate on set"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    :goto_3
    return-object v0

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Source locale does not support same schema type loader"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Source locale not understood: "

    invoke-static {p1, v0}, La4/a;->e(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static u(Li5/z1;)Lm5/z0$k;
    .locals 3

    if-nez p0, :cond_0

    sget-object p0, Li5/z1;->r:Li5/z1;

    goto :goto_0

    :cond_0
    sget-object v0, Li5/z1;->r:Li5/z1;

    :goto_0
    sget-object v0, Li5/z1$a;->z1:Li5/z1$a;

    iget-object v1, p0, Li5/z1;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Li5/z1$a;->M1:Li5/z1$a;

    iget-object v1, p0, Li5/z1;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xml/sax/EntityResolver;

    if-nez v0, :cond_1

    sget-object v0, Lj5/j;->a:Lorg/xml/sax/EntityResolver;

    :cond_1
    if-nez v0, :cond_3

    new-instance v0, Lm5/z0$b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_1
    sget-object v1, Li5/z1$a;->A1:Li5/z1$a;

    iget-object v2, p0, Li5/z1;->c:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xml/sax/XMLReader;

    if-nez v1, :cond_4

    :try_start_0
    new-instance v1, Li5/z1;

    invoke-direct {v1, p0}, Li5/z1;-><init>(Li5/z1;)V

    invoke-static {v1}, Lj5/k;->a(Li5/z1;)Lorg/xml/sax/XMLReader;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    new-instance v0, Li5/z0;

    const-string v1, "Problem creating XMLReader"

    invoke-direct {v0, v1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_4
    :goto_2
    new-instance p0, Lm5/z0$k;

    invoke-direct {p0, v1}, Lm5/z0$h;-><init>(Lorg/xml/sax/XMLReader;)V

    if-eqz v0, :cond_5

    invoke-interface {v1, v0}, Lorg/xml/sax/XMLReader;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    :cond_5
    return-object p0
.end method

.method public static v(I)Lm5/z0$i;
    .locals 4

    sget-object v0, Lm5/z0;->E:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm5/z0$i;

    if-nez v1, :cond_0

    new-instance v1, Lm5/z0$i;

    invoke-direct {v1}, Lm5/z0$i;-><init>()V

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, v1, Lm5/z0$i;->d:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    iput p0, v1, Lm5/z0$i;->b:I

    iput v3, v1, Lm5/z0$i;->a:I

    return-object v1
.end method

.method public static w(Lm5/h;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lm5/h;->b:Lm5/w1;

    invoke-virtual {v0}, Lm5/w1;->l0()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lm5/h;->w()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lm5/h;->g0()V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lm5/h;->Z()Z

    invoke-virtual {p0}, Lm5/h;->B()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lm5/h;->J()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lm5/h;->b:Lm5/w1;

    invoke-virtual {v1}, Lm5/w1;->z0()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lm5/h;->b:Lm5/w1;

    invoke-virtual {v1}, Lm5/w1;->z0()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    :goto_1
    iget v1, p0, Lm5/h;->c:I

    iget-object v2, p0, Lm5/h;->b:Lm5/w1;

    iget v2, v2, Lm5/w1;->o:I

    if-ge v1, v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lm5/h;->r(I)Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lm5/h;->r:I

    iget v3, p0, Lm5/h;->s:I

    invoke-static {v0, v1, v2, v3}, Lm5/f;->d(Ljava/lang/StringBuffer;Ljava/lang/Object;II)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lm5/h;->c0()Z

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static x(Lm5/h;Lm5/h;)Z
    .locals 7

    invoke-virtual {p0}, Lm5/h;->g0()V

    invoke-virtual {p1}, Lm5/h;->g0()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0, p1}, Lm5/h;->I(Lm5/h;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_5

    invoke-virtual {p0}, Lm5/h;->M()I

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    goto :goto_3

    :cond_0
    if-nez v2, :cond_2

    iget-object v4, p0, Lm5/h;->b:Lm5/w1;

    iget v5, p0, Lm5/h;->c:I

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6, v3}, Lm5/w1;->Z(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    :goto_1
    add-int/lit8 v6, v5, -0x1

    if-lez v5, :cond_2

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lm5/f;->f(C)Z

    move-result v5

    if-nez v5, :cond_1

    :goto_2
    move v2, v3

    goto :goto_4

    :cond_1
    move v5, v6

    goto :goto_1

    :cond_2
    const/4 v4, 0x2

    if-ne v2, v4, :cond_3

    add-int/lit8 v1, v1, 0x1

    if-le v1, v3, :cond_3

    goto :goto_2

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lm5/h;->s0()V

    :cond_4
    invoke-virtual {p0}, Lm5/h;->Z()Z

    goto :goto_0

    :cond_5
    :goto_3
    move v2, v0

    :goto_4
    invoke-virtual {p0}, Lm5/h;->c0()Z

    invoke-virtual {p1}, Lm5/h;->c0()Z

    if-nez v2, :cond_6

    if-eq v1, v3, :cond_7

    :cond_6
    move v0, v3

    :cond_7
    return v0
.end method

.method public static y(Ljavax/xml/namespace/QName;)Z
    .locals 1

    sget-object v0, Lm5/z0;->C:Ljavax/xml/namespace/QName;

    invoke-virtual {p0, v0}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lm5/z0;->D:Ljavax/xml/namespace/QName;

    invoke-virtual {p0, v0}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

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

.method public static z(Ljavax/xml/namespace/QName;)Z
    .locals 4

    invoke-virtual {p0}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v0

    const-string v1, "xmlns"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    return v3

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    return v3
.end method


# virtual methods
.method public final C()Lm5/o0$a;
    .locals 4

    const-string v0, "<xml-fragment/>"

    :try_start_0
    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    const/4 v2, 0x0

    invoke-static {v2}, Lm5/z0;->u(Li5/z1;)Lm5/z0$k;

    move-result-object v3

    invoke-virtual {v3, p0, v0, v2}, Lm5/z0$h;->b(Lm5/z0;Lorg/xml/sax/InputSource;Li5/z1;)Lm5/h;

    move-result-object p0

    invoke-virtual {p0}, Lm5/h;->t()Lm5/o0$a;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v1

    :try_start_5
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :goto_1
    new-instance v0, Li5/z0;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final D(Lorg/w3c/dom/Node;Lm5/h$a;)V
    .locals 8

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p0

    iget-boolean p1, p2, Lm5/h$a;->l:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    new-instance v0, Lm5/g;

    iget-object v3, p2, Lm5/h$a;->c:Lm5/z0;

    invoke-direct {v0, v3}, Lm5/g;-><init>(Lm5/z0;)V

    invoke-virtual {p2, v0}, Lm5/h$a;->h(Lm5/b1;)V

    invoke-virtual {p2, v2, p1, p0}, Lm5/h$a;->k(IILjava/lang/Object;)V

    invoke-virtual {p2}, Lm5/h$a;->d()V

    iput-object v0, p2, Lm5/h$a;->g:Lm5/w1;

    iput v2, p2, Lm5/h$a;->h:I

    :cond_0
    iput-boolean v1, p2, Lm5/h$a;->b:Z

    goto/16 :goto_4

    :pswitch_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lm5/h$a;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :pswitch_2
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p0, p1, p2}, Lm5/z0;->D(Lorg/w3c/dom/Node;Lm5/h$a;)V

    goto/16 :goto_4

    :pswitch_3
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_6

    invoke-virtual {p0, p1, p2}, Lm5/z0;->D(Lorg/w3c/dom/Node;Lm5/h$a;)V

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p1

    goto :goto_0

    :pswitch_4
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    goto/16 :goto_4

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2, v2, p1, p0}, Lm5/h$a;->j(IILjava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_5
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Unexpected node"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_6
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lm5/z0;->G(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {p2, v0}, Lm5/h$a;->i(Ljavax/xml/namespace/QName;)V

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_4

    invoke-interface {v0, v2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "xmlns"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v6, 0x5

    if-ne v3, v6, :cond_2

    const/4 v3, 0x0

    invoke-virtual {p2, v3, v5}, Lm5/h$a;->l(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const/4 v3, 0x6

    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3, v5}, Lm5/h$a;->l(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v4}, Lm5/z0;->G(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v3

    invoke-virtual {p2, v5, v3}, Lm5/h$a;->b(Ljava/lang/String;Ljavax/xml/namespace/QName;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p1

    :goto_3
    if-eqz p1, :cond_5

    invoke-virtual {p0, p1, p2}, Lm5/z0;->D(Lorg/w3c/dom/Node;Lm5/h$a;)V

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p1

    goto :goto_3

    :cond_5
    invoke-virtual {p2}, Lm5/h$a;->d()V

    iput-boolean v1, p2, Lm5/h$a;->b:Z

    :cond_6
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public final E(Ljavax/xml/stream/XMLStreamReader;Li5/z1;)Lm5/h;
    .locals 12

    if-nez p2, :cond_0

    sget-object p2, Li5/z1;->r:Li5/z1;

    goto :goto_0

    :cond_0
    sget-object v0, Li5/z1;->r:Li5/z1;

    :goto_0
    sget-object v0, Li5/z1$a;->t1:Li5/z1$a;

    iget-object v1, p2, Li5/z1;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    new-instance v1, Lm5/h$a;

    invoke-direct {v1, p0, p2}, Lm5/h$a;-><init>(Lm5/z0;Li5/z1;)V

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getEventType()I

    move-result p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v2

    move v7, v4

    move-object v5, v3

    move-object v6, v5

    :goto_1
    const/4 v8, 0x1

    packed-switch p0, :pswitch_data_0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unhandled xml event type: "

    invoke-static {p2, p0}, La4/a;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-static {p1, v1}, Lm5/z0;->j(Ljavax/xml/stream/XMLStreamReader;Lm5/h$a;)V

    goto/16 :goto_2

    :pswitch_1
    invoke-static {p1, v1}, Lm5/z0;->i(Ljavax/xml/stream/XMLStreamReader;Lm5/h$a;)V

    goto/16 :goto_2

    :pswitch_2
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v1, v2, v9, p0}, Lm5/h$a;->j(IILjava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_3
    if-eqz v0, :cond_6

    invoke-static {p1, v1}, Lm5/z0;->B(Ljavax/xml/stream/XMLStreamReader;Lm5/h$a;)V

    goto/16 :goto_3

    :pswitch_4
    add-int/lit8 v4, v4, 0x1

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getCharacterEncodingScheme()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getVersion()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->isStandalone()Z

    move-result v7

    if-eqz v0, :cond_4

    invoke-static {p1, v1}, Lm5/z0;->B(Ljavax/xml/stream/XMLStreamReader;Lm5/h$a;)V

    goto/16 :goto_2

    :pswitch_5
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    move-result-object p0

    iget-boolean v9, v1, Lm5/h$a;->l:Z

    if-nez v9, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    new-instance v10, Lm5/g;

    iget-object v11, v1, Lm5/h$a;->c:Lm5/z0;

    invoke-direct {v10, v11}, Lm5/g;-><init>(Lm5/z0;)V

    invoke-virtual {v1, v10}, Lm5/h$a;->h(Lm5/b1;)V

    invoke-virtual {v1, v2, v9, p0}, Lm5/h$a;->k(IILjava/lang/Object;)V

    invoke-virtual {v1}, Lm5/h$a;->d()V

    iput-object v10, v1, Lm5/h$a;->g:Lm5/w1;

    iput v2, v1, Lm5/h$a;->h:I

    :cond_2
    iput-boolean v8, v1, Lm5/h$a;->b:Z

    if-eqz v0, :cond_4

    invoke-static {p1, v1}, Lm5/z0;->B(Ljavax/xml/stream/XMLStreamReader;Lm5/h$a;)V

    goto :goto_2

    :pswitch_6
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getTextCharacters()[C

    move-result-object p0

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getTextStart()I

    move-result v9

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getTextLength()I

    move-result v10

    invoke-virtual {v1, v9, v10, p0}, Lm5/h$a;->j(IILjava/lang/Object;)V

    if-eqz v0, :cond_4

    invoke-static {p1, v1}, Lm5/z0;->B(Ljavax/xml/stream/XMLStreamReader;Lm5/h$a;)V

    goto :goto_2

    :pswitch_7
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getPITarget()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getPIData()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, p0, v9}, Lm5/h$a;->g(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_4

    invoke-static {p1, v1}, Lm5/z0;->B(Ljavax/xml/stream/XMLStreamReader;Lm5/h$a;)V

    goto :goto_2

    :pswitch_8
    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1}, Lm5/h$a;->d()V

    iput-boolean v8, v1, Lm5/h$a;->b:Z

    if-eqz v0, :cond_4

    invoke-static {p1, v1}, Lm5/z0;->B(Ljavax/xml/stream/XMLStreamReader;Lm5/h$a;)V

    goto :goto_2

    :pswitch_9
    add-int/lit8 v4, v4, 0x1

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getName()Ljavax/xml/namespace/QName;

    move-result-object p0

    invoke-virtual {v1, p0}, Lm5/h$a;->i(Ljavax/xml/namespace/QName;)V

    if-eqz v0, :cond_3

    invoke-static {p1, v1}, Lm5/z0;->B(Ljavax/xml/stream/XMLStreamReader;Lm5/h$a;)V

    :cond_3
    invoke-static {p1, v1}, Lm5/z0;->i(Ljavax/xml/stream/XMLStreamReader;Lm5/h$a;)V

    invoke-static {p1, v1}, Lm5/z0;->j(Ljavax/xml/stream/XMLStreamReader;Lm5/h$a;)V

    :cond_4
    :goto_2
    :pswitch_a
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_6

    if-gtz v4, :cond_5

    goto :goto_3

    :cond_5
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->next()I

    move-result p0

    goto/16 :goto_1

    :cond_6
    :goto_3
    invoke-virtual {v1}, Lm5/h$a;->e()Lm5/h;

    move-result-object p0

    invoke-static {p0, p2}, Lm5/z0;->c(Lm5/h;Li5/z1;)V

    invoke-static {p0, v8}, Lm5/z0;->s(Lm5/h;Z)Lm5/z0$d;

    move-result-object p1

    sget-object p2, Li5/t0;->b:Ljava/lang/Object;

    invoke-virtual {p1, p2, v5}, Lm5/z0$d;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p2, Li5/t0;->c:Ljava/lang/Object;

    invoke-virtual {p1, p2, v6}, Lm5/z0$d;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p2, Li5/t0;->d:Ljava/lang/Object;

    if-eqz v7, :cond_7

    const-string v3, "true"

    :cond_7
    invoke-virtual {p1, p2, v3}, Lm5/z0$d;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_a
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_a
        :pswitch_6
        :pswitch_0
    .end packed-switch
.end method

.method public final F(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;
    .locals 0

    iget-object p0, p0, Lm5/z0;->s:Lm5/z0$c;

    if-nez p3, :cond_0

    const-string p3, ""

    :cond_0
    iget-object p0, p0, Lm5/z0$c;->a:Li5/j;

    invoke-virtual {p0, p1, p2, p3}, Li5/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object p0

    return-object p0
.end method

.method public final G(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;
    .locals 3

    const-string v0, ""

    if-nez p2, :cond_0

    move-object p2, v0

    :cond_0
    const/16 v1, 0x3a

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    iget-object p0, p0, Lm5/z0;->s:Lm5/z0$c;

    if-gez v1, :cond_1

    iget-object p0, p0, Lm5/z0$c;->a:Li5/j;

    invoke-virtual {p0, p1, p2, v0}, Li5/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object p0

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lm5/z0$c;->a:Li5/j;

    invoke-virtual {p0, p1, v0, p2}, Li5/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final H()V
    .locals 6

    :goto_0
    iget-object v0, p0, Lm5/z0;->j:Lm5/z0$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast v0, Lm5/y;

    iget-object v2, v0, Lm5/y;->c:Lm5/h;

    if-eqz v2, :cond_0

    const v2, 0x7fffffff

    invoke-virtual {v0, v2}, Lm5/y;->T1(I)Z

    iget-object v0, v0, Lm5/y;->c:Lm5/h;

    iget v0, v0, Lm5/h;->p:I

    :cond_0
    iget-object v0, p0, Lm5/z0;->j:Lm5/z0$a;

    move-object v2, v0

    check-cast v2, Lm5/y;

    iget-object v3, v2, Lm5/y;->y:Lm5/z0$a;

    if-ne v3, v0, :cond_1

    iput-object v1, v2, Lm5/y;->y:Lm5/z0$a;

    :cond_1
    iget-object v0, v2, Lm5/y;->y:Lm5/z0$a;

    iput-object v1, v2, Lm5/y;->y:Lm5/z0$a;

    iput-object v0, p0, Lm5/z0;->j:Lm5/z0$a;

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lm5/z0;->m:Lm5/h$b;

    iget v2, v0, Lm5/h$b;->j:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    iget-object v3, v0, Lm5/h$b;->g:[I

    iget-object v4, v0, Lm5/h$b;->h:[I

    invoke-static {v2, v2, v3, v4}, Lm5/h$b;->d(II[I[I)I

    move-result v3

    iput v3, v0, Lm5/h$b;->j:I

    iget-object v3, v0, Lm5/h$b;->d:[Lm5/h;

    iget-object v4, v0, Lm5/h$b;->a:Lm5/z0;

    invoke-virtual {v4}, Lm5/z0;->r()Lm5/h;

    move-result-object v4

    aput-object v4, v3, v2

    iget-object v3, v0, Lm5/h$b;->d:[Lm5/h;

    aget-object v3, v3, v2

    iget-object v4, v0, Lm5/h$b;->b:[Lm5/w1;

    aget-object v4, v4, v2

    iget-object v5, v0, Lm5/h$b;->c:[I

    aget v5, v5, v2

    invoke-virtual {v3, v4, v5}, Lm5/h;->Y(Lm5/w1;I)V

    iget-object v3, v0, Lm5/h$b;->b:[Lm5/w1;

    aput-object v1, v3, v2

    iget-object v0, v0, Lm5/h$b;->c:[I

    const/4 v3, -0x2

    aput v3, v0, v2

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final J()Lm5/h;
    .locals 3

    invoke-virtual {p0}, Lm5/z0;->r()Lm5/h;

    move-result-object v0

    iget-object v1, p0, Lm5/z0;->f:[Lm5/h;

    array-length v2, v1

    iget p0, p0, Lm5/z0;->e:I

    sub-int/2addr v2, p0

    add-int/lit8 v2, v2, -0x1

    aget-object p0, v1, v2

    iput-object p0, v0, Lm5/h;->f:Lm5/h;

    if-eqz p0, :cond_0

    iput-object v0, p0, Lm5/h;->g:Lm5/h;

    :cond_0
    aput-object v0, v1, v2

    iput v2, v0, Lm5/h;->h:I

    const/4 p0, 0x0

    iput-object p0, v0, Lm5/h;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final createDocument(Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/DocumentType;)Lorg/w3c/dom/Document;
    .locals 1

    new-instance v0, Lm5/d0;

    invoke-direct {v0, p0, p1, p2, p3}, Lm5/d0;-><init>(Lm5/z0;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/DocumentType;)V

    const/4 p1, 0x1

    invoke-static {p0, p1, v0}, Lm5/o0;->W(Lm5/z0;ZLjava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Document;

    return-object p0
.end method

.method public final createDocumentType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/DocumentType;
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Not implemented"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final f(Lm5/w1;Ljavax/xml/namespace/QName;Li5/k;)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lm5/z0;->o(Lm5/w1;Ljavax/xml/namespace/QName;Li5/k;I)Lm5/w1;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lm5/w1;->v0()Z

    move-result p1

    if-eqz p1, :cond_1

    if-nez p3, :cond_0

    iget-object p1, p0, Lm5/w1;->b:Ljavax/xml/namespace/QName;

    invoke-virtual {p1, p2}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_0
    iget-object p1, p0, Lm5/w1;->b:Ljavax/xml/namespace/QName;

    invoke-virtual {p3, p1}, Li5/k;->a(Ljavax/xml/namespace/QName;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    :goto_2
    iget-object p0, p0, Lm5/w1;->g:Lm5/w1;

    goto :goto_0

    :cond_2
    return v0
.end method

.method public final g()Lm5/u1;
    .locals 1

    iget-object v0, p0, Lm5/z0;->q:Lm5/d1;

    if-nez v0, :cond_0

    new-instance v0, Lm5/u1;

    invoke-direct {v0, p0}, Lm5/u1;-><init>(Lm5/z0;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lm5/f1;

    invoke-direct {v0, p0}, Lm5/u1;-><init>(Lm5/z0;)V

    :goto_0
    return-object v0
.end method

.method public final getFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "DOM Level 3 Not implemented"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final h(Ljava/lang/String;)Ljavax/xml/namespace/QName;
    .locals 4

    const-string v0, ""

    if-nez p1, :cond_0

    move-object p1, v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "xmlns"

    const-string v3, "http://www.w3.org/2000/xmlns/"

    if-nez v1, :cond_1

    invoke-virtual {p0, v3, v2, v0}, Lm5/z0;->F(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v3, p1, v2}, Lm5/z0;->F(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final hasFeature(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1, p2}, Lm5/o0;->i(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final k()V
    .locals 3

    :goto_0
    iget-object v0, p0, Lm5/z0;->i:Lm5/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v0}, Lm5/h;->P(Lm5/h;)Lm5/h;

    move-result-object v1

    iput-object v1, p0, Lm5/z0;->i:Lm5/h;

    iget-object v1, v0, Lm5/h;->b:Lm5/w1;

    iget-object v2, v1, Lm5/w1;->c:Lm5/h;

    invoke-virtual {v0, v2}, Lm5/h;->O(Lm5/h;)Lm5/h;

    move-result-object v2

    iput-object v2, v1, Lm5/w1;->c:Lm5/h;

    const/4 v1, 0x2

    iput v1, v0, Lm5/h;->d:I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final l()V
    .locals 4

    iget v0, p0, Lm5/z0;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lm5/z0;->e:I

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lm5/z0;->f:[Lm5/h;

    array-length v2, v0

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [Lm5/h;

    array-length v3, v0

    iput v3, p0, Lm5/z0;->e:I

    array-length v3, v0

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lm5/z0;->f:[Lm5/h;

    :cond_0
    iget v0, p0, Lm5/z0;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lm5/z0;->d:I

    const/16 v2, 0x3e8

    if-le v0, v2, :cond_4

    iget-object v0, p0, Lm5/z0;->c:Ljava/lang/ref/ReferenceQueue;

    if-eqz v0, :cond_3

    :cond_1
    :goto_0
    iget-object v0, p0, Lm5/z0;->c:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lm5/z0$f;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, v0, Lm5/z0$f;->a:Lm5/h;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lm5/h;->h0()V

    goto :goto_0

    :cond_3
    :goto_1
    iput v1, p0, Lm5/z0;->d:I

    :cond_4
    return-void
.end method

.method public final m()V
    .locals 2

    iget-object v0, p0, Lm5/z0;->f:[Lm5/h;

    array-length v0, v0

    iget v1, p0, Lm5/z0;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lm5/z0;->e:I

    sub-int/2addr v0, v1

    :goto_0
    iget-object v1, p0, Lm5/z0;->f:[Lm5/h;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lm5/h;->h0()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final n(Lm5/z0;)V
    .locals 0

    invoke-virtual {p0}, Lm5/z0;->m()V

    if-eq p1, p0, :cond_0

    invoke-virtual {p1}, Lm5/z0;->m()V

    :cond_0
    return-void
.end method

.method public final o(Lm5/w1;Ljavax/xml/namespace/QName;Li5/k;I)Lm5/w1;
    .locals 3

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lm5/z0;->v:Lm5/z0$n;

    invoke-virtual {v0, p1, p2, p3, p4}, Lm5/z0$n;->a(Lm5/w1;Ljavax/xml/namespace/QName;Li5/k;I)I

    move-result v0

    iget-object v1, p0, Lm5/z0;->w:Lm5/z0$n;

    invoke-virtual {v1, p1, p2, p3, p4}, Lm5/z0$n;->a(Lm5/w1;Ljavax/xml/namespace/QName;Li5/k;I)I

    move-result v1

    if-gt v0, v1, :cond_1

    iget-object v2, p0, Lm5/z0;->v:Lm5/z0$n;

    invoke-virtual {v2, p1, p2, p3, p4}, Lm5/z0$n;->b(Lm5/w1;Ljavax/xml/namespace/QName;Li5/k;I)Lm5/w1;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lm5/z0;->w:Lm5/z0$n;

    invoke-virtual {v2, p1, p2, p3, p4}, Lm5/z0$n;->b(Lm5/w1;Ljavax/xml/namespace/QName;Li5/k;I)Lm5/w1;

    move-result-object p1

    :goto_0
    if-ne v0, v1, :cond_2

    iget-object p2, p0, Lm5/z0;->v:Lm5/z0$n;

    iget-object p3, p0, Lm5/z0;->w:Lm5/z0$n;

    iput-object p3, p0, Lm5/z0;->v:Lm5/z0$n;

    iput-object p2, p0, Lm5/z0;->w:Lm5/z0$n;

    :cond_2
    return-object p1
.end method

.method public final q()Lm5/f;
    .locals 2

    iget-object v0, p0, Lm5/z0;->n:Lm5/f;

    if-nez v0, :cond_0

    new-instance v0, Lm5/f;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Lm5/f;-><init>(I)V

    iput-object v0, p0, Lm5/z0;->n:Lm5/f;

    :cond_0
    iget-object p0, p0, Lm5/z0;->n:Lm5/f;

    return-object p0
.end method

.method public final r()Lm5/h;
    .locals 4

    iget-object v0, p0, Lm5/z0;->g:Lm5/h;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    new-instance v0, Lm5/h;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p0, v0, Lm5/h;->a:Lm5/z0;

    const/4 v2, -0x2

    iput v2, v0, Lm5/h;->c:I

    const/4 v2, -0x1

    iput v2, v0, Lm5/h;->h:I

    const/4 v3, 0x0

    iput v3, v0, Lm5/h;->d:I

    iput v2, v0, Lm5/h;->l:I

    iput v2, v0, Lm5/h;->m:I

    iput v2, v0, Lm5/h;->n:I

    iput v2, v0, Lm5/h;->o:I

    iput v3, v0, Lm5/h;->p:I

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v0}, Lm5/h;->P(Lm5/h;)Lm5/h;

    move-result-object v2

    iput-object v2, p0, Lm5/z0;->g:Lm5/h;

    iget v2, p0, Lm5/z0;->h:I

    sub-int/2addr v2, v1

    iput v2, p0, Lm5/z0;->h:I

    :goto_0
    iget-object v2, p0, Lm5/z0;->i:Lm5/h;

    invoke-virtual {v0, v2}, Lm5/h;->O(Lm5/h;)Lm5/h;

    move-result-object v2

    iput-object v2, p0, Lm5/z0;->i:Lm5/h;

    iput v1, v0, Lm5/h;->d:I

    return-object v0
.end method
