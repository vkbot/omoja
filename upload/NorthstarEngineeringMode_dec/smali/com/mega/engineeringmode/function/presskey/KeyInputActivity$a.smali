.class public final Lcom/mega/engineeringmode/function/presskey/KeyInputActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmega/car/input/CarInputManager$CarInputCaptureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/engineeringmode/function/presskey/KeyInputActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/mega/engineeringmode/function/presskey/KeyInputActivity;


# direct methods
.method public constructor <init>(Lcom/mega/engineeringmode/function/presskey/KeyInputActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mega/engineeringmode/function/presskey/KeyInputActivity$a;->a:Lcom/mega/engineeringmode/function/presskey/KeyInputActivity;

    return-void
.end method


# virtual methods
.method public final onCustomInputEvent(Lmega/car/input/CustomInputEvent;)V
    .locals 3
    .param p1    # Lmega/car/input/CustomInputEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lmega/car/input/CustomInputEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Lmega/car/input/CustomInputEvent;->getInputCode()I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " onCustomInputEvent  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyInputActivity"

    invoke-static {v2, v1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lcom/mega/engineeringmode/function/presskey/KeyInputActivity$a;->a:Lcom/mega/engineeringmode/function/presskey/KeyInputActivity;

    invoke-virtual {p0, p1, v0}, Lcom/mega/engineeringmode/function/presskey/KeyInputActivity;->n(IZ)V

    return-void
.end method

.method public final onCustomRotaryEvent(Lmega/car/input/CustomRotaryEvent;)V
    .locals 7
    .param p1    # Lmega/car/input/CustomRotaryEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onCustomRotaryEvent = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyInputActivity"

    invoke-static {v1, v0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ln2/c;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lmega/car/input/CustomRotaryEvent;->getInputCode()I

    move-result v0

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Lmega/car/input/CustomRotaryEvent;->isClockwise()Z

    move-result v0

    invoke-virtual {p1}, Lmega/car/input/CustomRotaryEvent;->getRotaryTimes()I

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    if-lez p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    const/16 v4, 0xb

    iget-object p0, p0, Lcom/mega/engineeringmode/function/presskey/KeyInputActivity$a;->a:Lcom/mega/engineeringmode/function/presskey/KeyInputActivity;

    invoke-virtual {p0, v4, v3}, Lcom/mega/engineeringmode/function/presskey/KeyInputActivity;->n(IZ)V

    invoke-static {}, Ld/f;->B()Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/mega/engineeringmode/function/presskey/KeyInputActivity;->n:Lf/c;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Ld/f;->B()Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/mega/engineeringmode/function/presskey/KeyInputActivity;->n:Lf/c;

    const-wide/16 v5, 0x12c

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    if-nez v0, :cond_1

    if-lez p1, :cond_1

    move v1, v2

    :cond_1
    const/16 p1, 0xc

    invoke-virtual {p0, p1, v1}, Lcom/mega/engineeringmode/function/presskey/KeyInputActivity;->n(IZ)V

    invoke-static {}, Ld/f;->B()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/mega/engineeringmode/function/presskey/KeyInputActivity;->o:Landroidx/constraintlayout/helper/widget/a;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Ld/f;->B()Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/mega/engineeringmode/function/presskey/KeyInputActivity;->o:Landroidx/constraintlayout/helper/widget/a;

    invoke-virtual {p1, p0, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method public final onCustomerKeyLongPress(Lmega/car/input/CustomInputEvent;)V
    .locals 3
    .param p1    # Lmega/car/input/CustomInputEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lmega/car/input/CustomInputEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Lmega/car/input/CustomInputEvent;->getInputCode()I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " onCustomerKeyLongPress  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyInputActivity"

    invoke-static {v2, v1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lcom/mega/engineeringmode/function/presskey/KeyInputActivity$a;->a:Lcom/mega/engineeringmode/function/presskey/KeyInputActivity;

    invoke-virtual {p0, p1, v0}, Lcom/mega/engineeringmode/function/presskey/KeyInputActivity;->n(IZ)V

    return-void
.end method

.method public final onInterceptRotaryEvent(Lmega/car/input/CustomRotaryEvent;)Z
    .locals 1
    .param p1    # Lmega/car/input/CustomRotaryEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, " onInterceptRotaryEvent  "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "KeyInputActivity"

    invoke-static {v0, p0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ln2/c;->b()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lmega/car/input/CustomRotaryEvent;->getInputCode()I

    move-result p0

    const/16 p1, 0x1f

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onInterceptTouchEvent(Lmega/car/input/CustomInputEvent;)Z
    .locals 2
    .param p1    # Lmega/car/input/CustomInputEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lmega/car/input/CustomInputEvent;->getAction()I

    move-result p0

    invoke-virtual {p1}, Lmega/car/input/CustomInputEvent;->getInputCode()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " onInterceptTouchEvent  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "KeyInputActivity"

    invoke-static {v0, p0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x6

    if-eq p1, p0, :cond_1

    const/16 p0, 0xa

    if-eq p1, p0, :cond_1

    const/16 p0, 0x9

    if-eq p1, p0, :cond_1

    const/16 p0, 0xb

    if-eq p1, p0, :cond_1

    const/16 p0, 0xc

    if-eq p1, p0, :cond_1

    const/16 p0, 0xd

    if-eq p1, p0, :cond_1

    const/16 p0, 0xe

    if-eq p1, p0, :cond_1

    const/16 p0, 0xf

    if-eq p1, p0, :cond_1

    const/4 p0, 0x7

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
