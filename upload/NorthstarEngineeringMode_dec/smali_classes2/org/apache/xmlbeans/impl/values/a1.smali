.class public final Lorg/apache/xmlbeans/impl/values/a1;
.super Lorg/apache/xmlbeans/impl/values/f;
.source "SourceFile"

# interfaces
.implements Li5/b1;


# static fields
.field public static final synthetic x:I


# instance fields
.field public final r:Li5/c0;


# direct methods
.method public constructor <init>(Li5/c0;Z)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/values/a1;->r:Li5/c0;

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Lorg/apache/xmlbeans/impl/values/h2;->initComplexType(ZZ)V

    return-void
.end method

.method public static h1(FLi5/c0;Lj5/m;)V
    .locals 5

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Li5/c0;->N0(I)Li5/i0;

    move-result-object v0

    const-string v1, "float"

    if-eqz v0, :cond_0

    check-cast v0, Lorg/apache/xmlbeans/impl/values/h2;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/values/h2;->getFloatValue()F

    move-result v0

    invoke-static {p0, v0}, Lorg/apache/xmlbeans/impl/values/f;->M0(FF)I

    move-result v2

    if-gtz v2, :cond_0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sget-object v3, Lj5/i;->a:Ljava/util/Map;

    invoke-static {p1, v3}, Lj5/i;->g(Li5/c0;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v1, v2, v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "cvc-minExclusive-valid"

    invoke-interface {p2, v2, v0}, Lj5/m;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Li5/c0;->N0(I)Li5/i0;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Lorg/apache/xmlbeans/impl/values/h2;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/values/h2;->getFloatValue()F

    move-result v0

    invoke-static {p0, v0}, Lorg/apache/xmlbeans/impl/values/f;->M0(FF)I

    move-result v2

    if-gez v2, :cond_1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sget-object v3, Lj5/i;->a:Ljava/util/Map;

    invoke-static {p1, v3}, Lj5/i;->g(Li5/c0;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v1, v2, v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "cvc-minInclusive-valid"

    invoke-interface {p2, v2, v0}, Lj5/m;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Li5/c0;->N0(I)Li5/i0;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Lorg/apache/xmlbeans/impl/values/h2;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/values/h2;->getFloatValue()F

    move-result v0

    invoke-static {p0, v0}, Lorg/apache/xmlbeans/impl/values/f;->M0(FF)I

    move-result v2

    if-lez v2, :cond_2

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sget-object v3, Lj5/i;->a:Ljava/util/Map;

    invoke-static {p1, v3}, Lj5/i;->g(Li5/c0;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v1, v2, v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "cvc-maxInclusive-valid"

    invoke-interface {p2, v2, v0}, Lj5/m;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Li5/c0;->N0(I)Li5/i0;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, Lorg/apache/xmlbeans/impl/values/h2;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/values/h2;->getFloatValue()F

    move-result v0

    invoke-static {p0, v0}, Lorg/apache/xmlbeans/impl/values/f;->M0(FF)I

    move-result v2

    if-ltz v2, :cond_3

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sget-object v3, Lj5/i;->a:Ljava/util/Map;

    invoke-static {p1, v3}, Lj5/i;->g(Li5/c0;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v1, v2, v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "cvc-maxExclusive-valid"

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

    invoke-virtual {v4}, Lorg/apache/xmlbeans/impl/values/h2;->getFloatValue()F

    move-result v4

    invoke-static {p0, v4}, Lorg/apache/xmlbeans/impl/values/f;->M0(FF)I

    move-result v4

    if-nez v4, :cond_4

    return-void

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

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
.method public final schemaType()Li5/c0;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/a1;->r:Li5/c0;

    return-object p0
.end method

.method public final set_float(F)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->_validateOnSet()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/a1;->r:Li5/c0;

    sget-object v1, Lorg/apache/xmlbeans/impl/values/h2;->_voorVc:Lj5/m;

    invoke-static {p1, v0, v1}, Lorg/apache/xmlbeans/impl/values/a1;->h1(FLi5/c0;Lj5/m;)V

    :cond_0
    iput p1, p0, Lorg/apache/xmlbeans/impl/values/f;->c:F

    return-void
.end method

.method public final validate_simpleval(Ljava/lang/String;Lj5/m;)V
    .locals 3

    const-string v0, "float"

    :try_start_0
    invoke-static {p1}, Ln5/f;->c(Ljava/lang/CharSequence;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lj5/m;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/values/a1;->r:Li5/c0;

    invoke-interface {v1, p1}, Li5/c0;->P0(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lj5/i;->a:Ljava/util/Map;

    invoke-static {v1, v2}, Lj5/i;->g(Li5/c0;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, p1, v2}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "cvc-datatype-valid.1.1"

    invoke-interface {p2, v0, p1}, Lj5/m;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_dated()V

    iget p0, p0, Lorg/apache/xmlbeans/impl/values/f;->c:F

    invoke-static {p0, v1, p2}, Lorg/apache/xmlbeans/impl/values/a1;->h1(FLi5/c0;Lj5/m;)V

    return-void
.end method
