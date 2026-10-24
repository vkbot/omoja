.class public final synthetic Lq1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/mega/engineeringmode/function/exhibition/ExhibitionModeActivity;

.field public final synthetic b:Lcom/mega/engineeringmode/ui/MegaSwitch;


# direct methods
.method public synthetic constructor <init>(Lcom/mega/engineeringmode/function/exhibition/ExhibitionModeActivity;Lcom/mega/engineeringmode/ui/MegaSwitch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq1/b;->a:Lcom/mega/engineeringmode/function/exhibition/ExhibitionModeActivity;

    iput-object p2, p0, Lq1/b;->b:Lcom/mega/engineeringmode/ui/MegaSwitch;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Lmega/car/hardware/CarPropertyValue;

    sget v0, Lcom/mega/engineeringmode/function/exhibition/ExhibitionModeActivity;->k:I

    iget-object v0, p0, Lq1/b;->a:Lcom/mega/engineeringmode/function/exhibition/ExhibitionModeActivity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "value = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ExhibitionModeActivity"

    invoke-static {v2, v1}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const v1, 0x67000082

    invoke-static {v1}, Lmega/car/livedata/CarPropertyLiveData;->obtain(I)Lmega/car/livedata/CarPropertyLiveData;

    move-result-object v1

    invoke-virtual {v1}, Lmega/car/livedata/CarPropertyLiveData;->getValueOfCarProperty()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    :goto_0
    move p1, v3

    goto :goto_1

    :cond_0
    if-ne p1, v3, :cond_1

    goto :goto_0

    :cond_1
    move p1, v2

    :goto_1
    iget-object p0, p0, Lq1/b;->b:Lcom/mega/engineeringmode/ui/MegaSwitch;

    invoke-virtual {p0, p1}, Lcom/mega/engineeringmode/ui/MegaSwitch;->setChecked(Z)V

    iget-object p0, v0, Lcom/mega/engineeringmode/function/exhibition/ExhibitionModeActivity;->j:Landroid/widget/TextView;

    const v1, 0x7f120326

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    if-eqz p1, :cond_2

    const p1, 0x7f120346

    :goto_2
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_2
    const p1, 0x7f120345

    goto :goto_2

    :goto_3
    aput-object p1, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
