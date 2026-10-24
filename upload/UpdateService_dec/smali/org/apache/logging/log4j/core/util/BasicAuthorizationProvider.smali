.class public Lorg/apache/logging/log4j/core/util/BasicAuthorizationProvider;
.super Ljava/lang/Object;
.source "BasicAuthorizationProvider.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/util/AuthorizationProvider;


# static fields
.field private static final AUTH_PASSWORD:Ljava/lang/String; = "password"

.field private static final AUTH_PASSWORD_DECRYPTOR:Ljava/lang/String; = "passwordDecryptor"

.field private static final AUTH_USER_NAME:Ljava/lang/String; = "username"

.field public static final CONFIG_PASSWORD:Ljava/lang/String; = "log4j2.configurationPassword"

.field public static final CONFIG_USER_NAME:Ljava/lang/String; = "log4j2.configurationUserName"

.field private static LOGGER:Lorg/apache/logging/log4j/Logger; = null

.field public static final PASSWORD_DECRYPTOR:Ljava/lang/String; = "log4j2.passwordDecryptor"

.field private static final PREFIXES:[Ljava/lang/String;


# instance fields
.field private authString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 32
    const-string v0, "log4j2.config."

    const-string v1, "log4j2.Configuration."

    const-string v2, "logging.auth."

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/util/BasicAuthorizationProvider;->PREFIXES:[Ljava/lang/String;

    .line 40
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/util/BasicAuthorizationProvider;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/logging/log4j/util/PropertiesUtil;)V
    .locals 6
    .param p1, "props"    # Lorg/apache/logging/log4j/util/PropertiesUtil;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "props"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/util/BasicAuthorizationProvider;->authString:Ljava/lang/String;

    .line 45
    sget-object v0, Lorg/apache/logging/log4j/core/util/BasicAuthorizationProvider;->PREFIXES:[Ljava/lang/String;

    new-instance v1, Lorg/apache/logging/log4j/core/util/-$$Lambda$BasicAuthorizationProvider$DBvM3-ofNpKW1knTxwDdeIokuVY;

    invoke-direct {v1, p1}, Lorg/apache/logging/log4j/core/util/-$$Lambda$BasicAuthorizationProvider$DBvM3-ofNpKW1knTxwDdeIokuVY;-><init>(Lorg/apache/logging/log4j/util/PropertiesUtil;)V

    const-string v2, "username"

    invoke-virtual {p1, v0, v2, v1}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getStringProperty([Ljava/lang/String;Ljava/lang/String;Lorg/apache/logging/log4j/util/Supplier;)Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "userName":Ljava/lang/String;
    sget-object v1, Lorg/apache/logging/log4j/core/util/BasicAuthorizationProvider;->PREFIXES:[Ljava/lang/String;

    new-instance v2, Lorg/apache/logging/log4j/core/util/-$$Lambda$BasicAuthorizationProvider$CaHxaSr9K8Q9djvdSGdO2aQ9MNw;

    invoke-direct {v2, p1}, Lorg/apache/logging/log4j/core/util/-$$Lambda$BasicAuthorizationProvider$CaHxaSr9K8Q9djvdSGdO2aQ9MNw;-><init>(Lorg/apache/logging/log4j/util/PropertiesUtil;)V

    const-string v3, "password"

    invoke-virtual {p1, v1, v3, v2}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getStringProperty([Ljava/lang/String;Ljava/lang/String;Lorg/apache/logging/log4j/util/Supplier;)Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, "password":Ljava/lang/String;
    sget-object v2, Lorg/apache/logging/log4j/core/util/BasicAuthorizationProvider;->PREFIXES:[Ljava/lang/String;

    new-instance v3, Lorg/apache/logging/log4j/core/util/-$$Lambda$BasicAuthorizationProvider$O8xUWaPVIH4po5ma-XlGh_FZUL4;

    invoke-direct {v3, p1}, Lorg/apache/logging/log4j/core/util/-$$Lambda$BasicAuthorizationProvider$O8xUWaPVIH4po5ma-XlGh_FZUL4;-><init>(Lorg/apache/logging/log4j/util/PropertiesUtil;)V

    const-string v4, "passwordDecryptor"

    invoke-virtual {p1, v2, v4, v3}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getStringProperty([Ljava/lang/String;Ljava/lang/String;Lorg/apache/logging/log4j/util/Supplier;)Ljava/lang/String;

    move-result-object v2

    .line 51
    .local v2, "decryptor":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 53
    :try_start_0
    invoke-static {v2}, Lorg/apache/logging/log4j/util/LoaderUtil;->newInstanceOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 54
    .local v3, "obj":Ljava/lang/Object;
    instance-of v4, v3, Lorg/apache/logging/log4j/core/util/PasswordDecryptor;

    if-eqz v4, :cond_0

    .line 55
    move-object v4, v3

    check-cast v4, Lorg/apache/logging/log4j/core/util/PasswordDecryptor;

    invoke-interface {v4, v1}, Lorg/apache/logging/log4j/core/util/PasswordDecryptor;->decryptPassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v4

    .line 59
    .end local v3    # "obj":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 57
    :catch_0
    move-exception v3

    .line 58
    .local v3, "ex":Ljava/lang/Exception;
    sget-object v4, Lorg/apache/logging/log4j/core/util/BasicAuthorizationProvider;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v5, "Unable to decrypt password."

    invoke-interface {v4, v5, v3}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    .end local v3    # "ex":Ljava/lang/Exception;
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 62
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Basic "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/logging/log4j/util/Base64Util;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/logging/log4j/core/util/BasicAuthorizationProvider;->authString:Ljava/lang/String;

    .line 64
    :cond_2
    return-void
.end method

.method static synthetic lambda$new$0(Lorg/apache/logging/log4j/util/PropertiesUtil;)Ljava/lang/String;
    .locals 1
    .param p0, "props"    # Lorg/apache/logging/log4j/util/PropertiesUtil;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "props"
        }
    .end annotation

    .line 46
    const-string v0, "log4j2.configurationUserName"

    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$new$1(Lorg/apache/logging/log4j/util/PropertiesUtil;)Ljava/lang/String;
    .locals 1
    .param p0, "props"    # Lorg/apache/logging/log4j/util/PropertiesUtil;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "props"
        }
    .end annotation

    .line 48
    const-string v0, "log4j2.configurationPassword"

    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$new$2(Lorg/apache/logging/log4j/util/PropertiesUtil;)Ljava/lang/String;
    .locals 1
    .param p0, "props"    # Lorg/apache/logging/log4j/util/PropertiesUtil;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "props"
        }
    .end annotation

    .line 50
    const-string v0, "log4j2.passwordDecryptor"

    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addAuthorization(Ljava/net/URLConnection;)V
    .locals 2
    .param p1, "urlConnection"    # Ljava/net/URLConnection;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "urlConnection"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/BasicAuthorizationProvider;->authString:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 69
    const-string v1, "Authorization"

    invoke-virtual {p1, v1, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_0
    return-void
.end method
