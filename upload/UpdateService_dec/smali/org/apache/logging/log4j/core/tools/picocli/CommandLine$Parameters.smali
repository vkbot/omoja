.class public interface abstract annotation Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Parameters;
.super Ljava/lang/Object;
.source "CommandLine.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Parameters;
        arity = ""
        description = {}
        hidden = false
        index = "*"
        paramLabel = ""
        split = ""
        type = {}
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "Parameters"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract arity()Ljava/lang/String;
.end method

.method public abstract description()[Ljava/lang/String;
.end method

.method public abstract hidden()Z
.end method

.method public abstract index()Ljava/lang/String;
.end method

.method public abstract paramLabel()Ljava/lang/String;
.end method

.method public abstract split()Ljava/lang/String;
.end method

.method public abstract type()[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method
