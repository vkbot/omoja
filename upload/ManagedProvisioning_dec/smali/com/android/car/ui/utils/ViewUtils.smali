.class public final Lcom/android/car/ui/utils/ViewUtils;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/ui/utils/ViewUtils$Predicate;
    }
.end annotation


# static fields
.field static final DEFAULT_FOCUS:I = 0x5

.field static final FOCUSED_BY_DEFAULT:I = 0x6

.field static final IMPLICIT_DEFAULT_FOCUS:I = 0x4

.field static final NO_FOCUS:I = 0x1

.field static final REGULAR_FOCUS:I = 0x3

.field static final SCROLLABLE_CONTAINER_FOCUS:I = 0x2


# direct methods
.method static adjustFocus(Landroid/view/View;I)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 199
    invoke-static {p0, p1, v0, v1}, Lcom/android/car/ui/utils/ViewUtils;->adjustFocus(Landroid/view/View;ILandroid/view/View;Z)Z

    move-result p0

    return p0
.end method

.method private static adjustFocus(Landroid/view/View;ILandroid/view/View;Z)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p3, :cond_0

    .line 228
    invoke-static {p2}, Lcom/android/car/ui/utils/ViewUtils;->requestFocus(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x6

    if-ge p1, v1, :cond_1

    .line 233
    invoke-static {p0}, Lcom/android/car/ui/utils/ViewUtils;->focusOnFocusedByDefaultView(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x5

    if-ge p1, v1, :cond_2

    .line 236
    invoke-static {p0}, Lcom/android/car/ui/utils/ViewUtils;->focusOnDefaultFocusView(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    :cond_2
    const/4 v1, 0x4

    if-ge p1, v1, :cond_3

    .line 239
    invoke-static {p0}, Lcom/android/car/ui/utils/ViewUtils;->focusOnImplicitDefaultFocusView(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_3

    return v0

    :cond_3
    if-eqz p3, :cond_4

    .line 245
    invoke-static {p2}, Lcom/android/car/ui/utils/ViewUtils;->requestFocus(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_4

    return v0

    :cond_4
    const/4 p2, 0x3

    if-ge p1, p2, :cond_5

    .line 250
    invoke-static {p0}, Lcom/android/car/ui/utils/ViewUtils;->focusOnFirstRegularView(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_5

    return v0

    :cond_5
    const/4 p2, 0x2

    if-ge p1, p2, :cond_6

    .line 254
    invoke-static {p0}, Lcom/android/car/ui/utils/ViewUtils;->focusOnScrollableContainer(Landroid/view/View;)Z

    move-result p0

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public static adjustFocus(Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 171
    invoke-static {p1}, Lcom/android/car/ui/utils/ViewUtils;->getFocusLevel(Landroid/view/View;)I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 172
    invoke-static {p0, p1, v0, v1}, Lcom/android/car/ui/utils/ViewUtils;->adjustFocus(Landroid/view/View;ILandroid/view/View;Z)Z

    move-result p0

    return p0
.end method

.method public static adjustFocus(Landroid/view/View;Landroid/view/View;Z)Z
    .locals 1

    const/4 v0, 0x1

    .line 212
    invoke-static {p0, v0, p1, p2}, Lcom/android/car/ui/utils/ViewUtils;->adjustFocus(Landroid/view/View;ILandroid/view/View;Z)Z

    move-result p0

    return p0
.end method

.method private static canTakeFocus(Landroid/view/View;)Z
    .locals 3

    .line 514
    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/android/car/ui/utils/ViewUtils;->isFocusDelegatingContainer(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_3

    .line 515
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 516
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_3

    instance-of v0, p0, Lcom/android/car/ui/FocusParkingView;

    if-nez v0, :cond_3

    .line 520
    invoke-static {p0}, Lcom/android/car/ui/utils/ViewUtils;->isScrollableContainer(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/android/car/ui/utils/ViewUtils;->findFirstFocusableDescendant(Landroid/view/View;)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    return v1
.end method

.method private static depthFirstSearch(Landroid/view/View;Lcom/android/car/ui/utils/ViewUtils$Predicate;Lcom/android/car/ui/utils/ViewUtils$Predicate;)Landroid/view/View;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/android/car/ui/utils/ViewUtils$Predicate<",
            "Landroid/view/View;",
            ">;",
            "Lcom/android/car/ui/utils/ViewUtils$Predicate<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 493
    invoke-interface {p2, p0}, Lcom/android/car/ui/utils/ViewUtils$Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 496
    :cond_0
    invoke-interface {p1, p0}, Lcom/android/car/ui/utils/ViewUtils$Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p0

    .line 499
    :cond_1
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    .line 500
    check-cast p0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 501
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 502
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 503
    invoke-static {v2, p1, p2}, Lcom/android/car/ui/utils/ViewUtils;->depthFirstSearch(Landroid/view/View;Lcom/android/car/ui/utils/ViewUtils$Predicate;Lcom/android/car/ui/utils/ViewUtils$Predicate;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    return-object v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private static findDefaultFocusView(Landroid/view/View;)Landroid/view/View;
    .locals 3

    .line 395
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 398
    :cond_0
    instance-of v0, p0, Lcom/android/car/ui/FocusArea;

    if-eqz v0, :cond_1

    .line 399
    check-cast p0, Lcom/android/car/ui/FocusArea;

    .line 400
    invoke-virtual {p0}, Lcom/android/car/ui/FocusArea;->getDefaultFocusView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 401
    invoke-static {p0}, Lcom/android/car/ui/utils/ViewUtils;->canTakeFocus(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-object p0

    .line 404
    :cond_1
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 405
    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 406
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 407
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 408
    invoke-static {v2}, Lcom/android/car/ui/utils/ViewUtils;->findDefaultFocusView(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    return-object v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method static findFirstFocusableDescendant(Landroid/view/View;)Landroid/view/View;
    .locals 2

    .line 456
    new-instance v0, Lcom/android/car/ui/utils/-$$Lambda$ViewUtils$1Qs0X9w1bt4i6TeuTWEnWLMTSXc;

    invoke-direct {v0, p0}, Lcom/android/car/ui/utils/-$$Lambda$ViewUtils$1Qs0X9w1bt4i6TeuTWEnWLMTSXc;-><init>(Landroid/view/View;)V

    sget-object v1, Lcom/android/car/ui/utils/-$$Lambda$ViewUtils$JMj1s78NFBENZZ4ljNxTETdoCeE;->INSTANCE:Lcom/android/car/ui/utils/-$$Lambda$ViewUtils$JMj1s78NFBENZZ4ljNxTETdoCeE;

    invoke-static {p0, v0, v1}, Lcom/android/car/ui/utils/ViewUtils;->depthFirstSearch(Landroid/view/View;Lcom/android/car/ui/utils/ViewUtils$Predicate;Lcom/android/car/ui/utils/ViewUtils$Predicate;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static findFirstSelectedFocusableDescendant(Landroid/view/View;)Landroid/view/View;
    .locals 2

    .line 468
    new-instance v0, Lcom/android/car/ui/utils/-$$Lambda$ViewUtils$R1-2GIH1gXI5ngUmQF_Rxh1vIz0;

    invoke-direct {v0, p0}, Lcom/android/car/ui/utils/-$$Lambda$ViewUtils$R1-2GIH1gXI5ngUmQF_Rxh1vIz0;-><init>(Landroid/view/View;)V

    sget-object v1, Lcom/android/car/ui/utils/-$$Lambda$ViewUtils$new_C-BFAf6QmATZgvCq7O8lUJA;->INSTANCE:Lcom/android/car/ui/utils/-$$Lambda$ViewUtils$new_C-BFAf6QmATZgvCq7O8lUJA;

    invoke-static {p0, v0, v1}, Lcom/android/car/ui/utils/ViewUtils;->depthFirstSearch(Landroid/view/View;Lcom/android/car/ui/utils/ViewUtils$Predicate;Lcom/android/car/ui/utils/ViewUtils$Predicate;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static findFocusedByDefaultView(Landroid/view/View;)Landroid/view/View;
    .locals 2

    .line 424
    sget-object v0, Lcom/android/car/ui/utils/-$$Lambda$ViewUtils$LNDf1_V-9dEBj8w6o0TUT7CyWBs;->INSTANCE:Lcom/android/car/ui/utils/-$$Lambda$ViewUtils$LNDf1_V-9dEBj8w6o0TUT7CyWBs;

    sget-object v1, Lcom/android/car/ui/utils/-$$Lambda$ViewUtils$0lqA5Z0cQq8Y0OzUXUv4zAq6N5s;->INSTANCE:Lcom/android/car/ui/utils/-$$Lambda$ViewUtils$0lqA5Z0cQq8Y0OzUXUv4zAq6N5s;

    invoke-static {p0, v0, v1}, Lcom/android/car/ui/utils/ViewUtils;->depthFirstSearch(Landroid/view/View;Lcom/android/car/ui/utils/ViewUtils$Predicate;Lcom/android/car/ui/utils/ViewUtils$Predicate;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static findImplicitDefaultFocusView(Landroid/view/View;)Landroid/view/View;
    .locals 1

    .line 437
    invoke-static {p0}, Lcom/android/car/ui/utils/ViewUtils;->findRotaryContainer(Landroid/view/View;)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 442
    :cond_0
    invoke-static {p0}, Lcom/android/car/ui/utils/ViewUtils;->findFirstSelectedFocusableDescendant(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 446
    :cond_1
    invoke-static {p0}, Lcom/android/car/ui/utils/ViewUtils;->findFirstFocusableDescendant(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static findRotaryContainer(Landroid/view/View;)Landroid/view/View;
    .locals 2

    .line 479
    sget-object v0, Lcom/android/car/ui/utils/-$$Lambda$ViewUtils$y0h8NkJo-9VwOjtntyZrTbkJLxc;->INSTANCE:Lcom/android/car/ui/utils/-$$Lambda$ViewUtils$y0h8NkJo-9VwOjtntyZrTbkJLxc;

    sget-object v1, Lcom/android/car/ui/utils/-$$Lambda$ViewUtils$dsMq7KwkD-jTJCP5CG17K8deF4c;->INSTANCE:Lcom/android/car/ui/utils/-$$Lambda$ViewUtils$dsMq7KwkD-jTJCP5CG17K8deF4c;

    invoke-static {p0, v0, v1}, Lcom/android/car/ui/utils/ViewUtils;->depthFirstSearch(Landroid/view/View;Lcom/android/car/ui/utils/ViewUtils$Predicate;Lcom/android/car/ui/utils/ViewUtils$Predicate;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private static focusOnDefaultFocusView(Landroid/view/View;)Z
    .locals 0

    .line 334
    invoke-static {p0}, Lcom/android/car/ui/utils/ViewUtils;->findDefaultFocusView(Landroid/view/View;)Landroid/view/View;

    move-result-object p0

    .line 335
    invoke-static {p0}, Lcom/android/car/ui/utils/ViewUtils;->requestFocus(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private static focusOnFirstRegularView(Landroid/view/View;)Z
    .locals 2

    .line 369
    sget-object v0, Lcom/android/car/ui/utils/-$$Lambda$ViewUtils$-f0elFuTjnZZivfe4ZsiLnbp0hM;->INSTANCE:Lcom/android/car/ui/utils/-$$Lambda$ViewUtils$-f0elFuTjnZZivfe4ZsiLnbp0hM;

    sget-object v1, Lcom/android/car/ui/utils/-$$Lambda$ViewUtils$5fadWWu2xGaldYGt0IC1S9p3lgM;->INSTANCE:Lcom/android/car/ui/utils/-$$Lambda$ViewUtils$5fadWWu2xGaldYGt0IC1S9p3lgM;

    invoke-static {p0, v0, v1}, Lcom/android/car/ui/utils/ViewUtils;->depthFirstSearch(Landroid/view/View;Lcom/android/car/ui/utils/ViewUtils$Predicate;Lcom/android/car/ui/utils/ViewUtils$Predicate;)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static focusOnFocusedByDefaultView(Landroid/view/View;)Z
    .locals 0

    .line 345
    invoke-static {p0}, Lcom/android/car/ui/utils/ViewUtils;->findFocusedByDefaultView(Landroid/view/View;)Landroid/view/View;

    move-result-object p0

    .line 346
    invoke-static {p0}, Lcom/android/car/ui/utils/ViewUtils;->requestFocus(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private static focusOnImplicitDefaultFocusView(Landroid/view/View;)Z
    .locals 0

    .line 356
    invoke-static {p0}, Lcom/android/car/ui/utils/ViewUtils;->findImplicitDefaultFocusView(Landroid/view/View;)Landroid/view/View;

    move-result-object p0

    .line 357
    invoke-static {p0}, Lcom/android/car/ui/utils/ViewUtils;->requestFocus(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private static focusOnScrollableContainer(Landroid/view/View;)Z
    .locals 2

    .line 383
    sget-object v0, Lcom/android/car/ui/utils/-$$Lambda$ViewUtils$Ldp7f94iHvXljZsO3uGB_Yb6Ahg;->INSTANCE:Lcom/android/car/ui/utils/-$$Lambda$ViewUtils$Ldp7f94iHvXljZsO3uGB_Yb6Ahg;

    sget-object v1, Lcom/android/car/ui/utils/-$$Lambda$ViewUtils$R0vM2cRe_LFvJ5NTZ-jlkzoFu8Y;->INSTANCE:Lcom/android/car/ui/utils/-$$Lambda$ViewUtils$R0vM2cRe_LFvJ5NTZ-jlkzoFu8Y;

    invoke-static {p0, v0, v1}, Lcom/android/car/ui/utils/ViewUtils;->depthFirstSearch(Landroid/view/View;Lcom/android/car/ui/utils/ViewUtils$Predicate;Lcom/android/car/ui/utils/ViewUtils$Predicate;)Landroid/view/View;

    move-result-object p0

    .line 386
    invoke-static {p0}, Lcom/android/car/ui/utils/ViewUtils;->requestFocus(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static getAncestorFocusArea(Landroid/view/View;)Lcom/android/car/ui/FocusArea;
    .locals 1

    .line 114
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    .line 116
    instance-of v0, p0, Lcom/android/car/ui/FocusArea;

    if-eqz v0, :cond_0

    .line 117
    check-cast p0, Lcom/android/car/ui/FocusArea;

    return-object p0

    .line 119
    :cond_0
    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getAncestorScrollableContainer(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 133
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_2

    .line 136
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    instance-of v1, p0, Lcom/android/car/ui/FocusArea;

    if-nez v1, :cond_2

    .line 137
    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    .line 138
    invoke-static {v1}, Lcom/android/car/ui/utils/ViewUtils;->isScrollableContainer(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    .line 141
    :cond_1
    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method static getFocusLevel(Landroid/view/View;)I
    .locals 1

    if-eqz p0, :cond_5

    .line 262
    instance-of v0, p0, Lcom/android/car/ui/FocusParkingView;

    if-nez v0, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 265
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isFocusedByDefault()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x6

    return p0

    .line 268
    :cond_1
    invoke-static {p0}, Lcom/android/car/ui/utils/ViewUtils;->isDefaultFocus(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x5

    return p0

    .line 271
    :cond_2
    invoke-static {p0}, Lcom/android/car/ui/utils/ViewUtils;->isImplicitDefaultFocusView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p0, 0x4

    return p0

    .line 274
    :cond_3
    invoke-static {p0}, Lcom/android/car/ui/utils/ViewUtils;->isScrollableContainer(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x2

    return p0

    :cond_4
    const/4 p0, 0x3

    return p0

    :cond_5
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static initFocus(Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 183
    invoke-static {p1}, Lcom/android/car/ui/utils/ViewUtils;->getFocusLevel(Landroid/view/View;)I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-lt p1, v1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 187
    invoke-static {p0, p1, v1, v0}, Lcom/android/car/ui/utils/ViewUtils;->adjustFocus(Landroid/view/View;ILandroid/view/View;Z)Z

    move-result p0

    return p0
.end method

.method private static isDefaultFocus(Landroid/view/View;)Z
    .locals 1

    .line 282
    invoke-static {p0}, Lcom/android/car/ui/utils/ViewUtils;->getAncestorFocusArea(Landroid/view/View;)Lcom/android/car/ui/FocusArea;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {v0}, Lcom/android/car/ui/FocusArea;->getDefaultFocusView()Landroid/view/View;

    move-result-object v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isFocusDelegatingContainer(Landroid/view/View;)Z
    .locals 1

    .line 323
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p0

    const-string v0, "com.android.car.ui.utils.FOCUS_DELEGATING_CONTAINER"

    .line 324
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method static isImplicitDefaultFocusView(Landroid/view/View;)Z
    .locals 3

    .line 293
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 294
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 295
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 296
    invoke-static {v1}, Lcom/android/car/ui/utils/ViewUtils;->isRotaryContainer(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 300
    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const/4 v0, 0x0

    if-nez v1, :cond_2

    return v0

    .line 305
    :cond_2
    invoke-static {v1}, Lcom/android/car/ui/utils/ViewUtils;->findFirstSelectedFocusableDescendant(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    if-eq v2, p0, :cond_3

    .line 306
    invoke-static {v1}, Lcom/android/car/ui/utils/ViewUtils;->findFirstFocusableDescendant(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    if-ne v1, p0, :cond_4

    :cond_3
    const/4 v0, 0x1

    :cond_4
    return v0
.end method

.method private static isRotaryContainer(Landroid/view/View;)Z
    .locals 1

    .line 310
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p0

    const-string v0, "com.android.car.ui.utils.ROTARY_CONTAINER"

    .line 311
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.android.car.ui.utils.VERTICALLY_SCROLLABLE"

    .line 312
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.android.car.ui.utils.HORIZONTALLY_SCROLLABLE"

    .line 313
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static isScrollableContainer(Landroid/view/View;)Z
    .locals 1

    .line 317
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p0

    const-string v0, "com.android.car.ui.utils.VERTICALLY_SCROLLABLE"

    .line 318
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.android.car.ui.utils.HORIZONTALLY_SCROLLABLE"

    .line 319
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static synthetic lambda$findFirstFocusableDescendant$6(Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    if-eq p1, p0, :cond_0

    .line 457
    invoke-static {p1}, Lcom/android/car/ui/utils/ViewUtils;->canTakeFocus(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$findFirstFocusableDescendant$7(Landroid/view/View;)Z
    .locals 0

    .line 458
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static synthetic lambda$findFirstSelectedFocusableDescendant$8(Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    if-eq p1, p0, :cond_0

    .line 469
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/android/car/ui/utils/ViewUtils;->canTakeFocus(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$findFirstSelectedFocusableDescendant$9(Landroid/view/View;)Z
    .locals 0

    .line 470
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static synthetic lambda$findFocusedByDefaultView$4(Landroid/view/View;)Z
    .locals 1

    .line 425
    invoke-virtual {p0}, Landroid/view/View;->isFocusedByDefault()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/car/ui/utils/ViewUtils;->canTakeFocus(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$findFocusedByDefaultView$5(Landroid/view/View;)Z
    .locals 0

    .line 426
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static synthetic lambda$findRotaryContainer$10(Landroid/view/View;)Z
    .locals 0

    .line 480
    invoke-static {p0}, Lcom/android/car/ui/utils/ViewUtils;->isRotaryContainer(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$findRotaryContainer$11(Landroid/view/View;)Z
    .locals 0

    .line 481
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static synthetic lambda$focusOnFirstRegularView$0(Landroid/view/View;)Z
    .locals 1

    .line 371
    invoke-static {p0}, Lcom/android/car/ui/utils/ViewUtils;->isScrollableContainer(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/car/ui/utils/ViewUtils;->canTakeFocus(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/car/ui/utils/ViewUtils;->requestFocus(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$focusOnFirstRegularView$1(Landroid/view/View;)Z
    .locals 0

    .line 372
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static synthetic lambda$focusOnScrollableContainer$2(Landroid/view/View;)Z
    .locals 1

    .line 384
    invoke-static {p0}, Lcom/android/car/ui/utils/ViewUtils;->isScrollableContainer(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/car/ui/utils/ViewUtils;->canTakeFocus(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$focusOnScrollableContainer$3(Landroid/view/View;)Z
    .locals 0

    .line 385
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static requestFocus(Landroid/view/View;)Z
    .locals 2

    if-eqz p0, :cond_2

    .line 152
    invoke-static {p0}, Lcom/android/car/ui/utils/ViewUtils;->canTakeFocus(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 155
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    .line 160
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
