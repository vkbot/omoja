.class public abstract Lorg/apache/xmlbeans/impl/values/q;
.super Lorg/apache/xmlbeans/impl/values/p;
.source "SourceFile"


# instance fields
.field private final _schemaType:Li5/c0;


# direct methods
.method public constructor <init>(Li5/c0;Z)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/p;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/values/q;->_schemaType:Li5/c0;

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Lorg/apache/xmlbeans/impl/values/h2;->initComplexType(ZZ)V

    return-void
.end method

.method private static getLongValue(Lorg/apache/xmlbeans/XmlObject;)J
    .locals 3

    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlObject;->schemaType()Li5/c0;

    move-result-object v0

    invoke-interface {v0}, Li5/c0;->z0()I

    move-result v1

    const/16 v2, 0x40

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad facet type: "

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

    invoke-virtual {p0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v0

    return-wide v0

    :pswitch_1
    check-cast p0, Lorg/apache/xmlbeans/impl/values/h2;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->getBigIntegerValue()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    check-cast p0, Lorg/apache/xmlbeans/impl/values/h2;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->getLongValue()J

    move-result-wide v0

    return-wide v0

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

    const-string v0, "long"

    filled-new-array {v0, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "cvc-datatype-valid.1.1"

    invoke-interface {p2, p1, p0}, Lj5/m;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static validateValue(JLi5/c0;Lj5/m;)V
    .locals 7

    const/4 v0, 0x7

    invoke-interface {p2, v0}, Li5/c0;->N0(I)Li5/i0;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/values/q;->getLongValue(Lorg/apache/xmlbeans/XmlObject;)J

    move-result-wide v2

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2d

    if-ne v5, v6, :cond_0

    add-int/lit8 v4, v4, -0x1

    :cond_0
    int-to-long v5, v4

    cmp-long v5, v5, v2

    if-lez v5, :cond_1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    sget-object v1, Lj5/i;->a:Ljava/util/Map;

    invoke-static {p2, v1}, Lj5/i;->g(Li5/c0;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p0, v0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "cvc-totalDigits-valid"

    invoke-interface {p3, p1, p0}, Lj5/m;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    const/4 v0, 0x3

    invoke-interface {p2, v0}, Li5/c0;->N0(I)Li5/i0;

    move-result-object v0

    const-string v2, "long"

    if-eqz v0, :cond_2

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/values/q;->getLongValue(Lorg/apache/xmlbeans/XmlObject;)J

    move-result-wide v3

    cmp-long v0, p0, v3

    if-gtz v0, :cond_2

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    sget-object v0, Lj5/i;->a:Ljava/util/Map;

    invoke-static {p2, v0}, Lj5/i;->g(Li5/c0;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    filled-new-array {v2, p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "cvc-minExclusive-valid"

    invoke-interface {p3, p1, p0}, Lj5/m;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    const/4 v0, 0x4

    invoke-interface {p2, v0}, Li5/c0;->N0(I)Li5/i0;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/values/q;->getLongValue(Lorg/apache/xmlbeans/XmlObject;)J

    move-result-wide v3

    cmp-long v0, p0, v3

    if-gez v0, :cond_3

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    sget-object v0, Lj5/i;->a:Ljava/util/Map;

    invoke-static {p2, v0}, Lj5/i;->g(Li5/c0;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    filled-new-array {v2, p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "cvc-minInclusive-valid"

    invoke-interface {p3, p1, p0}, Lj5/m;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_3
    const/4 v0, 0x5

    invoke-interface {p2, v0}, Li5/c0;->N0(I)Li5/i0;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/values/q;->getLongValue(Lorg/apache/xmlbeans/XmlObject;)J

    move-result-wide v3

    cmp-long v0, p0, v3

    if-lez v0, :cond_4

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    sget-object v0, Lj5/i;->a:Ljava/util/Map;

    invoke-static {p2, v0}, Lj5/i;->g(Li5/c0;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    filled-new-array {v2, p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "cvc-maxInclusive-valid"

    invoke-interface {p3, p1, p0}, Lj5/m;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_4
    const/4 v0, 0x6

    invoke-interface {p2, v0}, Li5/c0;->N0(I)Li5/i0;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/values/q;->getLongValue(Lorg/apache/xmlbeans/XmlObject;)J

    move-result-wide v3

    cmp-long v0, p0, v3

    if-ltz v0, :cond_5

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    sget-object v0, Lj5/i;->a:Ljava/util/Map;

    invoke-static {p2, v0}, Lj5/i;->g(Li5/c0;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    filled-new-array {v2, p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "cvc-maxExclusive-valid"

    invoke-interface {p3, p1, p0}, Lj5/m;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_5
    invoke-interface {p2}, Li5/c0;->L0()[Li5/i0;

    move-result-object v0

    if-eqz v0, :cond_8

    array-length v3, v0

    :goto_0
    if-ge v1, v3, :cond_7

    aget-object v4, v0, v1

    invoke-static {v4}, Lorg/apache/xmlbeans/impl/values/q;->getLongValue(Lorg/apache/xmlbeans/XmlObject;)J

    move-result-wide v4

    cmp-long v4, p0, v4

    if-nez v4, :cond_6

    return-void

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    sget-object p1, Lj5/i;->a:Ljava/util/Map;

    invoke-static {p2, p1}, Lj5/i;->g(Li5/c0;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "cvc-enumeration-valid"

    invoke-interface {p3, p1, p0}, Lj5/m;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    return-void
.end method


# virtual methods
.method public schemaType()Li5/c0;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/q;->_schemaType:Li5/c0;

    return-object p0
.end method

.method public set_long(J)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->_validateOnSet()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/q;->_schemaType:Li5/c0;

    sget-object v1, Lorg/apache/xmlbeans/impl/values/h2;->_voorVc:Lj5/m;

    invoke-static {p1, p2, v0, v1}, Lorg/apache/xmlbeans/impl/values/q;->validateValue(JLi5/c0;Lj5/m;)V

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/apache/xmlbeans/impl/values/p;->set_long(J)V

    return-void
.end method

.method public set_text(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    sget-object v0, Ln5/f;->a:[Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->_validateOnSet()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/values/q;->_schemaType:Li5/c0;

    sget-object v3, Lorg/apache/xmlbeans/impl/values/h2;->_voorVc:Lj5/m;

    invoke-static {v0, v1, v2, v3}, Lorg/apache/xmlbeans/impl/values/q;->validateValue(JLi5/c0;Lj5/m;)V

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/values/q;->_schemaType:Li5/c0;

    invoke-static {p1, v2, v3}, Lorg/apache/xmlbeans/impl/values/q;->validateLexical(Ljava/lang/String;Li5/c0;Lj5/m;)V

    :cond_1
    invoke-super {p0, v0, v1}, Lorg/apache/xmlbeans/impl/values/p;->set_long(J)V

    return-void

    :catch_0
    new-instance p0, Lorg/apache/xmlbeans/impl/values/x2;

    const-string v0, "long"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/values/x2;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0
.end method

.method public validate_simpleval(Ljava/lang/String;Lj5/m;)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/q;->schemaType()Li5/c0;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lorg/apache/xmlbeans/impl/values/q;->validateLexical(Ljava/lang/String;Li5/c0;Lj5/m;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/p;->getLongValue()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/q;->schemaType()Li5/c0;

    move-result-object p0

    invoke-static {v0, v1, p0, p2}, Lorg/apache/xmlbeans/impl/values/q;->validateValue(JLi5/c0;Lj5/m;)V

    return-void
.end method
