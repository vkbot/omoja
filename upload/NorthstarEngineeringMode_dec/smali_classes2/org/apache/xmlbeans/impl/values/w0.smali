.class public final Lorg/apache/xmlbeans/impl/values/w0;
.super Lorg/apache/xmlbeans/impl/values/h2;
.source "SourceFile"

# interfaces
.implements Li5/v0;


# instance fields
.field public c:Li5/g;

.field public final r:Li5/c0;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;-><init>()V

    sget-object v0, Li5/v0;->C:Li5/c0;

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/values/w0;->r:Li5/c0;

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, v0}, Lorg/apache/xmlbeans/impl/values/h2;->initComplexType(ZZ)V

    return-void
.end method

.method public constructor <init>(Li5/c0;Z)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/values/w0;->r:Li5/c0;

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p2, p1}, Lorg/apache/xmlbeans/impl/values/h2;->initComplexType(ZZ)V

    return-void
.end method

.method public static M0(Ljava/lang/String;Li5/c0;Lj5/m;)Li5/g;
    .locals 3

    const-string v0, "duration"

    :try_start_0
    new-instance v1, Li5/g;

    invoke-direct {v1, p0}, Li5/g;-><init>(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lj5/m;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {p1}, Li5/c0;->o0()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1, p0}, Li5/c0;->P0(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lj5/i;->a:Ljava/util/Map;

    invoke-static {p1, v2}, Lj5/i;->g(Li5/c0;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "cvc-datatype-valid.1.1"

    invoke-interface {p2, p1, p0}, Lj5/m;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-object v1
.end method

.method public static h1(Li5/i;Li5/c0;Lj5/m;)V
    .locals 5

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Li5/c0;->N0(I)Li5/i0;

    move-result-object v0

    const-string v1, "duration"

    if-eqz v0, :cond_0

    check-cast v0, Lorg/apache/xmlbeans/impl/values/h2;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/values/h2;->getGDurationValue()Li5/g;

    move-result-object v0

    invoke-interface {p0, v0}, Li5/i;->c(Li5/g;)I

    move-result v2

    if-gtz v2, :cond_0

    sget-object v2, Lj5/i;->a:Ljava/util/Map;

    invoke-static {p1, v2}, Lj5/i;->g(Li5/c0;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, p0, v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "cvc-minExclusive-valid"

    invoke-interface {p2, v2, v0}, Lj5/m;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Li5/c0;->N0(I)Li5/i0;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Lorg/apache/xmlbeans/impl/values/h2;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/values/h2;->getGDurationValue()Li5/g;

    move-result-object v0

    invoke-interface {p0, v0}, Li5/i;->c(Li5/g;)I

    move-result v2

    if-gez v2, :cond_1

    sget-object v2, Lj5/i;->a:Ljava/util/Map;

    invoke-static {p1, v2}, Lj5/i;->g(Li5/c0;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, p0, v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "cvc-minInclusive-valid"

    invoke-interface {p2, v2, v0}, Lj5/m;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Li5/c0;->N0(I)Li5/i0;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Lorg/apache/xmlbeans/impl/values/h2;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/values/h2;->getGDurationValue()Li5/g;

    move-result-object v0

    invoke-interface {p0, v0}, Li5/i;->c(Li5/g;)I

    move-result v2

    if-ltz v2, :cond_2

    sget-object v2, Lj5/i;->a:Ljava/util/Map;

    invoke-static {p1, v2}, Lj5/i;->g(Li5/c0;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, p0, v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "cvc-maxExclusive-valid"

    invoke-interface {p2, v2, v0}, Lj5/m;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Li5/c0;->N0(I)Li5/i0;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, Lorg/apache/xmlbeans/impl/values/h2;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/values/h2;->getGDurationValue()Li5/g;

    move-result-object v0

    invoke-interface {p0, v0}, Li5/i;->c(Li5/g;)I

    move-result v2

    if-lez v2, :cond_3

    sget-object v2, Lj5/i;->a:Ljava/util/Map;

    invoke-static {p1, v2}, Lj5/i;->g(Li5/c0;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, p0, v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "cvc-maxInclusive-valid"

    invoke-interface {p2, v2, v0}, Lj5/m;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    invoke-interface {p1}, Li5/c0;->L0()[Li5/i0;

    move-result-object v0

    if-eqz v0, :cond_6

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_5

    aget-object v4, v0, v3

    check-cast v4, Lorg/apache/xmlbeans/impl/values/h2;

    invoke-virtual {v4}, Lorg/apache/xmlbeans/impl/values/h2;->getGDurationValue()Li5/g;

    move-result-object v4

    invoke-interface {p0, v4}, Li5/i;->c(Li5/g;)I

    move-result v4

    if-nez v4, :cond_4

    return-void

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    sget-object v0, Lj5/i;->a:Ljava/util/Map;

    invoke-static {p1, v0}, Lj5/i;->g(Li5/c0;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v1, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "cvc-enumeration-valid"

    invoke-interface {p2, p1, p0}, Lj5/m;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    return-void
.end method


# virtual methods
.method public final compare_to(Lorg/apache/xmlbeans/XmlObject;)I
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/w0;->c:Li5/g;

    check-cast p1, Lorg/apache/xmlbeans/impl/values/h2;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/values/h2;->getGDurationValue()Li5/g;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1}, Li5/h;->e(Li5/i;Li5/g;)I

    move-result p0

    return p0
.end method

.method public final compute_text(Lorg/apache/xmlbeans/impl/values/y;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/w0;->c:Li5/g;

    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-static {p0}, Li5/h;->k(Li5/i;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final equal_to(Lorg/apache/xmlbeans/XmlObject;)Z
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/w0;->c:Li5/g;

    check-cast p1, Lorg/apache/xmlbeans/impl/values/h2;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/values/h2;->getGDurationValue()Li5/g;

    move-result-object p1

    invoke-virtual {p0, p1}, Li5/g;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final getGDurationValue()Li5/g;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_dated()V

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/w0;->c:Li5/g;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public final schemaType()Li5/c0;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/w0;->r:Li5/c0;

    return-object p0
.end method

.method public final set_GDuration(Li5/i;)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->_validateOnSet()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/w0;->r:Li5/c0;

    sget-object v1, Lorg/apache/xmlbeans/impl/values/h2;->_voorVc:Lj5/m;

    invoke-static {p1, v0, v1}, Lorg/apache/xmlbeans/impl/values/w0;->h1(Li5/i;Li5/c0;Lj5/m;)V

    :cond_0
    invoke-interface {p1}, Li5/i;->isImmutable()V

    instance-of v0, p1, Li5/g;

    if-eqz v0, :cond_1

    check-cast p1, Li5/g;

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/values/w0;->c:Li5/g;

    goto :goto_0

    :cond_1
    new-instance v0, Li5/g;

    invoke-direct {v0, p1}, Li5/g;-><init>(Li5/i;)V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/values/w0;->c:Li5/g;

    :goto_0
    return-void
.end method

.method public final set_nil()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/values/w0;->c:Li5/g;

    return-void
.end method

.method public final set_text(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->_validateOnSet()Z

    move-result v0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/values/w0;->r:Li5/c0;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/xmlbeans/impl/values/h2;->_voorVc:Lj5/m;

    invoke-static {p1, v1, v0}, Lorg/apache/xmlbeans/impl/values/w0;->M0(Ljava/lang/String;Li5/c0;Lj5/m;)Li5/g;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/xmlbeans/impl/values/h2;->_voorVc:Lj5/m;

    :try_start_0
    new-instance v2, Li5/g;

    invoke-direct {v2, p1}, Li5/g;-><init>(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v2

    goto :goto_0

    :catch_0
    const-string v2, "duration"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, v2, p1}, Lj5/m;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->_validateOnSet()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    sget-object v0, Lorg/apache/xmlbeans/impl/values/h2;->_voorVc:Lj5/m;

    invoke-static {p1, v1, v0}, Lorg/apache/xmlbeans/impl/values/w0;->h1(Li5/i;Li5/c0;Lj5/m;)V

    :cond_1
    iput-object p1, p0, Lorg/apache/xmlbeans/impl/values/w0;->c:Li5/g;

    return-void
.end method

.method public final validate_simpleval(Ljava/lang/String;Lj5/m;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/w0;->r:Li5/c0;

    invoke-static {p1, v0, p2}, Lorg/apache/xmlbeans/impl/values/w0;->M0(Ljava/lang/String;Li5/c0;Lj5/m;)Li5/g;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/w0;->getGDurationValue()Li5/g;

    move-result-object p0

    invoke-static {p0, v0, p2}, Lorg/apache/xmlbeans/impl/values/w0;->h1(Li5/i;Li5/c0;Lj5/m;)V

    return-void
.end method

.method public final value_hash_code()I
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/w0;->c:Li5/g;

    invoke-virtual {p0}, Li5/g;->hashCode()I

    move-result p0

    return p0
.end method
