.class public final Lorg/apache/xmlbeans/impl/values/i0;
.super Lorg/apache/xmlbeans/impl/values/w;
.source "SourceFile"

# interfaces
.implements Li5/j0;


# instance fields
.field public final r:Li5/c0;


# direct methods
.method public constructor <init>(Li5/c0;Z)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/values/i0;->r:Li5/c0;

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Lorg/apache/xmlbeans/impl/values/h2;->initComplexType(ZZ)V

    return-void
.end method

.method public static validateLexical(Ljava/lang/String;Li5/c0;Lj5/m;)V
    .locals 5

    const-string v0, "##"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "anyURI"

    if-eqz v0, :cond_0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v1, v0}, Lj5/m;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-interface {p1}, Li5/c0;->L0()[Li5/i0;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    move v3, v2

    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_2

    aget-object v4, v0, v3

    check-cast v4, Li5/g0;

    invoke-interface {v4}, Li5/g0;->getStringValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    array-length v0, v0

    if-lt v3, v0, :cond_3

    sget-object v0, Lj5/i;->a:Ljava/util/Map;

    invoke-static {p1, v0}, Lj5/i;->g(Li5/c0;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v1, p0, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "cvc-enumeration-valid"

    invoke-interface {p2, v3, v0}, Lj5/m;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    invoke-interface {p1}, Li5/c0;->o0()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1, p0}, Li5/c0;->P0(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lj5/i;->a:Ljava/util/Map;

    invoke-static {p1, v0}, Lj5/i;->g(Li5/c0;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v1, p0, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "cvc-datatype-valid.1.1"

    invoke-interface {p2, v3, v0}, Lj5/m;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    invoke-interface {p1, v2}, Li5/c0;->N0(I)Li5/i0;

    move-result-object v0

    if-eqz v0, :cond_5

    check-cast v0, Li5/g0;

    invoke-interface {v0}, Li5/g0;->getBigIntegerValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v0, v2, :cond_5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v2, Lj5/i;->a:Ljava/util/Map;

    invoke-static {p1, v2}, Lj5/i;->g(Li5/c0;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, p0, v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "cvc-length-valid.1.1"

    invoke-interface {p2, v2, v0}, Lj5/m;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Li5/c0;->N0(I)Li5/i0;

    move-result-object v0

    if-eqz v0, :cond_6

    check-cast v0, Li5/g0;

    invoke-interface {v0}, Li5/g0;->getBigIntegerValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v0, v2, :cond_6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v2, Lj5/i;->a:Ljava/util/Map;

    invoke-static {p1, v2}, Lj5/i;->g(Li5/c0;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, p0, v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "cvc-minLength-valid.1.1"

    invoke-interface {p2, v2, v0}, Lj5/m;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Li5/c0;->N0(I)Li5/i0;

    move-result-object v0

    if-eqz v0, :cond_7

    check-cast v0, Li5/g0;

    invoke-interface {v0}, Li5/g0;->getBigIntegerValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v2, Lj5/i;->a:Ljava/util/Map;

    invoke-static {p1, v2}, Lj5/i;->g(Li5/c0;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v1, p0, v0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "cvc-maxLength-valid.1.1"

    invoke-interface {p2, p1, p0}, Lj5/m;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    return-void
.end method


# virtual methods
.method public final get_wscanon_rule()I
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/i0;->r:Li5/c0;

    invoke-interface {p0}, Li5/c0;->K0()I

    move-result p0

    return p0
.end method

.method public final schemaType()Li5/c0;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/i0;->r:Li5/c0;

    return-object p0
.end method

.method public final set_text(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->_validateOnSet()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/values/i0;->r:Li5/c0;

    invoke-interface {v2, v0}, Li5/c0;->N0(I)Li5/i0;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Li5/g0;

    invoke-interface {v0}, Li5/g0;->getBigIntegerValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    if-eq v1, v0, :cond_3

    :cond_1
    const/4 v0, 0x1

    invoke-interface {v2, v0}, Li5/c0;->N0(I)Li5/i0;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Li5/g0;

    invoke-interface {v0}, Li5/g0;->getBigIntegerValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    if-lt v1, v0, :cond_3

    :cond_2
    const/4 v0, 0x2

    invoke-interface {v2, v0}, Li5/c0;->N0(I)Li5/i0;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast v0, Li5/g0;

    invoke-interface {v0}, Li5/g0;->getBigIntegerValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    if-gt v1, v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Lorg/apache/xmlbeans/impl/values/x2;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_4
    :goto_1
    invoke-interface {v2, p1}, Li5/c0;->P0(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    new-instance p0, Lorg/apache/xmlbeans/impl/values/x2;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_6
    :goto_2
    invoke-super {p0, p1}, Lorg/apache/xmlbeans/impl/values/w;->set_text(Ljava/lang/String;)V

    return-void
.end method

.method public final validate_simpleval(Ljava/lang/String;Lj5/m;)V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->getStringValue()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/i0;->r:Li5/c0;

    invoke-static {p1, p0, p2}, Lorg/apache/xmlbeans/impl/values/i0;->validateLexical(Ljava/lang/String;Li5/c0;Lj5/m;)V

    return-void
.end method
