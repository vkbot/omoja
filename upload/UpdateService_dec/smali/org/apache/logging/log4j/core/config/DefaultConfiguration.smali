.class public Lorg/apache/logging/log4j/core/config/DefaultConfiguration;
.super Lorg/apache/logging/log4j/core/config/AbstractConfiguration;
.source "DefaultConfiguration.java"


# static fields
.field public static final DEFAULT_LEVEL:Ljava/lang/String; = "org.apache.logging.log4j.level"

.field public static final DEFAULT_NAME:Ljava/lang/String; = "Default"

.field public static final DEFAULT_PATTERN:Ljava/lang/String; = "%d{HH:mm:ss.SSS} [%thread] %-5level %logger{36} - %msg%n"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 46
    sget-object v0, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->NULL_SOURCE:Lorg/apache/logging/log4j/core/config/ConfigurationSource;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;-><init>(Lorg/apache/logging/log4j/core/LoggerContext;Lorg/apache/logging/log4j/core/config/ConfigurationSource;)V

    .line 47
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/config/DefaultConfiguration;->setToDefault()V

    .line 48
    return-void
.end method


# virtual methods
.method protected doConfigure()V
    .locals 0

    .line 52
    return-void
.end method
