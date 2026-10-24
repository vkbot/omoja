.class public Lorg/apache/logging/log4j/core/net/SmtpManager;
.super Lorg/apache/logging/log4j/core/appender/AbstractManager;
.source "SmtpManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/net/SmtpManager$SMTPManagerFactory;,
        Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;
    }
.end annotation


# static fields
.field private static final FACTORY:Lorg/apache/logging/log4j/core/net/SmtpManager$SMTPManagerFactory;


# instance fields
.field private final buffer:Lorg/apache/logging/log4j/core/util/CyclicBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/logging/log4j/core/util/CyclicBuffer<",
            "Lorg/apache/logging/log4j/core/LogEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final data:Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;

.field private volatile message:Ljavax/mail/internet/MimeMessage;

.field private final session:Ljavax/mail/Session;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 58
    new-instance v0, Lorg/apache/logging/log4j/core/net/SmtpManager$SMTPManagerFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/net/SmtpManager$SMTPManagerFactory;-><init>(Lorg/apache/logging/log4j/core/net/SmtpManager$1;)V

    sput-object v0, Lorg/apache/logging/log4j/core/net/SmtpManager;->FACTORY:Lorg/apache/logging/log4j/core/net/SmtpManager$SMTPManagerFactory;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljavax/mail/Session;Ljavax/mail/internet/MimeMessage;Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "session"    # Ljavax/mail/Session;
    .param p3, "message"    # Ljavax/mail/internet/MimeMessage;
    .param p4, "data"    # Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "name",
            "session",
            "message",
            "data"
        }
    .end annotation

    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/apache/logging/log4j/core/appender/AbstractManager;-><init>(Lorg/apache/logging/log4j/core/LoggerContext;Ljava/lang/String;)V

    .line 79
    iput-object p2, p0, Lorg/apache/logging/log4j/core/net/SmtpManager;->session:Ljavax/mail/Session;

    .line 80
    iput-object p3, p0, Lorg/apache/logging/log4j/core/net/SmtpManager;->message:Ljavax/mail/internet/MimeMessage;

    .line 81
    iput-object p4, p0, Lorg/apache/logging/log4j/core/net/SmtpManager;->data:Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;

    .line 82
    new-instance v0, Lorg/apache/logging/log4j/core/util/CyclicBuffer;

    const-class v1, Lorg/apache/logging/log4j/core/LogEvent;

    invoke-static {p4}, Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;->access$700(Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/logging/log4j/core/util/CyclicBuffer;-><init>(Ljava/lang/Class;I)V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/net/SmtpManager;->buffer:Lorg/apache/logging/log4j/core/util/CyclicBuffer;

    .line 83
    return-void
.end method

.method private declared-synchronized connect(Lorg/apache/logging/log4j/core/LogEvent;)V
    .locals 2
    .param p1, "appendEvent"    # Lorg/apache/logging/log4j/core/LogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "appendEvent"
        }
    .end annotation

    monitor-enter p0

    .line 336
    :try_start_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/net/SmtpManager;->message:Ljavax/mail/internet/MimeMessage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 337
    monitor-exit p0

    return-void

    .line 340
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/logging/log4j/core/net/SmtpManager;->data:Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/net/SmtpManager;->session:Ljavax/mail/Session;

    invoke-static {v0, v1, p1}, Lorg/apache/logging/log4j/core/net/SmtpManager;->createMimeMessage(Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;Ljavax/mail/Session;Lorg/apache/logging/log4j/core/LogEvent;)Ljavax/mail/internet/MimeMessage;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/net/SmtpManager;->message:Ljavax/mail/internet/MimeMessage;
    :try_end_1
    .catch Ljavax/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 344
    goto :goto_0

    .line 341
    .end local p0    # "this":Lorg/apache/logging/log4j/core/net/SmtpManager;
    :catch_0
    move-exception v0

    .line 342
    .local v0, "e":Ljavax/mail/MessagingException;
    :try_start_2
    const-string v1, "Could not set SmtpAppender message options"

    invoke-virtual {p0, v1, v0}, Lorg/apache/logging/log4j/core/net/SmtpManager;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 343
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/logging/log4j/core/net/SmtpManager;->message:Ljavax/mail/internet/MimeMessage;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 345
    .end local v0    # "e":Ljavax/mail/MessagingException;
    :goto_0
    monitor-exit p0

    return-void

    .line 335
    .end local p1    # "appendEvent":Lorg/apache/logging/log4j/core/LogEvent;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static createManagerName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "to"    # Ljava/lang/String;
    .param p1, "cc"    # Ljava/lang/String;
    .param p2, "bcc"    # Ljava/lang/String;
    .param p3, "from"    # Ljava/lang/String;
    .param p4, "replyTo"    # Ljava/lang/String;
    .param p5, "subject"    # Ljava/lang/String;
    .param p6, "protocol"    # Ljava/lang/String;
    .param p7, "host"    # Ljava/lang/String;
    .param p8, "port"    # I
    .param p9, "username"    # Ljava/lang/String;
    .param p10, "isDebug"    # Z
    .param p11, "filterName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "to",
            "cc",
            "bcc",
            "from",
            "replyTo",
            "subject",
            "protocol",
            "host",
            "port",
            "username",
            "isDebug",
            "filterName"
        }
    .end annotation

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .local v0, "sb":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_0

    .line 132
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    :cond_0
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 135
    if-eqz p1, :cond_1

    .line 136
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 139
    if-eqz p2, :cond_2

    .line 140
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 143
    if-eqz p3, :cond_3

    .line 144
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 147
    if-eqz p4, :cond_4

    .line 148
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 151
    if-eqz p5, :cond_5

    .line 152
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    :cond_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 156
    if-eqz p9, :cond_6

    .line 157
    invoke-virtual {v0, p9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    :cond_6
    if-eqz p10, :cond_7

    const-string v1, ":debug:"

    goto :goto_0

    :cond_7
    const-string v1, "::"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {v0, p11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SMTP:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static createMimeMessage(Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;Ljavax/mail/Session;Lorg/apache/logging/log4j/core/LogEvent;)Ljavax/mail/internet/MimeMessage;
    .locals 3
    .param p0, "data"    # Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;
    .param p1, "session"    # Ljavax/mail/Session;
    .param p2, "appendEvent"    # Lorg/apache/logging/log4j/core/LogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "data",
            "session",
            "appendEvent"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 70
    new-instance v0, Lorg/apache/logging/log4j/core/net/MimeMessageBuilder;

    invoke-direct {v0, p1}, Lorg/apache/logging/log4j/core/net/MimeMessageBuilder;-><init>(Ljavax/mail/Session;)V

    invoke-static {p0}, Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;->access$600(Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/net/MimeMessageBuilder;->setFrom(Ljava/lang/String;)Lorg/apache/logging/log4j/core/net/MimeMessageBuilder;

    move-result-object v0

    invoke-static {p0}, Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;->access$500(Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/net/MimeMessageBuilder;->setReplyTo(Ljava/lang/String;)Lorg/apache/logging/log4j/core/net/MimeMessageBuilder;

    move-result-object v0

    sget-object v1, Ljavax/mail/Message$RecipientType;->TO:Ljavax/mail/Message$RecipientType;

    .line 71
    invoke-static {p0}, Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;->access$400(Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/logging/log4j/core/net/MimeMessageBuilder;->setRecipients(Ljavax/mail/Message$RecipientType;Ljava/lang/String;)Lorg/apache/logging/log4j/core/net/MimeMessageBuilder;

    move-result-object v0

    sget-object v1, Ljavax/mail/Message$RecipientType;->CC:Ljavax/mail/Message$RecipientType;

    invoke-static {p0}, Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;->access$300(Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/logging/log4j/core/net/MimeMessageBuilder;->setRecipients(Ljavax/mail/Message$RecipientType;Ljava/lang/String;)Lorg/apache/logging/log4j/core/net/MimeMessageBuilder;

    move-result-object v0

    sget-object v1, Ljavax/mail/Message$RecipientType;->BCC:Ljavax/mail/Message$RecipientType;

    .line 72
    invoke-static {p0}, Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;->access$200(Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/logging/log4j/core/net/MimeMessageBuilder;->setRecipients(Ljavax/mail/Message$RecipientType;Ljava/lang/String;)Lorg/apache/logging/log4j/core/net/MimeMessageBuilder;

    move-result-object v0

    invoke-static {p0}, Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;->access$100(Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;)Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;

    move-result-object v1

    invoke-interface {v1, p2}, Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;->toSerializable(Lorg/apache/logging/log4j/core/LogEvent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/net/MimeMessageBuilder;->setSubject(Ljava/lang/String;)Lorg/apache/logging/log4j/core/net/MimeMessageBuilder;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/net/MimeMessageBuilder;->build()Ljavax/mail/internet/MimeMessage;

    move-result-object v0

    .line 70
    return-object v0
.end method

.method public static getSmtpManager(Lorg/apache/logging/log4j/core/config/Configuration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILorg/apache/logging/log4j/core/net/ssl/SslConfiguration;)Lorg/apache/logging/log4j/core/net/SmtpManager;
    .locals 19
    .param p0, "config"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .param p1, "to"    # Ljava/lang/String;
    .param p2, "cc"    # Ljava/lang/String;
    .param p3, "bcc"    # Ljava/lang/String;
    .param p4, "from"    # Ljava/lang/String;
    .param p5, "replyTo"    # Ljava/lang/String;
    .param p6, "subject"    # Ljava/lang/String;
    .param p7, "protocol"    # Ljava/lang/String;
    .param p8, "host"    # Ljava/lang/String;
    .param p9, "port"    # I
    .param p10, "username"    # Ljava/lang/String;
    .param p11, "password"    # Ljava/lang/String;
    .param p12, "isDebug"    # Z
    .param p13, "filterName"    # Ljava/lang/String;
    .param p14, "numElements"    # I
    .param p15, "sslConfiguration"    # Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x0,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "config",
            "to",
            "cc",
            "bcc",
            "from",
            "replyTo",
            "subject",
            "protocol",
            "host",
            "port",
            "username",
            "password",
            "isDebug",
            "filterName",
            "numElements",
            "sslConfiguration"
        }
    .end annotation

    .line 97
    invoke-static/range {p7 .. p7}, Lorg/apache/logging/log4j/util/Strings;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    const-string v0, "smtp"

    .end local p7    # "protocol":Ljava/lang/String;
    .local v0, "protocol":Ljava/lang/String;
    goto :goto_0

    .line 97
    .end local v0    # "protocol":Ljava/lang/String;
    .restart local p7    # "protocol":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p7

    .line 101
    .end local p7    # "protocol":Ljava/lang/String;
    .restart local v0    # "protocol":Ljava/lang/String;
    :goto_0
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object v7, v0

    move-object/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    move/from16 v11, p12

    move-object/from16 v12, p13

    invoke-static/range {v1 .. v12}, Lorg/apache/logging/log4j/core/net/SmtpManager;->createManagerName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 102
    .local v15, "name":Ljava/lang/String;
    invoke-static {}, Lorg/apache/logging/log4j/core/layout/PatternLayout;->newSerializerBuilder()Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;

    move-result-object v1

    move-object/from16 v14, p0

    invoke-virtual {v1, v14}, Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;->setConfiguration(Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;

    move-result-object v1

    move-object/from16 v13, p6

    invoke-virtual {v1, v13}, Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;->setPattern(Ljava/lang/String;)Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;->build()Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;

    move-result-object v16

    .line 104
    .local v16, "subjectSerializer":Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;
    sget-object v12, Lorg/apache/logging/log4j/core/net/SmtpManager;->FACTORY:Lorg/apache/logging/log4j/core/net/SmtpManager$SMTPManagerFactory;

    new-instance v11, Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;

    move-object v1, v11

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, v16

    move-object v8, v0

    move-object/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 p7, v0

    move-object v0, v11

    .end local v0    # "protocol":Ljava/lang/String;
    .restart local p7    # "protocol":Ljava/lang/String;
    move-object/from16 v11, p10

    move-object/from16 v17, v0

    move-object v0, v12

    move-object/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p14

    move-object/from16 v18, v0

    move-object v0, v15

    .end local v15    # "name":Ljava/lang/String;
    .local v0, "name":Ljava/lang/String;
    move-object/from16 v15, p15

    invoke-direct/range {v1 .. v15}, Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZILorg/apache/logging/log4j/core/net/ssl/SslConfiguration;)V

    move-object/from16 v2, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v2}, Lorg/apache/logging/log4j/core/net/SmtpManager;->getManager(Ljava/lang/String;Lorg/apache/logging/log4j/core/appender/ManagerFactory;Ljava/lang/Object;)Lorg/apache/logging/log4j/core/appender/AbstractManager;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/core/net/SmtpManager;

    return-object v1
.end method

.method private writeContent([Lorg/apache/logging/log4j/core/LogEvent;Lorg/apache/logging/log4j/core/LogEvent;Lorg/apache/logging/log4j/core/Layout;Ljava/io/ByteArrayOutputStream;)V
    .locals 0
    .param p1, "priorEvents"    # [Lorg/apache/logging/log4j/core/LogEvent;
    .param p2, "appendEvent"    # Lorg/apache/logging/log4j/core/LogEvent;
    .param p4, "out"    # Ljava/io/ByteArrayOutputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "priorEvents",
            "appendEvent",
            "layout",
            "out"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/logging/log4j/core/LogEvent;",
            "Lorg/apache/logging/log4j/core/LogEvent;",
            "Lorg/apache/logging/log4j/core/Layout<",
            "*>;",
            "Ljava/io/ByteArrayOutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 210
    .local p3, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<*>;"
    invoke-virtual {p0, p3, p4}, Lorg/apache/logging/log4j/core/net/SmtpManager;->writeHeader(Lorg/apache/logging/log4j/core/Layout;Ljava/io/OutputStream;)V

    .line 211
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/logging/log4j/core/net/SmtpManager;->writeBuffer([Lorg/apache/logging/log4j/core/LogEvent;Lorg/apache/logging/log4j/core/LogEvent;Lorg/apache/logging/log4j/core/Layout;Ljava/io/OutputStream;)V

    .line 212
    invoke-virtual {p0, p3, p4}, Lorg/apache/logging/log4j/core/net/SmtpManager;->writeFooter(Lorg/apache/logging/log4j/core/Layout;Ljava/io/OutputStream;)V

    .line 213
    return-void
.end method


# virtual methods
.method public add(Lorg/apache/logging/log4j/core/LogEvent;)V
    .locals 2
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lorg/apache/logging/log4j/core/net/SmtpManager;->buffer:Lorg/apache/logging/log4j/core/util/CyclicBuffer;

    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->toImmutable()Lorg/apache/logging/log4j/core/LogEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/util/CyclicBuffer;->add(Ljava/lang/Object;)V

    .line 87
    return-void
.end method

.method protected encodeContent([BLjava/lang/String;Ljava/io/ByteArrayOutputStream;)V
    .locals 4
    .param p1, "bytes"    # [B
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "out"    # Ljava/io/ByteArrayOutputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "bytes",
            "encoding",
            "out"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 254
    invoke-static {p3, p2}, Ljavax/mail/internet/MimeUtility;->encode(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    .line 255
    .local v0, "encoder":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 257
    .end local v0    # "encoder":Ljava/io/OutputStream;
    :cond_0
    return-void

    .line 254
    .restart local v0    # "encoder":Ljava/io/OutputStream;
    :catchall_0
    move-exception v1

    .end local v0    # "encoder":Ljava/io/OutputStream;
    .end local p0    # "this":Lorg/apache/logging/log4j/core/net/SmtpManager;
    .end local p1    # "bytes":[B
    .end local p2    # "encoding":Ljava/lang/String;
    .end local p3    # "out":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 256
    .restart local v0    # "encoder":Ljava/io/OutputStream;
    .restart local p0    # "this":Lorg/apache/logging/log4j/core/net/SmtpManager;
    .restart local p1    # "bytes":[B
    .restart local p2    # "encoding":Ljava/lang/String;
    .restart local p3    # "out":Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v2

    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v2
.end method

.method protected encodeContentToBytes([BLjava/lang/String;)[B
    .locals 2
    .param p1, "rawBytes"    # [B
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "rawBytes",
            "encoding"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 247
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 248
    .local v0, "encoded":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/logging/log4j/core/net/SmtpManager;->encodeContent([BLjava/lang/String;Ljava/io/ByteArrayOutputStream;)V

    .line 249
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method protected formatContentToBytes([Lorg/apache/logging/log4j/core/LogEvent;Lorg/apache/logging/log4j/core/LogEvent;Lorg/apache/logging/log4j/core/Layout;)[B
    .locals 2
    .param p1, "priorEvents"    # [Lorg/apache/logging/log4j/core/LogEvent;
    .param p2, "appendEvent"    # Lorg/apache/logging/log4j/core/LogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "priorEvents",
            "appendEvent",
            "layout"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/logging/log4j/core/LogEvent;",
            "Lorg/apache/logging/log4j/core/LogEvent;",
            "Lorg/apache/logging/log4j/core/Layout<",
            "*>;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 202
    .local p3, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<*>;"
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 203
    .local v0, "raw":Ljava/io/ByteArrayOutputStream;
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/logging/log4j/core/net/SmtpManager;->writeContent([Lorg/apache/logging/log4j/core/LogEvent;Lorg/apache/logging/log4j/core/LogEvent;Lorg/apache/logging/log4j/core/Layout;Ljava/io/ByteArrayOutputStream;)V

    .line 204
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method protected getEncoding([BLjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "rawBytes"    # [B
    .param p2, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "rawBytes",
            "contentType"
        }
    .end annotation

    .line 241
    new-instance v0, Ljavax/mail/util/ByteArrayDataSource;

    invoke-direct {v0, p1, p2}, Ljavax/mail/util/ByteArrayDataSource;-><init>([BLjava/lang/String;)V

    .line 242
    .local v0, "dataSource":Ljavax/activation/DataSource;
    invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->getEncoding(Ljavax/activation/DataSource;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected getHeaders(Ljava/lang/String;Ljava/lang/String;)Ljavax/mail/internet/InternetHeaders;
    .locals 3
    .param p1, "contentType"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "contentType",
            "encoding"
        }
    .end annotation

    .line 260
    new-instance v0, Ljavax/mail/internet/InternetHeaders;

    invoke-direct {v0}, Ljavax/mail/internet/InternetHeaders;-><init>()V

    .line 261
    .local v0, "headers":Ljavax/mail/internet/InternetHeaders;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; charset=UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Content-Type"

    invoke-virtual {v0, v2, v1}, Ljavax/mail/internet/InternetHeaders;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const-string v1, "Content-Transfer-Encoding"

    invoke-virtual {v0, v1, p2}, Ljavax/mail/internet/InternetHeaders;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    return-object v0
.end method

.method protected getMimeMultipart([BLjavax/mail/internet/InternetHeaders;)Ljavax/mail/internet/MimeMultipart;
    .locals 2
    .param p1, "encodedBytes"    # [B
    .param p2, "headers"    # Ljavax/mail/internet/InternetHeaders;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "encodedBytes",
            "headers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 268
    new-instance v0, Ljavax/mail/internet/MimeMultipart;

    invoke-direct {v0}, Ljavax/mail/internet/MimeMultipart;-><init>()V

    .line 269
    .local v0, "mp":Ljavax/mail/internet/MimeMultipart;
    new-instance v1, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v1, p2, p1}, Ljavax/mail/internet/MimeBodyPart;-><init>(Ljavax/mail/internet/InternetHeaders;[B)V

    .line 270
    .local v1, "part":Ljavax/mail/internet/MimeBodyPart;
    invoke-virtual {v0, v1}, Ljavax/mail/internet/MimeMultipart;->addBodyPart(Ljavax/mail/BodyPart;)V

    .line 271
    return-object v0
.end method

.method removeAllBufferedEvents()[Lorg/apache/logging/log4j/core/LogEvent;
    .locals 1

    .line 197
    iget-object v0, p0, Lorg/apache/logging/log4j/core/net/SmtpManager;->buffer:Lorg/apache/logging/log4j/core/util/CyclicBuffer;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/util/CyclicBuffer;->removeAll()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/logging/log4j/core/LogEvent;

    return-object v0
.end method

.method public sendEvents(Lorg/apache/logging/log4j/core/Layout;Lorg/apache/logging/log4j/core/LogEvent;)V
    .locals 9
    .param p2, "appendEvent"    # Lorg/apache/logging/log4j/core/LogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "layout",
            "appendEvent"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/Layout<",
            "*>;",
            "Lorg/apache/logging/log4j/core/LogEvent;",
            ")V"
        }
    .end annotation

    .line 171
    .local p1, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<*>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/net/SmtpManager;->message:Ljavax/mail/internet/MimeMessage;

    if-nez v0, :cond_0

    .line 172
    invoke-direct {p0, p2}, Lorg/apache/logging/log4j/core/net/SmtpManager;->connect(Lorg/apache/logging/log4j/core/LogEvent;)V

    .line 175
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/net/SmtpManager;->removeAllBufferedEvents()[Lorg/apache/logging/log4j/core/LogEvent;

    move-result-object v0

    .line 178
    .local v0, "priorEvents":[Lorg/apache/logging/log4j/core/LogEvent;
    invoke-virtual {p0, v0, p2, p1}, Lorg/apache/logging/log4j/core/net/SmtpManager;->formatContentToBytes([Lorg/apache/logging/log4j/core/LogEvent;Lorg/apache/logging/log4j/core/LogEvent;Lorg/apache/logging/log4j/core/Layout;)[B

    move-result-object v1

    .line 180
    .local v1, "rawBytes":[B
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/Layout;->getContentType()Ljava/lang/String;

    move-result-object v2

    .line 181
    .local v2, "contentType":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lorg/apache/logging/log4j/core/net/SmtpManager;->getEncoding([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 182
    .local v3, "encoding":Ljava/lang/String;
    invoke-virtual {p0, v1, v3}, Lorg/apache/logging/log4j/core/net/SmtpManager;->encodeContentToBytes([BLjava/lang/String;)[B

    move-result-object v4

    .line 184
    .local v4, "encodedBytes":[B
    invoke-virtual {p0, v2, v3}, Lorg/apache/logging/log4j/core/net/SmtpManager;->getHeaders(Ljava/lang/String;Ljava/lang/String;)Ljavax/mail/internet/InternetHeaders;

    move-result-object v5

    .line 185
    .local v5, "headers":Ljavax/mail/internet/InternetHeaders;
    invoke-virtual {p0, v4, v5}, Lorg/apache/logging/log4j/core/net/SmtpManager;->getMimeMultipart([BLjavax/mail/internet/InternetHeaders;)Ljavax/mail/internet/MimeMultipart;

    move-result-object v6

    .line 187
    .local v6, "mp":Ljavax/mail/internet/MimeMultipart;
    iget-object v7, p0, Lorg/apache/logging/log4j/core/net/SmtpManager;->data:Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;

    invoke-static {v7}, Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;->access$100(Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;)Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;

    move-result-object v7

    invoke-interface {v7, p2}, Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;->toSerializable(Lorg/apache/logging/log4j/core/LogEvent;)Ljava/lang/String;

    move-result-object v7

    .line 189
    .local v7, "subject":Ljava/lang/String;
    iget-object v8, p0, Lorg/apache/logging/log4j/core/net/SmtpManager;->message:Ljavax/mail/internet/MimeMessage;

    invoke-virtual {p0, v8, v6, v7}, Lorg/apache/logging/log4j/core/net/SmtpManager;->sendMultipartMessage(Ljavax/mail/internet/MimeMessage;Ljavax/mail/internet/MimeMultipart;Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    .end local v0    # "priorEvents":[Lorg/apache/logging/log4j/core/LogEvent;
    .end local v1    # "rawBytes":[B
    .end local v2    # "contentType":Ljava/lang/String;
    .end local v3    # "encoding":Ljava/lang/String;
    .end local v4    # "encodedBytes":[B
    .end local v5    # "headers":Ljavax/mail/internet/InternetHeaders;
    .end local v6    # "mp":Ljavax/mail/internet/MimeMultipart;
    .end local v7    # "subject":Ljava/lang/String;
    nop

    .line 194
    return-void

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Caught exception while sending e-mail notification."

    invoke-virtual {p0, v1, v0}, Lorg/apache/logging/log4j/core/net/SmtpManager;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 192
    new-instance v1, Lorg/apache/logging/log4j/LoggingException;

    const-string v2, "Error occurred while sending email"

    invoke-direct {v1, v2, v0}, Lorg/apache/logging/log4j/LoggingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected sendMultipartMessage(Ljavax/mail/internet/MimeMessage;Ljavax/mail/internet/MimeMultipart;)V
    .locals 1
    .param p1, "msg"    # Ljavax/mail/internet/MimeMessage;
    .param p2, "mp"    # Ljavax/mail/internet/MimeMultipart;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "msg",
            "mp"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 279
    monitor-enter p1

    .line 280
    :try_start_0
    invoke-virtual {p1, p2}, Ljavax/mail/internet/MimeMessage;->setContent(Ljavax/mail/Multipart;)V

    .line 281
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v0}, Ljavax/mail/internet/MimeMessage;->setSentDate(Ljava/util/Date;)V

    .line 282
    invoke-static {p1}, Ljavax/mail/Transport;->send(Ljavax/mail/Message;)V

    .line 283
    monitor-exit p1

    .line 284
    return-void

    .line 283
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected sendMultipartMessage(Ljavax/mail/internet/MimeMessage;Ljavax/mail/internet/MimeMultipart;Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljavax/mail/internet/MimeMessage;
    .param p2, "mp"    # Ljavax/mail/internet/MimeMultipart;
    .param p3, "subject"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "msg",
            "mp",
            "subject"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 287
    monitor-enter p1

    .line 288
    :try_start_0
    invoke-virtual {p1, p2}, Ljavax/mail/internet/MimeMessage;->setContent(Ljavax/mail/Multipart;)V

    .line 289
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v0}, Ljavax/mail/internet/MimeMessage;->setSentDate(Ljava/util/Date;)V

    .line 290
    invoke-virtual {p1, p3}, Ljavax/mail/internet/MimeMessage;->setSubject(Ljava/lang/String;)V

    .line 291
    invoke-static {p1}, Ljavax/mail/Transport;->send(Ljavax/mail/Message;)V

    .line 292
    monitor-exit p1

    .line 293
    return-void

    .line 292
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected writeBuffer([Lorg/apache/logging/log4j/core/LogEvent;Lorg/apache/logging/log4j/core/LogEvent;Lorg/apache/logging/log4j/core/Layout;Ljava/io/OutputStream;)V
    .locals 4
    .param p1, "priorEvents"    # [Lorg/apache/logging/log4j/core/LogEvent;
    .param p2, "appendEvent"    # Lorg/apache/logging/log4j/core/LogEvent;
    .param p4, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "priorEvents",
            "appendEvent",
            "layout",
            "out"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/logging/log4j/core/LogEvent;",
            "Lorg/apache/logging/log4j/core/LogEvent;",
            "Lorg/apache/logging/log4j/core/Layout<",
            "*>;",
            "Ljava/io/OutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 224
    .local p3, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<*>;"
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 225
    .local v2, "priorEvent":Lorg/apache/logging/log4j/core/LogEvent;
    invoke-interface {p3, v2}, Lorg/apache/logging/log4j/core/Layout;->toByteArray(Lorg/apache/logging/log4j/core/LogEvent;)[B

    move-result-object v3

    .line 226
    .local v3, "bytes":[B
    invoke-virtual {p4, v3}, Ljava/io/OutputStream;->write([B)V

    .line 224
    .end local v2    # "priorEvent":Lorg/apache/logging/log4j/core/LogEvent;
    .end local v3    # "bytes":[B
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 229
    :cond_0
    invoke-interface {p3, p2}, Lorg/apache/logging/log4j/core/Layout;->toByteArray(Lorg/apache/logging/log4j/core/LogEvent;)[B

    move-result-object v0

    .line 230
    .local v0, "bytes":[B
    invoke-virtual {p4, v0}, Ljava/io/OutputStream;->write([B)V

    .line 231
    return-void
.end method

.method protected writeFooter(Lorg/apache/logging/log4j/core/Layout;Ljava/io/OutputStream;)V
    .locals 1
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "layout",
            "out"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/Layout<",
            "*>;",
            "Ljava/io/OutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 234
    .local p1, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<*>;"
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/Layout;->getFooter()[B

    move-result-object v0

    .line 235
    .local v0, "footer":[B
    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 238
    :cond_0
    return-void
.end method

.method protected writeHeader(Lorg/apache/logging/log4j/core/Layout;Ljava/io/OutputStream;)V
    .locals 1
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "layout",
            "out"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/Layout<",
            "*>;",
            "Ljava/io/OutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 216
    .local p1, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<*>;"
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/Layout;->getHeader()[B

    move-result-object v0

    .line 217
    .local v0, "header":[B
    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 220
    :cond_0
    return-void
.end method
