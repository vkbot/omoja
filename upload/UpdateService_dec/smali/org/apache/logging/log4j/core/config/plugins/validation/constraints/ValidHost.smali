.class public interface abstract annotation Lorg/apache/logging/log4j/core/config/plugins/validation/constraints/ValidHost;
.super Ljava/lang/Object;
.source "ValidHost.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lorg/apache/logging/log4j/core/config/plugins/validation/constraints/ValidHost;
        message = "The hostname is invalid"
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->PARAMETER:Ljava/lang/annotation/ElementType;
    }
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/validation/Constraint;
    value = Lorg/apache/logging/log4j/core/config/plugins/validation/validators/ValidHostValidator;
.end annotation


# virtual methods
.method public abstract message()Ljava/lang/String;
.end method
