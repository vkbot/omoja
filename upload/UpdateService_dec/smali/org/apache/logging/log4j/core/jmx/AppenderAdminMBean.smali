.class public interface abstract Lorg/apache/logging/log4j/core/jmx/AppenderAdminMBean;
.super Ljava/lang/Object;
.source "AppenderAdminMBean.java"


# static fields
.field public static final PATTERN:Ljava/lang/String; = "org.apache.logging.log4j2:type=%s,component=Appenders,name=%s"


# virtual methods
.method public abstract getErrorHandler()Ljava/lang/String;
.end method

.method public abstract getFilter()Ljava/lang/String;
.end method

.method public abstract getLayout()Ljava/lang/String;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract isIgnoreExceptions()Z
.end method
