.class Lmega/car/utils/SingleMessageHandler$1;
.super Ljava/lang/Object;
.source "SingleMessageHandler.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmega/car/utils/SingleMessageHandler;->handleMessage(Landroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmega/car/utils/SingleMessageHandler;


# direct methods
.method constructor <init>(Lmega/car/utils/SingleMessageHandler;)V
    .locals 0
    .param p1, "this$0"    # Lmega/car/utils/SingleMessageHandler;

    .line 50
    .local p0, "this":Lmega/car/utils/SingleMessageHandler$1;, "Lmega/car/utils/SingleMessageHandler$1;"
    iput-object p1, p0, Lmega/car/utils/SingleMessageHandler$1;->this$0:Lmega/car/utils/SingleMessageHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 53
    .local p0, "this":Lmega/car/utils/SingleMessageHandler$1;, "Lmega/car/utils/SingleMessageHandler$1;"
    .local p1, "event":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lmega/car/utils/SingleMessageHandler$1;->this$0:Lmega/car/utils/SingleMessageHandler;

    invoke-virtual {v0, p1}, Lmega/car/utils/SingleMessageHandler;->handleEvent(Ljava/lang/Object;)V

    .line 54
    return-void
.end method
