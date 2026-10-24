.class public abstract Lmega/car/utils/SingleMessageHandler;
.super Ljava/lang/Object;
.source "SingleMessageHandler.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Handler$Callback;"
    }
.end annotation


# instance fields
.field private final mHandledMessageWhat:I

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;I)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "handledMessage"    # I

    .line 41
    .local p0, "this":Lmega/car/utils/SingleMessageHandler;, "Lmega/car/utils/SingleMessageHandler<TT;>;"
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lmega/car/utils/SingleMessageHandler;-><init>(Landroid/os/Looper;I)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;I)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "handledMessage"    # I

    .line 35
    .local p0, "this":Lmega/car/utils/SingleMessageHandler;, "Lmega/car/utils/SingleMessageHandler<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p2, p0, Lmega/car/utils/SingleMessageHandler;->mHandledMessageWhat:I

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lmega/car/utils/SingleMessageHandler;->mHandler:Landroid/os/Handler;

    .line 38
    return-void
.end method


# virtual methods
.method protected abstract handleEvent(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 48
    .local p0, "this":Lmega/car/utils/SingleMessageHandler;, "Lmega/car/utils/SingleMessageHandler<TT;>;"
    iget v0, p1, Landroid/os/Message;->what:I

    iget v1, p0, Lmega/car/utils/SingleMessageHandler;->mHandledMessageWhat:I

    if-ne v0, v1, :cond_0

    .line 49
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 50
    .local v0, "events":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v1, Lmega/car/utils/SingleMessageHandler$1;

    invoke-direct {v1, p0}, Lmega/car/utils/SingleMessageHandler$1;-><init>(Lmega/car/utils/SingleMessageHandler;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 58
    .end local v0    # "events":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public sendEvents(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 62
    .local p0, "this":Lmega/car/utils/SingleMessageHandler;, "Lmega/car/utils/SingleMessageHandler<TT;>;"
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v0, p0, Lmega/car/utils/SingleMessageHandler;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lmega/car/utils/SingleMessageHandler;->mHandledMessageWhat:I

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 63
    return-void
.end method
