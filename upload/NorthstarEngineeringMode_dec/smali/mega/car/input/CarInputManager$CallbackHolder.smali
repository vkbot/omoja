.class final Lmega/car/input/CarInputManager$CallbackHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmega/car/input/CarInputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
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
.method public constructor <init>(Lmega/car/input/CarInputManager$CarInputCaptureCallback;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lmega/car/input/CarInputManager$CallbackHolder;->mEventTarget:Landroid/util/SparseArray;

    iput-object p1, p0, Lmega/car/input/CarInputManager$CallbackHolder;->mCallback:Lmega/car/input/CarInputManager$CarInputCaptureCallback;

    iput-object p2, p0, Lmega/car/input/CarInputManager$CallbackHolder;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public clearLongPressPostMark(Lmega/car/input/CustomInputEvent;)V
    .locals 0

    iget-object p0, p0, Lmega/car/input/CarInputManager$CallbackHolder;->mEventTarget:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lmega/car/input/CustomInputEvent;->getInputCode()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public hasPostedLongPress(Lmega/car/input/CustomInputEvent;)Z
    .locals 5

    iget-object p0, p0, Lmega/car/input/CarInputManager$CallbackHolder;->mEventTarget:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lmega/car/input/CustomInputEvent;->getInputCode()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    iget-object v1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast v1, Lmega/car/input/CustomInputEvent;

    invoke-virtual {v1}, Lmega/car/input/CustomInputEvent;->getDownTime()J

    move-result-wide v1

    invoke-virtual {p1}, Lmega/car/input/CustomInputEvent;->getDownTime()J

    move-result-wide v3

    cmp-long p1, v1, v3

    if-nez p1, :cond_1

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public setLongPressPostMark(Lmega/car/input/CustomInputEvent;)V
    .locals 2

    new-instance v0, Landroid/util/Pair;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v0, p1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, p0, Lmega/car/input/CarInputManager$CallbackHolder;->mEventTarget:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lmega/car/input/CustomInputEvent;->getInputCode()I

    move-result p1

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method
