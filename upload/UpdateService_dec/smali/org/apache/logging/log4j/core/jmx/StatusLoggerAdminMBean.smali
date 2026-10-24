.class public interface abstract Lorg/apache/logging/log4j/core/jmx/StatusLoggerAdminMBean;
.super Ljava/lang/Object;
.source "StatusLoggerAdminMBean.java"


# static fields
.field public static final NOTIF_TYPE_DATA:Ljava/lang/String; = "com.apache.logging.log4j.core.jmx.statuslogger.data"

.field public static final NOTIF_TYPE_MESSAGE:Ljava/lang/String; = "com.apache.logging.log4j.core.jmx.statuslogger.message"

.field public static final PATTERN:Ljava/lang/String; = "org.apache.logging.log4j2:type=%s,component=StatusLogger"


# virtual methods
.method public abstract getContextName()Ljava/lang/String;
.end method

.method public abstract getLevel()Ljava/lang/String;
.end method

.method public abstract getObjectName()Ljavax/management/ObjectName;
.end method

.method public abstract getStatusData()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/status/StatusData;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStatusDataHistory()[Ljava/lang/String;
.end method

.method public abstract setLevel(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation
.end method
