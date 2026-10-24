.class public abstract Lorg/apache/xmlbeans/impl/values/e;
.super Lorg/apache/xmlbeans/impl/values/d;
.source "SourceFile"


# instance fields
.field private final _schemaType:Li5/c0;


# direct methods
.method public constructor <init>(Li5/c0;Z)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/d;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/values/e;->_schemaType:Li5/c0;

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Lorg/apache/xmlbeans/impl/values/h2;->initComplexType(ZZ)V

    return-void
.end method

.method public static validateLexical(Ljava/lang/String;Li5/c0;Lj5/m;)D
    .locals 3

    invoke-static {p0, p2}, Lorg/apache/xmlbeans/impl/values/d;->validateLexical(Ljava/lang/String;Lj5/m;)D

    move-result-wide v0

    invoke-interface {p1, p0}, Li5/c0;->P0(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lj5/i;->a:Ljava/util/Map;

    invoke-static {p1, v2}, Lj5/i;->g(Li5/c0;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "double"

    filled-new-array {v2, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "cvc-datatype-valid.1.1"

    invoke-interface {p2, p1, p0}, Lj5/m;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-wide v0
.end method

.method public static validateValue(DLi5/c0;Lj5/m;)V
    .locals 6

    const/4 v0, 0x3

    invoke-interface {p2, v0}, Li5/c0;->N0(I)Li5/i0;

    move-result-object v0

    const-string v1, "double"

    if-eqz v0, :cond_0

    check-cast v0, Lorg/apache/xmlbeans/impl/values/h2;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/values/h2;->getDoubleValue()D

    move-result-wide v2

    invoke-static {p0, p1, v2, v3}, Lorg/apache/xmlbeans/impl/values/d;->compare(DD)I

    move-result v0

    if-gtz v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    sget-object v3, Lj5/i;->a:Ljava/util/Map;

    invoke-static {p2, v3}, Lj5/i;->g(Li5/c0;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v1, v0, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "cvc-minExclusive-valid"

    invoke-interface {p3, v2, v0}, Lj5/m;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x4

    invoke-interface {p2, v0}, Li5/c0;->N0(I)Li5/i0;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Lorg/apache/xmlbeans/impl/values/h2;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/values/h2;->getDoubleValue()D

    move-result-wide v2

    invoke-static {p0, p1, v2, v3}, Lorg/apache/xmlbeans/impl/values/d;->compare(DD)I

    move-result v0

    if-gez v0, :cond_1

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    sget-object v3, Lj5/i;->a:Ljava/util/Map;

    invoke-static {p2, v3}, Lj5/i;->g(Li5/c0;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v1, v0, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "cvc-minInclusive-valid"

    invoke-interface {p3, v2, v0}, Lj5/m;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x5

    invoke-interface {p2, v0}, Li5/c0;->N0(I)Li5/i0;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Lorg/apache/xmlbeans/impl/values/h2;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/values/h2;->getDoubleValue()D

    move-result-wide v2

    invoke-static {p0, p1, v2, v3}, Lorg/apache/xmlbeans/impl/values/d;->compare(DD)I

    move-result v0

    if-lez v0, :cond_2

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    sget-object v3, Lj5/i;->a:Ljava/util/Map;

    invoke-static {p2, v3}, Lj5/i;->g(Li5/c0;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v1, v0, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "cvc-maxInclusive-valid"

    invoke-interface {p3, v2, v0}, Lj5/m;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    const/4 v0, 0x6

    invoke-interface {p2, v0}, Li5/c0;->N0(I)Li5/i0;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, Lorg/apache/xmlbeans/impl/values/h2;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/values/h2;->getDoubleValue()D

    move-result-wide v2

    invoke-static {p0, p1, v2, v3}, Lorg/apache/xmlbeans/impl/values/d;->compare(DD)I

    move-result v0

    if-ltz v0, :cond_3

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    sget-object v3, Lj5/i;->a:Ljava/util/Map;

    invoke-static {p2, v3}, Lj5/i;->g(Li5/c0;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v1, v0, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "cvc-maxExclusive-valid"

    invoke-interface {p3, v2, v0}, Lj5/m;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    invoke-interface {p2}, Li5/c0;->L0()[Li5/i0;

    move-result-object v0

    if-eqz v0, :cond_6

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_5

    aget-object v4, v0, v3

    check-cast v4, Lorg/apache/xmlbeans/impl/values/h2;

    invoke-virtual {v4}, Lorg/apache/xmlbeans/impl/values/h2;->getDoubleValue()D

    move-result-wide v4

    invoke-static {p0, p1, v4, v5}, Lorg/apache/xmlbeans/impl/values/d;->compare(DD)I

    move-result v4

    if-nez v4, :cond_4

    return-void

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    sget-object p1, Lj5/i;->a:Ljava/util/Map;

    invoke-static {p2, p1}, Lj5/i;->g(Li5/c0;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v1, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "cvc-enumeration-valid"

    invoke-interface {p3, p1, p0}, Lj5/m;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    return-void
.end method


# virtual methods
.method public schemaType()Li5/c0;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/e;->_schemaType:Li5/c0;

    return-object p0
.end method

.method public set_double(D)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->_validateOnSet()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/e;->_schemaType:Li5/c0;

    sget-object v1, Lorg/apache/xmlbeans/impl/values/h2;->_voorVc:Lj5/m;

    invoke-static {p1, p2, v0, v1}, Lorg/apache/xmlbeans/impl/values/e;->validateValue(DLi5/c0;Lj5/m;)V

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/apache/xmlbeans/impl/values/d;->set_double(D)V

    return-void
.end method

.method public validate_simpleval(Ljava/lang/String;Lj5/m;)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/e;->schemaType()Li5/c0;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lorg/apache/xmlbeans/impl/values/e;->validateLexical(Ljava/lang/String;Li5/c0;Lj5/m;)D

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/d;->getDoubleValue()D

    move-result-wide v0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/e;->schemaType()Li5/c0;

    move-result-object p0

    invoke-static {v0, v1, p0, p2}, Lorg/apache/xmlbeans/impl/values/e;->validateValue(DLi5/c0;Lj5/m;)V

    return-void
.end method
