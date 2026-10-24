.class public interface abstract Lorg/apache/logging/log4j/core/jmx/RingBufferAdminMBean;
.super Ljava/lang/Object;
.source "RingBufferAdminMBean.java"


# static fields
.field public static final PATTERN_ASYNC_LOGGER:Ljava/lang/String; = "org.apache.logging.log4j2:type=%s,component=AsyncLoggerRingBuffer"

.field public static final PATTERN_ASYNC_LOGGER_CONFIG:Ljava/lang/String; = "org.apache.logging.log4j2:type=%s,component=Loggers,name=%s,subtype=RingBuffer"


# virtual methods
.method public abstract getBufferSize()J
.end method

.method public abstract getRemainingCapacity()J
.end method
