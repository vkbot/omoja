.class public Lorg/apache/ftpserver/usermanager/SaltedPasswordEncryptor;
.super Ljava/lang/Object;
.source "SaltedPasswordEncryptor.java"

# interfaces
.implements Lorg/apache/ftpserver/usermanager/PasswordEncryptor;


# static fields
.field private static final HASH_ITERATIONS:I = 0x3e8

.field private static final MAX_SEED:I = 0x5f5e0ff


# instance fields
.field private rnd:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/apache/ftpserver/usermanager/SaltedPasswordEncryptor;->rnd:Ljava/security/SecureRandom;

    return-void
.end method

.method private encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "salt"    # Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "hash":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x3e8

    if-ge v1, v2, :cond_0

    .line 47
    invoke-static {v0}, Lorg/apache/ftpserver/util/EncryptUtils;->encryptMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 49
    .end local v1    # "i":I
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "password"    # Ljava/lang/String;

    .line 57
    iget-object v0, p0, Lorg/apache/ftpserver/usermanager/SaltedPasswordEncryptor;->rnd:Ljava/security/SecureRandom;

    const v1, 0x5f5e0ff

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "seed":Ljava/lang/String;
    invoke-direct {p0, p1, v0}, Lorg/apache/ftpserver/usermanager/SaltedPasswordEncryptor;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public matches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "passwordToCheck"    # Ljava/lang/String;
    .param p2, "storedPassword"    # Ljava/lang/String;

    .line 66
    if-eqz p2, :cond_2

    .line 69
    if-eqz p1, :cond_1

    .line 74
    const/16 v0, 0x3a

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 76
    .local v0, "divider":I
    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 80
    const/4 v1, 0x0

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, "storedSalt":Ljava/lang/String;
    invoke-direct {p0, p1, v1}, Lorg/apache/ftpserver/usermanager/SaltedPasswordEncryptor;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 83
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 82
    invoke-static {v2, v3}, Lorg/apache/ftpserver/util/PasswordUtil;->secureCompareFast(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    return v2

    .line 77
    .end local v1    # "storedSalt":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "stored password does not contain salt"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 70
    .end local v0    # "divider":I
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "passwordToCheck can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "storedPassword can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
