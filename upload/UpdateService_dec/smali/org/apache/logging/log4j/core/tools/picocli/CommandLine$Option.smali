.class public interface abstract annotation Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;
.super Ljava/lang/Object;
.source "CommandLine.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;
        arity = ""
        description = {}
        help = false
        hidden = false
        paramLabel = ""
        required = false
        split = ""
        type = {}
        usageHelp = false
        versionHelp = false
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "Option"
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

.method public abstract help()Z
.end method

.method public abstract hidden()Z
.end method

.method public abstract names()[Ljava/lang/String;
.end method

.method public abstract paramLabel()Ljava/lang/String;
.end method

.method public abstract required()Z
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

.method public abstract usageHelp()Z
.end method

.method public abstract versionHelp()Z
.end method
