.class public final Lk1/d$a;
.super Lvendor/mega/message_center/V1_0/IMsgRxCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk1/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk1/d;


# direct methods
.method public constructor <init>(Lk1/d;)V
    .locals 0

    iput-object p1, p0, Lk1/d$a;->a:Lk1/d;

    invoke-direct {p0}, Lvendor/mega/message_center/V1_0/IMsgRxCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "topic "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "CommunicationPresenter"

    invoke-static {v0, p2}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "car_engineering_mode/communication"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lk1/d$a;->a:Lk1/d;

    iget-object p0, p0, Lk1/d;->a:Lk1/e;

    if-eqz p0, :cond_0

    check-cast p0, Lcom/mega/engineeringmode/function/communication/CommunicationActivity;

    invoke-static {}, Ld/f;->B()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lk1/c;

    invoke-direct {p2, p0}, Lk1/c;-><init>(Lcom/mega/engineeringmode/function/communication/CommunicationActivity;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
