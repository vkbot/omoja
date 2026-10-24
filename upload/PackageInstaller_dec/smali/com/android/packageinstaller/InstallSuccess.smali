.class public Lcom/android/packageinstaller/InstallSuccess;
.super Lcom/android/internal/app/AlertActivity;
.source "InstallSuccess.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mAppPackageName:Ljava/lang/String;

.field private mAppSnippet:Lcom/android/packageinstaller/PackageUtil$AppSnippet;

.field private mLaunchIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-class v0, Lcom/android/packageinstaller/InstallSuccess;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/packageinstaller/InstallSuccess;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method private bindUi()V
    .locals 6

    .line 94
    iget-object v0, p0, Lcom/android/packageinstaller/InstallSuccess;->mAppSnippet:Lcom/android/packageinstaller/PackageUtil$AppSnippet;

    if-nez v0, :cond_0

    return-void

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    iget-object v0, v0, Lcom/android/packageinstaller/PackageUtil$AppSnippet;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Lcom/android/internal/app/AlertController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 99
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    iget-object v1, p0, Lcom/android/packageinstaller/InstallSuccess;->mAppSnippet:Lcom/android/packageinstaller/PackageUtil$AppSnippet;

    iget-object v1, v1, Lcom/android/packageinstaller/PackageUtil$AppSnippet;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    const v1, 0x7f0c001e

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertController;->setView(I)V

    .line 101
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    const v1, 0x7f0e003d

    invoke-virtual {p0, v1}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3, v3}, Lcom/android/internal/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 103
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    const/4 v1, -0x2

    const v4, 0x7f0e0027

    invoke-virtual {p0, v4}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/packageinstaller/-$$Lambda$InstallSuccess$Hr5SCcxCJ7xPHV3eQfSz9HkQoYI;

    invoke-direct {v5, p0}, Lcom/android/packageinstaller/-$$Lambda$InstallSuccess$Hr5SCcxCJ7xPHV3eQfSz9HkQoYI;-><init>(Lcom/android/packageinstaller/InstallSuccess;)V

    invoke-virtual {v0, v1, v4, v5, v3}, Lcom/android/internal/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 110
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    const v0, 0x7f0900c8

    .line 111
    invoke-virtual {p0, v0}, Lcom/android/internal/app/AlertActivity;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lcom/android/packageinstaller/InstallSuccess;->mLaunchIntent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 115
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v3, p0, Lcom/android/packageinstaller/InstallSuccess;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {v0, v3, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 117
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 122
    :goto_0
    iget-object v3, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v3, v2}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    if-eqz v0, :cond_2

    .line 124
    new-instance v0, Lcom/android/packageinstaller/-$$Lambda$InstallSuccess$cY81psAybICAEp3swUhmdMi_MqA;

    invoke-direct {v0, p0}, Lcom/android/packageinstaller/-$$Lambda$InstallSuccess$cY81psAybICAEp3swUhmdMi_MqA;-><init>(Lcom/android/packageinstaller/InstallSuccess;)V

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 133
    :cond_2
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_1
    return-void
.end method

.method private synthetic lambda$bindUi$0(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 105
    iget-object p1, p0, Lcom/android/packageinstaller/InstallSuccess;->mAppPackageName:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 106
    sget-object p1, Lcom/android/packageinstaller/InstallSuccess;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Finished installing "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/packageinstaller/InstallSuccess;->mAppPackageName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void
.end method

.method private synthetic lambda$bindUi$1(Landroid/view/View;)V
    .locals 2

    .line 126
    :try_start_0
    iget-object p1, p0, Lcom/android/packageinstaller/InstallSuccess;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/AlertActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 128
    sget-object v0, Lcom/android/packageinstaller/InstallSuccess;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Could not start activity"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 130
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$bindUi$0$InstallSuccess(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/packageinstaller/InstallSuccess;->lambda$bindUi$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public synthetic lambda$bindUi$1$InstallSuccess(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/packageinstaller/InstallSuccess;->lambda$bindUi$1(Landroid/view/View;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 55
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "android.intent.extra.RETURN_RESULT"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 59
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const/4 v0, 0x1

    const-string v1, "android.intent.extra.INSTALL_RESULT"

    .line 60
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v0, -0x1

    .line 61
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/app/AlertActivity;->setResult(ILandroid/content/Intent;)V

    .line 62
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    goto :goto_1

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.android.packageinstaller.applicationInfo"

    .line 66
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 67
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/packageinstaller/InstallSuccess;->mAppPackageName:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 71
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 73
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "package"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 74
    new-instance p1, Lcom/android/packageinstaller/PackageUtil$AppSnippet;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 75
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p1, v2, v0}, Lcom/android/packageinstaller/PackageUtil$AppSnippet;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Lcom/android/packageinstaller/InstallSuccess;->mAppSnippet:Lcom/android/packageinstaller/PackageUtil$AppSnippet;

    goto :goto_0

    .line 77
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-static {p0, v0, v1}, Lcom/android/packageinstaller/PackageUtil;->getAppSnippet(Landroid/app/Activity;Landroid/content/pm/ApplicationInfo;Ljava/io/File;)Lcom/android/packageinstaller/PackageUtil$AppSnippet;

    move-result-object p1

    iput-object p1, p0, Lcom/android/packageinstaller/InstallSuccess;->mAppSnippet:Lcom/android/packageinstaller/PackageUtil$AppSnippet;

    .line 81
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/packageinstaller/InstallSuccess;->mAppPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/packageinstaller/InstallSuccess;->mLaunchIntent:Landroid/content/Intent;

    .line 83
    invoke-direct {p0}, Lcom/android/packageinstaller/InstallSuccess;->bindUi()V

    :goto_1
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 89
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    .line 90
    invoke-direct {p0}, Lcom/android/packageinstaller/InstallSuccess;->bindUi()V

    return-void
.end method
