.class final Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$Reconnector;
.super Lorg/apache/logging/log4j/core/util/Log4jThread;
.source "JdbcDatabaseManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Reconnector"
.end annotation


# instance fields
.field private final latch:Ljava/util/concurrent/CountDownLatch;

.field private volatile shutdown:Z

.field final synthetic this$0:Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;


# direct methods
.method private constructor <init>(Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 167
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$Reconnector;->this$0:Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;

    .line 168
    const-string p1, "JdbcDatabaseManager-Reconnector"

    invoke-direct {p0, p1}, Lorg/apache/logging/log4j/core/util/Log4jThread;-><init>(Ljava/lang/String;)V

    .line 164
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$Reconnector;->latch:Ljava/util/concurrent/CountDownLatch;

    .line 169
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;
    .param p2, "x1"    # Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$1;

    .line 162
    invoke-direct {p0, p1}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$Reconnector;-><init>(Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;)V

    return-void
.end method


# virtual methods
.method public latch()V
    .locals 1

    .line 173
    :try_start_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$Reconnector;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    goto :goto_0

    .line 174
    :catch_0
    move-exception v0

    .line 177
    :goto_0
    return-void
.end method

.method reconnect()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$Reconnector;->this$0:Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->closeResources(Z)V

    .line 181
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$Reconnector;->this$0:Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;

    invoke-static {v0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->access$800(Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;)V

    .line 182
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$Reconnector;->this$0:Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->access$902(Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$Reconnector;)Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$Reconnector;

    .line 183
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$Reconnector;->shutdown:Z

    .line 184
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->access$1100()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$Reconnector;->this$0:Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;

    invoke-static {v1}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->access$1000(Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;)Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;

    move-result-object v1

    const-string v2, "Connection reestablished to {}"

    invoke-virtual {v0, v2, v1}, Lorg/apache/logging/log4j/status/StatusLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 185
    return-void
.end method

.method public run()V
    .locals 5

    .line 189
    :goto_0
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$Reconnector;->shutdown:Z

    if-nez v0, :cond_0

    .line 191
    :try_start_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$Reconnector;->this$0:Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;

    invoke-static {v0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->access$1000(Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;)Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;->access$1200(Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$Reconnector;->sleep(J)V

    .line 192
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$Reconnector;->reconnect()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    :goto_1
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$Reconnector;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 198
    goto :goto_2

    .line 197
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->access$1300()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v1

    const-string v2, "Cannot reestablish JDBC connection to {}: {}"

    iget-object v3, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$Reconnector;->this$0:Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;

    invoke-static {v3}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;->access$1000(Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;)Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$FactoryData;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4, v0}, Lorg/apache/logging/log4j/status/StatusLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 197
    :goto_2
    goto :goto_0

    :goto_3
    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$Reconnector;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0

    .line 200
    :cond_0
    return-void
.end method

.method public shutdown()V
    .locals 1

    .line 203
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$Reconnector;->shutdown:Z

    .line 204
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 208
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$Reconnector;->latch:Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$Reconnector;->shutdown:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Reconnector [latch=%s, shutdown=%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
