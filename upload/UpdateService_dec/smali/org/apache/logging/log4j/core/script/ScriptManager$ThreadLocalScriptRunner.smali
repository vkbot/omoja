.class Lorg/apache/logging/log4j/core/script/ScriptManager$ThreadLocalScriptRunner;
.super Lorg/apache/logging/log4j/core/script/ScriptManager$AbstractScriptRunner;
.source "ScriptManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/script/ScriptManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThreadLocalScriptRunner"
.end annotation


# instance fields
.field private final runners:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lorg/apache/logging/log4j/core/script/ScriptManager$MainScriptRunner;",
            ">;"
        }
    .end annotation
.end field

.field private final script:Lorg/apache/logging/log4j/core/script/AbstractScript;

.field final synthetic this$0:Lorg/apache/logging/log4j/core/script/ScriptManager;


# direct methods
.method public constructor <init>(Lorg/apache/logging/log4j/core/script/ScriptManager;Lorg/apache/logging/log4j/core/script/AbstractScript;)V
    .locals 1
    .param p2, "script"    # Lorg/apache/logging/log4j/core/script/AbstractScript;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x10
        }
        names = {
            "this$0",
            "script"
        }
    .end annotation

    .line 278
    iput-object p1, p0, Lorg/apache/logging/log4j/core/script/ScriptManager$ThreadLocalScriptRunner;->this$0:Lorg/apache/logging/log4j/core/script/ScriptManager;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/logging/log4j/core/script/ScriptManager$AbstractScriptRunner;-><init>(Lorg/apache/logging/log4j/core/script/ScriptManager;Lorg/apache/logging/log4j/core/script/ScriptManager$1;)V

    .line 270
    new-instance p1, Lorg/apache/logging/log4j/core/script/ScriptManager$ThreadLocalScriptRunner$1;

    invoke-direct {p1, p0}, Lorg/apache/logging/log4j/core/script/ScriptManager$ThreadLocalScriptRunner$1;-><init>(Lorg/apache/logging/log4j/core/script/ScriptManager$ThreadLocalScriptRunner;)V

    iput-object p1, p0, Lorg/apache/logging/log4j/core/script/ScriptManager$ThreadLocalScriptRunner;->runners:Ljava/lang/ThreadLocal;

    .line 279
    iput-object p2, p0, Lorg/apache/logging/log4j/core/script/ScriptManager$ThreadLocalScriptRunner;->script:Lorg/apache/logging/log4j/core/script/AbstractScript;

    .line 280
    return-void
.end method

.method static synthetic access$300(Lorg/apache/logging/log4j/core/script/ScriptManager$ThreadLocalScriptRunner;)Lorg/apache/logging/log4j/core/script/AbstractScript;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/script/ScriptManager$ThreadLocalScriptRunner;

    .line 267
    iget-object v0, p0, Lorg/apache/logging/log4j/core/script/ScriptManager$ThreadLocalScriptRunner;->script:Lorg/apache/logging/log4j/core/script/AbstractScript;

    return-object v0
.end method


# virtual methods
.method public execute(Ljavax/script/Bindings;)Ljava/lang/Object;
    .locals 1
    .param p1, "bindings"    # Ljavax/script/Bindings;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "bindings"
        }
    .end annotation

    .line 284
    iget-object v0, p0, Lorg/apache/logging/log4j/core/script/ScriptManager$ThreadLocalScriptRunner;->runners:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/script/ScriptManager$MainScriptRunner;

    invoke-virtual {v0, p1}, Lorg/apache/logging/log4j/core/script/ScriptManager$MainScriptRunner;->execute(Ljavax/script/Bindings;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getScript()Lorg/apache/logging/log4j/core/script/AbstractScript;
    .locals 1

    .line 289
    iget-object v0, p0, Lorg/apache/logging/log4j/core/script/ScriptManager$ThreadLocalScriptRunner;->script:Lorg/apache/logging/log4j/core/script/AbstractScript;

    return-object v0
.end method

.method public getScriptEngine()Ljavax/script/ScriptEngine;
    .locals 1

    .line 294
    iget-object v0, p0, Lorg/apache/logging/log4j/core/script/ScriptManager$ThreadLocalScriptRunner;->runners:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/script/ScriptManager$MainScriptRunner;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/script/ScriptManager$MainScriptRunner;->getScriptEngine()Ljavax/script/ScriptEngine;

    move-result-object v0

    return-object v0
.end method
