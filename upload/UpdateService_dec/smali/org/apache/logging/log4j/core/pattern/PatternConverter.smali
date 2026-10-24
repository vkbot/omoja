.class public interface abstract Lorg/apache/logging/log4j/core/pattern/PatternConverter;
.super Ljava/lang/Object;
.source "PatternConverter.java"


# static fields
.field public static final CATEGORY:Ljava/lang/String; = "Converter"


# virtual methods
.method public abstract format(Ljava/lang/Object;Ljava/lang/StringBuilder;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "obj",
            "toAppendTo"
        }
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getStyleClass(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation
.end method
