.class public Lorg/apache/ftpserver/usermanager/ClearTextPasswordEncryptor;
.super Ljava/lang/Object;
.source "ClearTextPasswordEncryptor.java"

# interfaces
.implements Lorg/apache/ftpserver/usermanager/PasswordEncryptor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .line 36
    return-object p1
.end method

.method public matches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "passwordToCheck"    # Ljava/lang/String;
    .param p2, "storedPassword"    # Ljava/lang/String;

    .line 43
    if-eqz p2, :cond_1

    .line 46
    if-eqz p1, :cond_0

    .line 50
    invoke-static {p1, p2}, Lorg/apache/ftpserver/util/PasswordUtil;->secureCompareFast(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 47
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "passwordToCheck can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "storedPassword can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
