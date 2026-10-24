.class Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;
.super Ljava/lang/Object;
.source "SmtpManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/net/SmtpManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FactoryData"
.end annotation


# instance fields
.field private final bcc:Ljava/lang/String;

.field private final cc:Ljava/lang/String;

.field private final from:Ljava/lang/String;

.field private final host:Ljava/lang/String;

.field private final isDebug:Z

.field private final numElements:I

.field private final password:Ljava/lang/String;

.field private final port:I

.field private final protocol:Ljava/lang/String;

.field private final replyto:Ljava/lang/String;

.field private final sslConfiguration:Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;

.field private final subject:Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;

.field private final to:Ljava/lang/String;

.field private final username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZILorg/apache/logging/log4j/core/net/ssl/SslConfiguration;)V
    .locals 0
    .param p1, "to"    # Ljava/lang/String;
    .param p2, "cc"    # Ljava/lang/String;
    .param p3, "bcc"    # Ljava/lang/String;
    .param p4, "from"    # Ljava/lang/String;
    .param p5, "replyTo"    # Ljava/lang/String;
    .param p6, "subjectSerializer"    # Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;
    .param p7, "protocol"    # Ljava/lang/String;
    .param p8, "host"    # Ljava/lang/String;
    .param p9, "port"    # I
    .param p10, "username"    # Ljava/lang/String;
    .param p11, "password"    # Ljava/lang/String;
    .param p12, "isDebug"    # Z
    .param p13, "numElements"    # I
    .param p14, "sslConfiguration"    # Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;
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
            "subjectSerializer",
            "protocol",
            "host",
            "port",
            "username",
            "password",
            "isDebug",
            "numElements",
            "sslConfiguration"
        }
    .end annotation

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    iput-object p1, p0, Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;->to:Ljava/lang/String;

    .line 319
    iput-object p2, p0, Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;->cc:Ljava/lang/String;

    .line 320
    iput-object p3, p0, Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;->bcc:Ljava/lang/String;

    .line 321
    iput-object p4, p0, Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;->from:Ljava/lang/String;

    .line 322
    iput-object p5, p0, Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;->replyto:Ljava/lang/String;

    .line 323
    iput-object p6, p0, Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;->subject:Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;

    .line 324
    iput-object p7, p0, Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;->protocol:Ljava/lang/String;

    .line 325
    iput-object p8, p0, Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;->host:Ljava/lang/String;

    .line 326
    iput p9, p0, Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;->port:I

    .line 327
    iput-object p10, p0, Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;->username:Ljava/lang/String;

    .line 328
    iput-object p11, p0, Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;->password:Ljava/lang/String;

    .line 329
    iput-boolean p12, p0, Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;->isDebug:Z

    .line 330
    iput p13, p0, Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;->numElements:I

    .line 331
    iput-object p14, p0, Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;->sslConfiguration:Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;

    .line 332
    return-void
.end method

.method static synthetic access$100(Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;)Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;

    .line 298
    iget-object v0, p0, Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;->subject:Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;

    .line 298
    iget v0, p0, Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;->port:I

    return v0
.end method

.method static synthetic access$1100(Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;

    .line 298
    iget-object v0, p0, Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;->username:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;

    .line 298
    iget-object v0, p0, Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;->password:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;)Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;

    .line 298
    iget-object v0, p0, Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;->sslConfiguration:Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;

    .line 298
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;->isDebug:Z

    return v0
.end method

.method static synthetic access$200(Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;

    .line 298
    iget-object v0, p0, Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;->bcc:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;

    .line 298
    iget-object v0, p0, Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;->cc:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;

    .line 298
    iget-object v0, p0, Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;->to:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;

    .line 298
    iget-object v0, p0, Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;->replyto:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;

    .line 298
    iget-object v0, p0, Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;->from:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;

    .line 298
    iget v0, p0, Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;->numElements:I

    return v0
.end method

.method static synthetic access$800(Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;

    .line 298
    iget-object v0, p0, Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;->protocol:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;

    .line 298
    iget-object v0, p0, Lorg/apache/logging/log4j/core/net/SmtpManager$FactoryData;->host:Ljava/lang/String;

    return-object v0
.end method
