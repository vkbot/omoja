.class public Lorg/apache/logging/log4j/core/config/NullConfiguration;
.super Lorg/apache/logging/log4j/core/config/AbstractConfiguration;
.source "NullConfiguration.java"


# static fields
.field public static final NULL_NAME:Ljava/lang/String; = "Null"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 32
    sget-object v0, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->NULL_SOURCE:Lorg/apache/logging/log4j/core/config/ConfigurationSource;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;-><init>(Lorg/apache/logging/log4j/core/LoggerContext;Lorg/apache/logging/log4j/core/config/ConfigurationSource;)V

    .line 34
    const-string v0, "Null"

    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/core/config/NullConfiguration;->setName(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/config/NullConfiguration;->getRootLogger()Lorg/apache/logging/log4j/core/config/LoggerConfig;

    move-result-object v0

    .line 36
    .local v0, "root":Lorg/apache/logging/log4j/core/config/LoggerConfig;
    sget-object v1, Lorg/apache/logging/log4j/Level;->OFF:Lorg/apache/logging/log4j/Level;

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->setLevel(Lorg/apache/logging/log4j/Level;)V

    .line 37
    return-void
.end method
