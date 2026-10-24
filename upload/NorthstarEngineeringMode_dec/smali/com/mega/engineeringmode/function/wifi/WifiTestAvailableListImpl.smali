.class public Lcom/mega/engineeringmode/function/wifi/WifiTestAvailableListImpl;
.super Lcom/mega/carsettings/wifi/AccessPointAvailableFragment;
.source "SourceFile"


# instance fields
.field public h:Lcom/mega/engineeringmode/function/wifi/WifiTestAvailableListImpl$a;

.field public i:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mega/carsettings/wifi/AccessPointAvailableFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDestroy()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    invoke-static {}, Lt0/c;->a()Lt0/c;

    move-result-object v0

    iget-object p0, p0, Lcom/mega/engineeringmode/function/wifi/WifiTestAvailableListImpl;->h:Lcom/mega/engineeringmode/function/wifi/WifiTestAvailableListImpl$a;

    if-eqz p0, :cond_0

    iget-object v0, v0, Lt0/c;->a:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    return-void
.end method

.method public final onDisplayPreferenceDialog(Landroidx/preference/Preference;)V
    .locals 5

    instance-of v0, p1, Lcom/mega/carsettings/wifi/AccessPointPreference;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/mega/carsettings/wifi/AccessPointPreference;

    iget-object v0, v0, Lcom/mega/carsettings/wifi/AccessPointPreference;->r:Lf/d;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    if-eqz v0, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " isConnected "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lf/d;->m1:Landroid/net/NetworkInfo;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_1

    iget-object v3, v0, Lf/d;->l1:Landroid/net/wifi/WifiInfo;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v3

    sget-object v4, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-ne v3, v4, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WifiTestAvailableListImpl"

    invoke-static {v3, v2}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iput-object p1, p0, Lcom/mega/engineeringmode/function/wifi/WifiTestAvailableListImpl;->i:Landroidx/preference/Preference;

    new-instance p1, Le1/c;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-direct {p1, p0}, Le1/a;-><init>(Landroid/content/Context;)V

    iput-boolean v1, p1, Le1/c;->g:Z

    const/4 v1, -0x1

    iput v1, p1, Le1/c;->j:I

    const v1, 0x7fffffff

    iput v1, p1, Le1/c;->k:I

    iput-object v0, p1, Le1/c;->d:Lf/d;

    new-instance v1, Lz0/a;

    invoke-direct {v1, p0, v0}, Lz0/a;-><init>(Landroidx/fragment/app/FragmentActivity;Lf/d;)V

    iput-object v1, p1, Le1/c;->e:Lz0/a;

    const/4 v0, 0x2

    iput v0, v1, Lz0/a;->c:I

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string/jumbo v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    iput-object p0, p1, Le1/c;->f:Landroid/net/wifi/WifiManager;

    iget-object p0, p1, Le1/a;->c:Landroid/widget/TextView;

    const v0, 0x7f1200ca

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p1}, Le1/a;->show()V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseCompatLoadingForDrawables"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->setDividerHeight(I)V

    new-instance p1, Lcom/mega/engineeringmode/function/wifi/WifiTestAvailableListImpl$a;

    invoke-direct {p1, p0}, Lcom/mega/engineeringmode/function/wifi/WifiTestAvailableListImpl$a;-><init>(Lcom/mega/engineeringmode/function/wifi/WifiTestAvailableListImpl;)V

    iput-object p1, p0, Lcom/mega/engineeringmode/function/wifi/WifiTestAvailableListImpl;->h:Lcom/mega/engineeringmode/function/wifi/WifiTestAvailableListImpl$a;

    invoke-static {}, Lt0/c;->a()Lt0/c;

    move-result-object p1

    iget-object p0, p0, Lcom/mega/engineeringmode/function/wifi/WifiTestAvailableListImpl;->h:Lcom/mega/engineeringmode/function/wifi/WifiTestAvailableListImpl$a;

    if-eqz p0, :cond_0

    iget-object p1, p1, Lt0/c;->a:Ljava/util/Vector;

    invoke-virtual {p1, p0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p1, p0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    :goto_0
    return-void
.end method

.method public final q(Lf/d;)Lcom/mega/carsettings/wifi/AccessPointPreference;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/mega/engineeringmode/function/wifi/WifiAccessPointPreferenceImpl;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/mega/engineeringmode/function/wifi/WifiAccessPointPreferenceImpl;-><init>(Landroid/content/Context;Lf/d;)V

    return-object v0
.end method

.method public final u()V
    .locals 2

    iget-object v0, p0, Lcom/mega/engineeringmode/function/wifi/WifiTestAvailableListImpl;->i:Landroidx/preference/Preference;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/mega/carsettings/wifi/AccessPointPreference;

    iget-object v0, v0, Lcom/mega/carsettings/wifi/AccessPointPreference;->r:Lf/d;

    invoke-virtual {v0}, Lf/d;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WifiTestAvailableListImpl"

    const-string/jumbo v1, "onPreferenceAddEnd set mPreference null"

    invoke-static {v0, v1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mega/engineeringmode/function/wifi/WifiTestAvailableListImpl;->i:Landroidx/preference/Preference;

    :cond_0
    return-void
.end method
