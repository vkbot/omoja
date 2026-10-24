.class Lcom/android/managedprovisioning/preprovisioning/consent/LegacyConsentUiHelper;
.super Ljava/lang/Object;
.source "LegacyConsentUiHelper.java"

# interfaces
.implements Lcom/android/managedprovisioning/preprovisioning/consent/ConsentUiHelper;


# static fields
.field private static final SLIDE_CAPTIONS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final SLIDE_CAPTIONS_COMP:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mBenefitsAnimation:Lcom/android/managedprovisioning/preprovisioning/anim/BenefitsAnimation;

.field private final mCallback:Lcom/android/managedprovisioning/preprovisioning/consent/ConsentUiHelperCallback;

.field private final mClickableSpanFactory:Lcom/android/managedprovisioning/common/ClickableSpanFactory;

.field private final mContextMenuMaker:Lcom/android/managedprovisioning/common/AccessibilityContextMenuMaker;

.field private final mTouchTargetEnforcer:Lcom/android/managedprovisioning/common/TouchTargetEnforcer;

.field private final mUtils:Lcom/android/managedprovisioning/common/Utils;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 59
    fill-array-data v1, :array_0

    invoke-static {v1}, Lcom/android/managedprovisioning/preprovisioning/consent/LegacyConsentUiHelper;->createImmutableList([I)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/android/managedprovisioning/preprovisioning/consent/LegacyConsentUiHelper;->SLIDE_CAPTIONS:Ljava/util/List;

    new-array v0, v0, [I

    .line 63
    fill-array-data v0, :array_1

    invoke-static {v0}, Lcom/android/managedprovisioning/preprovisioning/consent/LegacyConsentUiHelper;->createImmutableList([I)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/managedprovisioning/preprovisioning/consent/LegacyConsentUiHelper;->SLIDE_CAPTIONS_COMP:Ljava/util/List;

    return-void

    :array_0
    .array-data 4
        0x7f0d0080
        0x7f0d0081
        0x7f0d0082
    .end array-data

    :array_1
    .array-data 4
        0x7f0d0080
        0x7f0d0096
        0x7f0d0082
    .end array-data
.end method

.method constructor <init>(Landroid/app/Activity;Lcom/android/managedprovisioning/common/AccessibilityContextMenuMaker;Lcom/android/managedprovisioning/preprovisioning/consent/ConsentUiHelperCallback;Lcom/android/managedprovisioning/common/Utils;)V
    .locals 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/consent/LegacyConsentUiHelper;->mActivity:Landroid/app/Activity;

    .line 79
    iput-object p2, p0, Lcom/android/managedprovisioning/preprovisioning/consent/LegacyConsentUiHelper;->mContextMenuMaker:Lcom/android/managedprovisioning/common/AccessibilityContextMenuMaker;

    .line 80
    iput-object p3, p0, Lcom/android/managedprovisioning/preprovisioning/consent/LegacyConsentUiHelper;->mCallback:Lcom/android/managedprovisioning/preprovisioning/consent/ConsentUiHelperCallback;

    .line 81
    new-instance p2, Lcom/android/managedprovisioning/common/TouchTargetEnforcer;

    .line 82
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    invoke-direct {p2, p1}, Lcom/android/managedprovisioning/common/TouchTargetEnforcer;-><init>(F)V

    iput-object p2, p0, Lcom/android/managedprovisioning/preprovisioning/consent/LegacyConsentUiHelper;->mTouchTargetEnforcer:Lcom/android/managedprovisioning/common/TouchTargetEnforcer;

    .line 83
    new-instance p1, Lcom/android/managedprovisioning/common/ClickableSpanFactory;

    iget-object p2, p0, Lcom/android/managedprovisioning/preprovisioning/consent/LegacyConsentUiHelper;->mActivity:Landroid/app/Activity;

    const p3, 0x7f060027

    invoke-virtual {p2, p3}, Landroid/app/Activity;->getColor(I)I

    move-result p2

    invoke-direct {p1, p2}, Lcom/android/managedprovisioning/common/ClickableSpanFactory;-><init>(I)V

    iput-object p1, p0, Lcom/android/managedprovisioning/preprovisioning/consent/LegacyConsentUiHelper;->mClickableSpanFactory:Lcom/android/managedprovisioning/common/ClickableSpanFactory;

    .line 84
    iput-object p4, p0, Lcom/android/managedprovisioning/preprovisioning/consent/LegacyConsentUiHelper;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    return-void
.end method

.method private assembleDOTermsMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Landroid/text/Spannable;
    .locals 7

    .line 130
    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/consent/LegacyConsentUiHelper;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0d00d9

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 132
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    iget-object p2, p0, Lcom/android/managedprovisioning/preprovisioning/consent/LegacyConsentUiHelper;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0d00e8

    invoke-virtual {p2, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 135
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 136
    iget-object p1, p0, Lcom/android/managedprovisioning/preprovisioning/consent/LegacyConsentUiHelper;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0d0062

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v4

    aput-object v0, v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 138
    :cond_1
    iget-object v1, p0, Lcom/android/managedprovisioning/preprovisioning/consent/LegacyConsentUiHelper;->mActivity:Landroid/app/Activity;

    const v5, 0x7f0d0063

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p2, v6, v4

    aput-object p1, v6, v3

    aput-object v0, v6, v2

    invoke-virtual {v1, v5, v6}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 141
    :goto_0
    new-instance p2, Landroid/text/SpannableString;

    invoke-direct {p2, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 142
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    .line 144
    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/consent/LegacyConsentUiHelper;->mClickableSpanFactory:Lcom/android/managedprovisioning/common/ClickableSpanFactory;

    invoke-virtual {p0, p3}, Lcom/android/managedprovisioning/common/ClickableSpanFactory;->create(Landroid/content/Intent;)Landroid/text/style/ClickableSpan;

    move-result-object p0

    .line 145
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p3

    add-int/2addr p3, p1

    const/16 v0, 0x21

    invoke-interface {p2, p0, p1, p3, v0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-object p2
.end method

.method private static varargs createImmutableList([I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 150
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    .line 153
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 154
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, p0, v2

    .line 155
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 157
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 151
    :cond_2
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private getDeviceAdminIconDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 292
    :cond_0
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    .line 296
    :cond_1
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/consent/LegacyConsentUiHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method private handleSupportUrl(Lcom/android/managedprovisioning/model/CustomizationParams;)V
    .locals 9

    .line 279
    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/consent/LegacyConsentUiHelper;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0900dd

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/TextView;

    .line 280
    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/consent/LegacyConsentUiHelper;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0d0098

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 281
    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/consent/LegacyConsentUiHelper;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v7, v1, v2

    const v2, 0x7f0d0048

    .line 282
    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 283
    iget-object v1, p0, Lcom/android/managedprovisioning/preprovisioning/consent/LegacyConsentUiHelper;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    iget-object v2, p0, Lcom/android/managedprovisioning/preprovisioning/consent/LegacyConsentUiHelper;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/android/managedprovisioning/preprovisioning/consent/LegacyConsentUiHelper;->mClickableSpanFactory:Lcom/android/managedprovisioning/common/ClickableSpanFactory;

    iget-object v5, p0, Lcom/android/managedprovisioning/preprovisioning/consent/LegacyConsentUiHelper;->mContextMenuMaker:Lcom/android/managedprovisioning/common/AccessibilityContextMenuMaker;

    move-object v3, p1

    invoke-virtual/range {v1 .. v8}, Lcom/android/managedprovisioning/common/Utils;->handleSupportUrl(Landroid/content/Context;Lcom/android/managedprovisioning/model/CustomizationParams;Lcom/android/managedprovisioning/common/ClickableSpanFactory;Lcom/android/managedprovisioning/common/AccessibilityContextMenuMaker;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private initiateUIDeviceOwner(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Lcom/android/managedprovisioning/model/CustomizationParams;Landroid/content/Intent;)V
    .locals 2

    .line 257
    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/consent/LegacyConsentUiHelper;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0900c9

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 259
    new-instance v1, Lcom/android/managedprovisioning/preprovisioning/consent/-$$Lambda$LegacyConsentUiHelper$4XjaPTKMVTotcggmZr3fUvtY3Iw;

    invoke-direct {v1, p0}, Lcom/android/managedprovisioning/preprovisioning/consent/-$$Lambda$LegacyConsentUiHelper$4XjaPTKMVTotcggmZr3fUvtY3Iw;-><init>(Lcom/android/managedprovisioning/preprovisioning/consent/LegacyConsentUiHelper;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/consent/LegacyConsentUiHelper;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0900de

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 267
    iget-object v1, p4, Lcom/android/managedprovisioning/model/CustomizationParams;->orgName:Ljava/lang/String;

    invoke-direct {p0, p3, v1, p5}, Lcom/android/managedprovisioning/preprovisioning/consent/LegacyConsentUiHelper;->assembleDOTermsMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Landroid/text/Spannable;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 270
    iget-object p3, p0, Lcom/android/managedprovisioning/preprovisioning/consent/LegacyConsentUiHelper;->mContextMenuMaker:Lcom/android/managedprovisioning/common/AccessibilityContextMenuMaker;

    invoke-virtual {p3, v0}, Lcom/android/managedprovisioning/common/AccessibilityContextMenuMaker;->registerWithActivity(Landroid/widget/TextView;)V

    .line 272
    invoke-direct {p0, p4}, Lcom/android/managedprovisioning/preprovisioning/consent/LegacyConsentUiHelper;->handleSupportUrl(Lcom/android/managedprovisioning/model/CustomizationParams;)V

    .line 275
    iget-object p3, p4, Lcom/android/managedprovisioning/model/CustomizationParams;->orgName:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/managedprovisioning/preprovisioning/consent/LegacyConsentUiHelper;->setDpcIconAndLabel(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    return-void
.end method

.method private initiateUIProfileOwner(Ljava/lang/String;ZLcom/android/managedprovisioning/model/CustomizationParams;Landroid/content/Intent;)V
    .locals 5

    .line 220
    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/consent/LegacyConsentUiHelper;->mActivity:Landroid/app/Activity;

    const v1, 0x7f09005c

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 221
    new-instance v1, Lcom/android/managedprovisioning/preprovisioning/consent/-$$Lambda$LegacyConsentUiHelper$wIMY3v4TEAlmK5zfFZWyPJlElM4;

    invoke-direct {v1, p0}, Lcom/android/managedprovisioning/preprovisioning/consent/-$$Lambda$LegacyConsentUiHelper$wIMY3v4TEAlmK5zfFZWyPJlElM4;-><init>(Lcom/android/managedprovisioning/preprovisioning/consent/LegacyConsentUiHelper;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p2, :cond_0

    const v0, 0x7f0d00a1

    goto :goto_0

    :cond_0
    const v0, 0x7f0d00a0

    :goto_0
    if-eqz p2, :cond_1

    const v1, 0x7f0d00a3

    goto :goto_1

    :cond_1
    const v1, 0x7f0d00a2

    .line 231
    :goto_1
    iget-object v2, p0, Lcom/android/managedprovisioning/preprovisioning/consent/LegacyConsentUiHelper;->mActivity:Landroid/app/Activity;

    const v3, 0x7f09013e

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 232
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 233
    iget-object p1, p0, Lcom/android/managedprovisioning/preprovisioning/consent/LegacyConsentUiHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 234
    :cond_2
    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/consent/LegacyConsentUiHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 232
    :goto_2
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    iget-object p1, p0, Lcom/android/managedprovisioning/preprovisioning/consent/LegacyConsentUiHelper;->mActivity:Landroid/app/Activity;

    const v0, 0x7f09016b

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 238
    new-instance v0, Lcom/android/managedprovisioning/preprovisioning/consent/-$$Lambda$LegacyConsentUiHelper$CxaI9uHosxVHSKWdV_NS52fbpjo;

    invoke-direct {v0, p0, p4}, Lcom/android/managedprovisioning/preprovisioning/consent/-$$Lambda$LegacyConsentUiHelper$CxaI9uHosxVHSKWdV_NS52fbpjo;-><init>(Lcom/android/managedprovisioning/preprovisioning/consent/LegacyConsentUiHelper;Landroid/content/Intent;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    iget-object p4, p0, Lcom/android/managedprovisioning/preprovisioning/consent/LegacyConsentUiHelper;->mTouchTargetEnforcer:Lcom/android/managedprovisioning/common/TouchTargetEnforcer;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p4, p1, v0}, Lcom/android/managedprovisioning/common/TouchTargetEnforcer;->enforce(Landroid/view/View;Landroid/view/View;)V

    .line 242
    new-instance p1, Lcom/android/managedprovisioning/preprovisioning/anim/BenefitsAnimation;

    iget-object p4, p0, Lcom/android/managedprovisioning/preprovisioning/consent/LegacyConsentUiHelper;->mActivity:Landroid/app/Activity;

    if-eqz p2, :cond_3

    .line 245
    sget-object v0, Lcom/android/managedprovisioning/preprovisioning/consent/LegacyConsentUiHelper;->SLIDE_CAPTIONS_COMP:Ljava/util/List;

    goto :goto_3

    .line 246
    :cond_3
    sget-object v0, Lcom/android/managedprovisioning/preprovisioning/consent/LegacyConsentUiHelper;->SLIDE_CAPTIONS:Ljava/util/List;

    :goto_3
    if-eqz p2, :cond_4

    const p2, 0x7f0d0045

    goto :goto_4

    :cond_4
    const p2, 0x7f0d009b

    .line 249
    :goto_4
    invoke-direct {p1, p4, v0, p2, p3}, Lcom/android/managedprovisioning/preprovisioning/anim/BenefitsAnimation;-><init>(Landroid/app/Activity;Ljava/util/List;ILcom/android/managedprovisioning/model/CustomizationParams;)V

    iput-object p1, p0, Lcom/android/managedprovisioning/preprovisioning/consent/LegacyConsentUiHelper;->mBenefitsAnimation:Lcom/android/managedprovisioning/preprovisioning/anim/BenefitsAnimation;

    return-void
.end method

.method private synthetic lambda$initiateUIDeviceOwner$3(Landroid/view/View;)V
    .locals 0

    const-string p1, "Close button (close_button) is clicked."

    .line 260
    invoke-static {p1}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logi(Ljava/lang/String;)V

    .line 261
    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/consent/LegacyConsentUiHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method private synthetic lambda$initiateUIProfileOwner$1(Landroid/view/View;)V
    .locals 0

    const-string p1, "Back button (back_button) is clicked."

    .line 222
    invoke-static {p1}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logi(Ljava/lang/String;)V

    .line 223
    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/consent/LegacyConsentUiHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method private synthetic lambda$initiateUIProfileOwner$2(Landroid/content/Intent;Landroid/view/View;)V
    .locals 0

    .line 238
    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/consent/LegacyConsentUiHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic lambda$setupAcceptAndContinueButton$0(Landroid/view/View;)V
    .locals 0

    .line 206
    invoke-direct {p0}, Lcom/android/managedprovisioning/preprovisioning/consent/LegacyConsentUiHelper;->onNextButtonClicked()V

    return-void
.end method

.method private onNextButtonClicked()V
    .locals 1

    const-string v0, "Next button (next_button) is clicked."

    .line 213
    invoke-static {v0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logi(Ljava/lang/String;)V

    .line 214
    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/consent/LegacyConsentUiHelper;->mCallback:Lcom/android/managedprovisioning/preprovisioning/consent/ConsentUiHelperCallback;

    invoke-interface {p0}, Lcom/android/managedprovisioning/preprovisioning/consent/ConsentUiHelperCallback;->nextAfterUserConsent()V

    return-void
.end method

.method private setDpcIconAndLabel(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 5

    if-eqz p2, :cond_2

    .line 102
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/consent/LegacyConsentUiHelper;->mActivity:Landroid/app/Activity;

    const v1, 0x7f090113

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    .line 108
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 110
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    iget-object p3, p0, Lcom/android/managedprovisioning/preprovisioning/consent/LegacyConsentUiHelper;->mActivity:Landroid/app/Activity;

    const v0, 0x7f0d00e7

    invoke-virtual {p3, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/consent/LegacyConsentUiHelper;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0d00e6

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    aput-object p3, v4, v1

    invoke-virtual {v0, v2, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 114
    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/consent/LegacyConsentUiHelper;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0900dc

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 115
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object p3, p0, Lcom/android/managedprovisioning/preprovisioning/consent/LegacyConsentUiHelper;->mActivity:Landroid/app/Activity;

    const v0, 0x7f0900da

    invoke-virtual {p3, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    .line 118
    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 119
    iget-object p2, p0, Lcom/android/managedprovisioning/preprovisioning/consent/LegacyConsentUiHelper;->mActivity:Landroid/app/Activity;

    .line 120
    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0d0090

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-virtual {p2, v0, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 119
    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 122
    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/consent/LegacyConsentUiHelper;->mActivity:Landroid/app/Activity;

    const p2, 0x7f0900db

    invoke-virtual {p0, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 123
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private setupAcceptAndContinueButton(Z)V
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/consent/LegacyConsentUiHelper;->mActivity:Landroid/app/Activity;

    const v1, 0x7f090166

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/GlifLayout;

    .line 206
    new-instance v1, Lcom/android/managedprovisioning/preprovisioning/consent/-$$Lambda$LegacyConsentUiHelper$C3JTmikIfvaX1dDv_E-Yd8KZccU;

    invoke-direct {v1, p0}, Lcom/android/managedprovisioning/preprovisioning/consent/-$$Lambda$LegacyConsentUiHelper$C3JTmikIfvaX1dDv_E-Yd8KZccU;-><init>(Lcom/android/managedprovisioning/preprovisioning/consent/LegacyConsentUiHelper;)V

    invoke-static {v0, v1}, Lcom/android/managedprovisioning/common/Utils;->addAcceptAndContinueButton(Lcom/google/android/setupdesign/GlifLayout;Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton;

    if-eqz p1, :cond_0

    .line 208
    invoke-direct {p0}, Lcom/android/managedprovisioning/preprovisioning/consent/LegacyConsentUiHelper;->onNextButtonClicked()V

    :cond_0
    return-void
.end method


# virtual methods
.method public initiateUi(Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$UiParams;)V
    .locals 12

    .line 167
    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/consent/LegacyConsentUiHelper;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    iget-object v1, p1, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$UiParams;->provisioningAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/managedprovisioning/common/Utils;->isProfileOwnerAction(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const v2, 0x7f0d00bd

    const v0, 0x7f0d00dd

    const v3, 0x7f0c0053

    move-object v6, v1

    move-object v7, v6

    move v1, v2

    move v2, v3

    goto :goto_2

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/consent/LegacyConsentUiHelper;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    iget-object v3, p1, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$UiParams;->provisioningAction:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/android/managedprovisioning/common/Utils;->isDeviceOwnerAction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const v2, 0x7f0d00b9

    const v0, 0x7f0d0077

    const v1, 0x7f0c0052

    .line 175
    iget-object v3, p1, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$UiParams;->packageInfo:Lcom/android/managedprovisioning/common/MdmPackageInfo;

    if-eqz v3, :cond_1

    .line 176
    iget-object v3, v3, Lcom/android/managedprovisioning/common/MdmPackageInfo;->appLabel:Ljava/lang/String;

    goto :goto_0

    .line 177
    :cond_1
    iget-object v3, p1, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$UiParams;->deviceAdminLabel:Ljava/lang/String;

    if-eqz v3, :cond_2

    goto :goto_0

    .line 178
    :cond_2
    iget-object v3, p1, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$UiParams;->packageName:Ljava/lang/String;

    .line 179
    :goto_0
    iget-object v4, p1, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$UiParams;->packageInfo:Lcom/android/managedprovisioning/common/MdmPackageInfo;

    if-eqz v4, :cond_3

    iget-object v4, v4, Lcom/android/managedprovisioning/common/MdmPackageInfo;->packageIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 180
    :cond_3
    iget-object v4, p1, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$UiParams;->deviceAdminIconFilePath:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/managedprovisioning/preprovisioning/consent/LegacyConsentUiHelper;->getDeviceAdminIconDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :goto_1
    move-object v6, v3

    move-object v7, v4

    move v11, v2

    move v2, v1

    move v1, v11

    goto :goto_2

    :cond_4
    move-object v6, v1

    move-object v7, v6

    move v0, v2

    move v1, v0

    .line 183
    :goto_2
    iget-object v9, p1, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$UiParams;->customization:Lcom/android/managedprovisioning/model/CustomizationParams;

    .line 184
    iget-object v3, p0, Lcom/android/managedprovisioning/preprovisioning/consent/LegacyConsentUiHelper;->mCallback:Lcom/android/managedprovisioning/preprovisioning/consent/ConsentUiHelperCallback;

    .line 186
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 184
    invoke-interface {v3, v2, v0, v9}, Lcom/android/managedprovisioning/preprovisioning/consent/ConsentUiHelperCallback;->initializeLayoutParams(ILjava/lang/Integer;Lcom/android/managedprovisioning/model/CustomizationParams;)V

    .line 189
    iget-boolean v0, p1, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$UiParams;->isSilentProvisioning:Z

    invoke-direct {p0, v0}, Lcom/android/managedprovisioning/preprovisioning/consent/LegacyConsentUiHelper;->setupAcceptAndContinueButton(Z)V

    .line 191
    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/consent/LegacyConsentUiHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 193
    new-instance v0, Lcom/android/managedprovisioning/common/StringConcatenator;

    iget-object v1, p0, Lcom/android/managedprovisioning/preprovisioning/consent/LegacyConsentUiHelper;->mActivity:Landroid/app/Activity;

    .line 194
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/managedprovisioning/common/StringConcatenator;-><init>(Landroid/content/res/Resources;)V

    iget-object v1, p1, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$UiParams;->disclaimerHeadings:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/managedprovisioning/common/StringConcatenator;->join(Ljava/util/List;)Ljava/lang/String;

    move-result-object v8

    .line 195
    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/consent/LegacyConsentUiHelper;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    iget-object v1, p1, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$UiParams;->provisioningAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/managedprovisioning/common/Utils;->isProfileOwnerAction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 196
    iget-boolean v0, p1, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$UiParams;->isDeviceManaged:Z

    iget-object p1, p1, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$UiParams;->viewTermsIntent:Landroid/content/Intent;

    invoke-direct {p0, v8, v0, v9, p1}, Lcom/android/managedprovisioning/preprovisioning/consent/LegacyConsentUiHelper;->initiateUIProfileOwner(Ljava/lang/String;ZLcom/android/managedprovisioning/model/CustomizationParams;Landroid/content/Intent;)V

    goto :goto_3

    .line 198
    :cond_5
    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/consent/LegacyConsentUiHelper;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    iget-object v1, p1, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$UiParams;->provisioningAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/managedprovisioning/common/Utils;->isDeviceOwnerAction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 199
    iget-object v10, p1, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$UiParams;->viewTermsIntent:Landroid/content/Intent;

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/managedprovisioning/preprovisioning/consent/LegacyConsentUiHelper;->initiateUIDeviceOwner(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Lcom/android/managedprovisioning/model/CustomizationParams;Landroid/content/Intent;)V

    :cond_6
    :goto_3
    return-void
.end method

.method public synthetic lambda$initiateUIDeviceOwner$3$LegacyConsentUiHelper(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/managedprovisioning/preprovisioning/consent/LegacyConsentUiHelper;->lambda$initiateUIDeviceOwner$3(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$initiateUIProfileOwner$1$LegacyConsentUiHelper(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/managedprovisioning/preprovisioning/consent/LegacyConsentUiHelper;->lambda$initiateUIProfileOwner$1(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$initiateUIProfileOwner$2$LegacyConsentUiHelper(Landroid/content/Intent;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/managedprovisioning/preprovisioning/consent/LegacyConsentUiHelper;->lambda$initiateUIProfileOwner$2(Landroid/content/Intent;Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$setupAcceptAndContinueButton$0$LegacyConsentUiHelper(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/managedprovisioning/preprovisioning/consent/LegacyConsentUiHelper;->lambda$setupAcceptAndContinueButton$0(Landroid/view/View;)V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/consent/LegacyConsentUiHelper;->mBenefitsAnimation:Lcom/android/managedprovisioning/preprovisioning/anim/BenefitsAnimation;

    if-eqz p0, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/android/managedprovisioning/preprovisioning/anim/BenefitsAnimation;->start()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/consent/LegacyConsentUiHelper;->mBenefitsAnimation:Lcom/android/managedprovisioning/preprovisioning/anim/BenefitsAnimation;

    if-eqz p0, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/android/managedprovisioning/preprovisioning/anim/BenefitsAnimation;->stop()V

    :cond_0
    return-void
.end method
