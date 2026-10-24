.class public interface abstract Lorg/apache/logging/log4j/core/jmx/AsyncAppenderAdminMBean;
.super Ljava/lang/Object;
.source "AsyncAppenderAdminMBean.java"


# static fields
.field public static final PATTERN:Ljava/lang/String; = "org.apache.logging.log4j2:type=%s,component=AsyncAppenders,name=%s"


# virtual methods
.method public abstract getAppenderRefs()[Ljava/lang/String;
.end method

.method public abstract getErrorHandler()Ljava/lang/String;
.end method

.method public abstract getErrorRef()Ljava/lang/String;
.end method

.method public abstract getFilter()Ljava/lang/String;
.end method

.method public abstract getLayout()Ljava/lang/String;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getQueueCapacity()I
.end method

.method public abstract getQueueRemainingCapacity()I
.end method

.method public abstract isBlocking()Z
.end method

.method public abstract isIgnoreExceptions()Z
.end method

.method public abstract isIncludeLocation()Z
.end method
