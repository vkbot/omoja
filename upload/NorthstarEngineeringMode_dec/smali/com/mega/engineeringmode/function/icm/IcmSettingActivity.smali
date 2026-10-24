.class public final Lcom/mega/engineeringmode/function/icm/IcmSettingActivity;
.super Lcom/mega/engineeringmode/function/BaseFunctionActivity;
.source "SourceFile"


# static fields
.field public static final synthetic j:I


# instance fields
.field public i:Lcom/mega/engineeringmode/databinding/ActivityIcmSettingBinding;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;-><init>()V

    return-void
.end method

.method public static final n(Lcom/mega/engineeringmode/function/icm/IcmSettingActivity;IF)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "power: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", speed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IcmSettingActivity"

    invoke-static {v1, v0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/mega/engineeringmode/function/icm/IcmSettingActivity;->i:Lcom/mega/engineeringmode/databinding/ActivityIcmSettingBinding;

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    cmpg-float p1, p2, p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lcom/mega/engineeringmode/databinding/ActivityIcmSettingBinding;->r:Lcom/mega/engineeringmode/ui/custom/EasyButton;

    invoke-virtual {p0, v0}, Lcom/mega/chery/widget/EasyTextView;->setEnabled(Z)V

    return-void

    :cond_1
    const-string p0, "binding"

    invoke-static {p0}, Lo3/h;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/mega/engineeringmode/databinding/ActivityIcmSettingBinding;->x:I

    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    const v1, 0x7f0d0035

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p1, v1, v3, v2, v0}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/mega/engineeringmode/databinding/ActivityIcmSettingBinding;

    const-string v0, "inflate(layoutInflater)"

    invoke-static {p1, v0}, Lo3/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/mega/engineeringmode/function/icm/IcmSettingActivity;->i:Lcom/mega/engineeringmode/databinding/ActivityIcmSettingBinding;

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    const p1, 0x7f1202b9

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->i(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/icm/IcmSettingActivity;->i:Lcom/mega/engineeringmode/databinding/ActivityIcmSettingBinding;

    if-eqz p1, :cond_0

    new-instance v0, Lw0/d;

    const/16 v1, 0xa

    invoke-direct {v0, v1, p0}, Lw0/d;-><init>(ILjava/lang/Object;)V

    iget-object p1, p1, Lcom/mega/engineeringmode/databinding/ActivityIcmSettingBinding;->r:Lcom/mega/engineeringmode/ui/custom/EasyButton;

    invoke-virtual {p1, v0}, Lcom/mega/engineeringmode/ui/custom/EasyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x50000016    # 8.5899571E9f

    invoke-static {p1}, Lmega/car/livedata/CarPropertyLiveData;->obtain(I)Lmega/car/livedata/CarPropertyLiveData;

    move-result-object p1

    new-instance v0, Lcom/mega/engineeringmode/function/icm/IcmSettingActivity$a;

    invoke-direct {v0, p0}, Lcom/mega/engineeringmode/function/icm/IcmSettingActivity$a;-><init>(Lcom/mega/engineeringmode/function/icm/IcmSettingActivity;)V

    new-instance v1, Lg1/a;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v0}, Lg1/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    const p1, 0x400000b

    invoke-static {p1}, Lmega/car/livedata/CarPropertyLiveData;->obtain(I)Lmega/car/livedata/CarPropertyLiveData;

    move-result-object p1

    new-instance v0, Lcom/mega/engineeringmode/function/icm/IcmSettingActivity$b;

    invoke-direct {v0, p0}, Lcom/mega/engineeringmode/function/icm/IcmSettingActivity$b;-><init>(Lcom/mega/engineeringmode/function/icm/IcmSettingActivity;)V

    new-instance v1, Lg1/l;

    const/4 v2, 0x3

    invoke-direct {v1, v2, v0}, Lg1/l;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void

    :cond_0
    const-string p0, "binding"

    invoke-static {p0}, Lo3/h;->j(Ljava/lang/String;)V

    throw v3
.end method
