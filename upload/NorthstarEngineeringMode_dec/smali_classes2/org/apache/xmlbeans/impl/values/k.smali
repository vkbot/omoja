.class public abstract Lorg/apache/xmlbeans/impl/values/k;
.super Lorg/apache/xmlbeans/impl/values/j;
.source "SourceFile"


# instance fields
.field private final _schemaType:Li5/c0;


# direct methods
.method public constructor <init>(Li5/c0;Z)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/j;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/values/k;->_schemaType:Li5/c0;

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Lorg/apache/xmlbeans/impl/values/h2;->initComplexType(ZZ)V

    return-void
.end method

.method private static getIntValue(Lorg/apache/xmlbeans/XmlObject;)I
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlObject;->schemaType()Li5/c0;

    move-result-object v0

    invoke-interface {v0}, Li5/c0;->z0()I

    move-result v0

    const/16 v1, 0x40

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lorg/apache/xmlbeans/impl/values/h2;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->getIntValue()I

    move-result p0

    return p0

    :pswitch_0
    check-cast p0, Lorg/apache/xmlbeans/impl/values/h2;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->getBigDecimalValue()Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->intValue()I

    move-result p0

    return p0

    :pswitch_1
    check-cast p0, Lorg/apache/xmlbeans/impl/values/h2;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->getBigIntegerValue()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    return p0

    :cond_0
    check-cast p0, Lorg/apache/xmlbeans/impl/values/h2;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->getLongValue()J

    move-result-wide v0

    long-to-int p0, v0

    return p0

    :pswitch_data_0
    .packed-switch 0xf4240
        :pswitch_1
        :pswitch_0
    .end packed-switch
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

    const-string v0, "int"

    filled-new-array {v0, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "cvc-datatype-valid.1.1"

    invoke-interface {p2, p1, p0}, Lj5/m;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static validateValue(ILi5/c0;Lj5/m;)V
    .locals 6

    const/4 v0, 0x7

    invoke-interface {p1, v0}, Li5/c0;->N0(I)Li5/i0;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

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
    invoke-static {v0}, Lorg/apache/xmlbeans/impl/values/k;->getIntValue(Lorg/apache/xmlbeans/XmlObject;)I

    move-result v4

    if-le v3, v4, :cond_1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/values/k;->getIntValue(Lorg/apache/xmlbeans/XmlObject;)I

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

    const-string v2, "int"

    if-eqz v0, :cond_2

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/values/k;->getIntValue(Lorg/apache/xmlbeans/XmlObject;)I

    move-result v0

    if-gt p0, v0, :cond_2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

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

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/values/k;->getIntValue(Lorg/apache/xmlbeans/XmlObject;)I

    move-result v0

    if-ge p0, v0, :cond_3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

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

    const-string v3, "cvc-maxExclusive-valid"

    if-eqz v0, :cond_4

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/values/k;->getIntValue(Lorg/apache/xmlbeans/XmlObject;)I

    move-result v0

    if-le p0, v0, :cond_4

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lj5/i;->a:Ljava/util/Map;

    invoke-static {p1, v1}, Lj5/i;->g(Li5/c0;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2, p0, v0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, v3, p0}, Lj5/m;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_4
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Li5/c0;->N0(I)Li5/i0;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/values/k;->getIntValue(Lorg/apache/xmlbeans/XmlObject;)I

    move-result v0

    if-lt p0, v0, :cond_5

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lj5/i;->a:Ljava/util/Map;

    invoke-static {p1, v1}, Lj5/i;->g(Li5/c0;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2, p0, v0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, v3, p0}, Lj5/m;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_5
    invoke-interface {p1}, Li5/c0;->L0()[Li5/i0;

    move-result-object v0

    if-eqz v0, :cond_8

    array-length v3, v0

    :goto_0
    if-ge v1, v3, :cond_7

    aget-object v4, v0, v1

    invoke-static {v4}, Lorg/apache/xmlbeans/impl/values/k;->getIntValue(Lorg/apache/xmlbeans/XmlObject;)I

    move-result v4

    if-ne p0, v4, :cond_6

    return-void

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

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

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/k;->_schemaType:Li5/c0;

    return-object p0
.end method

.method public set_int(I)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->_validateOnSet()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/k;->_schemaType:Li5/c0;

    sget-object v1, Lorg/apache/xmlbeans/impl/values/h2;->_voorVc:Lj5/m;

    invoke-static {p1, v0, v1}, Lorg/apache/xmlbeans/impl/values/k;->validateValue(ILi5/c0;Lj5/m;)V

    :cond_0
    invoke-super {p0, p1}, Lorg/apache/xmlbeans/impl/values/j;->set_int(I)V

    return-void
.end method

.method public set_text(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    invoke-static {p1}, Ln5/f;->d(Ljava/lang/CharSequence;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->_validateOnSet()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/values/k;->_schemaType:Li5/c0;

    sget-object v2, Lorg/apache/xmlbeans/impl/values/h2;->_voorVc:Lj5/m;

    invoke-static {v0, v1, v2}, Lorg/apache/xmlbeans/impl/values/k;->validateValue(ILi5/c0;Lj5/m;)V

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/values/k;->_schemaType:Li5/c0;

    invoke-static {p1, v1, v2}, Lorg/apache/xmlbeans/impl/values/k;->validateLexical(Ljava/lang/String;Li5/c0;Lj5/m;)V

    :cond_0
    invoke-super {p0, v0}, Lorg/apache/xmlbeans/impl/values/j;->set_int(I)V

    return-void

    :catch_0
    new-instance p0, Lorg/apache/xmlbeans/impl/values/x2;

    const-string v0, "int"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/values/x2;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0
.end method

.method public validate_simpleval(Ljava/lang/String;Lj5/m;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/k;->schemaType()Li5/c0;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lorg/apache/xmlbeans/impl/values/k;->validateLexical(Ljava/lang/String;Li5/c0;Lj5/m;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/j;->getIntValue()I

    move-result p1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/k;->schemaType()Li5/c0;

    move-result-object p0

    invoke-static {p1, p0, p2}, Lorg/apache/xmlbeans/impl/values/k;->validateValue(ILi5/c0;Lj5/m;)V

    return-void
.end method
