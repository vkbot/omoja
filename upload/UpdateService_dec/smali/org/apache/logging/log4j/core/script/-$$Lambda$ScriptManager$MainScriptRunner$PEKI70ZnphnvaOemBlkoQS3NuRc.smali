.class public final synthetic Lorg/apache/logging/log4j/core/script/-$$Lambda$ScriptManager$MainScriptRunner$PEKI70ZnphnvaOemBlkoQS3NuRc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/security/PrivilegedAction;


# instance fields
.field public final synthetic f$0:Ljavax/script/ScriptEngine;

.field public final synthetic f$1:Lorg/apache/logging/log4j/core/script/AbstractScript;


# direct methods
.method public synthetic constructor <init>(Ljavax/script/ScriptEngine;Lorg/apache/logging/log4j/core/script/AbstractScript;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/logging/log4j/core/script/-$$Lambda$ScriptManager$MainScriptRunner$PEKI70ZnphnvaOemBlkoQS3NuRc;->f$0:Ljavax/script/ScriptEngine;

    iput-object p2, p0, Lorg/apache/logging/log4j/core/script/-$$Lambda$ScriptManager$MainScriptRunner$PEKI70ZnphnvaOemBlkoQS3NuRc;->f$1:Lorg/apache/logging/log4j/core/script/AbstractScript;

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/apache/logging/log4j/core/script/-$$Lambda$ScriptManager$MainScriptRunner$PEKI70ZnphnvaOemBlkoQS3NuRc;->f$0:Ljavax/script/ScriptEngine;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/script/-$$Lambda$ScriptManager$MainScriptRunner$PEKI70ZnphnvaOemBlkoQS3NuRc;->f$1:Lorg/apache/logging/log4j/core/script/AbstractScript;

    invoke-static {v0, v1}, Lorg/apache/logging/log4j/core/script/ScriptManager$MainScriptRunner;->lambda$new$0(Ljavax/script/ScriptEngine;Lorg/apache/logging/log4j/core/script/AbstractScript;)Ljavax/script/CompiledScript;

    move-result-object v0

    return-object v0
.end method
