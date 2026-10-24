.class public Lcom/mega/engineeringmode/function/wifi/WifiAccessPointPreferenceImpl;
.super Lcom/mega/carsettings/wifi/AccessPointPreference;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lf/d;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mega/carsettings/wifi/AccessPointPreference;-><init>(Landroid/content/Context;Lf/d;)V

    const p1, 0x7f0d00f3

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public final f()Ljava/lang/String;
    .locals 2

    const-string v0, "WifiAccessPointPreferenceImpl"

    const-string v1, "getBssidAgain"

    invoke-static {v0, v1}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 10

    invoke-super {p0, p1}, Lcom/mega/carsettings/wifi/AccessPointPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iget-object v0, p0, Lcom/mega/carsettings/wifi/AccessPointPreference;->r:Lf/d;

    iget-object v1, v0, Lf/d;->m1:Landroid/net/NetworkInfo;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "SettingsLib.AccessPoint"

    const-string v2, "NetworkInfo is null, cannot return detailed state"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    const v2, 0x7f0a01ed

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f0a0443

    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0a03fc

    invoke-virtual {p1, v4}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0a031b

    invoke-virtual {p1, v5}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    invoke-virtual {v0}, Lf/d;->l()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    move v5, v6

    goto :goto_1

    :cond_1
    const/16 v5, 0x8

    :goto_1
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v5, :cond_2

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f1200c7

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :cond_2
    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v7, :cond_3

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f1200c8

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :cond_3
    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v1, v7, :cond_5

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :cond_5
    :goto_2
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f1202e6

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_3
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "accessPointState "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v7, "WifiAccessPointPreferenceImpl"

    invoke-static {v7, v4}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x4

    if-ne v1, v5, :cond_6

    move v8, v6

    goto :goto_4

    :cond_6
    move v8, v4

    :goto_4
    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    new-instance v8, Lq0/a;

    const/16 v9, 0x13

    invoke-direct {v8, v9, p0}, Lq0/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v3, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v8, "isSaved  "

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lf/d;->l()Z

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lf/d;->l()Z

    move-result v3

    if-eqz v3, :cond_8

    if-ne v1, v5, :cond_7

    goto :goto_5

    :cond_7
    move v4, v6

    :cond_8
    :goto_5
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v1, Lw0/d;

    const/16 v3, 0x10

    invoke-direct {v1, v3, p0}, Lw0/d;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lx0/b;

    const/16 v3, 0x14

    invoke-direct {v2, v3, p0}, Lx0/b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a040f

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, v0, Lf/d;->e1:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/wifi/WifiAccessPointPreferenceImpl;->f()Ljava/lang/String;

    move-result-object v0

    :cond_9
    aput-object v0, v2, v6

    const p0, 0x7f1203dd

    invoke-virtual {v1, p0, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onClick()V
    .locals 2

    const-string v0, "WifiAccessPointPreferenceImpl"

    const-string v1, "click AccessPointPreference"

    invoke-static {v0, v1}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/mega/carsettings/wifi/AccessPointPreference;->onClick()V

    return-void
.end method
