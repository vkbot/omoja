.class public final Lg2/b;
.super Le1/a;
.source "SourceFile"


# instance fields
.field public d:Lcom/mega/carsettings/wifi/AccessPointPreference;


# virtual methods
.method public final a(Landroid/widget/FrameLayout;)V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d0073

    invoke-static {v0, v1, p1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a0424

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lg2/b;->d:Lcom/mega/carsettings/wifi/AccessPointPreference;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const v1, 0x7f1200cd

    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Le1/a;->onClick(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0420

    if-ne p1, v0, :cond_2

    iget-object p0, p0, Lg2/b;->d:Lcom/mega/carsettings/wifi/AccessPointPreference;

    iget-object p1, p0, Lcom/mega/carsettings/wifi/AccessPointPreference;->r:Lf/d;

    iget-object p1, p1, Lf/d;->m1:Landroid/net/NetworkInfo;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "SettingsLib.AccessPoint"

    const-string v0, "NetworkInfo is null, cannot return detailed state"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :goto_0
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/mega/carsettings/wifi/AccessPointPreference;->b()V

    :cond_1
    invoke-virtual {p0}, Lcom/mega/carsettings/wifi/AccessPointPreference;->c()V

    :cond_2
    return-void
.end method
