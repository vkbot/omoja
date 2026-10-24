.class public Lcom/mega/carsettings/wifi/AccessPointPreference;
.super Landroidx/preference/Preference;
.source "SourceFile"

# interfaces
.implements Lf/d$a;


# instance fields
.field public Z:I

.field public final b1:Landroid/net/wifi/WifiManager;

.field public c:Landroid/widget/TextView;

.field public final c1:Lf/c;

.field public final r:Lf/d;

.field public x:I

.field public final y:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lf/d;)V
    .locals 2

    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/mega/carsettings/wifi/AccessPointPreference;->Z:I

    new-instance v0, Lf/c;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lf/c;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/mega/carsettings/wifi/AccessPointPreference;->c1:Lf/c;

    iput-object p2, p0, Lcom/mega/carsettings/wifi/AccessPointPreference;->r:Lf/d;

    const/4 p2, -0x1

    iput p2, p0, Lcom/mega/carsettings/wifi/AccessPointPreference;->x:I

    const p2, 0x7f0800b3

    iput p2, p0, Lcom/mega/carsettings/wifi/AccessPointPreference;->y:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo p2, "wifi"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/mega/carsettings/wifi/AccessPointPreference;->b1:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method public static d(Lf/d;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lf/d;->d1:Ljava/lang/String;

    iget-object v1, p0, Lf/d;->e1:Ljava/lang/String;

    iget p0, p0, Lf/d;->f1:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v1

    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/mega/carsettings/wifi/AccessPointPreference;->r:Lf/d;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lf/d;->j1:Landroid/net/wifi/WifiConfiguration;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget-object p0, p0, Lcom/mega/carsettings/wifi/AccessPointPreference;->b1:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    return-void

    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "disconnect error ,"

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AccessPointPreference"

    invoke-static {v0, p0}, Lmega/log/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final c()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    iget-object v0, p0, Lcom/mega/carsettings/wifi/AccessPointPreference;->r:Lf/d;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lf/d;->l()Z

    move-result v1

    const-string v2, "Failed to forget invalid network "

    iget-object p0, p0, Lcom/mega/carsettings/wifi/AccessPointPreference;->b1:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_2

    iget-object v1, v0, Lf/d;->m1:Landroid/net/NetworkInfo;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v3, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v1, v3, :cond_1

    iget-object v0, v0, Lf/d;->d1:Ljava/lang/String;

    invoke-static {v0}, Lf/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lr2/c;->b(Landroid/net/wifi/WifiManager;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lf/d;->j1:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmega/log/MLog;->e(Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v1, v0, Lf/d;->j1:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, v0, Lf/d;->j1:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiManager;->removePasspointConfiguration(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v1, v0, Lf/d;->j1:Landroid/net/wifi/WifiConfiguration;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ltz v1, :cond_4

    invoke-static {p0, v1}, Lr2/c;->c(Landroid/net/wifi/WifiManager;I)V

    goto :goto_0

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lf/d;->j1:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmega/log/MLog;->w(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->startScan()Z

    return-void
.end method

.method public final e()V
    .locals 5

    iget-object v0, p0, Lcom/mega/carsettings/wifi/AccessPointPreference;->r:Lf/d;

    iget-object v1, v0, Lf/d;->d1:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lf/d;->d()I

    move-result v2

    iget v0, v0, Lf/d;->o1:I

    iget v3, p0, Lcom/mega/carsettings/wifi/AccessPointPreference;->x:I

    if-ne v2, v3, :cond_0

    iget v3, p0, Lcom/mega/carsettings/wifi/AccessPointPreference;->Z:I

    if-eq v0, v3, :cond_8

    :cond_0
    iput v2, p0, Lcom/mega/carsettings/wifi/AccessPointPreference;->x:I

    iput v0, p0, Lcom/mega/carsettings/wifi/AccessPointPreference;->Z:I

    const/4 v0, -0x1

    const/4 v3, 0x0

    iget v4, p0, Lcom/mega/carsettings/wifi/AccessPointPreference;->y:I

    if-ne v2, v0, :cond_2

    if-eqz v4, :cond_1

    invoke-virtual {p0, v4}, Landroidx/preference/Preference;->setIcon(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v3}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x3

    if-lt v2, v0, :cond_3

    const v0, 0x7f0800b6

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    if-lt v2, v0, :cond_4

    const v0, 0x7f0800b5

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    if-lt v2, v0, :cond_5

    const v0, 0x7f0800b4

    goto :goto_0

    :cond_5
    const v0, 0x7f0800b3

    :goto_0
    invoke-static {v1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_6
    if-eqz v4, :cond_7

    invoke-virtual {p0, v4}, Landroidx/preference/Preference;->setIcon(I)V

    goto :goto_1

    :cond_7
    invoke-virtual {p0, v3}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_8
    :goto_1
    invoke-virtual {p0}, Lcom/mega/carsettings/wifi/AccessPointPreference;->notifyChanged()V

    return-void
.end method

.method public final notifyChanged()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/mega/carsettings/wifi/AccessPointPreference;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/mega/carsettings/wifi/AccessPointPreference;->c1:Lf/c;

    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    invoke-super {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onAttached()V
    .locals 1

    invoke-super {p0}, Landroidx/preference/Preference;->onAttached()V

    iget-object v0, p0, Lcom/mega/carsettings/wifi/AccessPointPreference;->r:Lf/d;

    iput-object p0, v0, Lf/d;->n1:Lf/d$a;

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iget-object v0, p0, Lcom/mega/carsettings/wifi/AccessPointPreference;->r:Lf/d;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/mega/carsettings/wifi/AccessPointPreference;->x:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    :cond_1
    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mega/carsettings/wifi/AccessPointPreference;->c:Landroid/widget/TextView;

    return-void
.end method

.method public onClick()V
    .locals 6

    iget-object v0, p0, Lcom/mega/carsettings/wifi/AccessPointPreference;->r:Lf/d;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lf/d;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v1, v0, Lf/d;->j1:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "click AP: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "AccessPointPreference"

    invoke-static {v3, v2}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, v0, Lf/d;->f1:I

    iget-object v4, p0, Lcom/mega/carsettings/wifi/AccessPointPreference;->b1:Landroid/net/wifi/WifiManager;

    const/4 v5, 0x4

    if-eqz v2, :cond_1

    if-ne v2, v5, :cond_7

    :cond_1
    invoke-virtual {v0}, Lf/d;->l()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v0}, Lf/d;->i()Z

    move-result v2

    if-nez v2, :cond_7

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "connect to SECURITY_NONE AP: "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v0, Lf/d;->d1:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget p0, v0, Lf/d;->f1:I

    if-eqz p0, :cond_3

    if-ne p0, v5, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_3
    :goto_0
    iget-object p0, v0, Lf/d;->j1:Landroid/net/wifi/WifiConfiguration;

    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    new-instance p0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iput-object p0, v0, Lf/d;->j1:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v0, Lf/d;->d1:Ljava/lang/String;

    invoke-static {v1}, Lf/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget p0, v0, Lf/d;->f1:I

    if-eqz p0, :cond_6

    invoke-virtual {v0}, Lf/d;->h()Landroid/net/wifi/WifiManager;

    move-result-object p0

    invoke-static {p0}, Lr2/c;->k(Landroid/net/wifi/WifiManager;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_1

    :cond_5
    iget-object p0, v0, Lf/d;->j1:Landroid/net/wifi/WifiConfiguration;

    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Ljava/util/BitSet;->set(I)V

    goto :goto_2

    :cond_6
    :goto_1
    iget-object p0, v0, Lf/d;->j1:Landroid/net/wifi/WifiConfiguration;

    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/util/BitSet;->set(I)V

    :goto_2
    iget-object p0, v0, Lf/d;->j1:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v4, p0}, Lr2/c;->a(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)V

    goto/16 :goto_5

    :cond_7
    invoke-virtual {v0}, Lf/d;->l()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, v0, Lf/d;->j1:Landroid/net/wifi/WifiConfiguration;

    if-nez v2, :cond_8

    goto :goto_3

    :cond_8
    invoke-static {v2}, Lr2/b;->b(Landroid/net/wifi/WifiConfiguration;)I

    move-result v5

    if-nez v5, :cond_9

    goto :goto_3

    :cond_9
    invoke-static {v2}, Lr2/b;->a(Landroid/net/wifi/WifiConfiguration;)I

    move-result v2

    const/16 v5, 0x8

    if-ne v2, v5, :cond_a

    goto :goto_4

    :cond_a
    :goto_3
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "connect to saved AP: "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lf/d;->d1:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4, v1}, Lr2/c;->a(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_5

    :cond_b
    :goto_4
    invoke-virtual {v0}, Lf/d;->j()Z

    move-result v2

    if-eqz v2, :cond_c

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "connect to Passpoint AP: "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lf/d;->d1:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4, v1}, Lr2/c;->a(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_5

    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "connect to AP: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lf/d;->d1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lf/d;->i()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_5

    :cond_d
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceManager;->showDialog(Landroidx/preference/Preference;)V

    :cond_e
    :goto_5
    return-void
.end method

.method public final onDetached()V
    .locals 1

    invoke-super {p0}, Landroidx/preference/Preference;->onDetached()V

    iget-object p0, p0, Lcom/mega/carsettings/wifi/AccessPointPreference;->r:Lf/d;

    const/4 v0, 0x0

    iput-object v0, p0, Lf/d;->n1:Lf/d$a;

    return-void
.end method
