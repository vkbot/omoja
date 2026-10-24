.class public final synthetic Lf/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:I

.field public final synthetic r:I

.field public final synthetic x:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lf/k;->c:I

    iput-object p3, p0, Lf/k;->x:Ljava/lang/Object;

    iput p1, p0, Lf/k;->r:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lf/k;->c:I

    iget v1, p0, Lf/k;->r:I

    iget-object p0, p0, Lf/k;->x:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/mega/engineeringmode/function/offlineconfiguration/TspTestActivity;

    sget v0, Lcom/mega/engineeringmode/function/offlineconfiguration/TspTestActivity;->v:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    const v0, 0x7f1200df

    goto :goto_0

    :cond_0
    const v0, 0x7f1200de

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lk2/d;->b(Landroid/content/Context;Ljava/lang/String;I)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/mega/carsettings/wifi/tether/TetherSwitchBarController$a;

    iget-object p0, p0, Lcom/mega/carsettings/wifi/tether/TetherSwitchBarController$a;->a:Lcom/mega/carsettings/wifi/tether/TetherSwitchBarController;

    invoke-virtual {p0, v1}, Lcom/mega/carsettings/wifi/tether/TetherSwitchBarController;->h(I)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/android/settingslib/wifi/WifiTracker$e;

    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker$e;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/wifi/WifiTracker$d;

    invoke-interface {v0, v1}, Lcom/android/settingslib/wifi/WifiTracker$d;->k(I)V

    goto :goto_1

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
