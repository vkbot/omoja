.class public interface abstract annotation Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Command;
.super Ljava/lang/Object;
.source "CommandLine.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Command;
        abbreviateSynopsis = false
        commandListHeading = "Commands:%n"
        customSynopsis = {}
        description = {}
        descriptionHeading = ""
        footer = {}
        footerHeading = ""
        header = {}
        headerHeading = ""
        name = "<main class>"
        optionListHeading = ""
        parameterListHeading = ""
        requiredOptionMarker = ' '
        separator = "="
        showDefaultValues = false
        sortOptions = true
        subcommands = {}
        synopsisHeading = "Usage: "
        version = {}
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "Command"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->LOCAL_VARIABLE:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->PACKAGE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract abbreviateSynopsis()Z
.end method

.method public abstract commandListHeading()Ljava/lang/String;
.end method

.method public abstract customSynopsis()[Ljava/lang/String;
.end method

.method public abstract description()[Ljava/lang/String;
.end method

.method public abstract descriptionHeading()Ljava/lang/String;
.end method

.method public abstract footer()[Ljava/lang/String;
.end method

.method public abstract footerHeading()Ljava/lang/String;
.end method

.method public abstract header()[Ljava/lang/String;
.end method

.method public abstract headerHeading()Ljava/lang/String;
.end method

.method public abstract name()Ljava/lang/String;
.end method

.method public abstract optionListHeading()Ljava/lang/String;
.end method

.method public abstract parameterListHeading()Ljava/lang/String;
.end method

.method public abstract requiredOptionMarker()C
.end method

.method public abstract separator()Ljava/lang/String;
.end method

.method public abstract showDefaultValues()Z
.end method

.method public abstract sortOptions()Z
.end method

.method public abstract subcommands()[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract synopsisHeading()Ljava/lang/String;
.end method

.method public abstract version()[Ljava/lang/String;
.end method
