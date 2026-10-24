.class public abstract Lorg/apache/xmlbeans/impl/values/i;
.super Lorg/apache/xmlbeans/impl/values/h;
.source "SourceFile"


# instance fields
.field private final _schemaType:Li5/c0;


# direct methods
.method public constructor <init>(Li5/c0;Z)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/values/i;->_schemaType:Li5/c0;

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Lorg/apache/xmlbeans/impl/values/h2;->initComplexType(ZZ)V

    return-void
.end method

.method public static validateValue([BLi5/c0;Lj5/m;)V
    .locals 8

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Li5/c0;->N0(I)Li5/i0;

    move-result-object v1

    const-string v2, "hexBinary"

    if-eqz v1, :cond_0

    check-cast v1, Lorg/apache/xmlbeans/impl/values/h2;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/values/h2;->getBigIntegerValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    array-length v3, p0

    if-eq v1, v3, :cond_0

    array-length v3, p0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v4, Lj5/i;->a:Ljava/util/Map;

    invoke-static {p1, v4}, Lj5/i;->g(Li5/c0;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v2, v3, v1, v4}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "cvc-length-valid.1.2"

    invoke-interface {p2, v3, v1}, Lj5/m;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Li5/c0;->N0(I)Li5/i0;

    move-result-object v1

    if-eqz v1, :cond_1

    check-cast v1, Lorg/apache/xmlbeans/impl/values/h2;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/values/h2;->getBigIntegerValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    array-length v3, p0

    if-le v1, v3, :cond_1

    array-length v3, p0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v4, Lj5/i;->a:Ljava/util/Map;

    invoke-static {p1, v4}, Lj5/i;->g(Li5/c0;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v2, v3, v1, v4}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "cvc-minLength-valid.1.2"

    invoke-interface {p2, v3, v1}, Lj5/m;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Li5/c0;->N0(I)Li5/i0;

    move-result-object v1

    if-eqz v1, :cond_2

    check-cast v1, Lorg/apache/xmlbeans/impl/values/h2;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/values/h2;->getBigIntegerValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    array-length v3, p0

    if-ge v1, v3, :cond_2

    array-length v3, p0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v4, Lj5/i;->a:Ljava/util/Map;

    invoke-static {p1, v4}, Lj5/i;->g(Li5/c0;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v2, v3, v1, v4}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "cvc-maxLength-valid.1.2"

    invoke-interface {p2, v3, v1}, Lj5/m;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    invoke-interface {p1}, Li5/c0;->L0()[Li5/i0;

    move-result-object v1

    if-eqz v1, :cond_6

    move v3, v0

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_5

    aget-object v4, v1, v3

    check-cast v4, Lorg/apache/xmlbeans/impl/values/h2;

    invoke-virtual {v4}, Lorg/apache/xmlbeans/impl/values/h2;->getByteArrayValue()[B

    move-result-object v4

    array-length v5, v4

    array-length v6, p0

    if-eq v5, v6, :cond_3

    goto :goto_2

    :cond_3
    move v5, v0

    :goto_1
    array-length v6, v4

    if-ge v5, v6, :cond_5

    aget-byte v6, v4, v5

    aget-byte v7, p0, v5

    if-eq v6, v7, :cond_4

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    array-length p0, v1

    if-lt v3, p0, :cond_6

    sget-object p0, Lj5/i;->a:Ljava/util/Map;

    invoke-static {p1, p0}, Lj5/i;->g(Li5/c0;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "cvc-enumeration-valid.b"

    invoke-interface {p2, p1, p0}, Lj5/m;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    return-void
.end method


# virtual methods
.method public get_wscanon_rule()I
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/i;->schemaType()Li5/c0;

    move-result-object p0

    invoke-interface {p0}, Li5/c0;->K0()I

    move-result p0

    return p0
.end method

.method public schemaType()Li5/c0;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/i;->_schemaType:Li5/c0;

    return-object p0
.end method

.method public set_ByteArray([B)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->_validateOnSet()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/i;->schemaType()Li5/c0;

    move-result-object v0

    sget-object v1, Lorg/apache/xmlbeans/impl/values/h2;->_voorVc:Lj5/m;

    invoke-static {p1, v0, v1}, Lorg/apache/xmlbeans/impl/values/i;->validateValue([BLi5/c0;Lj5/m;)V

    :cond_0
    invoke-super {p0, p1}, Lorg/apache/xmlbeans/impl/values/h;->set_ByteArray([B)V

    return-void
.end method

.method public set_text(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->_validateOnSet()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/i;->schemaType()Li5/c0;

    move-result-object v0

    sget-object v1, Lorg/apache/xmlbeans/impl/values/h2;->_voorVc:Lj5/m;

    invoke-static {p1, v0, v1}, Lorg/apache/xmlbeans/impl/values/h;->validateLexical(Ljava/lang/String;Li5/c0;Lj5/m;)[B

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/xmlbeans/impl/values/h2;->_voorVc:Lj5/m;

    invoke-static {p1, v0}, Lorg/apache/xmlbeans/impl/values/h;->lex(Ljava/lang/String;Lj5/m;)[B

    move-result-object p1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->_validateOnSet()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/i;->schemaType()Li5/c0;

    move-result-object v0

    sget-object v1, Lorg/apache/xmlbeans/impl/values/h2;->_voorVc:Lj5/m;

    invoke-static {p1, v0, v1}, Lorg/apache/xmlbeans/impl/values/i;->validateValue([BLi5/c0;Lj5/m;)V

    :cond_1
    if-eqz p1, :cond_2

    invoke-super {p0, p1}, Lorg/apache/xmlbeans/impl/values/h;->set_ByteArray([B)V

    :cond_2
    iput-object p1, p0, Lorg/apache/xmlbeans/impl/values/h;->_value:[B

    return-void
.end method

.method public validate_simpleval(Ljava/lang/String;Lj5/m;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/i;->schemaType()Li5/c0;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lorg/apache/xmlbeans/impl/values/h;->validateLexical(Ljava/lang/String;Li5/c0;Lj5/m;)[B

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h;->getByteArrayValue()[B

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/i;->schemaType()Li5/c0;

    move-result-object p0

    invoke-static {p1, p0, p2}, Lorg/apache/xmlbeans/impl/values/i;->validateValue([BLi5/c0;Lj5/m;)V

    return-void
.end method
