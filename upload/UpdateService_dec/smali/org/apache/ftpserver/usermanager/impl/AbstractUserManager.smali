.class public abstract Lorg/apache/ftpserver/usermanager/impl/AbstractUserManager;
.super Ljava/lang/Object;
.source "AbstractUserManager.java"

# interfaces
.implements Lorg/apache/ftpserver/ftplet/UserManager;


# static fields
.field public static final ATTR_ENABLE:Ljava/lang/String; = "enableflag"

.field public static final ATTR_HOME:Ljava/lang/String; = "homedirectory"

.field public static final ATTR_LOGIN:Ljava/lang/String; = "userid"

.field public static final ATTR_MAX_DOWNLOAD_RATE:Ljava/lang/String; = "downloadrate"

.field public static final ATTR_MAX_IDLE_TIME:Ljava/lang/String; = "idletime"

.field public static final ATTR_MAX_LOGIN_NUMBER:Ljava/lang/String; = "maxloginnumber"

.field public static final ATTR_MAX_LOGIN_PER_IP:Ljava/lang/String; = "maxloginperip"

.field public static final ATTR_MAX_UPLOAD_RATE:Ljava/lang/String; = "uploadrate"

.field public static final ATTR_PASSWORD:Ljava/lang/String; = "userpassword"

.field public static final ATTR_WRITE_PERM:Ljava/lang/String; = "writepermission"


# instance fields
.field private final adminName:Ljava/lang/String;

.field private final passwordEncryptor:Lorg/apache/ftpserver/usermanager/PasswordEncryptor;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 61
    new-instance v0, Lorg/apache/ftpserver/usermanager/Md5PasswordEncryptor;

    invoke-direct {v0}, Lorg/apache/ftpserver/usermanager/Md5PasswordEncryptor;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lorg/apache/ftpserver/usermanager/impl/AbstractUserManager;-><init>(Ljava/lang/String;Lorg/apache/ftpserver/usermanager/PasswordEncryptor;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/ftpserver/usermanager/PasswordEncryptor;)V
    .locals 0
    .param p1, "adminName"    # Ljava/lang/String;
    .param p2, "passwordEncryptor"    # Lorg/apache/ftpserver/usermanager/PasswordEncryptor;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lorg/apache/ftpserver/usermanager/impl/AbstractUserManager;->adminName:Ljava/lang/String;

    .line 69
    iput-object p2, p0, Lorg/apache/ftpserver/usermanager/impl/AbstractUserManager;->passwordEncryptor:Lorg/apache/ftpserver/usermanager/PasswordEncryptor;

    .line 70
    return-void
.end method


# virtual methods
.method public getAdminName()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/apache/ftpserver/usermanager/impl/AbstractUserManager;->adminName:Ljava/lang/String;

    return-object v0
.end method

.method public getPasswordEncryptor()Lorg/apache/ftpserver/usermanager/PasswordEncryptor;
    .locals 1

    .line 93
    iget-object v0, p0, Lorg/apache/ftpserver/usermanager/impl/AbstractUserManager;->passwordEncryptor:Lorg/apache/ftpserver/usermanager/PasswordEncryptor;

    return-object v0
.end method

.method public isAdmin(Ljava/lang/String;)Z
    .locals 1
    .param p1, "login"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ftpserver/ftplet/FtpException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lorg/apache/ftpserver/usermanager/impl/AbstractUserManager;->adminName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
