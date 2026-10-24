.class public interface abstract annotation Lorg/apache/logging/log4j/core/config/plugins/validation/constraints/ValidPort;
.super Ljava/lang/Object;
.source "ValidPort.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lorg/apache/logging/log4j/core/config/plugins/validation/constraints/ValidPort;
        message = "The port number is invalid"
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
    value = Lorg/apache/logging/log4j/core/config/plugins/validation/validators/ValidPortValidator;
.end annotation


# virtual methods
.method public abstract message()Ljava/lang/String;
.end method
