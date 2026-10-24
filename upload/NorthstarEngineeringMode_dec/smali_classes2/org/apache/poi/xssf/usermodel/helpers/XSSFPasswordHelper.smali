.class public final Lorg/apache/poi/xssf/usermodel/helpers/XSSFPasswordHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
    since = "3.15 beta 3"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAttrName(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;
    .locals 2

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljavax/xml/namespace/QName;

    invoke-static {p0}, Landroidx/activity/result/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/util/StringUtil;->toUpperCase(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_1
    :goto_0
    new-instance p0, Ljavax/xml/namespace/QName;

    invoke-direct {p0, p1}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public static setPassword(Lorg/apache/xmlbeans/XmlObject;Ljava/lang/String;Lorg/apache/poi/poifs/crypt/HashAlgorithm;Ljava/lang/String;)V
    .locals 7

    invoke-interface {p0}, Li5/j2;->newCursor()Li5/p0;

    move-result-object p0

    const-string v0, "spinCount"

    const-string v1, "saltValue"

    const-string v2, "hashValue"

    const-string v3, "algorithmName"

    const-string v4, "password"

    if-nez p1, :cond_0

    :try_start_0
    invoke-static {p3, v4}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFPasswordHelper;->getAttrName(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object p1

    invoke-interface {p0, p1}, Li5/p0;->g0(Ljavax/xml/namespace/QName;)Z

    invoke-static {p3, v3}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFPasswordHelper;->getAttrName(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object p1

    invoke-interface {p0, p1}, Li5/p0;->g0(Ljavax/xml/namespace/QName;)Z

    invoke-static {p3, v2}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFPasswordHelper;->getAttrName(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object p1

    invoke-interface {p0, p1}, Li5/p0;->g0(Ljavax/xml/namespace/QName;)Z

    invoke-static {p3, v1}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFPasswordHelper;->getAttrName(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object p1

    invoke-interface {p0, p1}, Li5/p0;->g0(Ljavax/xml/namespace/QName;)Z

    invoke-static {p3, v0}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFPasswordHelper;->getAttrName(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object p1

    invoke-interface {p0, p1}, Li5/p0;->g0(Ljavax/xml/namespace/QName;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p0}, Li5/p0;->close()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :try_start_1
    invoke-interface {p0}, Li5/p0;->m0()Li5/p0$a;

    const/4 v5, 0x0

    if-nez p2, :cond_1

    invoke-static {p1}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->createXorVerifier1(Ljava/lang/String;)I

    move-result p1

    invoke-static {p3, v4}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFPasswordHelper;->getAttrName(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object p2

    sget-object p3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v0, "%04X"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v5

    invoke-static {p3, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Li5/p0;->m(Ljava/lang/String;Ljavax/xml/namespace/QName;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lorg/apache/poi/util/RandomSingleton;->getInstance()Ljava/security/SecureRandom;

    move-result-object v4

    const/16 v6, 0x10

    invoke-virtual {v4, v6}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object v4

    const v6, 0x186a0

    invoke-static {p1, p2, v4, v6, v5}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->hashPassword(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/HashAlgorithm;[BIZ)[B

    move-result-object p1

    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object v5

    invoke-static {p3, v3}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFPasswordHelper;->getAttrName(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v3

    iget-object p2, p2, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->jceId:Ljava/lang/String;

    invoke-interface {p0, p2, v3}, Li5/p0;->m(Ljava/lang/String;Ljavax/xml/namespace/QName;)V

    invoke-static {p3, v2}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFPasswordHelper;->getAttrName(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object p2

    invoke-virtual {v5, p1}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Li5/p0;->m(Ljava/lang/String;Ljavax/xml/namespace/QName;)V

    invoke-static {p3, v1}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFPasswordHelper;->getAttrName(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object p1

    invoke-virtual {v5, v4}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2, p1}, Li5/p0;->m(Ljava/lang/String;Ljavax/xml/namespace/QName;)V

    invoke-static {p3, v0}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFPasswordHelper;->getAttrName(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object p1

    const-string p2, "100000"

    invoke-interface {p0, p2, p1}, Li5/p0;->m(Ljava/lang/String;Ljavax/xml/namespace/QName;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-interface {p0}, Li5/p0;->close()V

    return-void

    :goto_1
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz p0, :cond_2

    :try_start_3
    invoke-interface {p0}, Li5/p0;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    throw p2
.end method

.method public static validatePassword(Lorg/apache/xmlbeans/XmlObject;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-interface {p0}, Li5/j2;->newCursor()Li5/p0;

    move-result-object p0

    :try_start_0
    const-string v1, "password"

    invoke-static {p2, v1}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFPasswordHelper;->getAttrName(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v1

    invoke-interface {p0, v1}, Li5/p0;->V(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "algorithmName"

    invoke-static {p2, v2}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFPasswordHelper;->getAttrName(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-interface {p0, v2}, Li5/p0;->V(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "hashValue"

    invoke-static {p2, v3}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFPasswordHelper;->getAttrName(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v3

    invoke-interface {p0, v3}, Li5/p0;->V(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "saltValue"

    invoke-static {p2, v4}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFPasswordHelper;->getAttrName(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v4

    invoke-interface {p0, v4}, Li5/p0;->V(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "spinCount"

    invoke-static {p2, v5}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFPasswordHelper;->getAttrName(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object p2

    invoke-interface {p0, p2}, Li5/p0;->V(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object p2

    if-eqz v1, :cond_2

    const/16 p2, 0x10

    invoke-static {v1, p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p2

    invoke-static {p1}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->createXorVerifier1(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p2, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-interface {p0}, Li5/p0;->close()V

    return v0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    if-eqz v3, :cond_4

    if-eqz v2, :cond_4

    if-eqz v4, :cond_4

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v2}, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->fromString(Ljava/lang/String;)Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v2

    invoke-virtual {v1, v4}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {p1, v2, v1, p2, v0}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->hashPassword(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/HashAlgorithm;[BIZ)[B

    move-result-object p1

    invoke-static {v3, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {p0}, Li5/p0;->close()V

    return p1

    :cond_4
    :goto_0
    invoke-interface {p0}, Li5/p0;->close()V

    return v0

    :goto_1
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz p0, :cond_5

    :try_start_3
    invoke-interface {p0}, Li5/p0;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    throw p2
.end method
