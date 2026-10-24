.class public final Lcom/mega/engineeringmode/function/icmdata/a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mega/engineeringmode/function/icmdata/a$a;->onChangeEvent(Lmega/car/hardware/CarPropertyValue;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lmega/car/hardware/CarPropertyValue;

.field public final synthetic r:Lcom/mega/engineeringmode/function/icmdata/a$a;


# direct methods
.method public constructor <init>(Lcom/mega/engineeringmode/function/icmdata/a$a;Lmega/car/hardware/CarPropertyValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mega/engineeringmode/function/icmdata/a$a$a;->r:Lcom/mega/engineeringmode/function/icmdata/a$a;

    iput-object p2, p0, Lcom/mega/engineeringmode/function/icmdata/a$a$a;->c:Lmega/car/hardware/CarPropertyValue;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/mega/engineeringmode/function/icmdata/a$a$a;->c:Lmega/car/hardware/CarPropertyValue;

    invoke-virtual {v0}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Float;

    iget-object p0, p0, Lcom/mega/engineeringmode/function/icmdata/a$a$a;->r:Lcom/mega/engineeringmode/function/icmdata/a$a;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object p0, p0, Lcom/mega/engineeringmode/function/icmdata/a$a;->a:Lcom/mega/engineeringmode/function/icmdata/a;

    invoke-virtual {v0}, Lmega/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/mega/engineeringmode/function/icmdata/a;->a(Lcom/mega/engineeringmode/function/icmdata/a;ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object p0, p0, Lcom/mega/engineeringmode/function/icmdata/a$a;->a:Lcom/mega/engineeringmode/function/icmdata/a;

    invoke-virtual {v0}, Lmega/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/mega/engineeringmode/function/icmdata/a;->a(Lcom/mega/engineeringmode/function/icmdata/a;ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/mega/engineeringmode/function/icmdata/a$a;->a:Lcom/mega/engineeringmode/function/icmdata/a;

    invoke-virtual {v0}, Lmega/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    invoke-static {p0, v0, v1}, Lcom/mega/engineeringmode/function/icmdata/a;->a(Lcom/mega/engineeringmode/function/icmdata/a;ILjava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
