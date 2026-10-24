.class Lorg/apache/logging/log4j/core/appender/mom/JmsManager$Reconnector;
.super Lorg/apache/logging/log4j/core/util/Log4jThread;
.source "JmsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/appender/mom/JmsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Reconnector"
.end annotation


# instance fields
.field private final latch:Ljava/util/concurrent/CountDownLatch;

.field private final owner:Ljava/lang/Object;

.field private volatile shutdown:Z

.field final synthetic this$0:Lorg/apache/logging/log4j/core/appender/mom/JmsManager;


# direct methods
.method private constructor <init>(Lorg/apache/logging/log4j/core/appender/mom/JmsManager;Ljava/lang/Object;)V
    .locals 1
    .param p2, "owner"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x10
        }
        names = {
            "this$0",
            "owner"
        }
    .end annotation

    .line 151
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager$Reconnector;->this$0:Lorg/apache/logging/log4j/core/appender/mom/JmsManager;

    .line 152
    const-string p1, "JmsManager-Reconnector"

    invoke-direct {p0, p1}, Lorg/apache/logging/log4j/core/util/Log4jThread;-><init>(Ljava/lang/String;)V

    .line 145
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager$Reconnector;->latch:Ljava/util/concurrent/CountDownLatch;

    .line 153
    iput-object p2, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager$Reconnector;->owner:Ljava/lang/Object;

    .line 154
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/logging/log4j/core/appender/mom/JmsManager;Ljava/lang/Object;Lorg/apache/logging/log4j/core/appender/mom/JmsManager$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/logging/log4j/core/appender/mom/JmsManager;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Lorg/apache/logging/log4j/core/appender/mom/JmsManager$1;

    .line 143
    invoke-direct {p0, p1, p2}, Lorg/apache/logging/log4j/core/appender/mom/JmsManager$Reconnector;-><init>(Lorg/apache/logging/log4j/core/appender/mom/JmsManager;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public latch()V
    .locals 1

    .line 158
    :try_start_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager$Reconnector;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    goto :goto_0

    .line 159
    :catch_0
    move-exception v0

    .line 162
    :goto_0
    return-void
.end method

.method reconnect()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;,
            Ljavax/jms/JMSException;
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager$Reconnector;->this$0:Lorg/apache/logging/log4j/core/appender/mom/JmsManager;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->getJndiManager()Lorg/apache/logging/log4j/core/net/JndiManager;

    move-result-object v0

    .line 166
    .local v0, "jndiManager2":Lorg/apache/logging/log4j/core/net/JndiManager;
    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager$Reconnector;->this$0:Lorg/apache/logging/log4j/core/appender/mom/JmsManager;

    invoke-static {v1, v0}, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->access$300(Lorg/apache/logging/log4j/core/appender/mom/JmsManager;Lorg/apache/logging/log4j/core/net/JndiManager;)Ljavax/jms/Connection;

    move-result-object v1

    .line 167
    .local v1, "connection2":Ljavax/jms/Connection;
    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager$Reconnector;->this$0:Lorg/apache/logging/log4j/core/appender/mom/JmsManager;

    invoke-static {v2, v1}, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->access$400(Lorg/apache/logging/log4j/core/appender/mom/JmsManager;Ljavax/jms/Connection;)Ljavax/jms/Session;

    move-result-object v2

    .line 168
    .local v2, "session2":Ljavax/jms/Session;
    iget-object v3, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager$Reconnector;->this$0:Lorg/apache/logging/log4j/core/appender/mom/JmsManager;

    invoke-static {v3, v0}, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->access$500(Lorg/apache/logging/log4j/core/appender/mom/JmsManager;Lorg/apache/logging/log4j/core/net/JndiManager;)Ljavax/jms/Destination;

    move-result-object v3

    .line 169
    .local v3, "destination2":Ljavax/jms/Destination;
    iget-object v4, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager$Reconnector;->this$0:Lorg/apache/logging/log4j/core/appender/mom/JmsManager;

    invoke-virtual {v4, v2, v3}, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->createMessageProducer(Ljavax/jms/Session;Ljavax/jms/Destination;)Ljavax/jms/MessageProducer;

    move-result-object v4

    .line 170
    .local v4, "messageProducer2":Ljavax/jms/MessageProducer;
    invoke-interface {v1}, Ljavax/jms/Connection;->start()V

    .line 171
    iget-object v5, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager$Reconnector;->owner:Ljava/lang/Object;

    monitor-enter v5

    .line 172
    :try_start_0
    iget-object v6, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager$Reconnector;->this$0:Lorg/apache/logging/log4j/core/appender/mom/JmsManager;

    invoke-static {v6, v0}, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->access$602(Lorg/apache/logging/log4j/core/appender/mom/JmsManager;Lorg/apache/logging/log4j/core/net/JndiManager;)Lorg/apache/logging/log4j/core/net/JndiManager;

    .line 173
    iget-object v6, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager$Reconnector;->this$0:Lorg/apache/logging/log4j/core/appender/mom/JmsManager;

    invoke-static {v6, v1}, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->access$702(Lorg/apache/logging/log4j/core/appender/mom/JmsManager;Ljavax/jms/Connection;)Ljavax/jms/Connection;

    .line 174
    iget-object v6, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager$Reconnector;->this$0:Lorg/apache/logging/log4j/core/appender/mom/JmsManager;

    invoke-static {v6, v2}, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->access$802(Lorg/apache/logging/log4j/core/appender/mom/JmsManager;Ljavax/jms/Session;)Ljavax/jms/Session;

    .line 175
    iget-object v6, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager$Reconnector;->this$0:Lorg/apache/logging/log4j/core/appender/mom/JmsManager;

    invoke-static {v6, v3}, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->access$902(Lorg/apache/logging/log4j/core/appender/mom/JmsManager;Ljavax/jms/Destination;)Ljavax/jms/Destination;

    .line 176
    iget-object v6, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager$Reconnector;->this$0:Lorg/apache/logging/log4j/core/appender/mom/JmsManager;

    invoke-static {v6, v4}, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->access$1002(Lorg/apache/logging/log4j/core/appender/mom/JmsManager;Ljavax/jms/MessageProducer;)Ljavax/jms/MessageProducer;

    .line 177
    iget-object v6, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager$Reconnector;->this$0:Lorg/apache/logging/log4j/core/appender/mom/JmsManager;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->access$1102(Lorg/apache/logging/log4j/core/appender/mom/JmsManager;Lorg/apache/logging/log4j/core/appender/mom/JmsManager$Reconnector;)Lorg/apache/logging/log4j/core/appender/mom/JmsManager$Reconnector;

    .line 178
    const/4 v6, 0x1

    iput-boolean v6, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager$Reconnector;->shutdown:Z

    .line 179
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->access$1300()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager$Reconnector;->this$0:Lorg/apache/logging/log4j/core/appender/mom/JmsManager;

    invoke-static {v6}, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->access$1200(Lorg/apache/logging/log4j/core/appender/mom/JmsManager;)Lorg/apache/logging/log4j/core/appender/mom/JmsManager$JmsManagerConfiguration;

    move-result-object v6

    const-string v7, "Connection reestablished to {}"

    invoke-virtual {v5, v7, v6}, Lorg/apache/logging/log4j/status/StatusLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 181
    return-void

    .line 179
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method public run()V
    .locals 5

    .line 185
    :goto_0
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager$Reconnector;->shutdown:Z

    if-nez v0, :cond_0

    .line 187
    :try_start_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager$Reconnector;->this$0:Lorg/apache/logging/log4j/core/appender/mom/JmsManager;

    invoke-static {v0}, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->access$1200(Lorg/apache/logging/log4j/core/appender/mom/JmsManager;)Lorg/apache/logging/log4j/core/appender/mom/JmsManager$JmsManagerConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/appender/mom/JmsManager$JmsManagerConfiguration;->getReconnectIntervalMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/logging/log4j/core/appender/mom/JmsManager$Reconnector;->sleep(J)V

    .line 188
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/mom/JmsManager$Reconnector;->reconnect()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/jms/JMSException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    :goto_1
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager$Reconnector;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 194
    goto :goto_2

    .line 193
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->access$1400()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v1

    const-string v2, "Cannot reestablish JMS connection to {}: {}"

    iget-object v3, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager$Reconnector;->this$0:Lorg/apache/logging/log4j/core/appender/mom/JmsManager;

    invoke-static {v3}, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->access$1200(Lorg/apache/logging/log4j/core/appender/mom/JmsManager;)Lorg/apache/logging/log4j/core/appender/mom/JmsManager$JmsManagerConfiguration;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4, v0}, Lorg/apache/logging/log4j/status/StatusLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 193
    :goto_2
    goto :goto_0

    :goto_3
    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager$Reconnector;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0

    .line 196
    :cond_0
    return-void
.end method

.method public shutdown()V
    .locals 1

    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager$Reconnector;->shutdown:Z

    .line 200
    return-void
.end method
