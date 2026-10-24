.class public interface abstract Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginVisitor;
.super Ljava/lang/Object;
.source "PluginVisitor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A::",
        "Ljava/lang/annotation/Annotation;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public varargs abstract setAliases([Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginVisitor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "aliases"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginVisitor<",
            "TA;>;"
        }
    .end annotation
.end method

.method public abstract setAnnotation(Ljava/lang/annotation/Annotation;)Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginVisitor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "annotation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginVisitor<",
            "TA;>;"
        }
    .end annotation
.end method

.method public abstract setConversionType(Ljava/lang/Class;)Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginVisitor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "conversionType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginVisitor<",
            "TA;>;"
        }
    .end annotation
.end method

.method public abstract setMember(Ljava/lang/reflect/Member;)Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginVisitor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "member"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Member;",
            ")",
            "Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginVisitor<",
            "TA;>;"
        }
    .end annotation
.end method

.method public abstract setStrSubstitutor(Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;)Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginVisitor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "substitutor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;",
            ")",
            "Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginVisitor<",
            "TA;>;"
        }
    .end annotation
.end method

.method public abstract visit(Lorg/apache/logging/log4j/core/config/Configuration;Lorg/apache/logging/log4j/core/config/Node;Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuilder;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "configuration",
            "node",
            "event",
            "log"
        }
    .end annotation
.end method
