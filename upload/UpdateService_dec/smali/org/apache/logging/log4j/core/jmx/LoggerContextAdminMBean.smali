.class public interface abstract Lorg/apache/logging/log4j/core/jmx/LoggerContextAdminMBean;
.super Ljava/lang/Object;
.source "LoggerContextAdminMBean.java"


# static fields
.field public static final NOTIF_TYPE_RECONFIGURED:Ljava/lang/String; = "com.apache.logging.log4j.core.jmx.config.reconfigured"

.field public static final PATTERN:Ljava/lang/String; = "org.apache.logging.log4j2:type=%s"


# virtual methods
.method public abstract getConfigClassName()Ljava/lang/String;
.end method

.method public abstract getConfigFilter()Ljava/lang/String;
.end method

.method public abstract getConfigLocationUri()Ljava/lang/String;
.end method

.method public abstract getConfigName()Ljava/lang/String;
.end method

.method public abstract getConfigProperties()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getConfigText()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getConfigText(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "charsetName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getObjectName()Ljavax/management/ObjectName;
.end method

.method public abstract getStatus()Ljava/lang/String;
.end method

.method public abstract setConfigLocationUri(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "configLocation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setConfigText(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "configText",
            "charsetName"
        }
    .end annotation
.end method
