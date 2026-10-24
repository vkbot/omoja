.class public final synthetic Ll2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/mega/engineeringmode/ui/base/SignalActivity;

.field public final synthetic b:Lcom/mega/engineeringmode/ui/MegaSwitch;


# direct methods
.method public synthetic constructor <init>(Lcom/mega/engineeringmode/ui/base/SignalActivity;Lcom/mega/engineeringmode/ui/MegaSwitch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll2/a;->a:Lcom/mega/engineeringmode/ui/base/SignalActivity;

    iput-object p2, p0, Ll2/a;->b:Lcom/mega/engineeringmode/ui/MegaSwitch;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    sget p1, Lcom/mega/engineeringmode/ui/base/SignalActivity;->j:I

    iget-object p1, p0, Ll2/a;->a:Lcom/mega/engineeringmode/ui/base/SignalActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Ll2/a;->b:Lcom/mega/engineeringmode/ui/MegaSwitch;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p0

    const v0, 0x6700009a

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/mega/engineeringmode/ui/base/SignalActivity;->p()V

    invoke-static {v0}, Lmega/car/livedata/CarPropertyLiveData;->obtain(I)Lmega/car/livedata/CarPropertyLiveData;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmega/car/livedata/CarPropertyLiveData;->write(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/mega/engineeringmode/ui/base/SignalActivity;->o()V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/mega/engineeringmode/ui/base/SignalActivity;->p()V

    invoke-static {v0}, Lmega/car/livedata/CarPropertyLiveData;->obtain(I)Lmega/car/livedata/CarPropertyLiveData;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmega/car/livedata/CarPropertyLiveData;->write(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/mega/engineeringmode/ui/base/SignalActivity;->o()V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    return-void
.end method
