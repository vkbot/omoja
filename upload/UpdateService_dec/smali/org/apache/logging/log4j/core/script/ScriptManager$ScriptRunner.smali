.class interface abstract Lorg/apache/logging/log4j/core/script/ScriptManager$ScriptRunner;
.super Ljava/lang/Object;
.source "ScriptManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/script/ScriptManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "ScriptRunner"
.end annotation


# virtual methods
.method public abstract createBindings()Ljavax/script/Bindings;
.end method

.method public abstract execute(Ljavax/script/Bindings;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bindings"
        }
    .end annotation
.end method

.method public abstract getScript()Lorg/apache/logging/log4j/core/script/AbstractScript;
.end method

.method public abstract getScriptEngine()Ljavax/script/ScriptEngine;
.end method
