.class public abstract Lorg/apache/xmlbeans/impl/values/h;
.super Lorg/apache/xmlbeans/impl/values/h2;
.source "SourceFile"


# static fields
.field protected static final md5:Ljava/security/MessageDigest;


# instance fields
.field protected _hashcached:Z

.field protected _value:[B

.field protected hashcode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/values/h;->md5:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot find MD5 hash Algorithm"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/values/h;->_hashcached:Z

    iput v0, p0, Lorg/apache/xmlbeans/impl/values/h;->hashcode:I

    return-void
.end method

.method public static lex(Ljava/lang/String;Lj5/m;)[B
    .locals 9

    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    sget-object v0, Ln5/b;->a:[B

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    array-length v1, p0

    rem-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    div-int/lit8 v1, v1, 0x2

    new-array v2, v1, [B

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    mul-int/lit8 v4, v3, 0x2

    aget-byte v5, p0, v4

    sget-object v6, Ln5/b;->a:[B

    and-int/lit16 v7, v5, 0xff

    aget-byte v7, v6, v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_3

    add-int/lit8 v4, v4, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v7, v4, 0xff

    aget-byte v7, v6, v7

    if-eq v7, v8, :cond_3

    aget-byte v5, v6, v5

    shl-int/lit8 v5, v5, 0x4

    aget-byte v4, v6, v4

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move-object v0, v2

    :cond_3
    :goto_1
    if-nez v0, :cond_4

    const-string p0, "not encoded properly"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "hexBinary"

    invoke-interface {p1, v1, p0}, Lj5/m;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    return-object v0
.end method

.method public static validateLexical(Ljava/lang/String;Li5/c0;Lj5/m;)[B
    .locals 2

    invoke-static {p0, p2}, Lorg/apache/xmlbeans/impl/values/h;->lex(Ljava/lang/String;Lj5/m;)[B

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {p1, p0}, Li5/c0;->P0(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Hex encoded data does not match pattern for "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lj5/i;->a:Ljava/util/Map;

    invoke-static {p1, v0}, Lj5/i;->g(Li5/c0;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lj5/m;->a(Ljava/lang/String;)V

    return-object v1

    :cond_1
    return-object v0
.end method


# virtual methods
.method public compute_text(Lorg/apache/xmlbeans/impl/values/y;)Ljava/lang/String;
    .locals 1

    new-instance p1, Ljava/lang/String;

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/h;->_value:[B

    invoke-static {p0}, Ln5/b;->a([B)[B

    move-result-object p0

    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {p1, p0, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p1
.end method

.method public equal_to(Lorg/apache/xmlbeans/XmlObject;)Z
    .locals 0

    check-cast p1, Li5/h1;

    invoke-interface {p1}, Li5/h1;->getByteArrayValue()[B

    move-result-object p1

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/h;->_value:[B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method

.method public getByteArrayValue()[B
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_dated()V

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/h;->_value:[B

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    array-length v0, p0

    new-array v0, v0, [B

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public schemaType()Li5/c0;
    .locals 0

    sget-object p0, Lorg/apache/xmlbeans/impl/schema/a;->s:Lorg/apache/xmlbeans/impl/schema/r;

    return-object p0
.end method

.method public set_ByteArray([B)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/values/h;->_hashcached:Z

    array-length v1, p1

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/values/h;->_value:[B

    array-length p0, p1

    invoke-static {p1, v0, v1, v0, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public set_nil()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/values/h;->_hashcached:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/values/h;->_value:[B

    return-void
.end method

.method public set_text(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/values/h;->_hashcached:Z

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->_validateOnSet()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h;->schemaType()Li5/c0;

    move-result-object v0

    sget-object v1, Lorg/apache/xmlbeans/impl/values/h2;->_voorVc:Lj5/m;

    invoke-static {p1, v0, v1}, Lorg/apache/xmlbeans/impl/values/h;->validateLexical(Ljava/lang/String;Li5/c0;Lj5/m;)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/values/h;->_value:[B

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/xmlbeans/impl/values/h2;->_voorVc:Lj5/m;

    invoke-static {p1, v0}, Lorg/apache/xmlbeans/impl/values/h;->lex(Ljava/lang/String;Lj5/m;)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/values/h;->_value:[B

    :goto_0
    return-void
.end method

.method public value_hash_code()I
    .locals 4

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/values/h;->_hashcached:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lorg/apache/xmlbeans/impl/values/h;->hashcode:I

    return p0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/values/h;->_hashcached:Z

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/values/h;->_value:[B

    const/4 v2, 0x0

    if-nez v1, :cond_1

    iput v2, p0, Lorg/apache/xmlbeans/impl/values/h;->hashcode:I

    return v2

    :cond_1
    sget-object v3, Lorg/apache/xmlbeans/impl/values/h;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v3, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x18

    aget-byte v0, v1, v0

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v0, v2

    const/4 v2, 0x2

    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    const/4 v2, 0x3

    aget-byte v1, v1, v2

    or-int/2addr v0, v1

    iput v0, p0, Lorg/apache/xmlbeans/impl/values/h;->hashcode:I

    return v0
.end method
