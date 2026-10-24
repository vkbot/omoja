.class Lorg/apache/logging/log4j/core/script/ScriptManager$MainScriptRunner;
.super Lorg/apache/logging/log4j/core/script/ScriptManager$AbstractScriptRunner;
.source "ScriptManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/script/ScriptManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainScriptRunner"
.end annotation


# instance fields
.field private final compiledScript:Ljavax/script/CompiledScript;

.field private final script:Lorg/apache/logging/log4j/core/script/AbstractScript;

.field private final scriptEngine:Ljavax/script/ScriptEngine;

.field final synthetic this$0:Lorg/apache/logging/log4j/core/script/ScriptManager;


# direct methods
.method public constructor <init>(Lorg/apache/logging/log4j/core/script/ScriptManager;Ljavax/script/ScriptEngine;Lorg/apache/logging/log4j/core/script/AbstractScript;)V
    .locals 3
    .param p2, "scriptEngine"    # Ljavax/script/ScriptEngine;
    .param p3, "script"    # Lorg/apache/logging/log4j/core/script/AbstractScript;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x10,
            0x10
        }
        names = {
            "this$0",
            "scriptEngine",
            "script"
        }
    .end annotation

    .line 216
    iput-object p1, p0, Lorg/apache/logging/log4j/core/script/ScriptManager$MainScriptRunner;->this$0:Lorg/apache/logging/log4j/core/script/ScriptManager;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/logging/log4j/core/script/ScriptManager$AbstractScriptRunner;-><init>(Lorg/apache/logging/log4j/core/script/ScriptManager;Lorg/apache/logging/log4j/core/script/ScriptManager$1;)V

    .line 217
    iput-object p3, p0, Lorg/apache/logging/log4j/core/script/ScriptManager$MainScriptRunner;->script:Lorg/apache/logging/log4j/core/script/AbstractScript;

    .line 218
    iput-object p2, p0, Lorg/apache/logging/log4j/core/script/ScriptManager$MainScriptRunner;->scriptEngine:Ljavax/script/ScriptEngine;

    .line 219
    const/4 p1, 0x0

    .line 220
    .local p1, "compiled":Ljavax/script/CompiledScript;
    instance-of v0, p2, Ljavax/script/Compilable;

    if-eqz v0, :cond_0

    .line 221
    invoke-static {}, Lorg/apache/logging/log4j/core/script/ScriptManager;->access$100()Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    invoke-virtual {p3}, Lorg/apache/logging/log4j/core/script/AbstractScript;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Script {} is compilable"

    invoke-interface {v0, v2, v1}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 222
    new-instance v0, Lorg/apache/logging/log4j/core/script/-$$Lambda$ScriptManager$MainScriptRunner$PEKI70ZnphnvaOemBlkoQS3NuRc;

    invoke-direct {v0, p2, p3}, Lorg/apache/logging/log4j/core/script/-$$Lambda$ScriptManager$MainScriptRunner$PEKI70ZnphnvaOemBlkoQS3NuRc;-><init>(Ljavax/script/ScriptEngine;Lorg/apache/logging/log4j/core/script/AbstractScript;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    move-object p1, v0

    check-cast p1, Ljavax/script/CompiledScript;

    .line 235
    :cond_0
    iput-object p1, p0, Lorg/apache/logging/log4j/core/script/ScriptManager$MainScriptRunner;->compiledScript:Ljavax/script/CompiledScript;

    .line 236
    return-void
.end method

.method static synthetic lambda$new$0(Ljavax/script/ScriptEngine;Lorg/apache/logging/log4j/core/script/AbstractScript;)Ljavax/script/CompiledScript;
    .locals 3
    .param p0, "scriptEngine"    # Ljavax/script/ScriptEngine;
    .param p1, "script"    # Lorg/apache/logging/log4j/core/script/AbstractScript;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "scriptEngine",
            "script"
        }
    .end annotation

    .line 224
    :try_start_0
    move-object v0, p0

    check-cast v0, Ljavax/script/Compilable;

    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/script/AbstractScript;->getScriptText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljavax/script/Compilable;->compile(Ljava/lang/String;)Ljavax/script/CompiledScript;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 225
    :catchall_0
    move-exception v0

    .line 230
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {}, Lorg/apache/logging/log4j/core/script/ScriptManager;->access$100()Lorg/apache/logging/log4j/Logger;

    move-result-object v1

    const-string v2, "Error compiling script"

    invoke-interface {v1, v2, v0}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 231
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public execute(Ljavax/script/Bindings;)Ljava/lang/Object;
    .locals 5
    .param p1, "bindings"    # Ljavax/script/Bindings;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "bindings"
        }
    .end annotation

    .line 245
    iget-object v0, p0, Lorg/apache/logging/log4j/core/script/ScriptManager$MainScriptRunner;->compiledScript:Ljavax/script/CompiledScript;

    const/4 v1, 0x0

    const-string v2, "Error running script "

    if-eqz v0, :cond_0

    .line 247
    :try_start_0
    invoke-virtual {v0, p1}, Ljavax/script/CompiledScript;->eval(Ljavax/script/Bindings;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljavax/script/ScriptException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 248
    :catch_0
    move-exception v0

    .line 249
    .local v0, "ex":Ljavax/script/ScriptException;
    invoke-static {}, Lorg/apache/logging/log4j/core/script/ScriptManager;->access$100()Lorg/apache/logging/log4j/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/logging/log4j/core/script/ScriptManager$MainScriptRunner;->script:Lorg/apache/logging/log4j/core/script/AbstractScript;

    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/script/AbstractScript;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2, v0}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 250
    return-object v1

    .line 254
    .end local v0    # "ex":Ljavax/script/ScriptException;
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/logging/log4j/core/script/ScriptManager$MainScriptRunner;->scriptEngine:Ljavax/script/ScriptEngine;

    iget-object v3, p0, Lorg/apache/logging/log4j/core/script/ScriptManager$MainScriptRunner;->script:Lorg/apache/logging/log4j/core/script/AbstractScript;

    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/script/AbstractScript;->getScriptText()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, p1}, Ljavax/script/ScriptEngine;->eval(Ljava/lang/String;Ljavax/script/Bindings;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljavax/script/ScriptException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    .line 255
    :catch_1
    move-exception v0

    .line 256
    .restart local v0    # "ex":Ljavax/script/ScriptException;
    invoke-static {}, Lorg/apache/logging/log4j/core/script/ScriptManager;->access$100()Lorg/apache/logging/log4j/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/logging/log4j/core/script/ScriptManager$MainScriptRunner;->script:Lorg/apache/logging/log4j/core/script/AbstractScript;

    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/script/AbstractScript;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2, v0}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 257
    return-object v1
.end method

.method public getScript()Lorg/apache/logging/log4j/core/script/AbstractScript;
    .locals 1

    .line 263
    iget-object v0, p0, Lorg/apache/logging/log4j/core/script/ScriptManager$MainScriptRunner;->script:Lorg/apache/logging/log4j/core/script/AbstractScript;

    return-object v0
.end method

.method public getScriptEngine()Ljavax/script/ScriptEngine;
    .locals 1

    .line 240
    iget-object v0, p0, Lorg/apache/logging/log4j/core/script/ScriptManager$MainScriptRunner;->scriptEngine:Ljavax/script/ScriptEngine;

    return-object v0
.end method
