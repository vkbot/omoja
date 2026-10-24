.class public Lorg/apache/xmlbeans/impl/values/m;
.super Lorg/apache/xmlbeans/impl/values/l;
.source "SourceFile"


# instance fields
.field private final _schemaType:Li5/c0;


# direct methods
.method public constructor <init>(Li5/c0;Z)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/l;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/values/m;->_schemaType:Li5/c0;

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Lorg/apache/xmlbeans/impl/values/h2;->initComplexType(ZZ)V

    return-void
.end method

.method private static getBigIntegerValue(Lorg/apache/xmlbeans/XmlObject;)Ljava/math/BigInteger;
    .locals 3

    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlObject;->schemaType()Li5/c0;

    move-result-object v0

    invoke-interface {v0}, Li5/c0;->z0()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad facet type for Big Int: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    check-cast p0, Lorg/apache/xmlbeans/impl/values/h2;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->getBigDecimalValue()Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Lorg/apache/xmlbeans/impl/values/h2;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->getBigIntegerValue()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0xf4240
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static validateLexical(Ljava/lang/String;Li5/c0;Lj5/m;)V
    .locals 2

    invoke-static {p0, p2}, Lorg/apache/xmlbeans/impl/values/c;->M0(Ljava/lang/String;Lj5/m;)V

    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const-string v1, "integer"

    if-ltz v0, :cond_0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v1, v0}, Lj5/m;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-interface {p1}, Li5/c0;->o0()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1, p0}, Li5/c0;->P0(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lj5/i;->a:Ljava/util/Map;

    invoke-static {p1, v0}, Lj5/i;->g(Li5/c0;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v1, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "cvc-datatype-valid.1.1"

    invoke-interface {p2, p1, p0}, Lj5/m;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private static validateValue(Ljava/math/BigInteger;Li5/c0;Lj5/m;)V
    .locals 6

    const/4 v0, 0x7

    invoke-interface {p1, v0}, Li5/c0;->N0(I)Li5/i0;

    move-result-object v0

    check-cast v0, Li5/a2;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2d

    if-ne v4, v5, :cond_0

    add-int/lit8 v3, v3, -0x1

    :cond_0
    invoke-interface {v0}, Li5/m1;->getBigIntegerValue()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    if-le v3, v4, :cond_1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0}, Li5/m1;->getBigIntegerValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lj5/i;->a:Ljava/util/Map;

    invoke-static {p1, v1}, Lj5/i;->g(Li5/c0;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p0, v2, v0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "cvc-totalDigits-valid"

    invoke-interface {p2, p1, p0}, Lj5/m;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Li5/c0;->N0(I)Li5/i0;

    move-result-object v0

    const-string v2, "integer"

    if-eqz v0, :cond_2

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/values/m;->getBigIntegerValue(Lorg/apache/xmlbeans/XmlObject;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-gtz v3, :cond_2

    sget-object v1, Lj5/i;->a:Ljava/util/Map;

    invoke-static {p1, v1}, Lj5/i;->g(Li5/c0;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2, p0, v0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "cvc-minExclusive-valid"

    invoke-interface {p2, p1, p0}, Lj5/m;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Li5/c0;->N0(I)Li5/i0;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/values/m;->getBigIntegerValue(Lorg/apache/xmlbeans/XmlObject;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-gez v3, :cond_3

    sget-object v1, Lj5/i;->a:Ljava/util/Map;

    invoke-static {p1, v1}, Lj5/i;->g(Li5/c0;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2, p0, v0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "cvc-minInclusive-valid"

    invoke-interface {p2, p1, p0}, Lj5/m;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_3
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Li5/c0;->N0(I)Li5/i0;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/values/m;->getBigIntegerValue(Lorg/apache/xmlbeans/XmlObject;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-lez v3, :cond_4

    sget-object v1, Lj5/i;->a:Ljava/util/Map;

    invoke-static {p1, v1}, Lj5/i;->g(Li5/c0;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2, p0, v0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "cvc-maxInclusive-valid"

    invoke-interface {p2, p1, p0}, Lj5/m;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_4
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Li5/c0;->N0(I)Li5/i0;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/values/m;->getBigIntegerValue(Lorg/apache/xmlbeans/XmlObject;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-ltz v3, :cond_5

    sget-object v1, Lj5/i;->a:Ljava/util/Map;

    invoke-static {p1, v1}, Lj5/i;->g(Li5/c0;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2, p0, v0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "cvc-maxExclusive-valid"

    invoke-interface {p2, p1, p0}, Lj5/m;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_5
    invoke-interface {p1}, Li5/c0;->L0()[Li5/i0;

    move-result-object v0

    if-eqz v0, :cond_8

    array-length v3, v0

    :goto_0
    if-ge v1, v3, :cond_7

    aget-object v4, v0, v1

    invoke-static {v4}, Lorg/apache/xmlbeans/impl/values/m;->getBigIntegerValue(Lorg/apache/xmlbeans/XmlObject;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    return-void

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    sget-object v0, Lj5/i;->a:Ljava/util/Map;

    invoke-static {p1, v0}, Lj5/i;->g(Li5/c0;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "cvc-enumeration-valid"

    invoke-interface {p2, p1, p0}, Lj5/m;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    return-void
.end method


# virtual methods
.method public schemaType()Li5/c0;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/m;->_schemaType:Li5/c0;

    return-object p0
.end method

.method public set_BigInteger(Ljava/math/BigInteger;)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->_validateOnSet()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/m;->_schemaType:Li5/c0;

    sget-object v1, Lorg/apache/xmlbeans/impl/values/h2;->_voorVc:Lj5/m;

    invoke-static {p1, v0, v1}, Lorg/apache/xmlbeans/impl/values/m;->validateValue(Ljava/math/BigInteger;Li5/c0;Lj5/m;)V

    :cond_0
    invoke-super {p0, p1}, Lorg/apache/xmlbeans/impl/values/l;->set_BigInteger(Ljava/math/BigInteger;)V

    return-void
.end method

.method public set_text(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lorg/apache/xmlbeans/impl/values/h2;->_voorVc:Lj5/m;

    invoke-static {p1, v0}, Lorg/apache/xmlbeans/impl/values/l;->lex(Ljava/lang/String;Lj5/m;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->_validateOnSet()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/values/m;->_schemaType:Li5/c0;

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/impl/values/m;->validateValue(Ljava/math/BigInteger;Li5/c0;Lj5/m;)V

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->_validateOnSet()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/values/m;->_schemaType:Li5/c0;

    invoke-static {p1, v2, v0}, Lorg/apache/xmlbeans/impl/values/m;->validateLexical(Ljava/lang/String;Li5/c0;Lj5/m;)V

    :cond_1
    invoke-super {p0, v1}, Lorg/apache/xmlbeans/impl/values/l;->set_BigInteger(Ljava/math/BigInteger;)V

    return-void
.end method

.method public validate_simpleval(Ljava/lang/String;Lj5/m;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/m;->schemaType()Li5/c0;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lorg/apache/xmlbeans/impl/values/m;->validateLexical(Ljava/lang/String;Li5/c0;Lj5/m;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/l;->getBigIntegerValue()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/m;->schemaType()Li5/c0;

    move-result-object p0

    invoke-static {p1, p0, p2}, Lorg/apache/xmlbeans/impl/values/m;->validateValue(Ljava/math/BigInteger;Li5/c0;Lj5/m;)V

    return-void
.end method
