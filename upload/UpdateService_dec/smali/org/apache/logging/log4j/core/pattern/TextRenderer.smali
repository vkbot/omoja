.class public interface abstract Lorg/apache/logging/log4j/core/pattern/TextRenderer;
.super Ljava/lang/Object;
.source "TextRenderer.java"


# virtual methods
.method public abstract render(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "output",
            "styleName"
        }
    .end annotation
.end method

.method public abstract render(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "output"
        }
    .end annotation
.end method
