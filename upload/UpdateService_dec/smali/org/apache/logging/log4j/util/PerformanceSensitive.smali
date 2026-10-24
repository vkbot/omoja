.class public interface abstract annotation Lorg/apache/logging/log4j/util/PerformanceSensitive;
.super Ljava/lang/Object;
.source "PerformanceSensitive.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lorg/apache/logging/log4j/util/PerformanceSensitive;
        value = {
            ""
        }
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# virtual methods
.method public abstract value()[Ljava/lang/String;
.end method
