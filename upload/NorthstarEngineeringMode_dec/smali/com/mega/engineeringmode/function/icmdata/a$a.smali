.class public final Lcom/mega/engineeringmode/function/icmdata/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/engineeringmode/function/icmdata/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/mega/engineeringmode/function/icmdata/a;


# direct methods
.method public constructor <init>(Lcom/mega/engineeringmode/function/icmdata/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mega/engineeringmode/function/icmdata/a$a;->a:Lcom/mega/engineeringmode/function/icmdata/a;

    return-void
.end method


# virtual methods
.method public final onChangeEvent(Lmega/car/hardware/CarPropertyValue;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onChangeEvent="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmega/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "a"

    invoke-static {v1, v0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/icmdata/a$a;->a:Lcom/mega/engineeringmode/function/icmdata/a;

    iget-object v0, v0, Lcom/mega/engineeringmode/function/icmdata/a;->d:Landroid/os/Handler;

    new-instance v1, Lcom/mega/engineeringmode/function/icmdata/a$a$a;

    invoke-direct {v1, p0, p1}, Lcom/mega/engineeringmode/function/icmdata/a$a$a;-><init>(Lcom/mega/engineeringmode/function/icmdata/a$a;Lmega/car/hardware/CarPropertyValue;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onErrorEvent(II)V
    .locals 1

    const-string/jumbo p2, "onErrorEvent "

    const-string v0, "a"

    invoke-static {p2, p1, v0}, La4/a;->m(Ljava/lang/String;ILjava/lang/String;)V

    iget-object p2, p0, Lcom/mega/engineeringmode/function/icmdata/a$a;->a:Lcom/mega/engineeringmode/function/icmdata/a;

    iget-object p2, p2, Lcom/mega/engineeringmode/function/icmdata/a;->d:Landroid/os/Handler;

    new-instance v0, Lcom/mega/engineeringmode/function/icmdata/a$a$b;

    invoke-direct {v0, p0, p1}, Lcom/mega/engineeringmode/function/icmdata/a$a$b;-><init>(Lcom/mega/engineeringmode/function/icmdata/a$a;I)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
