.class public Lorg/apache/logging/log4j/core/appender/mom/JmsManager$JmsManagerConfiguration;
.super Ljava/lang/Object;
.source "JmsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/appender/mom/JmsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JmsManagerConfiguration"
.end annotation


# instance fields
.field private final connectionFactoryName:Ljava/lang/String;

.field private final destinationName:Ljava/lang/String;

.field private final immediateFail:Z

.field private final jndiProperties:Ljava/util/Properties;

.field private final password:[C

.field private final reconnectIntervalMillis:J

.field private final retry:Z

.field private final userName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[CZJ)V
    .locals 2
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
            0x10
        }
        names = {
            "jndiProperties",
            "connectionFactoryName",
            "destinationName",
            "userName",
            "password",
            "immediateFail",
            "reconnectIntervalMillis"
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager$JmsManagerConfiguration;->jndiProperties:Ljava/util/Properties;

    .line 68
    iput-object p2, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager$JmsManagerConfiguration;->connectionFactoryName:Ljava/lang/String;

    .line 69
    iput-object p3, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager$JmsManagerConfiguration;->destinationName:Ljava/lang/String;

    .line 70
    iput-object p4, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager$JmsManagerConfiguration;->userName:Ljava/lang/String;

    .line 71
    iput-object p5, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager$JmsManagerConfiguration;->password:[C

    .line 72
    iput-boolean p6, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager$JmsManagerConfiguration;->immediateFail:Z

    .line 73
    iput-wide p7, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager$JmsManagerConfiguration;->reconnectIntervalMillis:J

    .line 74
    const-wide/16 v0, 0x0

    cmp-long v0, p7, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager$JmsManagerConfiguration;->retry:Z

    .line 75
    return-void
.end method


# virtual methods
.method public getConnectionFactoryName()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager$JmsManagerConfiguration;->connectionFactoryName:Ljava/lang/String;

    return-object v0
.end method

.method public getDestinationName()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager$JmsManagerConfiguration;->destinationName:Ljava/lang/String;

    return-object v0
.end method

.method public getJndiManager()Lorg/apache/logging/log4j/core/net/JndiManager;
    .locals 1

    .line 86
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/mom/JmsManager$JmsManagerConfiguration;->getJndiProperties()Ljava/util/Properties;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/logging/log4j/core/net/JndiManager;->getJndiManager(Ljava/util/Properties;)Lorg/apache/logging/log4j/core/net/JndiManager;

    move-result-object v0

    return-object v0
.end method

.method public getJndiProperties()Ljava/util/Properties;
    .locals 1

    .line 90
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager$JmsManagerConfiguration;->jndiProperties:Ljava/util/Properties;

    return-object v0
.end method

.method public getPassword()[C
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager$JmsManagerConfiguration;->password:[C

    return-object v0
.end method

.method public getReconnectIntervalMillis()J
    .locals 2

    .line 98
    iget-wide v0, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager$JmsManagerConfiguration;->reconnectIntervalMillis:J

    return-wide v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager$JmsManagerConfiguration;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public isImmediateFail()Z
    .locals 1

    .line 106
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager$JmsManagerConfiguration;->immediateFail:Z

    return v0
.end method

.method public isRetry()Z
    .locals 1

    .line 110
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager$JmsManagerConfiguration;->retry:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JmsManagerConfiguration [jndiProperties="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager$JmsManagerConfiguration;->jndiProperties:Ljava/util/Properties;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", connectionFactoryName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager$JmsManagerConfiguration;->connectionFactoryName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", destinationName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager$JmsManagerConfiguration;->destinationName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", userName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager$JmsManagerConfiguration;->userName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", immediateFail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager$JmsManagerConfiguration;->immediateFail:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", retry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager$JmsManagerConfiguration;->retry:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", reconnectIntervalMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager$JmsManagerConfiguration;->reconnectIntervalMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
