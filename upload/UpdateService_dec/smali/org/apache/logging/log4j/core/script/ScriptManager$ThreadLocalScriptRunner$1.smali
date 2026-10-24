.class Lorg/apache/logging/log4j/core/script/ScriptManager$ThreadLocalScriptRunner$1;
.super Ljava/lang/ThreadLocal;
.source "ScriptManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/script/ScriptManager$ThreadLocalScriptRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Lorg/apache/logging/log4j/core/script/ScriptManager$MainScriptRunner;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/logging/log4j/core/script/ScriptManager$ThreadLocalScriptRunner;


# direct methods
.method constructor <init>(Lorg/apache/logging/log4j/core/script/ScriptManager$ThreadLocalScriptRunner;)V
    .locals 0
    .param p1, "this$1"    # Lorg/apache/logging/log4j/core/script/ScriptManager$ThreadLocalScriptRunner;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 270
    iput-object p1, p0, Lorg/apache/logging/log4j/core/script/ScriptManager$ThreadLocalScriptRunner$1;->this$1:Lorg/apache/logging/log4j/core/script/ScriptManager$ThreadLocalScriptRunner;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .line 270
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/script/ScriptManager$ThreadLocalScriptRunner$1;->initialValue()Lorg/apache/logging/log4j/core/script/ScriptManager$MainScriptRunner;

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()Lorg/apache/logging/log4j/core/script/ScriptManager$MainScriptRunner;
    .locals 4

    .line 273
    iget-object v0, p0, Lorg/apache/logging/log4j/core/script/ScriptManager$ThreadLocalScriptRunner$1;->this$1:Lorg/apache/logging/log4j/core/script/ScriptManager$ThreadLocalScriptRunner;

    iget-object v0, v0, Lorg/apache/logging/log4j/core/script/ScriptManager$ThreadLocalScriptRunner;->this$0:Lorg/apache/logging/log4j/core/script/ScriptManager;

    invoke-static {v0}, Lorg/apache/logging/log4j/core/script/ScriptManager;->access$400(Lorg/apache/logging/log4j/core/script/ScriptManager;)Ljavax/script/ScriptEngineManager;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/logging/log4j/core/script/ScriptManager$ThreadLocalScriptRunner$1;->this$1:Lorg/apache/logging/log4j/core/script/ScriptManager$ThreadLocalScriptRunner;

    invoke-static {v1}, Lorg/apache/logging/log4j/core/script/ScriptManager$ThreadLocalScriptRunner;->access$300(Lorg/apache/logging/log4j/core/script/ScriptManager$ThreadLocalScriptRunner;)Lorg/apache/logging/log4j/core/script/AbstractScript;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/script/AbstractScript;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/script/ScriptEngineManager;->getEngineByName(Ljava/lang/String;)Ljavax/script/ScriptEngine;

    move-result-object v0

    .line 274
    .local v0, "engine":Ljavax/script/ScriptEngine;
    new-instance v1, Lorg/apache/logging/log4j/core/script/ScriptManager$MainScriptRunner;

    iget-object v2, p0, Lorg/apache/logging/log4j/core/script/ScriptManager$ThreadLocalScriptRunner$1;->this$1:Lorg/apache/logging/log4j/core/script/ScriptManager$ThreadLocalScriptRunner;

    iget-object v2, v2, Lorg/apache/logging/log4j/core/script/ScriptManager$ThreadLocalScriptRunner;->this$0:Lorg/apache/logging/log4j/core/script/ScriptManager;

    iget-object v3, p0, Lorg/apache/logging/log4j/core/script/ScriptManager$ThreadLocalScriptRunner$1;->this$1:Lorg/apache/logging/log4j/core/script/ScriptManager$ThreadLocalScriptRunner;

    invoke-static {v3}, Lorg/apache/logging/log4j/core/script/ScriptManager$ThreadLocalScriptRunner;->access$300(Lorg/apache/logging/log4j/core/script/ScriptManager$ThreadLocalScriptRunner;)Lorg/apache/logging/log4j/core/script/AbstractScript;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lorg/apache/logging/log4j/core/script/ScriptManager$MainScriptRunner;-><init>(Lorg/apache/logging/log4j/core/script/ScriptManager;Ljavax/script/ScriptEngine;Lorg/apache/logging/log4j/core/script/AbstractScript;)V

    return-object v1
.end method
