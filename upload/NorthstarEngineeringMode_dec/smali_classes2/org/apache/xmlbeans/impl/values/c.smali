.class public Lorg/apache/xmlbeans/impl/values/c;
.super Lorg/apache/xmlbeans/impl/values/h2;
.source "SourceFile"


# static fields
.field public static final r:Ljava/math/BigInteger;

.field public static final x:Ljava/math/BigInteger;


# instance fields
.field public c:Ljava/math/BigDecimal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/values/c;->r:Ljava/math/BigInteger;

    const-wide/high16 v0, -0x8000000000000000L

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/values/c;->x:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;-><init>()V

    return-void
.end method

.method public static M0(Ljava/lang/String;Lj5/m;)V
    .locals 8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2b

    if-eq v3, v4, :cond_0

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_1

    :cond_0
    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    move v4, v3

    move v3, v2

    :goto_1
    const-string v5, "decimal"

    if-ge v4, v0, :cond_5

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2e

    if-ne v6, v7, :cond_3

    if-eqz v3, :cond_2

    const-string v0, "saw \'.\' more than once: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, v5, p0}, Lj5/m;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    move v3, v1

    goto :goto_2

    :cond_3
    const/16 v2, 0x30

    if-lt v6, v2, :cond_4

    const/16 v2, 0x39

    if-gt v6, v2, :cond_4

    move v2, v1

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    const-string p0, "unexpected char \'"

    const-string v0, "\'"

    invoke-static {p0, v6, v0}, La4/a;->d(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, v5, p0}, Lj5/m;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_5
    if-nez v2, :cond_6

    const-string p0, "expected at least one digit"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, v5, p0}, Lj5/m;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    return-void
.end method


# virtual methods
.method public final compare_to(Lorg/apache/xmlbeans/XmlObject;)I
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/c;->c:Ljava/math/BigDecimal;

    check-cast p1, Lorg/apache/xmlbeans/impl/values/h2;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/values/h2;->getBigDecimalValue()Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    return p0
.end method

.method public final compute_text(Lorg/apache/xmlbeans/impl/values/y;)Ljava/lang/String;
    .locals 6

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/c;->c:Ljava/math/BigDecimal;

    sget-object p1, Ln5/f;->a:[Ljava/lang/String;

    invoke-virtual {p0}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/math/BigDecimal;->scale()I

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    if-gez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p0}, Ljava/math/BigDecimal;->signum()I

    move-result p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gez p0, :cond_1

    move p0, v2

    goto :goto_0

    :cond_1
    move p0, v1

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v5

    add-int/2addr v5, v4

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    if-ne p0, v2, :cond_2

    const/16 v2, 0x2d

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    sget-object v2, Ln5/f;->c:[C

    if-lez v0, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, p0

    sub-int/2addr v0, v4

    if-ltz v0, :cond_4

    const-string v4, "0."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    array-length v4, v2

    if-le v0, v4, :cond_3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    array-length v4, v2

    sub-int/2addr v0, v4

    goto :goto_1

    :cond_3
    invoke-virtual {v3, v2, v1, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_4
    sub-int v0, p0, v0

    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x2e

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_5
    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    array-length p0, v2

    neg-int p0, p0

    if-ge v0, p0, :cond_6

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    array-length p0, v2

    add-int/2addr v0, p0

    goto :goto_2

    :cond_6
    neg-int p0, v0

    invoke-virtual {v3, v2, v1, p0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    :goto_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_7
    :goto_4
    return-object p1
.end method

.method public final equal_to(Lorg/apache/xmlbeans/XmlObject;)Z
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/c;->c:Ljava/math/BigDecimal;

    check-cast p1, Lorg/apache/xmlbeans/impl/values/h2;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/values/h2;->getBigDecimalValue()Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getBigDecimalValue()Ljava/math/BigDecimal;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_dated()V

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/c;->c:Ljava/math/BigDecimal;

    return-object p0
.end method

.method public schemaType()Li5/c0;
    .locals 0

    sget-object p0, Lorg/apache/xmlbeans/impl/schema/a;->y:Lorg/apache/xmlbeans/impl/schema/r;

    return-object p0
.end method

.method public set_BigDecimal(Ljava/math/BigDecimal;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/values/c;->c:Ljava/math/BigDecimal;

    return-void
.end method

.method public final set_nil()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/values/c;->c:Ljava/math/BigDecimal;

    return-void
.end method

.method public set_text(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->_validateOnSet()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/xmlbeans/impl/values/h2;->_voorVc:Lj5/m;

    invoke-static {p1, v0}, Lorg/apache/xmlbeans/impl/values/c;->M0(Ljava/lang/String;Lj5/m;)V

    :cond_0
    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/values/c;->set_BigDecimal(Ljava/math/BigDecimal;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p0, Lorg/apache/xmlbeans/impl/values/h2;->_voorVc:Lj5/m;

    const-string v0, "decimal"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lj5/m;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final value_hash_code()I
    .locals 6

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/c;->c:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->scale()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/c;->c:Ljava/math/BigDecimal;

    sget-object v1, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/values/c;->c:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/c;->c:Ljava/math/BigDecimal;

    invoke-virtual {p0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x30

    if-eq v1, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0

    :cond_2
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/c;->c:Ljava/math/BigDecimal;

    invoke-virtual {p0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p0

    sget-object v0, Lorg/apache/xmlbeans/impl/values/c;->r:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_4

    sget-object v0, Lorg/apache/xmlbeans/impl/values/c;->x:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    const/16 p0, 0x20

    shr-long v2, v0, p0

    const-wide/16 v4, 0x13

    mul-long/2addr v2, v4

    add-long/2addr v2, v0

    long-to-int p0, v2

    return p0

    :cond_4
    :goto_2
    invoke-virtual {p0}, Ljava/math/BigInteger;->hashCode()I

    move-result p0

    return p0
.end method
