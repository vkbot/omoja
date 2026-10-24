.class public final enum Lorg/apache/poi/poifs/crypt/CipherAlgorithm;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/poifs/crypt/CipherAlgorithm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

.field public static final enum aes128:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

.field public static final enum aes192:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

.field public static final enum aes256:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

.field public static final enum des:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

.field public static final enum des3:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

.field public static final enum des3_112:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

.field public static final enum rc2:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

.field public static final enum rc4:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

.field public static final enum rsa:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;


# instance fields
.field public final allowedKeySize:[I

.field public final blockSize:I

.field public final defaultKeySize:I

.field public final ecmaId:I

.field public final encryptedVerifierHashLength:I

.field public final jceId:Ljava/lang/String;

.field public final needsBouncyCastle:Z

.field public final provider:Lorg/apache/poi/poifs/crypt/CipherProvider;

.field public final xmlId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 41

    new-instance v12, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    const-string/jumbo v1, "rc4"

    const/4 v2, 0x0

    sget-object v3, Lorg/apache/poi/poifs/crypt/CipherProvider;->rc4:Lorg/apache/poi/poifs/crypt/CipherProvider;

    const-string v4, "RC4"

    const/16 v5, 0x6801

    const/16 v6, 0x40

    const/16 v13, 0xc

    new-array v7, v13, [I

    fill-array-data v7, :array_0

    const/4 v8, -0x1

    const/16 v9, 0x14

    const-string v10, "RC4"

    const/4 v11, 0x0

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;-><init>(Ljava/lang/String;ILorg/apache/poi/poifs/crypt/CipherProvider;Ljava/lang/String;II[IIILjava/lang/String;Z)V

    sput-object v12, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->rc4:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    new-instance v1, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    const-string v15, "aes128"

    const/16 v16, 0x1

    sget-object v0, Lorg/apache/poi/poifs/crypt/CipherProvider;->aes:Lorg/apache/poi/poifs/crypt/CipherProvider;

    const-string v18, "AES"

    const/16 v19, 0x660e

    const/16 v20, 0x80

    const/16 v2, 0x80

    filled-new-array {v2}, [I

    move-result-object v21

    const/16 v22, 0x10

    const/16 v23, 0x20

    const-string v24, "AES"

    const/16 v25, 0x0

    move-object v14, v1

    move-object/from16 v17, v0

    invoke-direct/range {v14 .. v25}, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;-><init>(Ljava/lang/String;ILorg/apache/poi/poifs/crypt/CipherProvider;Ljava/lang/String;II[IIILjava/lang/String;Z)V

    sput-object v1, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->aes128:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    new-instance v3, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    const-string v18, "aes192"

    const/16 v19, 0x2

    const-string v21, "AES"

    const/16 v22, 0x660f

    const/16 v23, 0xc0

    const/16 v4, 0xc0

    filled-new-array {v4}, [I

    move-result-object v24

    const/16 v25, 0x10

    const/16 v26, 0x20

    const-string v27, "AES"

    const/16 v28, 0x0

    move-object/from16 v17, v3

    move-object/from16 v20, v0

    invoke-direct/range {v17 .. v28}, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;-><init>(Ljava/lang/String;ILorg/apache/poi/poifs/crypt/CipherProvider;Ljava/lang/String;II[IIILjava/lang/String;Z)V

    sput-object v3, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->aes192:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    new-instance v5, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    const-string v18, "aes256"

    const/16 v19, 0x3

    const-string v21, "AES"

    const/16 v22, 0x6610

    const/16 v23, 0x100

    const/16 v6, 0x100

    filled-new-array {v6}, [I

    move-result-object v24

    const-string v27, "AES"

    move-object/from16 v17, v5

    invoke-direct/range {v17 .. v28}, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;-><init>(Ljava/lang/String;ILorg/apache/poi/poifs/crypt/CipherProvider;Ljava/lang/String;II[IIILjava/lang/String;Z)V

    sput-object v5, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->aes256:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    new-instance v6, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    const-string/jumbo v30, "rc2"

    const/16 v31, 0x4

    const/16 v32, 0x0

    const-string v33, "RC2"

    const/16 v34, -0x1

    const/16 v35, 0x80

    new-array v0, v13, [I

    fill-array-data v0, :array_1

    const/16 v37, 0x8

    const/16 v38, 0x14

    const-string v39, "RC2"

    const/16 v40, 0x0

    move-object/from16 v29, v6

    move-object/from16 v36, v0

    invoke-direct/range {v29 .. v40}, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;-><init>(Ljava/lang/String;ILorg/apache/poi/poifs/crypt/CipherProvider;Ljava/lang/String;II[IIILjava/lang/String;Z)V

    sput-object v6, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->rc2:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    new-instance v7, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    const-string v14, "des"

    const/4 v15, 0x5

    const/16 v16, 0x0

    const-string v17, "DES"

    const/16 v18, -0x1

    const/16 v19, 0x40

    const/16 v0, 0x40

    filled-new-array {v0}, [I

    move-result-object v20

    const/16 v21, 0x8

    const/16 v22, 0x20

    const-string v23, "DES"

    const/16 v24, 0x0

    move-object v13, v7

    invoke-direct/range {v13 .. v24}, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;-><init>(Ljava/lang/String;ILorg/apache/poi/poifs/crypt/CipherProvider;Ljava/lang/String;II[IIILjava/lang/String;Z)V

    sput-object v7, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->des:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    new-instance v8, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    const-string v26, "des3"

    const/16 v27, 0x6

    const/16 v28, 0x0

    const-string v29, "DESede"

    const/16 v30, -0x1

    const/16 v31, 0xc0

    filled-new-array {v4}, [I

    move-result-object v32

    const/16 v33, 0x8

    const/16 v34, 0x20

    const-string v35, "3DES"

    const/16 v36, 0x0

    move-object/from16 v25, v8

    invoke-direct/range {v25 .. v36}, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;-><init>(Ljava/lang/String;ILorg/apache/poi/poifs/crypt/CipherProvider;Ljava/lang/String;II[IIILjava/lang/String;Z)V

    sput-object v8, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->des3:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    new-instance v9, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    const-string v14, "des3_112"

    const/4 v15, 0x7

    const-string v17, "DESede"

    const/16 v19, 0x80

    filled-new-array {v2}, [I

    move-result-object v20

    const-string v23, "3DES_112"

    const/16 v24, 0x1

    move-object v13, v9

    invoke-direct/range {v13 .. v24}, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;-><init>(Ljava/lang/String;ILorg/apache/poi/poifs/crypt/CipherProvider;Ljava/lang/String;II[IIILjava/lang/String;Z)V

    sput-object v9, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->des3_112:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    new-instance v10, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    const-string/jumbo v26, "rsa"

    const/16 v27, 0x8

    const-string v29, "RSA"

    const/16 v31, 0x400

    const/16 v0, 0xc00

    const/16 v2, 0x1000

    const/16 v4, 0x400

    const/16 v11, 0x800

    filled-new-array {v4, v11, v0, v2}, [I

    move-result-object v32

    const/16 v33, -0x1

    const/16 v34, -0x1

    const-string v35, ""

    move-object/from16 v25, v10

    invoke-direct/range {v25 .. v36}, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;-><init>(Ljava/lang/String;ILorg/apache/poi/poifs/crypt/CipherProvider;Ljava/lang/String;II[IIILjava/lang/String;Z)V

    sput-object v10, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->rsa:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-object v0, v12

    move-object v2, v3

    move-object v3, v5

    move-object v4, v6

    move-object v5, v7

    move-object v6, v8

    move-object v7, v9

    move-object v8, v10

    filled-new-array/range {v0 .. v8}, [Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->$VALUES:[Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    return-void

    :array_0
    .array-data 4
        0x28
        0x30
        0x38
        0x40
        0x48
        0x50
        0x58
        0x60
        0x68
        0x70
        0x78
        0x80
    .end array-data

    :array_1
    .array-data 4
        0x28
        0x30
        0x38
        0x40
        0x48
        0x50
        0x58
        0x60
        0x68
        0x70
        0x78
        0x80
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;ILorg/apache/poi/poifs/crypt/CipherProvider;Ljava/lang/String;II[IIILjava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/poifs/crypt/CipherProvider;",
            "Ljava/lang/String;",
            "II[III",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->provider:Lorg/apache/poi/poifs/crypt/CipherProvider;

    iput-object p4, p0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->jceId:Ljava/lang/String;

    iput p5, p0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->ecmaId:I

    iput p6, p0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->defaultKeySize:I

    invoke-virtual {p7}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->allowedKeySize:[I

    iput p8, p0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->blockSize:I

    iput p9, p0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->encryptedVerifierHashLength:I

    iput-object p10, p0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->xmlId:Ljava/lang/String;

    iput-boolean p11, p0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->needsBouncyCastle:Z

    return-void
.end method

.method public static fromEcmaId(I)Lorg/apache/poi/poifs/crypt/CipherAlgorithm;
    .locals 5

    invoke-static {}, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->values()[Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->ecmaId:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/apache/poi/EncryptedDocumentException;

    const-string v1, "cipher algorithm "

    const-string v2, " not found"

    invoke-static {v1, p0, v2}, La4/a;->d(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static fromXmlId(Ljava/lang/String;I)Lorg/apache/poi/poifs/crypt/CipherAlgorithm;
    .locals 9

    invoke-static {}, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->values()[Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    iget-object v5, v4, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->xmlId:Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_2

    :cond_0
    iget-object v5, v4, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->allowedKeySize:[I

    array-length v6, v5

    move v7, v2

    :goto_1
    if-ge v7, v6, :cond_2

    aget v8, v5, v7

    if-ne v8, p1, :cond_1

    return-object v4

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    new-instance v0, Lorg/apache/poi/EncryptedDocumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cipher algorithm "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " not found"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/poifs/crypt/CipherAlgorithm;
    .locals 1

    const-class v0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/poifs/crypt/CipherAlgorithm;
    .locals 1

    sget-object v0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->$VALUES:[Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    invoke-virtual {v0}, [Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    return-object v0
.end method
