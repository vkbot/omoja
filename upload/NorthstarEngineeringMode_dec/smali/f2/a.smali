.class public final Lf2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lmega/car/hardware/CarPropertyValue;

.field public final synthetic r:Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity;


# direct methods
.method public constructor <init>(Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity;Lmega/car/hardware/CarPropertyValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf2/a;->r:Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity;

    iput-object p2, p0, Lf2/a;->c:Lmega/car/hardware/CarPropertyValue;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lf2/a;->c:Lmega/car/hardware/CarPropertyValue;

    invoke-virtual {v0}, Lmega/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v1

    iget-object p0, p0, Lf2/a;->r:Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity;

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    iget-object v1, p0, Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity;->r:Lf2/b;

    invoke-virtual {v0}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lf2/b;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity;->k:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity;->r:Lf2/b;

    iget v2, v1, Lf2/b;->a:I

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity;->r:Lf2/b;

    iget v0, v0, Lf2/b;->a:I

    invoke-virtual {p0, v0}, Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity;->n(I)V

    goto/16 :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity;->n:Lf2/b;

    invoke-virtual {v0}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lf2/b;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity;->k:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity;->n:Lf2/b;

    iget v2, v1, Lf2/b;->a:I

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity;->n:Lf2/b;

    iget v0, v0, Lf2/b;->a:I

    invoke-virtual {p0, v0}, Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity;->n(I)V

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity;->m:Lf2/b;

    invoke-virtual {v0}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lf2/b;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity;->k:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity;->m:Lf2/b;

    iget v2, v1, Lf2/b;->a:I

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity;->m:Lf2/b;

    iget v0, v0, Lf2/b;->a:I

    invoke-virtual {p0, v0}, Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity;->n(I)V

    goto :goto_0

    :sswitch_3
    iget-object v1, p0, Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity;->p:Lf2/b;

    invoke-virtual {v0}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lf2/b;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity;->k:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity;->p:Lf2/b;

    iget v2, v1, Lf2/b;->a:I

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity;->p:Lf2/b;

    iget v0, v0, Lf2/b;->a:I

    invoke-virtual {p0, v0}, Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity;->n(I)V

    goto :goto_0

    :sswitch_4
    iget-object v1, p0, Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity;->q:Lf2/b;

    invoke-virtual {v0}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lf2/b;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity;->k:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity;->q:Lf2/b;

    iget v2, v1, Lf2/b;->a:I

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity;->q:Lf2/b;

    iget v0, v0, Lf2/b;->a:I

    invoke-virtual {p0, v0}, Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity;->n(I)V

    goto :goto_0

    :sswitch_5
    iget-object v1, p0, Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity;->o:Lf2/b;

    invoke-virtual {v0}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lf2/b;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity;->k:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity;->o:Lf2/b;

    iget v2, v1, Lf2/b;->a:I

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity;->o:Lf2/b;

    iget v0, v0, Lf2/b;->a:I

    invoke-virtual {p0, v0}, Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity;->n(I)V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x33000002 -> :sswitch_5
        0x3300000f -> :sswitch_4
        0x33000010 -> :sswitch_3
        0x33000012 -> :sswitch_2
        0x33000013 -> :sswitch_1
        0x33000015 -> :sswitch_0
    .end sparse-switch
.end method
