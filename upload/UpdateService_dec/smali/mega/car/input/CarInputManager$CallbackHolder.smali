.class final Lmega/car/input/CarInputManager$CallbackHolder;
.super Ljava/lang/Object;
.source "CarInputManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmega/car/input/CarInputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CallbackHolder"
.end annotation


# instance fields
.field final mCallback:Lmega/car/input/CarInputManager$CarInputCaptureCallback;

.field final mEventTarget:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/Pair<",
            "Lmega/car/input/CustomInputEvent;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field final mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lmega/car/input/CarInputManager$CarInputCaptureCallback;Landroid/os/Handler;)V
    .locals 1
    .param p1, "callback"    # Lmega/car/input/CarInputManager$CarInputCaptureCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 483
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 481
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lmega/car/input/CarInputManager$CallbackHolder;->mEventTarget:Landroid/util/SparseArray;

    .line 484
    iput-object p1, p0, Lmega/car/input/CarInputManager$CallbackHolder;->mCallback:Lmega/car/input/CarInputManager$CarInputCaptureCallback;

    .line 485
    iput-object p2, p0, Lmega/car/input/CarInputManager$CallbackHolder;->mHandler:Landroid/os/Handler;

    .line 486
    return-void
.end method


# virtual methods
.method public clearLongPressPostMark(Lmega/car/input/CustomInputEvent;)V
    .locals 2
    .param p1, "event"    # Lmega/car/input/CustomInputEvent;

    .line 494
    iget-object v0, p0, Lmega/car/input/CarInputManager$CallbackHolder;->mEventTarget:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lmega/car/input/CustomInputEvent;->getInputCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 495
    return-void
.end method

.method public hasPostedLongPress(Lmega/car/input/CustomInputEvent;)Z
    .locals 6
    .param p1, "event"    # Lmega/car/input/CustomInputEvent;

    .line 498
    iget-object v0, p0, Lmega/car/input/CarInputManager$CallbackHolder;->mEventTarget:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lmega/car/input/CustomInputEvent;->getInputCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 499
    .local v0, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lmega/car/input/CustomInputEvent;Ljava/lang/Boolean;>;"
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-nez v2, :cond_0

    goto :goto_0

    .line 502
    :cond_0
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lmega/car/input/CustomInputEvent;

    invoke-virtual {v2}, Lmega/car/input/CustomInputEvent;->getDownTime()J

    move-result-wide v2

    invoke-virtual {p1}, Lmega/car/input/CustomInputEvent;->getDownTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 500
    :cond_2
    :goto_0
    return v1
.end method

.method public setLongPressPostMark(Lmega/car/input/CustomInputEvent;)V
    .locals 3
    .param p1, "event"    # Lmega/car/input/CustomInputEvent;

    .line 489
    new-instance v0, Landroid/util/Pair;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 490
    .local v0, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lmega/car/input/CustomInputEvent;Ljava/lang/Boolean;>;"
    iget-object v1, p0, Lmega/car/input/CarInputManager$CallbackHolder;->mEventTarget:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lmega/car/input/CustomInputEvent;->getInputCode()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 491
    return-void
.end method
