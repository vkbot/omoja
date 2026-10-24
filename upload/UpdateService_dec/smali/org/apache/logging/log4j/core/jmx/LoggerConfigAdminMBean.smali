.class public interface abstract Lorg/apache/logging/log4j/core/jmx/LoggerConfigAdminMBean;
.super Ljava/lang/Object;
.source "LoggerConfigAdminMBean.java"


# static fields
.field public static final PATTERN:Ljava/lang/String; = "org.apache.logging.log4j2:type=%s,component=Loggers,name=%s"


# virtual methods
.method public abstract getAppenderRefs()[Ljava/lang/String;
.end method

.method public abstract getFilter()Ljava/lang/String;
.end method

.method public abstract getLevel()Ljava/lang/String;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract isAdditive()Z
.end method

.method public abstract isIncludeLocation()Z
.end method

.method public abstract setAdditive(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "additive"
        }
    .end annotation
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
