.class public abstract Lorg/apache/xmlbeans/impl/values/a;
.super Lorg/apache/xmlbeans/impl/values/h2;
.source "SourceFile"


# static fields
.field public static final y:Ljava/security/MessageDigest;


# instance fields
.field public c:[B

.field public r:Z

.field public x:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/values/a;->y:Ljava/security/MessageDigest;
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

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/values/a;->r:Z

    iput v0, p0, Lorg/apache/xmlbeans/impl/values/a;->x:I

    return-void
.end method

.method public static lex(Ljava/lang/String;Lj5/m;)[B
    .locals 1

    :try_start_0
    invoke-static {}, Ljava/util/Base64;->getMimeDecoder()Ljava/util/Base64$Decoder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "not encoded properly"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "base64Binary"

    invoke-interface {p1, v0, p0}, Lj5/m;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static validateLexical(Ljava/lang/String;Li5/c0;Lj5/m;)[B
    .locals 2

    invoke-static {p0, p2}, Lorg/apache/xmlbeans/impl/values/a;->lex(Ljava/lang/String;Lj5/m;)[B

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {p1, p0}, Li5/c0;->P0(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lj5/i;->a:Ljava/util/Map;

    invoke-static {p1, p0}, Lj5/i;->g(Li5/c0;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "base 64"

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "cvc-datatype-valid.1.1b"

    invoke-interface {p2, p1, p0}, Lj5/m;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_1
    return-object v0
.end method


# virtual methods
.method public final compute_text(Lorg/apache/xmlbeans/impl/values/y;)Ljava/lang/String;
    .locals 0

    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object p1

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/a;->c:[B

    invoke-virtual {p1, p0}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final equal_to(Lorg/apache/xmlbeans/XmlObject;)Z
    .locals 0

    check-cast p1, Li5/k0;

    invoke-interface {p1}, Li5/k0;->getByteArrayValue()[B

    move-result-object p1

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/a;->c:[B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method

.method public final getByteArrayValue()[B
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_dated()V

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/a;->c:[B

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

    sget-object p0, Lorg/apache/xmlbeans/impl/schema/a;->r:Lorg/apache/xmlbeans/impl/schema/r;

    return-object p0
.end method

.method public set_ByteArray([B)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/values/a;->r:Z

    array-length v1, p1

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/values/a;->c:[B

    array-length p0, p1

    invoke-static {p1, v0, v1, v0, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final set_nil()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/values/a;->r:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/values/a;->c:[B

    return-void
.end method

.method public set_text(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/values/a;->r:Z

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->_validateOnSet()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/a;->schemaType()Li5/c0;

    move-result-object v0

    sget-object v1, Lorg/apache/xmlbeans/impl/values/h2;->_voorVc:Lj5/m;

    invoke-static {p1, v0, v1}, Lorg/apache/xmlbeans/impl/values/a;->validateLexical(Ljava/lang/String;Li5/c0;Lj5/m;)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/values/a;->c:[B

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/xmlbeans/impl/values/h2;->_voorVc:Lj5/m;

    invoke-static {p1, v0}, Lorg/apache/xmlbeans/impl/values/a;->lex(Ljava/lang/String;Lj5/m;)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/values/a;->c:[B

    :goto_0
    return-void
.end method

.method public final value_hash_code()I
    .locals 4

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/values/a;->r:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lorg/apache/xmlbeans/impl/values/a;->x:I

    return p0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/values/a;->r:Z

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/values/a;->c:[B

    const/4 v2, 0x0

    if-nez v1, :cond_1

    iput v2, p0, Lorg/apache/xmlbeans/impl/values/a;->x:I

    return v2

    :cond_1
    sget-object v3, Lorg/apache/xmlbeans/impl/values/a;->y:Ljava/security/MessageDigest;

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

    iput v0, p0, Lorg/apache/xmlbeans/impl/values/a;->x:I

    return v0
.end method
