.class public Lcom/mega/engineeringmode/function/versioninfo/DmcHardwareActivity;
.super Lcom/mega/engineeringmode/function/BaseFunctionActivity;
.source "SourceFile"


# static fields
.field public static final synthetic k:I


# instance fields
.field public i:Landroid/widget/TextView;

.field public j:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d007e

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->h()V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->a:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const v0, 0x7f120145

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    const p1, 0x7f0a035b

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/versioninfo/DmcHardwareActivity;->i:Landroid/widget/TextView;

    const p1, 0x7f0a026d

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/versioninfo/DmcHardwareActivity;->j:Landroid/widget/TextView;

    invoke-static {}, Lf2/g;->a()Lf2/g;

    move-result-object p1

    const v0, 0x33000017

    invoke-virtual {p1, v0}, Lf2/g;->b(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "hardwareVesion "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DmcHardwareActivity"

    invoke-static {v1, v0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/versioninfo/DmcHardwareActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/mega/engineeringmode/EngineeringModeApplication;->a()Lcom/mega/engineeringmode/model/EngineModeViewModel;

    move-result-object p1

    iget-object p1, p1, Lcom/mega/engineeringmode/model/EngineModeViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Lg1/a;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Lg1/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onDestroy()V

    return-void
.end method

.method public final onResume()V
    .locals 0

    invoke-super {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onResume()V

    return-void
.end method
