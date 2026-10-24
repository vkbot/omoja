.class public Lcom/android/managedprovisioning/common/AccessibilityContextMenuMaker;
.super Ljava/lang/Object;
.source "AccessibilityContextMenuMaker.java"


# instance fields
.field private final mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/managedprovisioning/common/AccessibilityContextMenuMaker;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method private getSpans(Landroid/text/Spanned;)[Landroid/text/style/ClickableSpan;
    .locals 2

    const/4 p0, 0x0

    if-nez p1, :cond_0

    new-array p0, p0, [Landroid/text/style/ClickableSpan;

    return-object p0

    .line 126
    :cond_0
    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result v0

    const-class v1, Landroid/text/style/ClickableSpan;

    invoke-interface {p1, p0, v0, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/text/style/ClickableSpan;

    .line 127
    array-length v0, p1

    if-nez v0, :cond_1

    new-array p1, p0, [Landroid/text/style/ClickableSpan;

    :cond_1
    return-object p1
.end method

.method private getText(Landroid/widget/TextView;)Landroid/text/Spanned;
    .locals 0

    .line 118
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    .line 119
    instance-of p1, p0, Landroid/text/Spanned;

    if-eqz p1, :cond_0

    check-cast p0, Landroid/text/Spanned;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private isScreenReaderEnabled()Z
    .locals 1

    .line 113
    iget-object p0, p0, Lcom/android/managedprovisioning/common/AccessibilityContextMenuMaker;->mActivity:Landroid/app/Activity;

    const-class v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/AccessibilityManager;

    .line 114
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$populateMenuContent$0(Landroid/text/style/ClickableSpan;Landroid/widget/TextView;Landroid/view/MenuItem;)Z
    .locals 0

    .line 102
    invoke-virtual {p0, p1}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$populateMenuContent$1(Landroid/view/ContextMenu;Landroid/view/MenuItem;)Z
    .locals 0

    .line 107
    invoke-interface {p0}, Landroid/view/ContextMenu;->close()V

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public populateMenuContent(Landroid/view/ContextMenu;Landroid/widget/TextView;)V
    .locals 6

    .line 87
    invoke-direct {p0}, Lcom/android/managedprovisioning/common/AccessibilityContextMenuMaker;->isScreenReaderEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 91
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/managedprovisioning/common/AccessibilityContextMenuMaker;->getText(Landroid/widget/TextView;)Landroid/text/Spanned;

    move-result-object v0

    .line 92
    invoke-direct {p0, v0}, Lcom/android/managedprovisioning/common/AccessibilityContextMenuMaker;->getSpans(Landroid/text/Spanned;)[Landroid/text/style/ClickableSpan;

    move-result-object p0

    if-eqz v0, :cond_3

    .line 94
    array-length v1, p0

    if-nez v1, :cond_1

    goto :goto_1

    .line 98
    :cond_1
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 99
    invoke-interface {v0, v3}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 100
    invoke-interface {v0, v3}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    .line 101
    invoke-interface {v0, v4, v5}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v4

    new-instance v5, Lcom/android/managedprovisioning/common/-$$Lambda$AccessibilityContextMenuMaker$OiVhDPlOVid_f8o_AdkD4-xS5cU;

    invoke-direct {v5, v3, p2}, Lcom/android/managedprovisioning/common/-$$Lambda$AccessibilityContextMenuMaker$OiVhDPlOVid_f8o_AdkD4-xS5cU;-><init>(Landroid/text/style/ClickableSpan;Landroid/widget/TextView;)V

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const p0, 0x7f0d0043

    .line 106
    invoke-interface {p1, p0}, Landroid/view/ContextMenu;->add(I)Landroid/view/MenuItem;

    move-result-object p0

    new-instance p2, Lcom/android/managedprovisioning/common/-$$Lambda$AccessibilityContextMenuMaker$snmBLwuM_gIa4sTPDJLnDm1dgh4;

    invoke-direct {p2, p1}, Lcom/android/managedprovisioning/common/-$$Lambda$AccessibilityContextMenuMaker$snmBLwuM_gIa4sTPDJLnDm1dgh4;-><init>(Landroid/view/ContextMenu;)V

    invoke-interface {p0, p2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_3
    :goto_1
    return-void
.end method

.method public registerWithActivity(Landroid/widget/TextView;)V
    .locals 2

    .line 56
    invoke-direct {p0, p1}, Lcom/android/managedprovisioning/common/AccessibilityContextMenuMaker;->getText(Landroid/widget/TextView;)Landroid/text/Spanned;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/managedprovisioning/common/AccessibilityContextMenuMaker;->getSpans(Landroid/text/Spanned;)[Landroid/text/style/ClickableSpan;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 57
    iget-object p0, p0, Lcom/android/managedprovisioning/common/AccessibilityContextMenuMaker;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->unregisterForContextMenu(Landroid/view/View;)V

    const/4 p0, 0x0

    .line 58
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 59
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 60
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setLongClickable(Z)V

    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/android/managedprovisioning/common/AccessibilityContextMenuMaker;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->registerForContextMenu(Landroid/view/View;)V

    .line 65
    sget-object v0, Lcom/android/managedprovisioning/common/-$$Lambda$Bc21WG92zNtpwGef4qlU9qOmWmU;->INSTANCE:Lcom/android/managedprovisioning/common/-$$Lambda$Bc21WG92zNtpwGef4qlU9qOmWmU;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setLongClickable(Z)V

    .line 67
    new-instance v0, Lcom/android/managedprovisioning/common/AccessibilityContextMenuMaker$1;

    invoke-direct {v0, p0, p1}, Lcom/android/managedprovisioning/common/AccessibilityContextMenuMaker$1;-><init>(Lcom/android/managedprovisioning/common/AccessibilityContextMenuMaker;Landroid/widget/TextView;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method
