.class public interface abstract annotation Lorg/apache/logging/log4j/core/config/plugins/PluginConfiguration;
.super Ljava/lang/Object;
.source "PluginConfiguration.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->PARAMETER:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;
    }
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginVisitorStrategy;
    value = Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginConfigurationVisitor;
.end annotation
