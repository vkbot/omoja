.class public final Lorg/apache/xmlbeans/impl/values/t0;
.super Lorg/apache/xmlbeans/impl/values/c;
.source "SourceFile"

# interfaces
.implements Li5/s0;


# instance fields
.field public final y:Li5/c0;


# direct methods
.method public constructor <init>(Li5/c0;Z)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/c;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/values/t0;->y:Li5/c0;

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Lorg/apache/xmlbeans/impl/values/h2;->initComplexType(ZZ)V

    return-void
.end method

.method public static h1(Ljava/math/BigDecimal;Li5/c0;Lj5/m;)V
    .locals 9

    const/16 v0, 0x8

    invoke-interface {p1, v0}, Li5/c0;->N0(I)Li5/i0;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lorg/apache/xmlbeans/impl/values/h2;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/values/h2;->getBigIntegerValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    :try_start_0
    sget-object v1, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    invoke-virtual {p0, v0, v1}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p0}, Ljava/math/BigDecimal;->scale()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v2, Lj5/i;->a:Ljava/util/Map;

    invoke-static {p1, v2}, Lj5/i;->g(Li5/c0;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v1, p0, v0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "cvc-fractionDigits-valid"

    invoke-interface {p2, p1, p0}, Lj5/m;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    :goto_0
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Li5/c0;->N0(I)Li5/i0;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Lorg/apache/xmlbeans/impl/values/h2;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/values/h2;->getBigIntegerValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2d

    if-ne v4, v5, :cond_1

    add-int/lit8 v4, v3, -0x1

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    invoke-virtual {p0}, Ljava/math/BigDecimal;->scale()I

    move-result v5

    add-int/lit8 v3, v3, -0x1

    move v6, v1

    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x30

    if-ne v7, v8, :cond_2

    if-lez v3, :cond_2

    if-ge v6, v5, :cond_2

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_2
    sub-int v3, v4, v6

    :cond_3
    if-le v3, v0, :cond_4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v2, Lj5/i;->a:Ljava/util/Map;

    invoke-static {p1, v2}, Lj5/i;->g(Li5/c0;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v1, p0, v0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "cvc-totalDigits-valid"

    invoke-interface {p2, p1, p0}, Lj5/m;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_4
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Li5/c0;->N0(I)Li5/i0;

    move-result-object v0

    const-string v2, "decimal"

    if-eqz v0, :cond_5

    check-cast v0, Lorg/apache/xmlbeans/impl/values/h2;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/values/h2;->getBigDecimalValue()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v3

    if-gtz v3, :cond_5

    sget-object v1, Lj5/i;->a:Ljava/util/Map;

    invoke-static {p1, v1}, Lj5/i;->g(Li5/c0;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2, p0, v0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "cvc-minExclusive-valid"

    invoke-interface {p2, p1, p0}, Lj5/m;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_5
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Li5/c0;->N0(I)Li5/i0;

    move-result-object v0

    if-eqz v0, :cond_6

    check-cast v0, Lorg/apache/xmlbeans/impl/values/h2;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/values/h2;->getBigDecimalValue()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v3

    if-gez v3, :cond_6

    sget-object v1, Lj5/i;->a:Ljava/util/Map;

    invoke-static {p1, v1}, Lj5/i;->g(Li5/c0;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2, p0, v0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "cvc-minInclusive-valid"

    invoke-interface {p2, p1, p0}, Lj5/m;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_6
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Li5/c0;->N0(I)Li5/i0;

    move-result-object v0

    if-eqz v0, :cond_7

    check-cast v0, Lorg/apache/xmlbeans/impl/values/h2;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/values/h2;->getBigDecimalValue()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v3

    if-lez v3, :cond_7

    sget-object v1, Lj5/i;->a:Ljava/util/Map;

    invoke-static {p1, v1}, Lj5/i;->g(Li5/c0;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2, p0, v0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "cvc-maxInclusive-valid"

    invoke-interface {p2, p1, p0}, Lj5/m;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_7
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Li5/c0;->N0(I)Li5/i0;

    move-result-object v0

    if-eqz v0, :cond_8

    check-cast v0, Lorg/apache/xmlbeans/impl/values/h2;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/values/h2;->getBigDecimalValue()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v3

    if-ltz v3, :cond_8

    sget-object v1, Lj5/i;->a:Ljava/util/Map;

    invoke-static {p1, v1}, Lj5/i;->g(Li5/c0;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2, p0, v0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "cvc-maxExclusive-valid"

    invoke-interface {p2, p1, p0}, Lj5/m;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_8
    invoke-interface {p1}, Li5/c0;->L0()[Li5/i0;

    move-result-object v0

    if-eqz v0, :cond_b

    array-length v3, v0

    :goto_3
    if-ge v1, v3, :cond_a

    aget-object v4, v0, v1

    check-cast v4, Lorg/apache/xmlbeans/impl/values/h2;

    invoke-virtual {v4}, Lorg/apache/xmlbeans/impl/values/h2;->getBigDecimalValue()Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v4

    if-nez v4, :cond_9

    return-void

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_a
    sget-object v0, Lj5/i;->a:Ljava/util/Map;

    invoke-static {p1, v0}, Lj5/i;->g(Li5/c0;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "cvc-enumeration-valid"

    invoke-interface {p2, p1, p0}, Lj5/m;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_b
    return-void
.end method

.method public static validateLexical(Ljava/lang/String;Li5/c0;Lj5/m;)V
    .locals 1

    invoke-static {p0, p2}, Lorg/apache/xmlbeans/impl/values/c;->M0(Ljava/lang/String;Lj5/m;)V

    invoke-interface {p1}, Li5/c0;->o0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p0}, Li5/c0;->P0(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lj5/i;->a:Ljava/util/Map;

    invoke-static {p1, v0}, Lj5/i;->g(Li5/c0;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "decimal"

    filled-new-array {v0, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "cvc-datatype-valid.1.1"

    invoke-interface {p2, p1, p0}, Lj5/m;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final schemaType()Li5/c0;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/t0;->y:Li5/c0;

    return-object p0
.end method

.method public final set_BigDecimal(Ljava/math/BigDecimal;)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->_validateOnSet()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/t0;->y:Li5/c0;

    sget-object v1, Lorg/apache/xmlbeans/impl/values/h2;->_voorVc:Lj5/m;

    invoke-static {p1, v0, v1}, Lorg/apache/xmlbeans/impl/values/t0;->h1(Ljava/math/BigDecimal;Li5/c0;Lj5/m;)V

    :cond_0
    iput-object p1, p0, Lorg/apache/xmlbeans/impl/values/c;->c:Ljava/math/BigDecimal;

    return-void
.end method

.method public final set_text(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->_validateOnSet()Z

    move-result v0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/values/t0;->y:Li5/c0;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/xmlbeans/impl/values/h2;->_voorVc:Lj5/m;

    invoke-static {p1, v1, v0}, Lorg/apache/xmlbeans/impl/values/t0;->validateLexical(Ljava/lang/String;Li5/c0;Lj5/m;)V

    :cond_0
    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Lorg/apache/xmlbeans/impl/values/h2;->_voorVc:Lj5/m;

    const-string v2, "decimal"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, v2, p1}, Lj5/m;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->_validateOnSet()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lorg/apache/xmlbeans/impl/values/h2;->_voorVc:Lj5/m;

    invoke-static {v0, v1, p1}, Lorg/apache/xmlbeans/impl/values/t0;->h1(Ljava/math/BigDecimal;Li5/c0;Lj5/m;)V

    :cond_1
    iput-object v0, p0, Lorg/apache/xmlbeans/impl/values/c;->c:Ljava/math/BigDecimal;

    return-void
.end method

.method public final validate_simpleval(Ljava/lang/String;Lj5/m;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/t0;->y:Li5/c0;

    invoke-static {p1, v0, p2}, Lorg/apache/xmlbeans/impl/values/t0;->validateLexical(Ljava/lang/String;Li5/c0;Lj5/m;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_dated()V

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/c;->c:Ljava/math/BigDecimal;

    invoke-static {p0, v0, p2}, Lorg/apache/xmlbeans/impl/values/t0;->h1(Ljava/math/BigDecimal;Li5/c0;Lj5/m;)V

    return-void
.end method
