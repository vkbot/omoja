.class Lmega/car/utils/SingleMessageHandler$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmega/car/utils/SingleMessageHandler;->handleMessage(Landroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
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
.method public constructor <init>(Lmega/car/utils/SingleMessageHandler;)V
    .locals 0

    iput-object p1, p0, Lmega/car/utils/SingleMessageHandler$1;->this$0:Lmega/car/utils/SingleMessageHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object p0, p0, Lmega/car/utils/SingleMessageHandler$1;->this$0:Lmega/car/utils/SingleMessageHandler;

    invoke-virtual {p0, p1}, Lmega/car/utils/SingleMessageHandler;->handleEvent(Ljava/lang/Object;)V

    return-void
.end method
