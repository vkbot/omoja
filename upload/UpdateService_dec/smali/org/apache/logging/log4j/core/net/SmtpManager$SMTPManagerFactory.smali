.class Lorg/apache/logging/log4j/core/net/SmtpManager$SMTPManagerFactory;
.super Ljava/lang/Object;
.source "SmtpManager.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/appender/ManagerFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/net/SmtpManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SMTPManagerFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/logging/log4j/core/appender/ManagerFactory<",
        "Lorg/apache/logging/log4j/core/net/SmtpManager;",
        "Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/logging/log4j/core/net/SmtpManager$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/logging/log4j/core/net/SmtpManager$1;

    .line 350
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/net/SmtpManager$SMTPManagerFactory;-><init>()V

    return-void
.end method

.method private buildAuthenticator(Ljava/lang/String;Ljava/lang/String;)Ljavax/mail/Authenticator;
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "username",
            "password"
        }
    .end annotation

    .line 391
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 392
    new-instance v0, Lorg/apache/logging/log4j/core/net/SmtpManager$SMTPManagerFactory$1;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/logging/log4j/core/net/SmtpManager$SMTPManagerFactory$1;-><init>(Lorg/apache/logging/log4j/core/net/SmtpManager$SMTPManagerFactory;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 402
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic createManager(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "name",
            "data"
        }
    .end annotation

    .line 350
    check-cast p2, Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;

    invoke-virtual {p0, p1, p2}, Lorg/apache/logging/log4j/core/net/SmtpManager$SMTPManagerFactory;->createManager(Ljava/lang/String;Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;)Lorg/apache/logging/log4j/core/net/SmtpManager;

    move-result-object p1

    return-object p1
.end method

.method public createManager(Ljava/lang/String;Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;)Lorg/apache/logging/log4j/core/net/SmtpManager;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "data"    # Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "name",
            "data"
        }
    .end annotation

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mail."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;->access$800(Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 356
    .local v0, "prefix":Ljava/lang/String;
    invoke-static {}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getSystemProperties()Ljava/util/Properties;

    move-result-object v1

    .line 357
    .local v1, "properties":Ljava/util/Properties;
    invoke-static {p2}, Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;->access$800(Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "mail.transport.protocol"

    invoke-virtual {v1, v3, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 358
    const-string v2, "mail.host"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 360
    invoke-static {}, Lorg/apache/logging/log4j/core/util/NetUtils;->getLocalHostname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 363
    :cond_0
    invoke-static {p2}, Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;->access$900(Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 364
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".host"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;->access$900(Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 366
    :cond_1
    invoke-static {p2}, Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;->access$1000(Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;)I

    move-result v2

    if-lez v2, :cond_2

    .line 367
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".port"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;->access$1000(Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 370
    :cond_2
    invoke-static {p2}, Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;->access$1100(Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;->access$1200(Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lorg/apache/logging/log4j/core/net/SmtpManager$SMTPManagerFactory;->buildAuthenticator(Ljava/lang/String;Ljava/lang/String;)Ljavax/mail/Authenticator;

    move-result-object v2

    .line 371
    .local v2, "authenticator":Ljavax/mail/Authenticator;
    if-eqz v2, :cond_3

    .line 372
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".auth"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "true"

    invoke-virtual {v1, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 375
    :cond_3
    invoke-static {p2}, Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;->access$800(Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "smtps"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 376
    invoke-static {p2}, Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;->access$1300(Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;)Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;

    move-result-object v3

    .line 377
    .local v3, "sslConfiguration":Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;
    if-eqz v3, :cond_4

    .line 378
    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;->getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v4

    .line 379
    .local v4, "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".ssl.socketFactory"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5, v4}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".ssl.checkserveridentity"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;->isVerifyHostName()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 384
    .end local v3    # "sslConfiguration":Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;
    .end local v4    # "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    :cond_4
    invoke-static {v1, v2}, Ljavax/mail/Session;->getInstance(Ljava/util/Properties;Ljavax/mail/Authenticator;)Ljavax/mail/Session;

    move-result-object v3

    .line 385
    .local v3, "session":Ljavax/mail/Session;
    invoke-static {p2}, Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;->access$800(Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "rfc822"

    invoke-virtual {v3, v5, v4}, Ljavax/mail/Session;->setProtocolForAddress(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    invoke-static {p2}, Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;->access$1400(Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljavax/mail/Session;->setDebug(Z)V

    .line 387
    new-instance v4, Lorg/apache/logging/log4j/core/net/SmtpManager;

    const/4 v5, 0x0

    invoke-direct {v4, p1, v3, v5, p2}, Lorg/apache/logging/log4j/core/net/SmtpManager;-><init>(Ljava/lang/String;Ljavax/mail/Session;Ljavax/mail/internet/MimeMessage;Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;)V

    return-object v4
.end method
