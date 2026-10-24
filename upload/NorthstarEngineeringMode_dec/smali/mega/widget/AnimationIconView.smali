.class public Lmega/widget/AnimationIconView;
.super Lorg/libpag/PAGImageView;
.source "SourceFile"

# interfaces
.implements Lorg/libpag/PAGImageView$PAGImageViewListener;
.implements Landroidx/lifecycle/ViewModelStoreOwner;
.implements Landroidx/lifecycle/LifecycleOwner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmega/widget/AnimationIconView$OnPAGFileLoadCallback;,
        Lmega/widget/AnimationIconView$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lmega/widget/AnimationIconView$Companion;

.field private static final END_PROGRESS:D = 1.0

.field private static final START_PROGRESS:D = 0.0

.field private static final TAG:Ljava/lang/String; = "AnimationIconView"


# instance fields
.field private final animConfigs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmega/widget/AnimationItemConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final currentConfigRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lmega/widget/AnimationItemConfig;",
            ">;"
        }
    .end annotation
.end field

.field private iconRes:I

.field private iconSelectedRes:I

.field private final lifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

.field private pagFileLoadedCallback:Lmega/widget/AnimationIconView$OnPAGFileLoadCallback;

.field private final prevConfigRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lmega/widget/AnimationItemConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final rollbackFlagRef:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private viewModelStore:Landroidx/lifecycle/ViewModelStore;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lmega/widget/AnimationIconView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmega/widget/AnimationIconView$Companion;-><init>(Lo3/f;)V

    sput-object v0, Lmega/widget/AnimationIconView;->Companion:Lmega/widget/AnimationIconView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lo3/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lorg/libpag/PAGImageView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lmega/widget/AnimationIconView;->currentConfigRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lmega/widget/AnimationIconView;->prevConfigRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lmega/widget/AnimationIconView;->rollbackFlagRef:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmega/widget/AnimationIconView;->animConfigs:Ljava/util/ArrayList;

    .line 6
    new-instance v0, Landroidx/lifecycle/LifecycleRegistry;

    invoke-direct {v0, p0}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    iput-object v0, p0, Lmega/widget/AnimationIconView;->lifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    .line 7
    new-instance v0, Landroidx/lifecycle/ViewModelStore;

    invoke-direct {v0}, Landroidx/lifecycle/ViewModelStore;-><init>()V

    iput-object v0, p0, Lmega/widget/AnimationIconView;->viewModelStore:Landroidx/lifecycle/ViewModelStore;

    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, p1, v0}, Lmega/widget/AnimationIconView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lo3/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0, p1, p2}, Lorg/libpag/PAGImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 10
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lmega/widget/AnimationIconView;->currentConfigRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 11
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lmega/widget/AnimationIconView;->prevConfigRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 12
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lmega/widget/AnimationIconView;->rollbackFlagRef:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmega/widget/AnimationIconView;->animConfigs:Ljava/util/ArrayList;

    .line 14
    new-instance v0, Landroidx/lifecycle/LifecycleRegistry;

    invoke-direct {v0, p0}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    iput-object v0, p0, Lmega/widget/AnimationIconView;->lifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    .line 15
    new-instance v0, Landroidx/lifecycle/ViewModelStore;

    invoke-direct {v0}, Landroidx/lifecycle/ViewModelStore;-><init>()V

    iput-object v0, p0, Lmega/widget/AnimationIconView;->viewModelStore:Landroidx/lifecycle/ViewModelStore;

    .line 16
    invoke-direct {p0, p1, p2}, Lmega/widget/AnimationIconView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo3/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0, p1, p2, p3}, Lorg/libpag/PAGImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    new-instance p3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p3, p0, Lmega/widget/AnimationIconView;->currentConfigRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 19
    new-instance p3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p3, p0, Lmega/widget/AnimationIconView;->prevConfigRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 20
    new-instance p3, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p3, p0, Lmega/widget/AnimationIconView;->rollbackFlagRef:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 21
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lmega/widget/AnimationIconView;->animConfigs:Ljava/util/ArrayList;

    .line 22
    new-instance p3, Landroidx/lifecycle/LifecycleRegistry;

    invoke-direct {p3, p0}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    iput-object p3, p0, Lmega/widget/AnimationIconView;->lifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    .line 23
    new-instance p3, Landroidx/lifecycle/ViewModelStore;

    invoke-direct {p3}, Landroidx/lifecycle/ViewModelStore;-><init>()V

    iput-object p3, p0, Lmega/widget/AnimationIconView;->viewModelStore:Landroidx/lifecycle/ViewModelStore;

    .line 24
    invoke-direct {p0, p1, p2}, Lmega/widget/AnimationIconView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic a(Lmega/widget/AnimationIconView;)V
    .locals 0

    invoke-static {p0}, Lmega/widget/AnimationIconView;->onAnimationUpdate$lambda$13(Lmega/widget/AnimationIconView;)V

    return-void
.end method

.method private final getPAGFile(Lmega/widget/AnimationItemConfig;)Lorg/libpag/PAGFile;
    .locals 3

    invoke-virtual {p0}, Lmega/widget/AnimationIconView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {p1}, Lmega/widget/AnimationItemConfig;->getAnimationFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/libpag/PAGFile;->Load(Landroid/content/res/AssetManager;Ljava/lang/String;)Lorg/libpag/PAGFile;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lmega/widget/AnimationIconView;->pagFileLoadedCallback:Lmega/widget/AnimationIconView$OnPAGFileLoadCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0, v0}, Lmega/widget/AnimationIconView$OnPAGFileLoadCallback;->onPAGFileLoaded(Lorg/libpag/PAGFile;)V

    :cond_0
    invoke-virtual {v0}, Lorg/libpag/PAGFile;->duration()J

    move-result-wide v1

    invoke-virtual {v0}, Lorg/libpag/PAGFile;->frameRate()F

    move-result p0

    long-to-float v1, v1

    mul-float/2addr v1, p0

    const p0, 0xf4240

    int-to-float p0, p0

    div-float/2addr v1, p0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-virtual {p1, p0}, Lmega/widget/AnimationItemConfig;->setAnimationFrames(I)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "animationFrames: "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lmega/widget/AnimationItemConfig;->getAnimationFrames()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AnimationIconView"

    invoke-static {p1, p0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private final init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    if-eqz p2, :cond_0

    sget-object v0, Lo2/a;->a:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "context.obtainStyledAttr\u2026leable.AnimationIconView)"

    invoke-static {p1, p2}, Lo3/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lmega/widget/AnimationIconView;->resolveTypedArray(Landroid/content/res/TypedArray;)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lmega/widget/AnimationIconView;->setRepeatCount(I)V

    move-object p1, p0

    check-cast p1, Lorg/libpag/PAGImageView$PAGImageViewListener;

    invoke-virtual {p0, p1}, Lmega/widget/AnimationIconView;->addListener(Lorg/libpag/PAGImageView$PAGImageViewListener;)V

    invoke-virtual {p0}, Lmega/widget/AnimationIconView;->onInit()V

    return-void
.end method

.method private final loadAnimation(Lmega/widget/AnimationItemConfig;)V
    .locals 3

    invoke-direct {p0, p1}, Lmega/widget/AnimationIconView;->getPAGFile(Lmega/widget/AnimationItemConfig;)Lorg/libpag/PAGFile;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lmega/widget/AnimationIconView;->getComposition()Lorg/libpag/PAGComposition;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/libpag/PAGFile;->width()I

    move-result v1

    invoke-virtual {v0}, Lorg/libpag/PAGFile;->height()I

    move-result v2

    invoke-static {v1, v2}, Lorg/libpag/PAGComposition;->Make(II)Lorg/libpag/PAGComposition;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmega/widget/AnimationIconView;->setComposition(Lorg/libpag/PAGComposition;)V

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "loadAnimation pagFile: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AnimationIconView"

    invoke-static {v2, v1}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lmega/widget/AnimationIconView;->getComposition()Lorg/libpag/PAGComposition;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/libpag/PAGComposition;->numChildren()I

    move-result v1

    invoke-virtual {p0}, Lmega/widget/AnimationIconView;->getComposition()Lorg/libpag/PAGComposition;

    move-result-object p0

    check-cast v0, Lorg/libpag/PAGLayer;

    invoke-virtual {p0, v0, v1}, Lorg/libpag/PAGComposition;->addLayerAt(Lorg/libpag/PAGLayer;I)V

    invoke-virtual {p1, v1}, Lmega/widget/AnimationItemConfig;->setLayerIndex(I)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "setLayerIndex "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private static final onAnimationUpdate$lambda$13(Lmega/widget/AnimationIconView;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lo3/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmega/widget/AnimationIconView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private final resolveConfigsArray(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "resolveConfigsItem "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AnimationIconView"

    invoke-static {v2, v1}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ","

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v3, "<this>"

    invoke-static {v0, v3}, Lo3/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v4, "asList(this)"

    invoke-static {v1, v4}, Lo3/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lu3/b;

    new-instance v5, Lu3/g;

    invoke-direct {v5, v1, v3}, Lu3/g;-><init>(Ljava/util/List;Z)V

    invoke-direct {v4, v0, v3, v3, v5}, Lu3/b;-><init>(Ljava/lang/String;IILu3/g;)V

    new-instance v1, Lt3/f;

    invoke-direct {v1, v4}, Lt3/f;-><init>(Lu3/b;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v1}, Lg3/e;->C(Ljava/lang/Iterable;)I

    move-result v1

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Lu3/b$a;

    invoke-direct {v1, v4}, Lu3/b$a;-><init>(Lu3/b;)V

    :goto_1
    invoke-virtual {v1}, Lu3/b$a;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v1}, Lu3/b$a;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lr3/c;

    iget v6, v4, Lr3/a;->c:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget v4, v4, Lr3/a;->r:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v6, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-static {v3, v0, v4, v3}, Lu3/h;->i0(ILjava/lang/CharSequence;Ljava/lang/String;Z)I

    move-result v1

    const/4 v5, -0x1

    if-eq v1, v5, :cond_3

    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    move v7, v3

    :cond_2
    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v1

    invoke-static {v7, v0, v4, v3}, Lu3/h;->i0(ILjava/lang/CharSequence;Ljava/lang/String;Z)I

    move-result v1

    if-ne v1, v5, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v5, v6

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string/jumbo v1, "singletonList(element)"

    invoke-static {v0, v1}, Lo3/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v0

    :cond_4
    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    :try_start_0
    new-instance v0, Lmega/widget/AnimationItemConfig;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v3, v1}, Lmega/widget/AnimationItemConfig;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lmega/widget/AnimationIconView;->addConfig(Lmega/widget/AnimationItemConfig;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "parse number exception: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lmega/log/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method private final resolveTypedArray(Landroid/content/res/TypedArray;)V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lmega/widget/AnimationIconView;->iconRes:I

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lmega/widget/AnimationIconView;->iconSelectedRes:I

    invoke-direct {p0}, Lmega/widget/AnimationIconView;->updateIcon()V

    invoke-virtual {p1, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "configsArrayId: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "AnimationIconView"

    invoke-static {v4, v1}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lmega/widget/AnimationIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string/jumbo v1, "resources.obtainTypedArray(configsArrayId)"

    invoke-static {p1, v1}, Lo3/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_2
    invoke-direct {p0, v0}, Lmega/widget/AnimationIconView;->resolveConfigsArray(Ljava/util/List;)V

    return-void
.end method

.method private final rollbackToPrevStateInternal()V
    .locals 10

    iget-object v0, p0, Lmega/widget/AnimationIconView;->prevConfigRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmega/widget/AnimationItemConfig;

    iget-object v1, p0, Lmega/widget/AnimationIconView;->currentConfigRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmega/widget/AnimationItemConfig;

    invoke-virtual {p0}, Lmega/widget/AnimationIconView;->getComposition()Lorg/libpag/PAGComposition;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "rollbackToPrevStateInternal preConfig: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", composition: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AnimationIconView"

    invoke-static {v4, v3}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lorg/libpag/PAGComposition;->numChildren()I

    move-result v5

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_1

    const-string/jumbo v8, "rollbackToPrevStateInternal "

    const-string v9, ", "

    invoke-static {v8, v7, v9}, Landroidx/activity/result/a;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lmega/widget/AnimationItemConfig;->getLayerIndex()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Lorg/libpag/PAGComposition;->getLayerAt(I)Lorg/libpag/PAGLayer;

    move-result-object v8

    invoke-virtual {v0}, Lmega/widget/AnimationItemConfig;->getLayerIndex()I

    move-result v9

    if-ne v9, v7, :cond_0

    const/4 v9, 0x1

    goto :goto_1

    :cond_0
    move v9, v6

    :goto_1
    invoke-virtual {v8, v9}, Lorg/libpag/PAGLayer;->setVisible(Z)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lmega/widget/AnimationItemConfig;->getLayerIndex()I

    move-result v4

    invoke-virtual {v2}, Lorg/libpag/PAGComposition;->numChildren()I

    move-result v5

    if-ge v4, v5, :cond_3

    invoke-virtual {v0}, Lmega/widget/AnimationItemConfig;->getLayerIndex()I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/libpag/PAGComposition;->getLayerAt(I)Lorg/libpag/PAGLayer;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v4, v5, v6}, Lorg/libpag/PAGLayer;->setProgress(D)V

    :cond_3
    :goto_2
    invoke-virtual {v1}, Lmega/widget/AnimationItemConfig;->getLayerIndex()I

    move-result v4

    invoke-virtual {v2}, Lorg/libpag/PAGComposition;->numChildren()I

    move-result v5

    if-ge v4, v5, :cond_5

    invoke-virtual {v1}, Lmega/widget/AnimationItemConfig;->getLayerIndex()I

    move-result v1

    invoke-virtual {v2, v1}, Lorg/libpag/PAGComposition;->getLayerAt(I)Lorg/libpag/PAGLayer;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5}, Lorg/libpag/PAGLayer;->setProgress(D)V

    :cond_5
    :goto_3
    invoke-virtual {p0}, Lmega/widget/AnimationIconView;->flush()Z

    iget-object v1, p0, Lmega/widget/AnimationIconView;->currentConfigRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object p0, p0, Lmega/widget/AnimationIconView;->prevConfigRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lmega/widget/AnimationIconView;->currentConfigRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-direct {p0}, Lmega/widget/AnimationIconView;->updateIcon()V

    :cond_7
    :goto_4
    return-void
.end method

.method private final showTargetStateInternal(Lmega/widget/AnimationItemConfig;)V
    .locals 6

    invoke-virtual {p1}, Lmega/widget/AnimationItemConfig;->getLayerIndex()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lmega/widget/AnimationIconView;->loadAnimation(Lmega/widget/AnimationItemConfig;)V

    :cond_0
    invoke-virtual {p0}, Lmega/widget/AnimationIconView;->getComposition()Lorg/libpag/PAGComposition;

    move-result-object v0

    if-eqz v0, :cond_5

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/libpag/PAGComposition;->setProgress(D)V

    invoke-virtual {v0}, Lorg/libpag/PAGComposition;->numChildren()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    invoke-virtual {v0, v3}, Lorg/libpag/PAGComposition;->getLayerAt(I)Lorg/libpag/PAGLayer;

    move-result-object v4

    invoke-virtual {p1}, Lmega/widget/AnimationItemConfig;->getLayerIndex()I

    move-result v5

    if-ne v5, v3, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    move v5, v2

    :goto_1
    invoke-virtual {v4, v5}, Lorg/libpag/PAGLayer;->setVisible(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lmega/widget/AnimationIconView;->currentConfigRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v1, p0, Lmega/widget/AnimationIconView;->prevConfigRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lmega/widget/AnimationItemConfig;->getLayerIndex()I

    move-result v1

    invoke-virtual {v0}, Lorg/libpag/PAGComposition;->numChildren()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-virtual {p1}, Lmega/widget/AnimationItemConfig;->getLayerIndex()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/libpag/PAGComposition;->getLayerAt(I)Lorg/libpag/PAGLayer;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p1, v0, v1}, Lorg/libpag/PAGLayer;->setProgress(D)V

    :cond_4
    :goto_2
    invoke-virtual {p0}, Lmega/widget/AnimationIconView;->flush()Z

    :cond_5
    return-void
.end method

.method private final updateIcon()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateIcon isSelected: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmega/widget/AnimationIconView;->isSelected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AnimationIconView"

    invoke-static {v1, v0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lmega/widget/AnimationIconView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmega/widget/AnimationIconView;->pause()V

    :cond_0
    invoke-virtual {p0}, Lmega/widget/AnimationIconView;->getComposition()Lorg/libpag/PAGComposition;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/libpag/PAGComposition;->numChildren()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    invoke-virtual {v0, v3}, Lorg/libpag/PAGComposition;->getLayerAt(I)Lorg/libpag/PAGLayer;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4, v2}, Lorg/libpag/PAGLayer;->setVisible(Z)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lmega/widget/AnimationIconView;->flush()Z

    :cond_3
    iget-object v0, p0, Lmega/widget/AnimationIconView;->currentConfigRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lmega/widget/AnimationIconView;->prevConfigRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lmega/widget/AnimationIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lmega/widget/AnimationIconView;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p0, Lmega/widget/AnimationIconView;->iconSelectedRes:I

    goto :goto_1

    :cond_4
    iget v2, p0, Lmega/widget/AnimationIconView;->iconRes:I

    :goto_1
    invoke-static {v0, v2, v1}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmega/widget/AnimationIconView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public final addConfig(Lmega/widget/AnimationItemConfig;)V
    .locals 4

    const-string v0, "config"

    invoke-static {p1, v0}, Lo3/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lmega/widget/AnimationIconView;->animConfigs:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lmega/widget/AnimationItemConfig;

    invoke-virtual {v2}, Lmega/widget/AnimationItemConfig;->getState()I

    move-result v2

    invoke-virtual {p1}, Lmega/widget/AnimationItemConfig;->getState()I

    move-result v3

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "addAnimationConfig: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmega/log/MLog;->d(Ljava/lang/String;)V

    iget-object p0, p0, Lmega/widget/AnimationIconView;->animConfigs:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public final addConfigs(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmega/widget/AnimationItemConfig;",
            ">;)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lo3/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmega/widget/AnimationItemConfig;

    invoke-virtual {p0, v0}, Lmega/widget/AnimationIconView;->addConfig(Lmega/widget/AnimationItemConfig;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final addPAGFileLoadedCallback(Lmega/widget/AnimationIconView$OnPAGFileLoadCallback;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lo3/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lmega/widget/AnimationIconView;->pagFileLoadedCallback:Lmega/widget/AnimationIconView$OnPAGFileLoadCallback;

    return-void
.end method

.method public getLifecycle()Landroidx/lifecycle/Lifecycle;
    .locals 0

    iget-object p0, p0, Lmega/widget/AnimationIconView;->lifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    return-object p0
.end method

.method public getViewModelStore()Landroidx/lifecycle/ViewModelStore;
    .locals 0

    iget-object p0, p0, Lmega/widget/AnimationIconView;->viewModelStore:Landroidx/lifecycle/ViewModelStore;

    return-object p0
.end method

.method public onAnimationCancel(Lorg/libpag/PAGImageView;)V
    .locals 2

    const-string/jumbo v0, "pagImageView"

    invoke-static {p1, v0}, Lo3/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onAnimationCancel currentAnimationConfig: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lmega/widget/AnimationIconView;->rollbackFlagRef:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",progress: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmega/widget/AnimationIconView;->getComposition()Lorg/libpag/PAGComposition;

    move-result-object v0

    invoke-virtual {v0}, Lorg/libpag/PAGComposition;->getProgress()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AnimationIconView"

    invoke-static {v0, p1}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lmega/widget/AnimationIconView;->getComposition()Lorg/libpag/PAGComposition;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/libpag/PAGComposition;->setProgress(D)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lmega/widget/AnimationIconView;->setCurrentFrame(I)V

    iget-object v0, p0, Lmega/widget/AnimationIconView;->rollbackFlagRef:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lmega/widget/AnimationIconView;->rollbackToPrevStateInternal()V

    iget-object p0, p0, Lmega/widget/AnimationIconView;->rollbackFlagRef:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Lorg/libpag/PAGImageView;)V
    .locals 1

    const-string/jumbo v0, "pagImageView"

    invoke-static {p1, v0}, Lo3/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onAnimationEnd currentAnimationConfig: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lmega/widget/AnimationIconView;->currentConfigRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AnimationIconView"

    invoke-static {p1, p0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationRepeat(Lorg/libpag/PAGImageView;)V
    .locals 1

    const-string/jumbo v0, "pagImageView"

    invoke-static {p1, v0}, Lo3/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onAnimationRepeat currentAnimationConfig: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lmega/widget/AnimationIconView;->currentConfigRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AnimationIconView"

    invoke-static {p1, p0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationStart(Lorg/libpag/PAGImageView;)V
    .locals 1

    const-string/jumbo v0, "pagImageView"

    invoke-static {p1, v0}, Lo3/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onAnimationStart currentAnimationConfig: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lmega/widget/AnimationIconView;->currentConfigRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AnimationIconView"

    invoke-static {p1, p0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationUpdate(Lorg/libpag/PAGImageView;)V
    .locals 1

    const-string/jumbo v0, "pagImageView"

    invoke-static {p1, v0}, Lo3/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lmega/widget/AnimationIconView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lmega/widget/AnimationIconView;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Landroidx/constraintlayout/helper/widget/a;

    const/16 v0, 0xb

    invoke-direct {p1, v0, p0}, Landroidx/constraintlayout/helper/widget/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Lmega/widget/AnimationIconView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Lorg/libpag/PAGImageView;->onAttachedToWindow()V

    iget-object v0, p0, Lmega/widget/AnimationIconView;->lifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    iget-object p0, p0, Lmega/widget/AnimationIconView;->lifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Lorg/libpag/PAGImageView;->onDetachedFromWindow()V

    iget-object p0, p0, Lmega/widget/AnimationIconView;->lifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public onInit()V
    .locals 1

    const-string p0, "AnimationIconView"

    const-string/jumbo v0, "onInit"

    invoke-static {p0, v0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final declared-synchronized performAnimation(I)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmega/widget/AnimationIconView;->animConfigs:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lmega/widget/AnimationItemConfig;

    invoke-virtual {v3}, Lmega/widget/AnimationItemConfig;->getState()I

    move-result v3

    if-ne v3, p1, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    move-object v1, v2

    :goto_0
    check-cast v1, Lmega/widget/AnimationItemConfig;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lmega/widget/AnimationItemConfig;->getLayerIndex()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    invoke-direct {p0, v1}, Lmega/widget/AnimationIconView;->loadAnimation(Lmega/widget/AnimationItemConfig;)V

    :cond_2
    invoke-virtual {p0}, Lmega/widget/AnimationIconView;->getComposition()Lorg/libpag/PAGComposition;

    move-result-object v0

    if-eqz v0, :cond_5

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/libpag/PAGComposition;->setProgress(D)V

    invoke-virtual {v0}, Lorg/libpag/PAGComposition;->numChildren()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_4

    invoke-virtual {v0, v4}, Lorg/libpag/PAGComposition;->getLayerAt(I)Lorg/libpag/PAGLayer;

    move-result-object v5

    invoke-virtual {v1}, Lmega/widget/AnimationItemConfig;->getLayerIndex()I

    move-result v6

    if-ne v6, v4, :cond_3

    const/4 v6, 0x1

    goto :goto_2

    :cond_3
    move v6, v3

    :goto_2
    invoke-virtual {v5, v6}, Lorg/libpag/PAGLayer;->setVisible(Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lmega/widget/AnimationIconView;->currentConfigRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmega/widget/AnimationItemConfig;

    iget-object v2, p0, Lmega/widget/AnimationIconView;->currentConfigRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v1, p0, Lmega/widget/AnimationIconView;->prevConfigRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_5
    invoke-virtual {p0}, Lmega/widget/AnimationIconView;->play()V

    sget-object v2, Lf3/g;->a:Lf3/g;

    :cond_6
    if-nez v2, :cond_7

    const-string v0, "AnimationIconView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t match animation of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lmega/log/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    monitor-exit p0

    return-void

    :goto_3
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized rollbackToPrevState()V
    .locals 3

    const-string/jumbo v0, "rollback called preConfig: "

    monitor-enter p0

    :try_start_0
    const-string v1, "AnimationIconView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lmega/widget/AnimationIconView;->prevConfigRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ",currentConfig: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lmega/widget/AnimationIconView;->currentConfigRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ",isPlaying: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmega/widget/AnimationIconView;->isPlaying()Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lmega/widget/AnimationIconView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmega/widget/AnimationIconView;->rollbackFlagRef:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0}, Lmega/widget/AnimationIconView;->pause()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lmega/widget/AnimationIconView;->rollbackToPrevStateInternal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public final setImageResource(I)V
    .locals 2

    const-string v0, "AnimationIconView"

    const-string/jumbo v1, "setIconRes"

    invoke-static {v0, v1}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lmega/widget/AnimationIconView;->iconRes:I

    invoke-direct {p0}, Lmega/widget/AnimationIconView;->updateIcon()V

    return-void
.end method

.method public final setImageSelectedRes(I)V
    .locals 2

    const-string v0, "AnimationIconView"

    const-string/jumbo v1, "setIconResSelected"

    invoke-static {v0, v1}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lmega/widget/AnimationIconView;->iconSelectedRes:I

    invoke-direct {p0}, Lmega/widget/AnimationIconView;->updateIcon()V

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    invoke-super {p0, p1}, Lorg/libpag/PAGImageView;->setSelected(Z)V

    invoke-direct {p0}, Lmega/widget/AnimationIconView;->updateIcon()V

    return-void
.end method

.method public final declared-synchronized showTargetState(I)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmega/widget/AnimationIconView;->animConfigs:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lmega/widget/AnimationItemConfig;

    invoke-virtual {v2}, Lmega/widget/AnimationItemConfig;->getState()I

    move-result v2

    if-ne v2, p1, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lmega/widget/AnimationItemConfig;

    const-string v0, "AnimationIconView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showTargetState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ,matchedToStateConfig: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " ,currentConfig: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lmega/widget/AnimationIconView;->currentConfigRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_2

    iget-object p1, p0, Lmega/widget/AnimationIconView;->currentConfigRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Lo3/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-direct {p0, v1}, Lmega/widget/AnimationIconView;->showTargetStateInternal(Lmega/widget/AnimationItemConfig;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method
