.class public Lorg/apache/logging/log4j/core/net/MimeMessageBuilder;
.super Ljava/lang/Object;
.source "MimeMessageBuilder.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/util/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/logging/log4j/core/util/Builder<",
        "Ljavax/mail/internet/MimeMessage;",
        ">;"
    }
.end annotation


# instance fields
.field private final message:Ljavax/mail/internet/MimeMessage;


# direct methods
.method public constructor <init>(Ljavax/mail/Session;)V
    .locals 1
    .param p1, "session"    # Ljavax/mail/Session;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "session"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljavax/mail/internet/MimeMessage;

    invoke-direct {v0, p1}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Session;)V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/net/MimeMessageBuilder;->message:Ljavax/mail/internet/MimeMessage;

    .line 38
    return-void
.end method

.method private static parseAddress(Ljava/lang/String;)Ljavax/mail/internet/InternetAddress;
    .locals 1
    .param p0, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "address"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    .line 95
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljavax/mail/internet/InternetAddress;

    invoke-direct {v0, p0}, Ljavax/mail/internet/InternetAddress;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method private static parseAddresses(Ljava/lang/String;)[Ljavax/mail/internet/InternetAddress;
    .locals 1
    .param p0, "addresses"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "addresses"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    .line 99
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, v0}, Ljavax/mail/internet/InternetAddress;->parse(Ljava/lang/String;Z)[Ljavax/mail/internet/InternetAddress;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/net/MimeMessageBuilder;->build()Ljavax/mail/internet/MimeMessage;

    move-result-object v0

    return-object v0
.end method

.method public build()Ljavax/mail/internet/MimeMessage;
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/apache/logging/log4j/core/net/MimeMessageBuilder;->message:Ljavax/mail/internet/MimeMessage;

    return-object v0
.end method

.method public getMimeMessage()Ljavax/mail/internet/MimeMessage;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 86
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/net/MimeMessageBuilder;->build()Ljavax/mail/internet/MimeMessage;

    move-result-object v0

    return-object v0
.end method

.method public setFrom(Ljava/lang/String;)Lorg/apache/logging/log4j/core/net/MimeMessageBuilder;
    .locals 4
    .param p1, "from"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "from"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 41
    invoke-static {p1}, Lorg/apache/logging/log4j/core/net/MimeMessageBuilder;->parseAddress(Ljava/lang/String;)Ljavax/mail/internet/InternetAddress;

    move-result-object v0

    .line 43
    .local v0, "address":Ljavax/mail/internet/InternetAddress;
    if-eqz v0, :cond_0

    .line 44
    iget-object v1, p0, Lorg/apache/logging/log4j/core/net/MimeMessageBuilder;->message:Ljavax/mail/internet/MimeMessage;

    invoke-virtual {v1, v0}, Ljavax/mail/internet/MimeMessage;->setFrom(Ljavax/mail/Address;)V

    goto :goto_0

    .line 47
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/apache/logging/log4j/core/net/MimeMessageBuilder;->message:Ljavax/mail/internet/MimeMessage;

    invoke-virtual {v1}, Ljavax/mail/internet/MimeMessage;->setFrom()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    goto :goto_0

    .line 48
    :catch_0
    move-exception v1

    .line 49
    .local v1, "ex":Ljava/lang/Exception;
    iget-object v2, p0, Lorg/apache/logging/log4j/core/net/MimeMessageBuilder;->message:Ljavax/mail/internet/MimeMessage;

    const/4 v3, 0x0

    check-cast v3, Ljavax/mail/internet/InternetAddress;

    invoke-virtual {v2, v3}, Ljavax/mail/internet/MimeMessage;->setFrom(Ljavax/mail/Address;)V

    .line 52
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_0
    return-object p0
.end method

.method public setRecipients(Ljavax/mail/Message$RecipientType;Ljava/lang/String;)Lorg/apache/logging/log4j/core/net/MimeMessageBuilder;
    .locals 2
    .param p1, "recipientType"    # Ljavax/mail/Message$RecipientType;
    .param p2, "recipients"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "recipientType",
            "recipients"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 66
    invoke-static {p2}, Lorg/apache/logging/log4j/core/net/MimeMessageBuilder;->parseAddresses(Ljava/lang/String;)[Ljavax/mail/internet/InternetAddress;

    move-result-object v0

    .line 68
    .local v0, "addresses":[Ljavax/mail/internet/InternetAddress;
    if-eqz v0, :cond_0

    .line 69
    iget-object v1, p0, Lorg/apache/logging/log4j/core/net/MimeMessageBuilder;->message:Ljavax/mail/internet/MimeMessage;

    invoke-virtual {v1, p1, v0}, Ljavax/mail/internet/MimeMessage;->setRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V

    .line 71
    :cond_0
    return-object p0
.end method

.method public setReplyTo(Ljava/lang/String;)Lorg/apache/logging/log4j/core/net/MimeMessageBuilder;
    .locals 2
    .param p1, "replyTo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "replyTo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 56
    invoke-static {p1}, Lorg/apache/logging/log4j/core/net/MimeMessageBuilder;->parseAddresses(Ljava/lang/String;)[Ljavax/mail/internet/InternetAddress;

    move-result-object v0

    .line 58
    .local v0, "addresses":[Ljavax/mail/internet/InternetAddress;
    if-eqz v0, :cond_0

    .line 59
    iget-object v1, p0, Lorg/apache/logging/log4j/core/net/MimeMessageBuilder;->message:Ljavax/mail/internet/MimeMessage;

    invoke-virtual {v1, v0}, Ljavax/mail/internet/MimeMessage;->setReplyTo([Ljavax/mail/Address;)V

    .line 61
    :cond_0
    return-object p0
.end method

.method public setSubject(Ljava/lang/String;)Lorg/apache/logging/log4j/core/net/MimeMessageBuilder;
    .locals 2
    .param p1, "subject"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "subject"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 75
    if-eqz p1, :cond_0

    .line 76
    iget-object v0, p0, Lorg/apache/logging/log4j/core/net/MimeMessageBuilder;->message:Ljavax/mail/internet/MimeMessage;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljavax/mail/internet/MimeMessage;->setSubject(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :cond_0
    return-object p0
.end method
