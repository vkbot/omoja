.class abstract Lorg/apache/logging/log4j/core/script/ScriptManager$AbstractScriptRunner;
.super Ljava/lang/Object;
.source "ScriptManager.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/script/ScriptManager$ScriptRunner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/script/ScriptManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "AbstractScriptRunner"
.end annotation


# static fields
.field private static final KEY_CONFIGURATION:Ljava/lang/String; = "configuration"

.field private static final KEY_STATUS_LOGGER:Ljava/lang/String; = "statusLogger"


# instance fields
.field final synthetic this$0:Lorg/apache/logging/log4j/core/script/ScriptManager;


# direct methods
.method private constructor <init>(Lorg/apache/logging/log4j/core/script/ScriptManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 53
    iput-object p1, p0, Lorg/apache/logging/log4j/core/script/ScriptManager$AbstractScriptRunner;->this$0:Lorg/apache/logging/log4j/core/script/ScriptManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/logging/log4j/core/script/ScriptManager;Lorg/apache/logging/log4j/core/script/ScriptManager$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/logging/log4j/core/script/ScriptManager;
    .param p2, "x1"    # Lorg/apache/logging/log4j/core/script/ScriptManager$1;

    .line 53
    invoke-direct {p0, p1}, Lorg/apache/logging/log4j/core/script/ScriptManager$AbstractScriptRunner;-><init>(Lorg/apache/logging/log4j/core/script/ScriptManager;)V

    return-void
.end method


# virtual methods
.method public createBindings()Ljavax/script/Bindings;
    .locals 3

    .line 60
    new-instance v0, Ljavax/script/SimpleBindings;

    invoke-direct {v0}, Ljavax/script/SimpleBindings;-><init>()V

    .line 61
    .local v0, "bindings":Ljavax/script/SimpleBindings;
    iget-object v1, p0, Lorg/apache/logging/log4j/core/script/ScriptManager$AbstractScriptRunner;->this$0:Lorg/apache/logging/log4j/core/script/ScriptManager;

    invoke-static {v1}, Lorg/apache/logging/log4j/core/script/ScriptManager;->access$000(Lorg/apache/logging/log4j/core/script/ScriptManager;)Lorg/apache/logging/log4j/core/config/Configuration;

    move-result-object v1

    const-string v2, "configuration"

    invoke-virtual {v0, v2, v1}, Ljavax/script/SimpleBindings;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    invoke-static {}, Lorg/apache/logging/log4j/core/script/ScriptManager;->access$100()Lorg/apache/logging/log4j/Logger;

    move-result-object v1

    const-string v2, "statusLogger"

    invoke-virtual {v0, v2, v1}, Ljavax/script/SimpleBindings;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    return-object v0
.end method
