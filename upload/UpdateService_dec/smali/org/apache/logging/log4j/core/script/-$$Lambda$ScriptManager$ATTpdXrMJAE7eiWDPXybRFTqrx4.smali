.class public final synthetic Lorg/apache/logging/log4j/core/script/-$$Lambda$ScriptManager$ATTpdXrMJAE7eiWDPXybRFTqrx4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/security/PrivilegedAction;


# instance fields
.field public final synthetic f$0:Lorg/apache/logging/log4j/core/script/ScriptManager$ScriptRunner;

.field public final synthetic f$1:Ljavax/script/Bindings;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/logging/log4j/core/script/ScriptManager$ScriptRunner;Ljavax/script/Bindings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/logging/log4j/core/script/-$$Lambda$ScriptManager$ATTpdXrMJAE7eiWDPXybRFTqrx4;->f$0:Lorg/apache/logging/log4j/core/script/ScriptManager$ScriptRunner;

    iput-object p2, p0, Lorg/apache/logging/log4j/core/script/-$$Lambda$ScriptManager$ATTpdXrMJAE7eiWDPXybRFTqrx4;->f$1:Ljavax/script/Bindings;

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/apache/logging/log4j/core/script/-$$Lambda$ScriptManager$ATTpdXrMJAE7eiWDPXybRFTqrx4;->f$0:Lorg/apache/logging/log4j/core/script/ScriptManager$ScriptRunner;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/script/-$$Lambda$ScriptManager$ATTpdXrMJAE7eiWDPXybRFTqrx4;->f$1:Ljavax/script/Bindings;

    invoke-static {v0, v1}, Lorg/apache/logging/log4j/core/script/ScriptManager;->lambda$execute$0(Lorg/apache/logging/log4j/core/script/ScriptManager$ScriptRunner;Ljavax/script/Bindings;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
