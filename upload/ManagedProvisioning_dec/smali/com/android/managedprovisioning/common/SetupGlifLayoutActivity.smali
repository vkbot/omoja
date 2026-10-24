.class public abstract Lcom/android/managedprovisioning/common/SetupGlifLayoutActivity;
.super Lcom/android/managedprovisioning/common/SetupLayoutActivity;
.source "SetupGlifLayoutActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/android/managedprovisioning/common/SetupLayoutActivity;-><init>()V

    return-void
.end method

.method protected constructor <init>(Lcom/android/managedprovisioning/common/Utils;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/android/managedprovisioning/common/SetupLayoutActivity;-><init>(Lcom/android/managedprovisioning/common/Utils;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/managedprovisioning/common/SetupGlifLayoutActivity;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/android/managedprovisioning/common/SetupGlifLayoutActivity;->adjustHeaderMaxLines()V

    return-void
.end method

.method private adjustHeaderMaxLines()V
    .locals 2

    const v0, 0x7f09018c

    .line 110
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 112
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x46

    if-le v0, v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    .line 115
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getMaxLines()I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 116
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_1
    return-void
.end method

.method private setDefaultTheme()V
    .locals 3

    .line 121
    new-instance v0, Lcom/google/android/setupdesign/util/ThemeResolver$Builder;

    invoke-static {}, Lcom/google/android/setupdesign/util/ThemeResolver;->getDefault()Lcom/google/android/setupdesign/util/ThemeResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/setupdesign/util/ThemeResolver$Builder;-><init>(Lcom/google/android/setupdesign/util/ThemeResolver;)V

    const v1, 0x7f0e014a

    .line 122
    invoke-virtual {v0, v1}, Lcom/google/android/setupdesign/util/ThemeResolver$Builder;->setDefaultTheme(I)Lcom/google/android/setupdesign/util/ThemeResolver$Builder;

    const/4 v1, 0x0

    .line 123
    invoke-virtual {v0, v1}, Lcom/google/android/setupdesign/util/ThemeResolver$Builder;->setUseDayNight(Z)Lcom/google/android/setupdesign/util/ThemeResolver$Builder;

    .line 124
    invoke-virtual {v0}, Lcom/google/android/setupdesign/util/ThemeResolver$Builder;->build()Lcom/google/android/setupdesign/util/ThemeResolver;

    move-result-object v0

    .line 125
    invoke-static {}, Landroid/sysprop/SetupWizardProperties;->theme()Ljava/util/Optional;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/setupdesign/util/ThemeResolver;->resolve(Ljava/lang/String;)I

    move-result v0

    .line 121
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    return-void
.end method


# virtual methods
.method protected initializeLayoutParams(ILjava/lang/Integer;Lcom/android/managedprovisioning/model/CustomizationParams;)V
    .locals 2

    .line 69
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    const p1, 0x7f090166

    .line 70
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupdesign/GlifLayout;

    .line 75
    iget-boolean v0, p3, Lcom/android/managedprovisioning/model/CustomizationParams;->useSetupStatusBarColor:Z

    if-nez v0, :cond_0

    .line 76
    iget v0, p3, Lcom/android/managedprovisioning/model/CustomizationParams;->statusBarColor:I

    invoke-virtual {p0, v0}, Lcom/android/managedprovisioning/common/SetupLayoutActivity;->setStatusBarColor(I)V

    .line 78
    :cond_0
    iget v0, p3, Lcom/android/managedprovisioning/model/CustomizationParams;->mainColor:I

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/setupdesign/GlifLayout;->setPrimaryColor(Landroid/content/res/ColorStateList;)V

    if-eqz p2, :cond_1

    .line 81
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/android/setupdesign/GlifLayout;->setHeaderText(I)V

    .line 83
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f060061

    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object p2

    .line 82
    invoke-virtual {p1, p2}, Lcom/google/android/setupdesign/GlifLayout;->setHeaderColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    const p2, 0x7f09018c

    .line 86
    invoke-virtual {p0, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    if-eqz p2, :cond_2

    .line 88
    new-instance v0, Lcom/android/managedprovisioning/common/SetupGlifLayoutActivity$1;

    invoke-direct {v0, p0}, Lcom/android/managedprovisioning/common/SetupGlifLayoutActivity$1;-><init>(Lcom/android/managedprovisioning/common/SetupGlifLayoutActivity;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 103
    invoke-direct {p0}, Lcom/android/managedprovisioning/common/SetupGlifLayoutActivity;->adjustHeaderMaxLines()V

    .line 106
    :cond_2
    iget p2, p3, Lcom/android/managedprovisioning/model/CustomizationParams;->mainColor:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/android/managedprovisioning/common/LogoUtils;->getOrganisationLogo(Landroid/content/Context;Ljava/lang/Integer;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/setupdesign/GlifLayout;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 2

    const v0, 0x7f0e010a

    const/4 v1, 0x1

    .line 63
    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 64
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 52
    invoke-super {p0, p1}, Lcom/android/managedprovisioning/common/SetupLayoutActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-direct {p0}, Lcom/android/managedprovisioning/common/SetupGlifLayoutActivity;->setDefaultTheme()V

    return-void
.end method
