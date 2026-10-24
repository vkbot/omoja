.class public Lorg/apache/logging/log4j/core/config/xml/XmlConfigurationFactory;
.super Lorg/apache/logging/log4j/core/config/ConfigurationFactory;
.source "XmlConfigurationFactory.java"


# annotations
.annotation runtime Lorg/apache/logging/log4j/core/config/Order;
    value = 0x5
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "ConfigurationFactory"
    name = "XmlConfigurationFactory"
.end annotation


# static fields
.field public static final SUFFIXES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    const-string v0, ".xml"

    const-string v1, "*"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/config/xml/XmlConfigurationFactory;->SUFFIXES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/config/ConfigurationFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public getConfiguration(Lorg/apache/logging/log4j/core/LoggerContext;Lorg/apache/logging/log4j/core/config/ConfigurationSource;)Lorg/apache/logging/log4j/core/config/Configuration;
    .locals 1
    .param p1, "loggerContext"    # Lorg/apache/logging/log4j/core/LoggerContext;
    .param p2, "source"    # Lorg/apache/logging/log4j/core/config/ConfigurationSource;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "loggerContext",
            "source"
        }
    .end annotation

    .line 46
    new-instance v0, Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration;

    invoke-direct {v0, p1, p2}, Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration;-><init>(Lorg/apache/logging/log4j/core/LoggerContext;Lorg/apache/logging/log4j/core/config/ConfigurationSource;)V

    return-object v0
.end method

.method public getSupportedTypes()[Ljava/lang/String;
    .locals 1

    .line 55
    sget-object v0, Lorg/apache/logging/log4j/core/config/xml/XmlConfigurationFactory;->SUFFIXES:[Ljava/lang/String;

    return-object v0
.end method
