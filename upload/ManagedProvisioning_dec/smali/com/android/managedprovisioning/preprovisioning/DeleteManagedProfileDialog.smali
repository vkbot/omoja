.class public Lcom/android/managedprovisioning/preprovisioning/DeleteManagedProfileDialog;
.super Lcom/android/managedprovisioning/common/SimpleDialog;
.source "DeleteManagedProfileDialog.java"


# instance fields
.field private final mSettingsFacade:Lcom/android/managedprovisioning/common/SettingsFacade;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lcom/android/managedprovisioning/common/SimpleDialog;-><init>()V

    .line 47
    new-instance v0, Lcom/android/managedprovisioning/common/SettingsFacade;

    invoke-direct {v0}, Lcom/android/managedprovisioning/common/SettingsFacade;-><init>()V

    iput-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/DeleteManagedProfileDialog;->mSettingsFacade:Lcom/android/managedprovisioning/common/SettingsFacade;

    return-void
.end method

.method private createContentView()Landroid/view/View;
    .locals 6

    .line 99
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 101
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const v2, 0x7f0c0048

    const/4 v3, 0x0

    .line 99
    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 103
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "mdm_package_name"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 108
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/managedprovisioning/common/MdmPackageInfo;->createFromPackageName(Landroid/content/Context;Ljava/lang/String;)Lcom/android/managedprovisioning/common/MdmPackageInfo;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 111
    iget-object v2, v1, Lcom/android/managedprovisioning/common/MdmPackageInfo;->appLabel:Ljava/lang/String;

    .line 112
    iget-object v1, v1, Lcom/android/managedprovisioning/common/MdmPackageInfo;->packageIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 114
    :cond_1
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 115
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_1
    const v4, 0x7f0900da

    .line 118
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 119
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 121
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0d0090

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v3

    invoke-virtual {p0, v1, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 120
    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    const p0, 0x7f0900db

    .line 123
    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 124
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static newInstance(ILandroid/content/ComponentName;Ljava/lang/String;)Lcom/android/managedprovisioning/preprovisioning/DeleteManagedProfileDialog;
    .locals 2

    .line 62
    new-instance v0, Lcom/android/managedprovisioning/common/SimpleDialog$Builder;

    invoke-direct {v0}, Lcom/android/managedprovisioning/common/SimpleDialog$Builder;-><init>()V

    const v1, 0x7f0d005a

    .line 63
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/managedprovisioning/common/SimpleDialog$Builder;->setTitle(Ljava/lang/Integer;)Lcom/android/managedprovisioning/common/SimpleDialog$Builder;

    const v1, 0x7f0d0059

    .line 64
    invoke-virtual {v0, v1}, Lcom/android/managedprovisioning/common/SimpleDialog$Builder;->setPositiveButtonMessage(I)Lcom/android/managedprovisioning/common/SimpleDialog$Builder;

    const v1, 0x7f0d0025

    .line 65
    invoke-virtual {v0, v1}, Lcom/android/managedprovisioning/common/SimpleDialog$Builder;->setNegativeButtonMessage(I)Lcom/android/managedprovisioning/common/SimpleDialog$Builder;

    const/4 v1, 0x0

    .line 66
    invoke-virtual {v0, v1}, Lcom/android/managedprovisioning/common/SimpleDialog$Builder;->setCancelable(Z)Lcom/android/managedprovisioning/common/SimpleDialog$Builder;

    .line 67
    invoke-virtual {v0}, Lcom/android/managedprovisioning/common/SimpleDialog$Builder;->build()Lcom/android/managedprovisioning/common/SimpleDialog;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Landroid/app/DialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "user_profile_callback_id"

    .line 70
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p1, :cond_0

    .line 76
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "mdm_package_name"

    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p0, "profile_owner_domain"

    .line 78
    invoke-virtual {v0, p0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    new-instance p0, Lcom/android/managedprovisioning/preprovisioning/DeleteManagedProfileDialog;

    invoke-direct {p0}, Lcom/android/managedprovisioning/preprovisioning/DeleteManagedProfileDialog;-><init>()V

    .line 81
    invoke-virtual {p0, v0}, Landroid/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method


# virtual methods
.method public getUserId()I
    .locals 1

    .line 133
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "user_profile_callback_id"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 138
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 139
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/android/managedprovisioning/common/SimpleDialog$SimpleDialogListener;

    invoke-interface {p1, p0}, Lcom/android/managedprovisioning/common/SimpleDialog$SimpleDialogListener;->onNegativeButtonClick(Landroid/app/DialogFragment;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/AlertDialog;
    .locals 1

    .line 88
    invoke-super {p0, p1}, Lcom/android/managedprovisioning/common/SimpleDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/AlertDialog;

    move-result-object p1

    .line 89
    invoke-direct {p0}, Lcom/android/managedprovisioning/preprovisioning/DeleteManagedProfileDialog;->createContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 91
    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/DeleteManagedProfileDialog;->mSettingsFacade:Lcom/android/managedprovisioning/common/SettingsFacade;

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/managedprovisioning/common/SettingsFacade;->isUserSetupCompleted(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 92
    invoke-static {p1}, Lcom/google/android/setupcompat/util/SystemBarHelper;->hideSystemBars(Landroid/app/Dialog;)V

    :cond_0
    return-object p1
.end method

.method public bridge synthetic onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lcom/android/managedprovisioning/preprovisioning/DeleteManagedProfileDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method
