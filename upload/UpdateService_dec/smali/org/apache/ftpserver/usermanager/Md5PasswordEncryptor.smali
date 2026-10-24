.class public Lorg/apache/ftpserver/usermanager/Md5PasswordEncryptor;
.super Ljava/lang/Object;
.source "Md5PasswordEncryptor.java"

# interfaces
.implements Lorg/apache/ftpserver/usermanager/PasswordEncryptor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "password"    # Ljava/lang/String;

    .line 37
    invoke-static {p1}, Lorg/apache/ftpserver/util/EncryptUtils;->encryptMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public matches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "passwordToCheck"    # Ljava/lang/String;
    .param p2, "storedPassword"    # Ljava/lang/String;

    .line 44
    if-eqz p2, :cond_1

    .line 47
    if-eqz p1, :cond_0

    .line 51
    invoke-virtual {p0, p1}, Lorg/apache/ftpserver/usermanager/Md5PasswordEncryptor;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/ftpserver/util/PasswordUtil;->secureCompareFast(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "passwordToCheck can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "storedPassword can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
