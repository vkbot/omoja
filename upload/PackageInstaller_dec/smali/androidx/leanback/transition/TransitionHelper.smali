.class public final Landroidx/leanback/transition/TransitionHelper;
.super Ljava/lang/Object;
.source "TransitionHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/leanback/transition/TransitionHelper$TransitionStub;
    }
.end annotation


# direct methods
.method public static addTransition(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 224
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 225
    check-cast p0, Landroid/transition/TransitionSet;

    check-cast p1, Landroid/transition/Transition;

    invoke-virtual {p0, p1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    :cond_0
    return-void
.end method

.method public static addTransitionListener(Ljava/lang/Object;Landroidx/leanback/transition/TransitionListener;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 295
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 296
    check-cast p0, Landroid/transition/Transition;

    .line 297
    new-instance v0, Landroidx/leanback/transition/TransitionHelper$1;

    invoke-direct {v0, p1}, Landroidx/leanback/transition/TransitionHelper$1;-><init>(Landroidx/leanback/transition/TransitionListener;)V

    iput-object v0, p1, Landroidx/leanback/transition/TransitionListener;->mImpl:Ljava/lang/Object;

    .line 323
    check-cast v0, Landroid/transition/Transition$TransitionListener;

    invoke-virtual {p0, v0}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    goto :goto_0

    .line 325
    :cond_1
    check-cast p0, Landroidx/leanback/transition/TransitionHelper$TransitionStub;

    .line 326
    iget-object v0, p0, Landroidx/leanback/transition/TransitionHelper$TransitionStub;->mTransitionListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 327
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/leanback/transition/TransitionHelper$TransitionStub;->mTransitionListeners:Ljava/util/ArrayList;

    .line 329
    :cond_2
    iget-object p0, p0, Landroidx/leanback/transition/TransitionHelper$TransitionStub;->mTransitionListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public static beginDelayedTransition(Landroid/view/ViewGroup;Ljava/lang/Object;)V
    .locals 2

    .line 445
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 446
    check-cast p1, Landroid/transition/Transition;

    .line 447
    invoke-static {p0, p1}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    :cond_0
    return-void
.end method

.method public static createChangeBounds(Z)Ljava/lang/Object;
    .locals 2

    .line 154
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 155
    new-instance v0, Landroidx/leanback/transition/CustomChangeBounds;

    invoke-direct {v0}, Landroidx/leanback/transition/CustomChangeBounds;-><init>()V

    .line 156
    invoke-virtual {v0, p0}, Landroid/transition/ChangeBounds;->setReparent(Z)V

    return-object v0

    .line 159
    :cond_0
    new-instance p0, Landroidx/leanback/transition/TransitionHelper$TransitionStub;

    invoke-direct {p0}, Landroidx/leanback/transition/TransitionHelper$TransitionStub;-><init>()V

    return-object p0
.end method

.method public static createChangeTransform()Ljava/lang/Object;
    .locals 2

    .line 163
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 164
    new-instance v0, Landroid/transition/ChangeTransform;

    invoke-direct {v0}, Landroid/transition/ChangeTransform;-><init>()V

    return-object v0

    .line 166
    :cond_0
    new-instance v0, Landroidx/leanback/transition/TransitionHelper$TransitionStub;

    invoke-direct {v0}, Landroidx/leanback/transition/TransitionHelper$TransitionStub;-><init>()V

    return-object v0
.end method

.method public static createFadeAndShortSlide(I)Ljava/lang/Object;
    .locals 2

    .line 429
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 430
    new-instance v0, Landroidx/leanback/transition/FadeAndShortSlide;

    invoke-direct {v0, p0}, Landroidx/leanback/transition/FadeAndShortSlide;-><init>(I)V

    return-object v0

    .line 432
    :cond_0
    new-instance p0, Landroidx/leanback/transition/TransitionHelper$TransitionStub;

    invoke-direct {p0}, Landroidx/leanback/transition/TransitionHelper$TransitionStub;-><init>()V

    return-object p0
.end method

.method public static createFadeAndShortSlide(IF)Ljava/lang/Object;
    .locals 2

    .line 436
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 437
    new-instance v0, Landroidx/leanback/transition/FadeAndShortSlide;

    invoke-direct {v0, p0}, Landroidx/leanback/transition/FadeAndShortSlide;-><init>(I)V

    .line 438
    invoke-virtual {v0, p1}, Landroidx/leanback/transition/FadeAndShortSlide;->setDistance(F)V

    return-object v0

    .line 441
    :cond_0
    new-instance p0, Landroidx/leanback/transition/TransitionHelper$TransitionStub;

    invoke-direct {p0}, Landroidx/leanback/transition/TransitionHelper$TransitionStub;-><init>()V

    return-object p0
.end method

.method public static createFadeTransition(I)Ljava/lang/Object;
    .locals 2

    .line 285
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 286
    new-instance v0, Landroid/transition/Fade;

    invoke-direct {v0, p0}, Landroid/transition/Fade;-><init>(I)V

    return-object v0

    .line 288
    :cond_0
    new-instance p0, Landroidx/leanback/transition/TransitionHelper$TransitionStub;

    invoke-direct {p0}, Landroidx/leanback/transition/TransitionHelper$TransitionStub;-><init>()V

    return-object p0
.end method

.method public static createTransitionSet(Z)Ljava/lang/Object;
    .locals 2

    .line 195
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 196
    new-instance v0, Landroid/transition/TransitionSet;

    invoke-direct {v0}, Landroid/transition/TransitionSet;-><init>()V

    .line 197
    invoke-virtual {v0, p0}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    return-object v0

    .line 201
    :cond_0
    new-instance p0, Landroidx/leanback/transition/TransitionHelper$TransitionStub;

    invoke-direct {p0}, Landroidx/leanback/transition/TransitionHelper$TransitionStub;-><init>()V

    return-object p0
.end method

.method public static exclude(Ljava/lang/Object;IZ)V
    .locals 2

    .line 230
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 231
    check-cast p0, Landroid/transition/Transition;

    invoke-virtual {p0, p1, p2}, Landroid/transition/Transition;->excludeTarget(IZ)Landroid/transition/Transition;

    :cond_0
    return-void
.end method

.method public static exclude(Ljava/lang/Object;Landroid/view/View;Z)V
    .locals 2

    .line 236
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 237
    check-cast p0, Landroid/transition/Transition;

    invoke-virtual {p0, p1, p2}, Landroid/transition/Transition;->excludeTarget(Landroid/view/View;Z)Landroid/transition/Transition;

    :cond_0
    return-void
.end method

.method public static include(Ljava/lang/Object;I)V
    .locals 2

    .line 254
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 255
    check-cast p0, Landroid/transition/Transition;

    invoke-virtual {p0, p1}, Landroid/transition/Transition;->addTarget(I)Landroid/transition/Transition;

    :cond_0
    return-void
.end method

.method public static include(Ljava/lang/Object;Landroid/view/View;)V
    .locals 2

    .line 260
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 261
    check-cast p0, Landroid/transition/Transition;

    invoke-virtual {p0, p1}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    :cond_0
    return-void
.end method

.method public static setEpicenterCallback(Ljava/lang/Object;Landroidx/leanback/transition/TransitionEpicenterCallback;)V
    .locals 2

    .line 459
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    if-nez p1, :cond_0

    .line 461
    check-cast p0, Landroid/transition/Transition;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/transition/Transition;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V

    goto :goto_0

    .line 463
    :cond_0
    check-cast p0, Landroid/transition/Transition;

    new-instance v0, Landroidx/leanback/transition/TransitionHelper$2;

    invoke-direct {v0, p1}, Landroidx/leanback/transition/TransitionHelper$2;-><init>(Landroidx/leanback/transition/TransitionEpicenterCallback;)V

    invoke-virtual {p0, v0}, Landroid/transition/Transition;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static setStartDelay(Ljava/lang/Object;J)V
    .locals 2

    .line 266
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 267
    check-cast p0, Landroid/transition/Transition;

    invoke-virtual {p0, p1, p2}, Landroid/transition/Transition;->setStartDelay(J)Landroid/transition/Transition;

    :cond_0
    return-void
.end method
