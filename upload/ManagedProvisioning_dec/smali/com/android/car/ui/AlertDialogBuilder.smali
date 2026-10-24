.class public Lcom/android/car/ui/AlertDialogBuilder;
.super Ljava/lang/Object;
.source "AlertDialogBuilder.java"


# instance fields
.field private mAllowDismissButton:Z

.field private mBuilder:Landroid/app/AlertDialog$Builder;

.field private mCarUiEditText:Landroid/widget/EditText;

.field private mContext:Landroid/content/Context;

.field private mHasSingleChoiceBodyButton:Z

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconTinted:Z

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mNegativeButtonSet:Z

.field private mNeutralButtonSet:Z

.field private final mOnApplyWindowInsetsListener:Landroid/view/View$OnApplyWindowInsetsListener;

.field private final mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mPositiveButtonSet:Z

.field private mRoot:Landroid/view/ViewGroup;

.field private mSubtitle:Ljava/lang/CharSequence;

.field private mTitle:Ljava/lang/CharSequence;

.field private mWideScreenTitle:Ljava/lang/String;

.field private mWideScreenTitleDesc:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 110
    invoke-direct {p0, p1, v0}, Lcom/android/car/ui/AlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 72
    iput-boolean v0, p0, Lcom/android/car/ui/AlertDialogBuilder;->mAllowDismissButton:Z

    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lcom/android/car/ui/AlertDialogBuilder;->mHasSingleChoiceBodyButton:Z

    .line 83
    new-instance v0, Lcom/android/car/ui/-$$Lambda$AlertDialogBuilder$MUP4IX8R1OUHR9U791mPN6CBWyg;

    invoke-direct {v0, p0}, Lcom/android/car/ui/-$$Lambda$AlertDialogBuilder$MUP4IX8R1OUHR9U791mPN6CBWyg;-><init>(Lcom/android/car/ui/AlertDialogBuilder;)V

    iput-object v0, p0, Lcom/android/car/ui/AlertDialogBuilder;->mOnApplyWindowInsetsListener:Landroid/view/View$OnApplyWindowInsetsListener;

    .line 102
    new-instance v0, Lcom/android/car/ui/-$$Lambda$AlertDialogBuilder$ul5Osxow355Z2I-3kry73AO2H2M;

    invoke-direct {v0, p0}, Lcom/android/car/ui/-$$Lambda$AlertDialogBuilder$ul5Osxow355Z2I-3kry73AO2H2M;-><init>(Lcom/android/car/ui/AlertDialogBuilder;)V

    iput-object v0, p0, Lcom/android/car/ui/AlertDialogBuilder;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 114
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/car/ui/AlertDialogBuilder;->mBuilder:Landroid/app/AlertDialog$Builder;

    const-string p2, "input_method"

    .line 116
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    iput-object p2, p0, Lcom/android/car/ui/AlertDialogBuilder;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 117
    iput-object p1, p0, Lcom/android/car/ui/AlertDialogBuilder;->mContext:Landroid/content/Context;

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 3

    .line 84
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    .line 86
    invoke-virtual {p1, p2}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0

    .line 89
    :cond_0
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/WindowInsets;->isVisible(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 90
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 91
    iget-object v1, p0, Lcom/android/car/ui/AlertDialogBuilder;->mWideScreenTitle:Ljava/lang/String;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/car/ui/AlertDialogBuilder;->mTitle:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string v2, "add_desc_title_to_content_area"

    .line 92
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v1, p0, Lcom/android/car/ui/AlertDialogBuilder;->mWideScreenTitleDesc:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v2, "add_desc_to_content_area"

    .line 94
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_2
    iget-object v1, p0, Lcom/android/car/ui/AlertDialogBuilder;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object p0, p0, Lcom/android/car/ui/AlertDialogBuilder;->mCarUiEditText:Landroid/widget/EditText;

    const-string v2, "automotive_wide_screen"

    invoke-virtual {v1, p0, v2, v0}, Landroid/view/inputmethod/InputMethodManager;->sendAppPrivateCommand(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 99
    :cond_3
    invoke-virtual {p1, p2}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$new$1(Landroid/content/DialogInterface;)V
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/android/car/ui/AlertDialogBuilder;->mRoot:Landroid/view/ViewGroup;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    .line 104
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$prepareDialog$2(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method private prepareDialog()V
    .locals 7

    .line 730
    iget-object v0, p0, Lcom/android/car/ui/AlertDialogBuilder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/car/ui/R$layout;->car_ui_alert_dialog_title_with_subtitle:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 733
    sget v1, Lcom/android/car/ui/R$id;->car_ui_alert_title:I

    invoke-static {v0, v1}, Lcom/android/car/ui/utils/CarUiUtils;->requireViewByRefId(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 734
    sget v2, Lcom/android/car/ui/R$id;->car_ui_alert_subtitle:I

    .line 735
    invoke-static {v0, v2}, Lcom/android/car/ui/utils/CarUiUtils;->requireViewByRefId(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 736
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 737
    sget v3, Lcom/android/car/ui/R$id;->car_ui_alert_icon:I

    invoke-static {v0, v3}, Lcom/android/car/ui/utils/CarUiUtils;->requireViewByRefId(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 739
    iget-object v4, p0, Lcom/android/car/ui/AlertDialogBuilder;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 740
    iget-object v4, p0, Lcom/android/car/ui/AlertDialogBuilder;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/16 v5, 0x8

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v6

    :goto_0
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 741
    iget-object v1, p0, Lcom/android/car/ui/AlertDialogBuilder;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 742
    iget-object v1, p0, Lcom/android/car/ui/AlertDialogBuilder;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v5

    goto :goto_1

    :cond_1
    move v1, v6

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 743
    iget-object v1, p0, Lcom/android/car/ui/AlertDialogBuilder;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 744
    iget-object v1, p0, Lcom/android/car/ui/AlertDialogBuilder;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    move v5, v6

    :cond_2
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 745
    iget-boolean v1, p0, Lcom/android/car/ui/AlertDialogBuilder;->mIconTinted:Z

    if-eqz v1, :cond_3

    .line 746
    iget-object v1, p0, Lcom/android/car/ui/AlertDialogBuilder;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/car/ui/R$color;->car_ui_dialog_icon_color:I

    .line 747
    invoke-virtual {v1, v2}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 746
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 749
    :cond_3
    iget-object v1, p0, Lcom/android/car/ui/AlertDialogBuilder;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 751
    iget-boolean v0, p0, Lcom/android/car/ui/AlertDialogBuilder;->mAllowDismissButton:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/car/ui/AlertDialogBuilder;->mHasSingleChoiceBodyButton:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/car/ui/AlertDialogBuilder;->mNeutralButtonSet:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/car/ui/AlertDialogBuilder;->mNegativeButtonSet:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/car/ui/AlertDialogBuilder;->mPositiveButtonSet:Z

    if-eqz v0, :cond_4

    goto :goto_2

    .line 753
    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "The dialog must have at least one button to disable the dismiss button"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 756
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/android/car/ui/AlertDialogBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/car/ui/R$bool;->car_ui_alert_dialog_force_dismiss_button:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/car/ui/AlertDialogBuilder;->mNeutralButtonSet:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/android/car/ui/AlertDialogBuilder;->mNegativeButtonSet:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/android/car/ui/AlertDialogBuilder;->mPositiveButtonSet:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/android/car/ui/AlertDialogBuilder;->mAllowDismissButton:Z

    if-eqz v0, :cond_6

    .line 759
    iget-object v0, p0, Lcom/android/car/ui/AlertDialogBuilder;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/car/ui/R$string;->car_ui_alert_dialog_default_button:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 761
    iget-object p0, p0, Lcom/android/car/ui/AlertDialogBuilder;->mBuilder:Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/android/car/ui/-$$Lambda$AlertDialogBuilder$h51GnhnbQvhgpbFYKLXgK9OTHic;->INSTANCE:Lcom/android/car/ui/-$$Lambda$AlertDialogBuilder$h51GnhnbQvhgpbFYKLXgK9OTHic;

    invoke-virtual {p0, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_6
    return-void
.end method

.method private setCustomList(Lcom/android/car/ui/recyclerview/CarUiListItemAdapter;)V
    .locals 4

    .line 420
    iget-object v0, p0, Lcom/android/car/ui/AlertDialogBuilder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/car/ui/R$layout;->car_ui_alert_dialog_list:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 422
    sget v1, Lcom/android/car/ui/R$id;->list:I

    invoke-static {v0, v1}, Lcom/android/car/ui/utils/CarUiUtils;->requireViewByRefId(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 423
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v3, p0, Lcom/android/car/ui/AlertDialogBuilder;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 424
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 425
    iget-object p0, p0, Lcom/android/car/ui/AlertDialogBuilder;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    return-void
.end method


# virtual methods
.method public create()Landroid/app/AlertDialog;
    .locals 3

    .line 775
    invoke-direct {p0}, Lcom/android/car/ui/AlertDialogBuilder;->prepareDialog()V

    .line 776
    iget-object v0, p0, Lcom/android/car/ui/AlertDialogBuilder;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 782
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/car/ui/AlertDialogBuilder;->mRoot:Landroid/view/ViewGroup;

    .line 783
    new-instance v1, Lcom/android/car/ui/FocusParkingView;

    iget-object v2, p0, Lcom/android/car/ui/AlertDialogBuilder;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/car/ui/FocusParkingView;-><init>(Landroid/content/Context;)V

    .line 784
    iget-object v2, p0, Lcom/android/car/ui/AlertDialogBuilder;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 787
    iget-object v1, p0, Lcom/android/car/ui/AlertDialogBuilder;->mRoot:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/car/ui/AlertDialogBuilder;->mOnApplyWindowInsetsListener:Landroid/view/View$OnApplyWindowInsetsListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 788
    iget-object v1, p0, Lcom/android/car/ui/AlertDialogBuilder;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {p0, v1}, Lcom/android/car/ui/AlertDialogBuilder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/android/car/ui/AlertDialogBuilder;

    return-object v0
.end method

.method public synthetic lambda$new$0$AlertDialogBuilder(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/car/ui/AlertDialogBuilder;->lambda$new$0(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$new$1$AlertDialogBuilder(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/car/ui/AlertDialogBuilder;->lambda$new$1(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public setAdapter(Lcom/android/car/ui/recyclerview/CarUiListItemAdapter;)Lcom/android/car/ui/AlertDialogBuilder;
    .locals 0

    .line 414
    invoke-direct {p0, p1}, Lcom/android/car/ui/AlertDialogBuilder;->setCustomList(Lcom/android/car/ui/recyclerview/CarUiListItemAdapter;)V

    const/4 p1, 0x1

    .line 415
    iput-boolean p1, p0, Lcom/android/car/ui/AlertDialogBuilder;->mHasSingleChoiceBodyButton:Z

    return-object p0
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/android/car/ui/AlertDialogBuilder;
    .locals 1

    .line 355
    iget-object v0, p0, Lcom/android/car/ui/AlertDialogBuilder;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    return-object p0
.end method
