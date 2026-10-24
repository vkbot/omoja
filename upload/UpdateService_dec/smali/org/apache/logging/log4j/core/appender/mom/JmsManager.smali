.class public Lorg/apache/logging/log4j/core/appender/mom/JmsManager;
.super Lorg/apache/logging/log4j/core/appender/AbstractManager;
.source "JmsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/appender/mom/JmsManager$Reconnector;,
        Lorg/apache/logging/log4j/core/appender/mom/JmsManager$JmsManagerFactory;,
        Lorg/apache/logging/log4j/core/appender/mom/JmsManager$JmsManagerConfiguration;
    }
.end annotation


# static fields
.field static final FACTORY:Lorg/apache/logging/log4j/core/appender/mom/JmsManager$JmsManagerFactory;


# instance fields
.field private final configuration:Lorg/apache/logging/log4j/core/appender/mom/JmsManager$JmsManagerConfiguration;

.field private volatile connection:Ljavax/jms/Connection;

.field private volatile destination:Ljavax/jms/Destination;

.field private volatile jndiManager:Lorg/apache/logging/log4j/core/net/JndiManager;

.field private volatile messageProducer:Ljavax/jms/MessageProducer;

.field private volatile reconnector:Lorg/apache/logging/log4j/core/appender/mom/JmsManager$Reconnector;

.field private volatile session:Ljavax/jms/Session;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 204
    new-instance v0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager$JmsManagerFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/appender/mom/JmsManager$JmsManagerFactory;-><init>(Lorg/apache/logging/log4j/core/appender/mom/JmsManager$1;)V

    sput-object v0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->FACTORY:Lorg/apache/logging/log4j/core/appender/mom/JmsManager$JmsManagerFactory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/appender/mom/JmsManager$JmsManagerConfiguration;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "configuration"    # Lorg/apache/logging/log4j/core/appender/mom/JmsManager$JmsManagerConfiguration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "name",
            "configuration"
        }
    .end annotation

    .line 246
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/apache/logging/log4j/core/appender/AbstractManager;-><init>(Lorg/apache/logging/log4j/core/LoggerContext;Ljava/lang/String;)V

    .line 247
    iput-object p2, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->configuration:Lorg/apache/logging/log4j/core/appender/mom/JmsManager$JmsManagerConfiguration;

    .line 248
    invoke-virtual {p2}, Lorg/apache/logging/log4j/core/appender/mom/JmsManager$JmsManagerConfiguration;->getJndiManager()Lorg/apache/logging/log4j/core/net/JndiManager;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->jndiManager:Lorg/apache/logging/log4j/core/net/JndiManager;

    .line 250
    :try_start_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->jndiManager:Lorg/apache/logging/log4j/core/net/JndiManager;

    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->createConnection(Lorg/apache/logging/log4j/core/net/JndiManager;)Ljavax/jms/Connection;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->connection:Ljavax/jms/Connection;

    .line 251
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->connection:Ljavax/jms/Connection;

    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->createSession(Ljavax/jms/Connection;)Ljavax/jms/Session;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->session:Ljavax/jms/Session;

    .line 252
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->jndiManager:Lorg/apache/logging/log4j/core/net/JndiManager;

    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->createDestination(Lorg/apache/logging/log4j/core/net/JndiManager;)Ljavax/jms/Destination;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->destination:Ljavax/jms/Destination;

    .line 253
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->session:Ljavax/jms/Session;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->destination:Ljavax/jms/Destination;

    invoke-virtual {p0, v0, v1}, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->createMessageProducer(Ljavax/jms/Session;Ljavax/jms/Destination;)Ljavax/jms/MessageProducer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->messageProducer:Ljavax/jms/MessageProducer;

    .line 254
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->connection:Ljavax/jms/Connection;

    invoke-interface {v0}, Ljavax/jms/Connection;->start()V
    :try_end_0
    .catch Ljavax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/jms/JMSException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    goto :goto_0

    .line 255
    :catch_0
    move-exception v0

    .line 256
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->createReconnector()Lorg/apache/logging/log4j/core/appender/mom/JmsManager$Reconnector;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->reconnector:Lorg/apache/logging/log4j/core/appender/mom/JmsManager$Reconnector;

    .line 257
    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->reconnector:Lorg/apache/logging/log4j/core/appender/mom/JmsManager$Reconnector;

    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/appender/mom/JmsManager$Reconnector;->start()V

    .line 259
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/appender/mom/JmsManager$JmsManagerConfiguration;Lorg/apache/logging/log4j/core/appender/mom/JmsManager$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lorg/apache/logging/log4j/core/appender/mom/JmsManager$JmsManagerConfiguration;
    .param p3, "x2"    # Lorg/apache/logging/log4j/core/appender/mom/JmsManager$1;

    .line 52
    invoke-direct {p0, p1, p2}, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/appender/mom/JmsManager$JmsManagerConfiguration;)V

    return-void
.end method

.method static synthetic access$100()Lorg/apache/logging/log4j/status/StatusLogger;
    .locals 1

    .line 52
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->logger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1002(Lorg/apache/logging/log4j/core/appender/mom/JmsManager;Ljavax/jms/MessageProducer;)Ljavax/jms/MessageProducer;
    .locals 0
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/mom/JmsManager;
    .param p1, "x1"    # Ljavax/jms/MessageProducer;

    .line 52
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->messageProducer:Ljavax/jms/MessageProducer;

    return-object p1
.end method

.method static synthetic access$1102(Lorg/apache/logging/log4j/core/appender/mom/JmsManager;Lorg/apache/logging/log4j/core/appender/mom/JmsManager$Reconnector;)Lorg/apache/logging/log4j/core/appender/mom/JmsManager$Reconnector;
    .locals 0
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/mom/JmsManager;
    .param p1, "x1"    # Lorg/apache/logging/log4j/core/appender/mom/JmsManager$Reconnector;

    .line 52
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->reconnector:Lorg/apache/logging/log4j/core/appender/mom/JmsManager$Reconnector;

    return-object p1
.end method

.method static synthetic access$1200(Lorg/apache/logging/log4j/core/appender/mom/JmsManager;)Lorg/apache/logging/log4j/core/appender/mom/JmsManager$JmsManagerConfiguration;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/mom/JmsManager;

    .line 52
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->configuration:Lorg/apache/logging/log4j/core/appender/mom/JmsManager$JmsManagerConfiguration;

    return-object v0
.end method

.method static synthetic access$1300()Lorg/apache/logging/log4j/status/StatusLogger;
    .locals 1

    .line 52
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->logger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400()Lorg/apache/logging/log4j/status/StatusLogger;
    .locals 1

    .line 52
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->logger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Lorg/apache/logging/log4j/status/StatusLogger;
    .locals 1

    .line 52
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->logger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/logging/log4j/core/appender/mom/JmsManager;Lorg/apache/logging/log4j/core/net/JndiManager;)Ljavax/jms/Connection;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/mom/JmsManager;
    .param p1, "x1"    # Lorg/apache/logging/log4j/core/net/JndiManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;,
            Ljavax/jms/JMSException;
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1}, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->createConnection(Lorg/apache/logging/log4j/core/net/JndiManager;)Ljavax/jms/Connection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/logging/log4j/core/appender/mom/JmsManager;Ljavax/jms/Connection;)Ljavax/jms/Session;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/mom/JmsManager;
    .param p1, "x1"    # Ljavax/jms/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1}, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->createSession(Ljavax/jms/Connection;)Ljavax/jms/Session;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/logging/log4j/core/appender/mom/JmsManager;Lorg/apache/logging/log4j/core/net/JndiManager;)Ljavax/jms/Destination;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/mom/JmsManager;
    .param p1, "x1"    # Lorg/apache/logging/log4j/core/net/JndiManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1}, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->createDestination(Lorg/apache/logging/log4j/core/net/JndiManager;)Ljavax/jms/Destination;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$602(Lorg/apache/logging/log4j/core/appender/mom/JmsManager;Lorg/apache/logging/log4j/core/net/JndiManager;)Lorg/apache/logging/log4j/core/net/JndiManager;
    .locals 0
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/mom/JmsManager;
    .param p1, "x1"    # Lorg/apache/logging/log4j/core/net/JndiManager;

    .line 52
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->jndiManager:Lorg/apache/logging/log4j/core/net/JndiManager;

    return-object p1
.end method

.method static synthetic access$702(Lorg/apache/logging/log4j/core/appender/mom/JmsManager;Ljavax/jms/Connection;)Ljavax/jms/Connection;
    .locals 0
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/mom/JmsManager;
    .param p1, "x1"    # Ljavax/jms/Connection;

    .line 52
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->connection:Ljavax/jms/Connection;

    return-object p1
.end method

.method static synthetic access$802(Lorg/apache/logging/log4j/core/appender/mom/JmsManager;Ljavax/jms/Session;)Ljavax/jms/Session;
    .locals 0
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/mom/JmsManager;
    .param p1, "x1"    # Ljavax/jms/Session;

    .line 52
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->session:Ljavax/jms/Session;

    return-object p1
.end method

.method static synthetic access$902(Lorg/apache/logging/log4j/core/appender/mom/JmsManager;Ljavax/jms/Destination;)Ljavax/jms/Destination;
    .locals 0
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/mom/JmsManager;
    .param p1, "x1"    # Ljavax/jms/Destination;

    .line 52
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->destination:Ljavax/jms/Destination;

    return-object p1
.end method

.method private closeConnection()Z
    .locals 5

    .line 262
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->connection:Ljavax/jms/Connection;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 263
    return v1

    .line 265
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->connection:Ljavax/jms/Connection;

    .line 266
    .local v0, "temp":Ljavax/jms/Connection;
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->connection:Ljavax/jms/Connection;

    .line 268
    :try_start_0
    invoke-interface {v0}, Ljavax/jms/Connection;->close()V
    :try_end_0
    .catch Ljavax/jms/JMSException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    return v1

    .line 270
    :catch_0
    move-exception v1

    .line 271
    .local v1, "e":Ljavax/jms/JMSException;
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v2

    .line 273
    invoke-virtual {v1}, Ljavax/jms/JMSException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    .line 271
    const-string v4, "Caught exception closing JMS Connection: {} ({}); continuing JMS manager shutdown"

    invoke-virtual {v2, v4, v3, v0, v1}, Lorg/apache/logging/log4j/status/StatusLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 274
    const/4 v2, 0x0

    return v2
.end method

.method private closeJndiManager()Z
    .locals 3

    .line 279
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->jndiManager:Lorg/apache/logging/log4j/core/net/JndiManager;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 280
    return v1

    .line 282
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->jndiManager:Lorg/apache/logging/log4j/core/net/JndiManager;

    .line 283
    .local v0, "tmp":Lorg/apache/logging/log4j/core/net/JndiManager;
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->jndiManager:Lorg/apache/logging/log4j/core/net/JndiManager;

    .line 284
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/net/JndiManager;->close()V

    .line 285
    return v1
.end method

.method private closeMessageProducer()Z
    .locals 5

    .line 289
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->messageProducer:Ljavax/jms/MessageProducer;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 290
    return v1

    .line 292
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->messageProducer:Ljavax/jms/MessageProducer;

    .line 293
    .local v0, "temp":Ljavax/jms/MessageProducer;
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->messageProducer:Ljavax/jms/MessageProducer;

    .line 295
    :try_start_0
    invoke-interface {v0}, Ljavax/jms/MessageProducer;->close()V
    :try_end_0
    .catch Ljavax/jms/JMSException; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    return v1

    .line 297
    :catch_0
    move-exception v1

    .line 298
    .local v1, "e":Ljavax/jms/JMSException;
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v2

    .line 300
    invoke-virtual {v1}, Ljavax/jms/JMSException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    .line 298
    const-string v4, "Caught exception closing JMS MessageProducer: {} ({}); continuing JMS manager shutdown"

    invoke-virtual {v2, v4, v3, v0, v1}, Lorg/apache/logging/log4j/status/StatusLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 301
    const/4 v2, 0x0

    return v2
.end method

.method private closeSession()Z
    .locals 5

    .line 306
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->session:Ljavax/jms/Session;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 307
    return v1

    .line 309
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->session:Ljavax/jms/Session;

    .line 310
    .local v0, "temp":Ljavax/jms/Session;
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->session:Ljavax/jms/Session;

    .line 312
    :try_start_0
    invoke-interface {v0}, Ljavax/jms/Session;->close()V
    :try_end_0
    .catch Ljavax/jms/JMSException; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    return v1

    .line 314
    :catch_0
    move-exception v1

    .line 315
    .local v1, "e":Ljavax/jms/JMSException;
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v2

    .line 317
    invoke-virtual {v1}, Ljavax/jms/JMSException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    .line 315
    const-string v4, "Caught exception closing JMS Session: {} ({}); continuing JMS manager shutdown"

    invoke-virtual {v2, v4, v3, v0, v1}, Lorg/apache/logging/log4j/status/StatusLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 318
    const/4 v2, 0x0

    return v2
.end method

.method private createConnection(Lorg/apache/logging/log4j/core/net/JndiManager;)Ljavax/jms/Connection;
    .locals 3
    .param p1, "jndiManager"    # Lorg/apache/logging/log4j/core/net/JndiManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "jndiManager"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;,
            Ljavax/jms/JMSException;
        }
    .end annotation

    .line 323
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->configuration:Lorg/apache/logging/log4j/core/appender/mom/JmsManager$JmsManagerConfiguration;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/appender/mom/JmsManager$JmsManagerConfiguration;->getConnectionFactoryName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/logging/log4j/core/net/JndiManager;->lookup(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jms/ConnectionFactory;

    .line 324
    .local v0, "connectionFactory":Ljavax/jms/ConnectionFactory;
    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->configuration:Lorg/apache/logging/log4j/core/appender/mom/JmsManager$JmsManagerConfiguration;

    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/appender/mom/JmsManager$JmsManagerConfiguration;->getUserName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->configuration:Lorg/apache/logging/log4j/core/appender/mom/JmsManager$JmsManagerConfiguration;

    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/appender/mom/JmsManager$JmsManagerConfiguration;->getPassword()[C

    move-result-object v1

    if-eqz v1, :cond_1

    .line 325
    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->configuration:Lorg/apache/logging/log4j/core/appender/mom/JmsManager$JmsManagerConfiguration;

    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/appender/mom/JmsManager$JmsManagerConfiguration;->getUserName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->configuration:Lorg/apache/logging/log4j/core/appender/mom/JmsManager$JmsManagerConfiguration;

    .line 326
    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/appender/mom/JmsManager$JmsManagerConfiguration;->getPassword()[C

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->configuration:Lorg/apache/logging/log4j/core/appender/mom/JmsManager$JmsManagerConfiguration;

    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/appender/mom/JmsManager$JmsManagerConfiguration;->getPassword()[C

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    .line 325
    :goto_0
    invoke-interface {v0, v1, v2}, Ljavax/jms/ConnectionFactory;->createConnection(Ljava/lang/String;Ljava/lang/String;)Ljavax/jms/Connection;

    move-result-object v1

    return-object v1

    .line 328
    :cond_1
    invoke-interface {v0}, Ljavax/jms/ConnectionFactory;->createConnection()Ljavax/jms/Connection;

    move-result-object v1

    return-object v1
.end method

.method private createDestination(Lorg/apache/logging/log4j/core/net/JndiManager;)Ljavax/jms/Destination;
    .locals 1
    .param p1, "jndiManager"    # Lorg/apache/logging/log4j/core/net/JndiManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "jndiManager"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 333
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->configuration:Lorg/apache/logging/log4j/core/appender/mom/JmsManager$JmsManagerConfiguration;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/appender/mom/JmsManager$JmsManagerConfiguration;->getDestinationName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/logging/log4j/core/net/JndiManager;->lookup(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jms/Destination;

    return-object v0
.end method

.method private createMessageAndSend(Lorg/apache/logging/log4j/core/LogEvent;Ljava/io/Serializable;)V
    .locals 3
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .param p2, "serializable"    # Ljava/io/Serializable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "event",
            "serializable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation

    .line 367
    invoke-virtual {p0, p2}, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->createMessage(Ljava/io/Serializable;)Ljavax/jms/Message;

    move-result-object v0

    .line 368
    .local v0, "message":Ljavax/jms/Message;
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getTimeMillis()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Ljavax/jms/Message;->setJMSTimestamp(J)V

    .line 369
    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->messageProducer:Ljavax/jms/MessageProducer;

    invoke-interface {v1, v0}, Ljavax/jms/MessageProducer;->send(Ljavax/jms/Message;)V

    .line 370
    return-void
.end method

.method private createReconnector()Lorg/apache/logging/log4j/core/appender/mom/JmsManager$Reconnector;
    .locals 2

    .line 398
    new-instance v0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager$Reconnector;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p0, v1}, Lorg/apache/logging/log4j/core/appender/mom/JmsManager$Reconnector;-><init>(Lorg/apache/logging/log4j/core/appender/mom/JmsManager;Ljava/lang/Object;Lorg/apache/logging/log4j/core/appender/mom/JmsManager$1;)V

    .line 399
    .local v0, "recon":Lorg/apache/logging/log4j/core/appender/mom/JmsManager$Reconnector;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/appender/mom/JmsManager$Reconnector;->setDaemon(Z)V

    .line 400
    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/appender/mom/JmsManager$Reconnector;->setPriority(I)V

    .line 401
    return-object v0
.end method

.method private createSession(Ljavax/jms/Connection;)Ljavax/jms/Session;
    .locals 2
    .param p1, "connection"    # Ljavax/jms/Connection;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "connection"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation

    .line 405
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Ljavax/jms/Connection;->createSession(ZI)Ljavax/jms/Session;

    move-result-object v0

    return-object v0
.end method

.method public static getJmsManager(Ljava/lang/String;Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[CZJ)Lorg/apache/logging/log4j/core/appender/mom/JmsManager;
    .locals 10
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "jndiProperties"    # Ljava/util/Properties;
    .param p2, "connectionFactoryName"    # Ljava/lang/String;
    .param p3, "destinationName"    # Ljava/lang/String;
    .param p4, "userName"    # Ljava/lang/String;
    .param p5, "password"    # [C
    .param p6, "immediateFail"    # Z
    .param p7, "reconnectIntervalMillis"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
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
            "name",
            "jndiProperties",
            "connectionFactoryName",
            "destinationName",
            "userName",
            "password",
            "immediateFail",
            "reconnectIntervalMillis"
        }
    .end annotation

    .line 231
    new-instance v9, Lorg/apache/logging/log4j/core/appender/mom/JmsManager$JmsManagerConfiguration;

    move-object v0, v9

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move-wide/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lorg/apache/logging/log4j/core/appender/mom/JmsManager$JmsManagerConfiguration;-><init>(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[CZJ)V

    .line 233
    .local v0, "configuration":Lorg/apache/logging/log4j/core/appender/mom/JmsManager$JmsManagerConfiguration;
    sget-object v1, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->FACTORY:Lorg/apache/logging/log4j/core/appender/mom/JmsManager$JmsManagerFactory;

    move-object v2, p0

    invoke-static {p0, v1, v0}, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->getManager(Ljava/lang/String;Lorg/apache/logging/log4j/core/appender/ManagerFactory;Ljava/lang/Object;)Lorg/apache/logging/log4j/core/appender/AbstractManager;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;

    return-object v1
.end method

.method static synthetic lambda$map$0(Ljavax/jms/MapMessage;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .param p0, "jmsMapMessage"    # Ljavax/jms/MapMessage;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000,
            0x1000
        }
        names = {
            "jmsMapMessage",
            "key",
            "value"
        }
    .end annotation

    .line 425
    :try_start_0
    invoke-interface {p0, p1, p2}, Ljavax/jms/MapMessage;->setObject(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljavax/jms/JMSException; {:try_start_0 .. :try_end_0} :catch_0

    .line 429
    nop

    .line 430
    return-void

    .line 426
    :catch_0
    move-exception v0

    .line 427
    .local v0, "e":Ljavax/jms/JMSException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 428
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    const/4 v3, 0x3

    invoke-virtual {v0}, Ljavax/jms/JMSException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 427
    const-string v3, "%s mapping key \'%s\' to value \'%s\': %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private map(Lorg/apache/logging/log4j/message/MapMessage;Ljavax/jms/MapMessage;)Ljavax/jms/MapMessage;
    .locals 1
    .param p2, "jmsMapMessage"    # Ljavax/jms/MapMessage;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "log4jMapMessage",
            "jmsMapMessage"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/message/MapMessage<",
            "**>;",
            "Ljavax/jms/MapMessage;",
            ")",
            "Ljavax/jms/MapMessage;"
        }
    .end annotation

    .line 423
    .local p1, "log4jMapMessage":Lorg/apache/logging/log4j/message/MapMessage;, "Lorg/apache/logging/log4j/message/MapMessage<**>;"
    new-instance v0, Lorg/apache/logging/log4j/core/appender/mom/-$$Lambda$JmsManager$DhD6oKMBM_dIElayExkQaodmrkQ;

    invoke-direct {v0, p2}, Lorg/apache/logging/log4j/core/appender/mom/-$$Lambda$JmsManager$DhD6oKMBM_dIElayExkQaodmrkQ;-><init>(Ljavax/jms/MapMessage;)V

    invoke-virtual {p1, v0}, Lorg/apache/logging/log4j/message/MapMessage;->forEach(Lorg/apache/logging/log4j/util/BiConsumer;)V

    .line 431
    return-object p2
.end method


# virtual methods
.method public createMessage(Ljava/io/Serializable;)Ljavax/jms/Message;
    .locals 2
    .param p1, "object"    # Ljava/io/Serializable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "object"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation

    .line 358
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->session:Ljavax/jms/Session;

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljavax/jms/Session;->createTextMessage(Ljava/lang/String;)Ljavax/jms/TextMessage;

    move-result-object v0

    return-object v0

    .line 360
    :cond_0
    instance-of v0, p1, Lorg/apache/logging/log4j/message/MapMessage;

    if-eqz v0, :cond_1

    .line 361
    move-object v0, p1

    check-cast v0, Lorg/apache/logging/log4j/message/MapMessage;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->session:Ljavax/jms/Session;

    invoke-interface {v1}, Ljavax/jms/Session;->createMapMessage()Ljavax/jms/MapMessage;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->map(Lorg/apache/logging/log4j/message/MapMessage;Ljavax/jms/MapMessage;)Ljavax/jms/MapMessage;

    move-result-object v0

    return-object v0

    .line 363
    :cond_1
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->session:Ljavax/jms/Session;

    invoke-interface {v0, p1}, Ljavax/jms/Session;->createObjectMessage(Ljava/io/Serializable;)Ljavax/jms/ObjectMessage;

    move-result-object v0

    return-object v0
.end method

.method public createMessageConsumer()Ljavax/jms/MessageConsumer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation

    .line 379
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->session:Ljavax/jms/Session;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->destination:Ljavax/jms/Destination;

    invoke-interface {v0, v1}, Ljavax/jms/Session;->createConsumer(Ljavax/jms/Destination;)Ljavax/jms/MessageConsumer;

    move-result-object v0

    return-object v0
.end method

.method public createMessageProducer(Ljavax/jms/Session;Ljavax/jms/Destination;)Ljavax/jms/MessageProducer;
    .locals 1
    .param p1, "session"    # Ljavax/jms/Session;
    .param p2, "destination"    # Ljavax/jms/Destination;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "session",
            "destination"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation

    .line 394
    invoke-interface {p1, p2}, Ljavax/jms/Session;->createProducer(Ljavax/jms/Destination;)Ljavax/jms/MessageProducer;

    move-result-object v0

    return-object v0
.end method

.method public getJmsManagerConfiguration()Lorg/apache/logging/log4j/core/appender/mom/JmsManager$JmsManagerConfiguration;
    .locals 1

    .line 409
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->configuration:Lorg/apache/logging/log4j/core/appender/mom/JmsManager$JmsManagerConfiguration;

    return-object v0
.end method

.method getJndiManager()Lorg/apache/logging/log4j/core/net/JndiManager;
    .locals 1

    .line 413
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->configuration:Lorg/apache/logging/log4j/core/appender/mom/JmsManager$JmsManagerConfiguration;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/appender/mom/JmsManager$JmsManagerConfiguration;->getJndiManager()Lorg/apache/logging/log4j/core/net/JndiManager;

    move-result-object v0

    return-object v0
.end method

.method lookup(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "destinationName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "destinationName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 417
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->jndiManager:Lorg/apache/logging/log4j/core/net/JndiManager;

    invoke-virtual {v0, p1}, Lorg/apache/logging/log4j/core/net/JndiManager;->lookup(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected releaseSub(JLjava/util/concurrent/TimeUnit;)Z
    .locals 2
    .param p1, "timeout"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "timeout",
            "timeUnit"
        }
    .end annotation

    .line 436
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->reconnector:Lorg/apache/logging/log4j/core/appender/mom/JmsManager$Reconnector;

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->reconnector:Lorg/apache/logging/log4j/core/appender/mom/JmsManager$Reconnector;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/appender/mom/JmsManager$Reconnector;->shutdown()V

    .line 438
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->reconnector:Lorg/apache/logging/log4j/core/appender/mom/JmsManager$Reconnector;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/appender/mom/JmsManager$Reconnector;->interrupt()V

    .line 439
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->reconnector:Lorg/apache/logging/log4j/core/appender/mom/JmsManager$Reconnector;

    .line 441
    :cond_0
    const/4 v0, 0x0

    .line 442
    .local v0, "closed":Z
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->closeJndiManager()Z

    move-result v1

    and-int/2addr v0, v1

    .line 443
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->closeMessageProducer()Z

    move-result v1

    and-int/2addr v0, v1

    .line 444
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->closeSession()Z

    move-result v1

    and-int/2addr v0, v1

    .line 445
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->closeConnection()Z

    move-result v1

    and-int/2addr v0, v1

    .line 446
    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->jndiManager:Lorg/apache/logging/log4j/core/net/JndiManager;

    invoke-virtual {v1, p1, p2, p3}, Lorg/apache/logging/log4j/core/net/JndiManager;->stop(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method send(Lorg/apache/logging/log4j/core/LogEvent;Ljava/io/Serializable;)V
    .locals 11
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .param p2, "serializable"    # Ljava/io/Serializable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "event",
            "serializable"
        }
    .end annotation

    .line 450
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->messageProducer:Ljavax/jms/MessageProducer;

    if-nez v0, :cond_1

    .line 451
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->reconnector:Lorg/apache/logging/log4j/core/appender/mom/JmsManager$Reconnector;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->configuration:Lorg/apache/logging/log4j/core/appender/mom/JmsManager$JmsManagerConfiguration;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/appender/mom/JmsManager$JmsManagerConfiguration;->isImmediateFail()Z

    move-result v0

    if-nez v0, :cond_1

    .line 452
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->reconnector:Lorg/apache/logging/log4j/core/appender/mom/JmsManager$Reconnector;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/appender/mom/JmsManager$Reconnector;->latch()V

    .line 453
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->messageProducer:Ljavax/jms/MessageProducer;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 454
    :cond_0
    new-instance v0, Lorg/apache/logging/log4j/core/appender/AppenderLoggingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error sending to JMS Manager \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\': JMS message producer not available"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/appender/AppenderLoggingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 459
    :cond_1
    :goto_0
    monitor-enter p0

    .line 461
    :try_start_0
    invoke-direct {p0, p1, p2}, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->createMessageAndSend(Lorg/apache/logging/log4j/core/LogEvent;Ljava/io/Serializable;)V
    :try_end_0
    .catch Ljavax/jms/JMSException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 484
    goto :goto_1

    .line 485
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 462
    :catch_0
    move-exception v0

    .line 463
    .local v0, "causeEx":Ljavax/jms/JMSException;
    :try_start_1
    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->configuration:Lorg/apache/logging/log4j/core/appender/mom/JmsManager$JmsManagerConfiguration;

    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/appender/mom/JmsManager$JmsManagerConfiguration;->isRetry()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->reconnector:Lorg/apache/logging/log4j/core/appender/mom/JmsManager$Reconnector;

    if-nez v1, :cond_2

    .line 464
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->createReconnector()Lorg/apache/logging/log4j/core/appender/mom/JmsManager$Reconnector;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->reconnector:Lorg/apache/logging/log4j/core/appender/mom/JmsManager$Reconnector;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 466
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    :try_start_2
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->closeJndiManager()Z

    .line 467
    iget-object v4, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->reconnector:Lorg/apache/logging/log4j/core/appender/mom/JmsManager$Reconnector;

    invoke-virtual {v4}, Lorg/apache/logging/log4j/core/appender/mom/JmsManager$Reconnector;->reconnect()V
    :try_end_2
    .catch Ljavax/naming/NamingException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljavax/jms/JMSException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 474
    nop

    .line 476
    :try_start_3
    invoke-direct {p0, p1, p2}, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->createMessageAndSend(Lorg/apache/logging/log4j/core/LogEvent;Ljava/io/Serializable;)V
    :try_end_3
    .catch Ljavax/jms/JMSException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 482
    goto :goto_1

    .line 477
    :catch_1
    move-exception v4

    .line 478
    .local v4, "e":Ljavax/jms/JMSException;
    :try_start_4
    new-instance v5, Lorg/apache/logging/log4j/core/appender/AppenderLoggingException;

    const-string v6, "Error sending to %s after reestablishing JMS connection for %s"

    new-array v3, v3, [Ljava/lang/Object;

    .line 480
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v2

    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->configuration:Lorg/apache/logging/log4j/core/appender/mom/JmsManager$JmsManagerConfiguration;

    aput-object v2, v3, v1

    .line 479
    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1, v0}, Lorg/apache/logging/log4j/core/appender/AppenderLoggingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Lorg/apache/logging/log4j/core/appender/mom/JmsManager;
    .end local p1    # "event":Lorg/apache/logging/log4j/core/LogEvent;
    .end local p2    # "serializable":Ljava/io/Serializable;
    throw v5

    .line 468
    .end local v4    # "e":Ljavax/jms/JMSException;
    .restart local p0    # "this":Lorg/apache/logging/log4j/core/appender/mom/JmsManager;
    .restart local p1    # "event":Lorg/apache/logging/log4j/core/LogEvent;
    .restart local p2    # "serializable":Ljava/io/Serializable;
    :catch_2
    move-exception v4

    move-object v10, v4

    .line 469
    .local v10, "reconnEx":Ljava/lang/Exception;
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->logger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v5

    const-string v6, "Cannot reestablish JMS connection to {}: {}; starting reconnector thread {}"

    iget-object v7, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->configuration:Lorg/apache/logging/log4j/core/appender/mom/JmsManager$JmsManagerConfiguration;

    .line 470
    invoke-virtual {v10}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v8

    iget-object v4, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->reconnector:Lorg/apache/logging/log4j/core/appender/mom/JmsManager$Reconnector;

    invoke-virtual {v4}, Lorg/apache/logging/log4j/core/appender/mom/JmsManager$Reconnector;->getName()Ljava/lang/String;

    move-result-object v9

    .line 469
    invoke-virtual/range {v5 .. v10}, Lorg/apache/logging/log4j/status/StatusLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 471
    iget-object v4, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->reconnector:Lorg/apache/logging/log4j/core/appender/mom/JmsManager$Reconnector;

    invoke-virtual {v4}, Lorg/apache/logging/log4j/core/appender/mom/JmsManager$Reconnector;->start()V

    .line 472
    new-instance v4, Lorg/apache/logging/log4j/core/appender/AppenderLoggingException;

    const-string v5, "JMS exception sending to %s for %s"

    new-array v3, v3, [Ljava/lang/Object;

    .line 473
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v2

    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->configuration:Lorg/apache/logging/log4j/core/appender/mom/JmsManager$JmsManagerConfiguration;

    aput-object v2, v3, v1

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1, v0}, Lorg/apache/logging/log4j/core/appender/AppenderLoggingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Lorg/apache/logging/log4j/core/appender/mom/JmsManager;
    .end local p1    # "event":Lorg/apache/logging/log4j/core/LogEvent;
    .end local p2    # "serializable":Ljava/io/Serializable;
    throw v4

    .line 485
    .end local v0    # "causeEx":Ljavax/jms/JMSException;
    .end local v10    # "reconnEx":Ljava/lang/Exception;
    .restart local p0    # "this":Lorg/apache/logging/log4j/core/appender/mom/JmsManager;
    .restart local p1    # "event":Lorg/apache/logging/log4j/core/LogEvent;
    .restart local p2    # "serializable":Ljava/io/Serializable;
    :cond_2
    :goto_1
    monitor-exit p0

    .line 486
    return-void

    .line 485
    :goto_2
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method
