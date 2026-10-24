.class Lmega/car/input/CarInputManager$CustomLongPressRunnable;
.super Ljava/lang/Object;
.source "CarInputManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmega/car/input/CarInputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CustomLongPressRunnable"
.end annotation


# instance fields
.field private final mCallbackHolder:Lmega/car/input/CarInputManager$CallbackHolder;

.field private final mEvent:Lmega/car/input/CustomInputEvent;


# direct methods
.method public constructor <init>(Lmega/car/input/CarInputManager$CallbackHolder;Lmega/car/input/CustomInputEvent;)V
    .locals 0
    .param p1, "callbackHolder"    # Lmega/car/input/CarInputManager$CallbackHolder;
    .param p2, "event"    # Lmega/car/input/CustomInputEvent;

    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 381
    iput-object p1, p0, Lmega/car/input/CarInputManager$CustomLongPressRunnable;->mCallbackHolder:Lmega/car/input/CarInputManager$CallbackHolder;

    .line 382
    iput-object p2, p0, Lmega/car/input/CarInputManager$CustomLongPressRunnable;->mEvent:Lmega/car/input/CustomInputEvent;

    .line 383
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 387
    invoke-static {}, Lmega/car/input/CarInputManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Firing long press events "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmega/car/input/CarInputManager$CustomLongPressRunnable;->mEvent:Lmega/car/input/CustomInputEvent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " on callback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmega/car/input/CarInputManager$CustomLongPressRunnable;->mCallbackHolder:Lmega/car/input/CarInputManager$CallbackHolder;

    iget-object v2, v2, Lmega/car/input/CarInputManager$CallbackHolder;->mCallback:Lmega/car/input/CarInputManager$CarInputCaptureCallback;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    iget-object v0, p0, Lmega/car/input/CarInputManager$CustomLongPressRunnable;->mCallbackHolder:Lmega/car/input/CarInputManager$CallbackHolder;

    iget-object v0, v0, Lmega/car/input/CarInputManager$CallbackHolder;->mCallback:Lmega/car/input/CarInputManager$CarInputCaptureCallback;

    iget-object v1, p0, Lmega/car/input/CarInputManager$CustomLongPressRunnable;->mEvent:Lmega/car/input/CustomInputEvent;

    invoke-interface {v0, v1}, Lmega/car/input/CarInputManager$CarInputCaptureCallback;->onCustomerKeyLongPress(Lmega/car/input/CustomInputEvent;)V

    .line 390
    invoke-static {}, Lmega/car/input/CarInputManager;->access$200()Landroid/util/SparseArray;

    move-result-object v0

    iget-object v1, p0, Lmega/car/input/CarInputManager$CustomLongPressRunnable;->mEvent:Lmega/car/input/CustomInputEvent;

    invoke-virtual {v1}, Lmega/car/input/CustomInputEvent;->getInputCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->delete(I)V

    .line 391
    return-void
.end method
