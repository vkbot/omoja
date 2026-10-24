.class public final Lcom/mega/engineeringmode/function/StrActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/engineeringmode/function/StrActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/mega/engineeringmode/function/StrActivity;


# direct methods
.method public constructor <init>(Lcom/mega/engineeringmode/function/StrActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mega/engineeringmode/function/StrActivity$b;->a:Lcom/mega/engineeringmode/function/StrActivity;

    return-void
.end method


# virtual methods
.method public final onChangeEvent(Lmega/car/hardware/CarPropertyValue;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onChangeEvent value = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StrActivity"

    invoke-static {v1, v0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lmega/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v1, 0x2d00000b

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    sget v0, Lcom/mega/engineeringmode/function/StrActivity;->y:I

    iget-object p0, p0, Lcom/mega/engineeringmode/function/StrActivity$b;->a:Lcom/mega/engineeringmode/function/StrActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    aget-byte v0, p1, v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/16 v1, -0x7a

    if-ne v0, v1, :cond_3

    :cond_1
    const/4 v0, 0x1

    aget-byte v0, p1, v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_2

    const/16 v1, 0xe

    if-ne v0, v1, :cond_3

    :cond_2
    invoke-static {}, Ld/f;->B()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lg1/v;

    invoke-direct {v1, p0, p1}, Lg1/v;-><init>(Lcom/mega/engineeringmode/function/StrActivity;[B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public final onErrorEvent(II)V
    .locals 0

    const-string p0, "StrActivity"

    const-string/jumbo p1, "onErrorEvent"

    invoke-static {p0, p1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
