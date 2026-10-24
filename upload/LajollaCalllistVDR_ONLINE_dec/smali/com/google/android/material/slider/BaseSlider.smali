.class abstract Lcom/google/android/material/slider/BaseSlider;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/slider/BaseSlider$SliderState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lcom/google/android/material/slider/BaseSlider<",
        "TS;T",
        "L;",
        "TT;>;",
        "L:Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/view/View;"
    }
.end annotation


# static fields
.field public static final b0:I


# instance fields
.field public A:I

.field public B:I

.field public C:F

.field public D:Landroid/view/MotionEvent;

.field public E:Z

.field public F:F

.field public G:F

.field public H:Ljava/util/ArrayList;

.field public I:I

.field public J:I

.field public K:F

.field public L:[F

.field public M:Z

.field public N:I

.field public O:Z

.field public P:Z

.field public Q:Landroid/content/res/ColorStateList;

.field public R:Landroid/content/res/ColorStateList;

.field public S:Landroid/content/res/ColorStateList;

.field public T:Landroid/content/res/ColorStateList;

.field public U:Landroid/content/res/ColorStateList;

.field public final V:Lg2/h;

.field public W:F

.field public a0:I

.field public final b:Landroid/graphics/Paint;

.field public final c:Landroid/graphics/Paint;

.field public final d:Landroid/graphics/Paint;

.field public final e:Landroid/graphics/Paint;

.field public final f:Landroid/graphics/Paint;

.field public final g:Landroid/graphics/Paint;

.field public final h:Lcom/google/android/material/slider/e;

.field public final i:Landroid/view/accessibility/AccessibilityManager;

.field public j:Lcom/google/android/material/slider/d;

.field public final k:Lcom/google/android/material/slider/a;

.field public final l:Ljava/util/ArrayList;

.field public final m:Ljava/util/ArrayList;

.field public final n:Ljava/util/ArrayList;

.field public o:Z

.field public p:Landroid/animation/ValueAnimator;

.field public q:Landroid/animation/ValueAnimator;

.field public final r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:I

.field public w:I

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/google/android/material/R$style;->Widget_MaterialComponents_Slider:I

    sput v0, Lcom/google/android/material/slider/BaseSlider;->b0:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    sget v0, Lcom/google/android/material/R$attr;->sliderStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/slider/BaseSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    sget v4, Lcom/google/android/material/slider/BaseSlider;->b0:I

    invoke-static {p1, p2, p3, v4}, Lj2/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->l:Ljava/util/ArrayList;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->m:Ljava/util/ArrayList;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->n:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/google/android/material/slider/BaseSlider;->o:Z

    .line 7
    iput-boolean p1, p0, Lcom/google/android/material/slider/BaseSlider;->E:Z

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->H:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lcom/google/android/material/slider/BaseSlider;->I:I

    .line 10
    iput v0, p0, Lcom/google/android/material/slider/BaseSlider;->J:I

    const/4 v6, 0x0

    .line 11
    iput v6, p0, Lcom/google/android/material/slider/BaseSlider;->K:F

    const/4 v7, 0x1

    .line 12
    iput-boolean v7, p0, Lcom/google/android/material/slider/BaseSlider;->M:Z

    .line 13
    iput-boolean p1, p0, Lcom/google/android/material/slider/BaseSlider;->O:Z

    .line 14
    new-instance v8, Lg2/h;

    invoke-direct {v8}, Lg2/h;-><init>()V

    iput-object v8, p0, Lcom/google/android/material/slider/BaseSlider;->V:Lg2/h;

    .line 15
    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->a0:I

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 17
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->b:Landroid/graphics/Paint;

    .line 18
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 19
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 20
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->c:Landroid/graphics/Paint;

    .line 21
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 22
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 23
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v7}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->d:Landroid/graphics/Paint;

    .line 24
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 25
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 26
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v7}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->e:Landroid/graphics/Paint;

    .line 27
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 28
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->f:Landroid/graphics/Paint;

    .line 29
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 30
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 31
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->g:Landroid/graphics/Paint;

    .line 32
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 33
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 34
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 35
    sget v1, Lcom/google/android/material/R$dimen;->mtrl_slider_widget_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/slider/BaseSlider;->u:I

    .line 36
    sget v1, Lcom/google/android/material/R$dimen;->mtrl_slider_track_side_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/slider/BaseSlider;->s:I

    .line 37
    iput v1, p0, Lcom/google/android/material/slider/BaseSlider;->x:I

    .line 38
    sget v1, Lcom/google/android/material/R$dimen;->mtrl_slider_thumb_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/slider/BaseSlider;->t:I

    .line 39
    sget v1, Lcom/google/android/material/R$dimen;->mtrl_slider_track_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/slider/BaseSlider;->y:I

    .line 40
    sget v1, Lcom/google/android/material/R$dimen;->mtrl_slider_label_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/slider/BaseSlider;->B:I

    .line 41
    new-instance v0, Lcom/google/android/material/slider/a;

    invoke-direct {v0, p0, p2, p3}, Lcom/google/android/material/slider/a;-><init>(Lcom/google/android/material/slider/BaseSlider;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->k:Lcom/google/android/material/slider/a;

    .line 42
    sget-object v2, Lcom/google/android/material/R$styleable;->Slider:[I

    new-array v5, p1, [I

    move-object v0, v9

    move-object v1, p2

    move v3, p3

    .line 43
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/x;->d(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 44
    sget p3, Lcom/google/android/material/R$styleable;->Slider_android_valueFrom:I

    invoke-virtual {p2, p3, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lcom/google/android/material/slider/BaseSlider;->F:F

    .line 45
    sget p3, Lcom/google/android/material/R$styleable;->Slider_android_valueTo:I

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lcom/google/android/material/slider/BaseSlider;->G:F

    new-array p3, v7, [Ljava/lang/Float;

    .line 46
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->F:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, p3, p1

    invoke-virtual {p0, p3}, Lcom/google/android/material/slider/BaseSlider;->setValues([Ljava/lang/Float;)V

    .line 47
    sget p3, Lcom/google/android/material/R$styleable;->Slider_android_stepSize:I

    invoke-virtual {p2, p3, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lcom/google/android/material/slider/BaseSlider;->K:F

    .line 48
    sget p3, Lcom/google/android/material/R$styleable;->Slider_trackColor:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 49
    sget v0, Lcom/google/android/material/R$styleable;->Slider_trackColor:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/google/android/material/R$styleable;->Slider_trackColorInactive:I

    :goto_0
    if-eqz p3, :cond_1

    .line 50
    sget p3, Lcom/google/android/material/R$styleable;->Slider_trackColor:I

    goto :goto_1

    :cond_1
    sget p3, Lcom/google/android/material/R$styleable;->Slider_trackColorActive:I

    .line 51
    :goto_1
    invoke-static {v9, p2, v0}, Ld2/d;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_2

    .line 52
    :cond_2
    sget v0, Lcom/google/android/material/R$color;->material_slider_inactive_track_color:I

    .line 53
    invoke-static {v9, v0}, Lcom/google/android/material/slider/h;->d0(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 54
    :goto_2
    invoke-virtual {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->setTrackInactiveTintList(Landroid/content/res/ColorStateList;)V

    .line 55
    invoke-static {v9, p2, p3}, Ld2/d;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    if-eqz p3, :cond_3

    goto :goto_3

    .line 56
    :cond_3
    sget p3, Lcom/google/android/material/R$color;->material_slider_active_track_color:I

    .line 57
    invoke-static {v9, p3}, Lcom/google/android/material/slider/h;->d0(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    .line 58
    :goto_3
    invoke-virtual {p0, p3}, Lcom/google/android/material/slider/BaseSlider;->setTrackActiveTintList(Landroid/content/res/ColorStateList;)V

    .line 59
    sget p3, Lcom/google/android/material/R$styleable;->Slider_thumbColor:I

    .line 60
    invoke-static {v9, p2, p3}, Ld2/d;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    .line 61
    invoke-virtual {v8, p3}, Lg2/h;->n(Landroid/content/res/ColorStateList;)V

    .line 62
    sget p3, Lcom/google/android/material/R$styleable;->Slider_thumbStrokeColor:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 63
    sget p3, Lcom/google/android/material/R$styleable;->Slider_thumbStrokeColor:I

    .line 64
    invoke-static {v9, p2, p3}, Ld2/d;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    .line 65
    invoke-virtual {p0, p3}, Lcom/google/android/material/slider/BaseSlider;->setThumbStrokeColor(Landroid/content/res/ColorStateList;)V

    .line 66
    :cond_4
    sget p3, Lcom/google/android/material/R$styleable;->Slider_thumbStrokeWidth:I

    invoke-virtual {p2, p3, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/slider/BaseSlider;->setThumbStrokeWidth(F)V

    .line 67
    sget p3, Lcom/google/android/material/R$styleable;->Slider_haloColor:I

    .line 68
    invoke-static {v9, p2, p3}, Ld2/d;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    if-eqz p3, :cond_5

    goto :goto_4

    .line 69
    :cond_5
    sget p3, Lcom/google/android/material/R$color;->material_slider_halo_color:I

    .line 70
    invoke-static {v9, p3}, Lcom/google/android/material/slider/h;->d0(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    .line 71
    :goto_4
    invoke-virtual {p0, p3}, Lcom/google/android/material/slider/BaseSlider;->setHaloTintList(Landroid/content/res/ColorStateList;)V

    .line 72
    sget p3, Lcom/google/android/material/R$styleable;->Slider_tickVisible:I

    invoke-virtual {p2, p3, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/google/android/material/slider/BaseSlider;->M:Z

    .line 73
    sget p3, Lcom/google/android/material/R$styleable;->Slider_tickColor:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 74
    sget v0, Lcom/google/android/material/R$styleable;->Slider_tickColor:I

    goto :goto_5

    :cond_6
    sget v0, Lcom/google/android/material/R$styleable;->Slider_tickColorInactive:I

    :goto_5
    if-eqz p3, :cond_7

    .line 75
    sget p3, Lcom/google/android/material/R$styleable;->Slider_tickColor:I

    goto :goto_6

    :cond_7
    sget p3, Lcom/google/android/material/R$styleable;->Slider_tickColorActive:I

    .line 76
    :goto_6
    invoke-static {v9, p2, v0}, Ld2/d;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_8

    goto :goto_7

    .line 77
    :cond_8
    sget v0, Lcom/google/android/material/R$color;->material_slider_inactive_tick_marks_color:I

    .line 78
    invoke-static {v9, v0}, Lcom/google/android/material/slider/h;->d0(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 79
    :goto_7
    invoke-virtual {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->setTickInactiveTintList(Landroid/content/res/ColorStateList;)V

    .line 80
    invoke-static {v9, p2, p3}, Ld2/d;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    if-eqz p3, :cond_9

    goto :goto_8

    .line 81
    :cond_9
    sget p3, Lcom/google/android/material/R$color;->material_slider_active_tick_marks_color:I

    .line 82
    invoke-static {v9, p3}, Lcom/google/android/material/slider/h;->d0(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    .line 83
    :goto_8
    invoke-virtual {p0, p3}, Lcom/google/android/material/slider/BaseSlider;->setTickActiveTintList(Landroid/content/res/ColorStateList;)V

    .line 84
    sget p3, Lcom/google/android/material/R$styleable;->Slider_thumbRadius:I

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/slider/BaseSlider;->setThumbRadius(I)V

    .line 85
    sget p3, Lcom/google/android/material/R$styleable;->Slider_haloRadius:I

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/slider/BaseSlider;->setHaloRadius(I)V

    .line 86
    sget p3, Lcom/google/android/material/R$styleable;->Slider_thumbElevation:I

    invoke-virtual {p2, p3, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/slider/BaseSlider;->setThumbElevation(F)V

    .line 87
    sget p3, Lcom/google/android/material/R$styleable;->Slider_trackHeight:I

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/slider/BaseSlider;->setTrackHeight(I)V

    .line 88
    sget p3, Lcom/google/android/material/R$styleable;->Slider_labelBehavior:I

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/slider/BaseSlider;->v:I

    .line 89
    sget p3, Lcom/google/android/material/R$styleable;->Slider_android_enabled:I

    invoke-virtual {p2, p3, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    if-nez p3, :cond_a

    .line 90
    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setEnabled(Z)V

    .line 91
    :cond_a
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 92
    invoke-virtual {p0, v7}, Landroid/view/View;->setFocusable(Z)V

    .line 93
    invoke-virtual {p0, v7}, Landroid/view/View;->setClickable(Z)V

    .line 94
    invoke-virtual {v8}, Lg2/h;->r()V

    .line 95
    invoke-static {v9}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->r:I

    .line 96
    new-instance p1, Lcom/google/android/material/slider/e;

    invoke-direct {p1, p0}, Lcom/google/android/material/slider/e;-><init>(Lcom/google/android/material/slider/BaseSlider;)V

    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->h:Lcom/google/android/material/slider/e;

    .line 97
    invoke-static {p0, p1}, Lg0/s0;->m(Landroid/view/View;Lg0/b;)V

    .line 98
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "accessibility"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->i:Landroid/view/accessibility/AccessibilityManager;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 4

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->y:I

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->v:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->l:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk2/a;

    invoke-virtual {v1}, Lk2/a;->getIntrinsicHeight()I

    move-result v3

    :cond_0
    add-int/2addr v0, v3

    return v0
.end method

.method public final b(Z)Landroid/animation/ValueAnimator;
    .locals 5

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/google/android/material/slider/BaseSlider;->q:Landroid/animation/ValueAnimator;

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/google/android/material/slider/BaseSlider;->p:Landroid/animation/ValueAnimator;

    :goto_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    if-eqz p1, :cond_3

    move v0, v1

    :cond_3
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v0, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz p1, :cond_4

    const-wide/16 v1, 0x53

    goto :goto_2

    :cond_4
    const-wide/16 v1, 0x75

    :goto_2
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_5

    sget-object p1, Lm1/a;->e:Landroid/view/animation/DecelerateInterpolator;

    goto :goto_3

    :cond_5
    sget-object p1, Lm1/a;->c:Lo0/a;

    :goto_3
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p1, Lcom/google/android/material/slider/b;

    invoke-direct {p1, p0}, Lcom/google/android/material/slider/b;-><init>(Lcom/google/android/material/slider/BaseSlider;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0
.end method

.method public final c()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->o:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->o:Z

    invoke-virtual {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->b(Z)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->q:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->p:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/google/android/material/slider/c;

    invoke-direct {v1, p0}, Lcom/google/android/material/slider/c;-><init>(Lcom/google/android/material/slider/BaseSlider;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->q:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method

.method public final d()[F
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getValues()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/slider/BaseSlider;->H:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->F:F

    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->l(F)F

    move-result v1

    invoke-virtual {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->l(F)F

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->h()Z

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz v2, :cond_1

    new-array v2, v5, [F

    aput v0, v2, v4

    aput v1, v2, v3

    goto :goto_0

    :cond_1
    new-array v2, v5, [F

    aput v1, v2, v4

    aput v0, v2, v3

    :goto_0
    return-object v2
.end method

.method public final dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->h:Lcom/google/android/material/slider/e;

    invoke-virtual {v0, p1}, Lj0/b;->m(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public final drawableStateChanged()V
    .locals 3

    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->b:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->U:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->e(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->c:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->T:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->e(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->f:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->S:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->e(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->g:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->R:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->e(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk2/a;

    invoke-virtual {v1}, Lg2/h;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->V:Lg2/h;

    invoke-virtual {v0}, Lg2/h;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_2
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->e:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->Q:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->e(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public final e(Landroid/content/res/ColorStateList;)I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    return p1
.end method

.method public final f()Z
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move v2, v3

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/view/ViewGroup;->shouldDelayChildPressedState()Z

    move-result v1

    if-eqz v1, :cond_2

    return v3

    :cond_2
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_3
    return v2
.end method

.method public final g(F)Z
    .locals 4

    new-instance v0, Ljava/math/BigDecimal;

    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/math/BigDecimal;

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->K:F

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/math/MathContext;->DECIMAL64:Ljava/math/MathContext;

    invoke-virtual {v0, p1, v1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-double v2, v2

    sub-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double p1, v0, v2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    const-class v0, Landroid/widget/SeekBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getAccessibilityFocusedVirtualViewId()I
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->h:Lcom/google/android/material/slider/e;

    iget v0, v0, Lj0/b;->k:I

    return v0
.end method

.method public getMinSeparation()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getValueFrom()F
    .locals 1

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->F:F

    return v0
.end method

.method public getValueTo()F
    .locals 1

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->G:F

    return v0
.end method

.method public getValues()Ljava/util/List;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->H:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final h()Z
    .locals 2

    sget-object v0, Lg0/s0;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, Lg0/b0;->d(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final i()V
    .locals 6

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->K:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->u()V

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->G:F

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->F:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->K:F

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->N:I

    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->w:I

    mul-int/lit8 v2, v2, 0x2

    div-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->L:[F

    if-eqz v1, :cond_1

    array-length v1, v1

    mul-int/lit8 v2, v0, 0x2

    if-eq v1, v2, :cond_2

    :cond_1
    mul-int/lit8 v1, v0, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->L:[F

    :cond_2
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->N:I

    int-to-float v1, v1

    add-int/lit8 v2, v0, -0x1

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/4 v2, 0x0

    :goto_0
    mul-int/lit8 v3, v0, 0x2

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Lcom/google/android/material/slider/BaseSlider;->L:[F

    iget v4, p0, Lcom/google/android/material/slider/BaseSlider;->x:I

    int-to-float v4, v4

    div-int/lit8 v5, v2, 0x2

    int-to-float v5, v5

    mul-float/2addr v5, v1

    add-float/2addr v5, v4

    aput v5, v3, v2

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->a()I

    move-result v5

    int-to-float v5, v5

    aput v5, v3, v4

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final j(I)Z
    .locals 8

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->J:I

    int-to-long v1, v0

    int-to-long v3, p1

    add-long/2addr v1, v3

    iget-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->H:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v3, 0x1

    sub-int/2addr p1, v3

    int-to-long v4, p1

    const-wide/16 v6, 0x0

    cmp-long p1, v1, v6

    if-gez p1, :cond_0

    move-wide v1, v6

    goto :goto_0

    :cond_0
    cmp-long p1, v1, v4

    if-lez p1, :cond_1

    move-wide v1, v4

    :cond_1
    :goto_0
    long-to-int p1, v1

    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->J:I

    if-ne p1, v0, :cond_2

    const/4 p1, 0x0

    return p1

    :cond_2
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->I:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->I:I

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->t()V

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return v3
.end method

.method public final k(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_0

    const p1, 0x7fffffff

    goto :goto_0

    :cond_0
    neg-int p1, p1

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->j(I)Z

    return-void
.end method

.method public final l(F)F
    .locals 2

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->F:F

    sub-float/2addr p1, v0

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->G:F

    sub-float/2addr v1, v0

    div-float/2addr p1, v1

    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    return v0

    :cond_0
    return p1
.end method

.method public final m()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/activity/b;->i(Ljava/lang/Object;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public n()Z
    .locals 11

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->I:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->W:F

    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->h()Z

    move-result v3

    if-eqz v3, :cond_1

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v0, v3, v0

    :cond_1
    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->G:F

    iget v4, p0, Lcom/google/android/material/slider/BaseSlider;->F:F

    invoke-static {v3, v4, v0, v4}, Landroidx/activity/b;->a(FFFF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->l(F)F

    move-result v3

    iget v4, p0, Lcom/google/android/material/slider/BaseSlider;->N:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/google/android/material/slider/BaseSlider;->x:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    const/4 v4, 0x0

    iput v4, p0, Lcom/google/android/material/slider/BaseSlider;->I:I

    iget-object v5, p0, Lcom/google/android/material/slider/BaseSlider;->H:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    sub-float/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    move v6, v1

    :goto_0
    iget-object v7, p0, Lcom/google/android/material/slider/BaseSlider;->H:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_8

    iget-object v7, p0, Lcom/google/android/material/slider/BaseSlider;->H:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    sub-float/2addr v7, v0

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget-object v8, p0, Lcom/google/android/material/slider/BaseSlider;->H:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {p0, v8}, Lcom/google/android/material/slider/BaseSlider;->l(F)F

    move-result v8

    iget v9, p0, Lcom/google/android/material/slider/BaseSlider;->N:I

    int-to-float v9, v9

    mul-float/2addr v8, v9

    iget v9, p0, Lcom/google/android/material/slider/BaseSlider;->x:I

    int-to-float v9, v9

    add-float/2addr v8, v9

    invoke-static {v7, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v9

    if-le v9, v1, :cond_2

    goto :goto_4

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->h()Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_3

    sub-float v9, v8, v3

    cmpl-float v9, v9, v10

    if-lez v9, :cond_4

    goto :goto_1

    :cond_3
    sub-float v9, v8, v3

    cmpg-float v9, v9, v10

    if-gez v9, :cond_4

    :goto_1
    move v9, v1

    goto :goto_2

    :cond_4
    move v9, v4

    :goto_2
    invoke-static {v7, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v10

    if-gez v10, :cond_5

    iput v6, p0, Lcom/google/android/material/slider/BaseSlider;->I:I

    goto :goto_3

    :cond_5
    invoke-static {v7, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v10

    if-nez v10, :cond_7

    sub-float/2addr v8, v3

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v10, p0, Lcom/google/android/material/slider/BaseSlider;->r:I

    int-to-float v10, v10

    cmpg-float v8, v8, v10

    if-gez v8, :cond_6

    iput v2, p0, Lcom/google/android/material/slider/BaseSlider;->I:I

    return v4

    :cond_6
    if-eqz v9, :cond_7

    iput v6, p0, Lcom/google/android/material/slider/BaseSlider;->I:I

    :goto_3
    move v5, v7

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_8
    :goto_4
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->I:I

    if-eq v0, v2, :cond_9

    goto :goto_5

    :cond_9
    move v1, v4

    :goto_5
    return v1
.end method

.method public final o(Lk2/a;F)V
    .locals 4

    float-to-int v0, p2

    int-to-float v0, v0

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    const-string v0, "%.0f"

    goto :goto_0

    :cond_0
    const-string v0, "%.2f"

    :goto_0
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lk2/a;->y:Ljava/lang/CharSequence;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    iput-object v0, p1, Lk2/a;->y:Ljava/lang/CharSequence;

    iget-object v0, p1, Lk2/a;->B:Lcom/google/android/material/internal/u;

    iput-boolean v2, v0, Lcom/google/android/material/internal/u;->d:Z

    invoke-virtual {p1}, Lg2/h;->invalidateSelf()V

    :cond_1
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->x:I

    invoke-virtual {p0, p2}, Lcom/google/android/material/slider/BaseSlider;->l(F)F

    move-result p2

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->N:I

    int-to-float v1, v1

    mul-float/2addr p2, v1

    float-to-int p2, p2

    add-int/2addr v0, p2

    invoke-virtual {p1}, Lk2/a;->getIntrinsicWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr v0, p2

    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->a()I

    move-result p2

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->B:I

    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->z:I

    add-int/2addr v1, v3

    sub-int/2addr p2, v1

    invoke-virtual {p1}, Lk2/a;->getIntrinsicHeight()I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {p1}, Lk2/a;->getIntrinsicWidth()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p1, v0, v1, v3, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance p2, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-static {p0}, Lcom/google/android/material/internal/c0;->c(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {v0, p0, p2}, Lcom/google/android/material/internal/d;->c(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-static {p0}, Lcom/google/android/material/internal/c0;->c(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object p2

    if-nez p2, :cond_2

    const/4 p2, 0x0

    goto :goto_1

    :cond_2
    new-instance v0, Lw0/x;

    invoke-direct {v0, p2, v2}, Lw0/x;-><init>(Landroid/view/ViewGroup;I)V

    move-object p2, v0

    :goto_1
    iget v0, p2, Lw0/x;->a:I

    iget-object p2, p2, Lw0/x;->b:Landroid/view/ViewOverlay;

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    invoke-virtual {p2, p1}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :goto_2
    invoke-virtual {p2, p1}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onAttachedToWindow()V
    .locals 5

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk2/a;

    invoke-static {p0}, Lcom/google/android/material/internal/c0;->c(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x2

    new-array v3, v3, [I

    invoke-virtual {v2, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v4, 0x0

    aget v3, v3, v4

    iput v3, v1, Lk2/a;->J:I

    iget-object v3, v1, Lk2/a;->D:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget-object v1, v1, Lk2/a;->C:Landroidx/appcompat/widget/e2;

    invoke-virtual {v2, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->j:Lcom/google/android/material/slider/d;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->o:Z

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk2/a;

    invoke-static {p0}, Lcom/google/android/material/internal/c0;->c(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    new-instance v3, Lw0/x;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4}, Lw0/x;-><init>(Landroid/view/ViewGroup;I)V

    move-object v2, v3

    :goto_1
    if-eqz v2, :cond_1

    invoke-virtual {v2, v1}, Lw0/x;->a(Landroid/graphics/drawable/Drawable;)V

    invoke-static {p0}, Lcom/google/android/material/internal/c0;->c(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_3
    iget-object v1, v1, Lk2/a;->C:Landroidx/appcompat/widget/e2;

    invoke-virtual {v2, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    goto :goto_0

    :cond_4
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    iget-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->P:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->u()V

    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->i()V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->a()I

    move-result v6

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->N:I

    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->d()[F

    move-result-object v7

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->x:I

    int-to-float v2, v1

    const/4 v8, 0x1

    aget v3, v7, v8

    int-to-float v9, v0

    mul-float/2addr v3, v9

    add-float/2addr v2, v3

    add-int/2addr v1, v0

    int-to-float v3, v1

    cmpg-float v0, v2, v3

    iget-object v10, p0, Lcom/google/android/material/slider/BaseSlider;->b:Landroid/graphics/Paint;

    if-gez v0, :cond_1

    int-to-float v4, v6

    move-object v0, p1

    move v1, v2

    move v2, v4

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_1
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->x:I

    int-to-float v1, v0

    const/4 v11, 0x0

    aget v0, v7, v11

    mul-float/2addr v0, v9

    add-float v3, v0, v1

    cmpl-float v0, v3, v1

    if-lez v0, :cond_2

    int-to-float v4, v6

    move-object v0, p1

    move v2, v4

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->F:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->N:I

    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->d()[F

    move-result-object v1

    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->x:I

    int-to-float v2, v2

    aget v3, v1, v8

    int-to-float v0, v0

    mul-float/2addr v3, v0

    add-float/2addr v3, v2

    aget v1, v1, v11

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    int-to-float v4, v6

    iget-object v5, p0, Lcom/google/android/material/slider/BaseSlider;->c:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_3
    iget-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->M:Z

    const/4 v7, -0x1

    const/4 v9, 0x2

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->K:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->d()[F

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->L:[F

    aget v2, v0, v11

    array-length v1, v1

    div-int/2addr v1, v9

    add-int/2addr v1, v7

    int-to-float v1, v1

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/slider/BaseSlider;->L:[F

    aget v0, v0, v8

    array-length v2, v2

    div-int/2addr v2, v9

    add-int/2addr v2, v7

    int-to-float v2, v2

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/material/slider/BaseSlider;->L:[F

    mul-int/2addr v1, v9

    iget-object v3, p0, Lcom/google/android/material/slider/BaseSlider;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v11, v1, v3}, Landroid/graphics/Canvas;->drawPoints([FIILandroid/graphics/Paint;)V

    iget-object v2, p0, Lcom/google/android/material/slider/BaseSlider;->L:[F

    mul-int/2addr v0, v9

    sub-int v4, v0, v1

    iget-object v5, p0, Lcom/google/android/material/slider/BaseSlider;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v4, v5}, Landroid/graphics/Canvas;->drawPoints([FIILandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->L:[F

    array-length v2, v1

    sub-int/2addr v2, v0

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawPoints([FIILandroid/graphics/Paint;)V

    :cond_5
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->E:Z

    if-nez v0, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->N:I

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Landroid/graphics/drawable/RippleDrawable;

    xor-int/2addr v1, v8

    if-eqz v1, :cond_8

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/android/material/slider/BaseSlider;->H:Ljava/util/ArrayList;

    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->J:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/material/slider/BaseSlider;->l(F)F

    move-result v2

    int-to-float v0, v0

    mul-float/2addr v2, v0

    add-float/2addr v2, v1

    float-to-int v10, v2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_7

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->A:I

    sub-int v1, v10, v0

    int-to-float v1, v1

    sub-int v2, v6, v0

    int-to-float v2, v2

    add-int v3, v10, v0

    int-to-float v3, v3

    add-int/2addr v0, v6

    int-to-float v4, v0

    sget-object v5, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    :cond_7
    int-to-float v0, v10

    int-to-float v1, v6

    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->A:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/google/android/material/slider/BaseSlider;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_8
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->I:I

    if-eq v0, v7, :cond_e

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->v:I

    if-ne v0, v9, :cond_9

    goto/16 :goto_3

    :cond_9
    iget-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->o:Z

    if-nez v0, :cond_a

    iput-boolean v8, p0, Lcom/google/android/material/slider/BaseSlider;->o:Z

    invoke-virtual {p0, v8}, Lcom/google/android/material/slider/BaseSlider;->b(Z)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->p:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->q:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_a
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    iget-object v2, p0, Lcom/google/android/material/slider/BaseSlider;->H:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v11, v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->J:I

    if-ne v11, v2, :cond_b

    goto :goto_2

    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lk2/a;

    iget-object v3, p0, Lcom/google/android/material/slider/BaseSlider;->H:Ljava/util/ArrayList;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/google/android/material/slider/BaseSlider;->o(Lk2/a;F)V

    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk2/a;

    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->H:Ljava/util/ArrayList;

    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->J:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/material/slider/BaseSlider;->o(Lk2/a;F)V

    goto :goto_3

    :cond_d
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/material/slider/BaseSlider;->H:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "Not enough labels(%d) to display all the values(%d)"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_e
    :goto_3
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->N:I

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_f

    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->H:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->x:I

    int-to-float v3, v3

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/material/slider/BaseSlider;->l(F)F

    move-result v2

    int-to-float v4, v0

    mul-float/2addr v2, v4

    add-float/2addr v2, v3

    int-to-float v3, v6

    iget v4, p0, Lcom/google/android/material/slider/BaseSlider;->z:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/google/android/material/slider/BaseSlider;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_4

    :cond_f
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->H:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->x:I

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/material/slider/BaseSlider;->l(F)F

    move-result v2

    int-to-float v4, v0

    mul-float/2addr v2, v4

    float-to-int v2, v2

    add-int/2addr v3, v2

    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->z:I

    sub-int/2addr v3, v2

    int-to-float v3, v3

    sub-int v2, v6, v2

    int-to-float v2, v2

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, p0, Lcom/google/android/material/slider/BaseSlider;->V:Lg2/h;

    invoke-virtual {v2, p1}, Lg2/h;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_5

    :cond_10
    return-void
.end method

.method public final onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    iget-object p3, p0, Lcom/google/android/material/slider/BaseSlider;->h:Lcom/google/android/material/slider/e;

    if-nez p1, :cond_0

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->I:I

    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->c()V

    iget p1, p0, Lcom/google/android/material/slider/BaseSlider;->J:I

    invoke-virtual {p3, p1}, Lj0/b;->j(I)Z

    goto :goto_1

    :cond_0
    const/4 p1, 0x1

    const v0, 0x7fffffff

    if-eq p2, p1, :cond_4

    const/4 p1, 0x2

    const/high16 v1, -0x80000000

    if-eq p2, p1, :cond_3

    const/16 p1, 0x11

    if-eq p2, p1, :cond_2

    const/16 p1, 0x42

    if-eq p2, p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->k(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->k(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->j(I)Z

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->j(I)Z

    :goto_0
    iget p1, p0, Lcom/google/android/material/slider/BaseSlider;->J:I

    invoke-virtual {p3, p1}, Lj0/b;->w(I)Z

    :goto_1
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 13

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->H:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iput v1, p0, Lcom/google/android/material/slider/BaseSlider;->I:I

    :cond_1
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->I:I

    const/16 v3, 0x42

    const/16 v4, 0x3d

    const/4 v5, 0x0

    const/16 v6, 0x51

    const/16 v7, 0x46

    const/16 v8, 0x45

    const/4 v9, -0x1

    if-ne v0, v9, :cond_9

    if-eq p1, v4, :cond_5

    if-eq p1, v3, :cond_4

    if-eq p1, v6, :cond_3

    if-eq p1, v8, :cond_2

    if-eq p1, v7, :cond_3

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, v2}, Lcom/google/android/material/slider/BaseSlider;->k(I)V

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, v9}, Lcom/google/android/material/slider/BaseSlider;->k(I)V

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v9}, Lcom/google/android/material/slider/BaseSlider;->j(I)Z

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v2}, Lcom/google/android/material/slider/BaseSlider;->j(I)Z

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_4
    :pswitch_2
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->J:I

    iput v0, p0, Lcom/google/android/material/slider/BaseSlider;->I:I

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_5
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0, v2}, Lcom/google/android/material/slider/BaseSlider;->j(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_0

    :cond_6
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0, v9}, Lcom/google/android/material/slider/BaseSlider;->j(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_0

    :cond_7
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    if-eqz v5, :cond_8

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_1

    :cond_8
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    :goto_1
    return p1

    :cond_9
    iget-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->O:Z

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v10

    or-int/2addr v0, v10

    iput-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->O:Z

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->K:F

    cmpl-float v11, v0, v11

    if-nez v11, :cond_a

    goto :goto_2

    :cond_a
    move v10, v0

    :goto_2
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->G:F

    iget v11, p0, Lcom/google/android/material/slider/BaseSlider;->F:F

    sub-float/2addr v0, v11

    div-float/2addr v0, v10

    const/16 v11, 0x14

    int-to-float v11, v11

    cmpg-float v12, v0, v11

    if-gtz v12, :cond_b

    goto :goto_3

    :cond_b
    div-float/2addr v0, v11

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v10, v0

    goto :goto_3

    :cond_c
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->K:F

    cmpl-float v11, v0, v11

    if-nez v11, :cond_d

    goto :goto_3

    :cond_d
    move v10, v0

    :goto_3
    const/16 v0, 0x15

    if-eq p1, v0, :cond_12

    const/16 v0, 0x16

    if-eq p1, v0, :cond_10

    if-eq p1, v8, :cond_f

    if-eq p1, v7, :cond_e

    if-eq p1, v6, :cond_e

    goto :goto_5

    :cond_e
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    goto :goto_5

    :cond_f
    neg-float v0, v10

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    goto :goto_5

    :cond_10
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->h()Z

    move-result v0

    if-eqz v0, :cond_11

    neg-float v10, v10

    :cond_11
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    goto :goto_5

    :cond_12
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->h()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_4

    :cond_13
    neg-float v10, v10

    :goto_4
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    :goto_5
    if-eqz v5, :cond_15

    iget-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->H:Ljava/util/ArrayList;

    iget p2, p0, Lcom/google/android/material/slider/BaseSlider;->I:I

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result p2

    add-float/2addr p2, p1

    iget p1, p0, Lcom/google/android/material/slider/BaseSlider;->I:I

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/slider/BaseSlider;->q(IF)Z

    move-result p1

    if-eqz p1, :cond_14

    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->t()V

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :cond_14
    return v2

    :cond_15
    const/16 v0, 0x17

    if-eq p1, v0, :cond_19

    if-eq p1, v4, :cond_16

    if-eq p1, v3, :cond_19

    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_16
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result p1

    if-eqz p1, :cond_17

    invoke-virtual {p0, v2}, Lcom/google/android/material/slider/BaseSlider;->j(I)Z

    move-result p1

    return p1

    :cond_17
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result p1

    if-eqz p1, :cond_18

    invoke-virtual {p0, v9}, Lcom/google/android/material/slider/BaseSlider;->j(I)Z

    move-result p1

    return p1

    :cond_18
    return v1

    :cond_19
    iput v9, p0, Lcom/google/android/material/slider/BaseSlider;->I:I

    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->c()V

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return v2

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->O:Z

    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public final onMeasure(II)V
    .locals 3

    iget p2, p0, Lcom/google/android/material/slider/BaseSlider;->u:I

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->v:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk2/a;

    invoke-virtual {v0}, Lk2/a;->getIntrinsicHeight()I

    move-result v2

    :cond_0
    add-int/2addr p2, v2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    check-cast p1, Lcom/google/android/material/slider/BaseSlider$SliderState;

    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v0, p1, Lcom/google/android/material/slider/BaseSlider$SliderState;->b:F

    iput v0, p0, Lcom/google/android/material/slider/BaseSlider;->F:F

    iget v0, p1, Lcom/google/android/material/slider/BaseSlider$SliderState;->c:F

    iput v0, p0, Lcom/google/android/material/slider/BaseSlider;->G:F

    iget-object v0, p1, Lcom/google/android/material/slider/BaseSlider$SliderState;->d:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->p(Ljava/util/ArrayList;)V

    iget v0, p1, Lcom/google/android/material/slider/BaseSlider$SliderState;->e:F

    iput v0, p0, Lcom/google/android/material/slider/BaseSlider;->K:F

    iget-boolean p1, p1, Lcom/google/android/material/slider/BaseSlider$SliderState;->f:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/google/android/material/slider/BaseSlider$SliderState;

    invoke-direct {v1, v0}, Lcom/google/android/material/slider/BaseSlider$SliderState;-><init>(Landroid/os/Parcelable;)V

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->F:F

    iput v0, v1, Lcom/google/android/material/slider/BaseSlider$SliderState;->b:F

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->G:F

    iput v0, v1, Lcom/google/android/material/slider/BaseSlider$SliderState;->c:F

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/material/slider/BaseSlider;->H:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, v1, Lcom/google/android/material/slider/BaseSlider$SliderState;->d:Ljava/util/ArrayList;

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->K:F

    iput v0, v1, Lcom/google/android/material/slider/BaseSlider$SliderState;->e:F

    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    iput-boolean v0, v1, Lcom/google/android/material/slider/BaseSlider$SliderState;->f:Z

    return-object v1
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    iget p2, p0, Lcom/google/android/material/slider/BaseSlider;->x:I

    mul-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    const/4 p2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->N:I

    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->i()V

    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->t()V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->x:I

    int-to-float v2, v2

    sub-float v2, v0, v2

    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->N:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/google/android/material/slider/BaseSlider;->W:F

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/google/android/material/slider/BaseSlider;->W:F

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, p0, Lcom/google/android/material/slider/BaseSlider;->W:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_9

    iget v4, p0, Lcom/google/android/material/slider/BaseSlider;->r:I

    if-eq v2, v3, :cond_5

    const/4 v5, 0x2

    if-eq v2, v5, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-boolean v2, p0, Lcom/google/android/material/slider/BaseSlider;->E:Z

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->f()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->C:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    int-to-float v2, v4

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->m()V

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->n()Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_1

    :cond_4
    iput-boolean v3, p0, Lcom/google/android/material/slider/BaseSlider;->E:Z

    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->r()V

    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->t()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_1

    :cond_5
    iput-boolean v1, p0, Lcom/google/android/material/slider/BaseSlider;->E:Z

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->D:Landroid/view/MotionEvent;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->D:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    int-to-float v1, v4

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->D:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_6

    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->n()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->m()V

    :cond_6
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->I:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->r()V

    iput v1, p0, Lcom/google/android/material/slider/BaseSlider;->I:I

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_0

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroidx/activity/b;->i(Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1

    :cond_8
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->c()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_1

    :cond_9
    iput v0, p0, Lcom/google/android/material/slider/BaseSlider;->C:F

    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->f()Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_1

    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->n()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_1

    :cond_b
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    iput-boolean v3, p0, Lcom/google/android/material/slider/BaseSlider;->E:Z

    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->r()V

    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->t()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->m()V

    :goto_1
    iget-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->E:Z

    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->D:Landroid/view/MotionEvent;

    return v3
.end method

.method public final p(Ljava/util/ArrayList;)V
    .locals 13

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->H:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->H:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->H:Ljava/util/ArrayList;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/material/slider/BaseSlider;->P:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/slider/BaseSlider;->J:I

    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->t()V

    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->l:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/material/slider/BaseSlider;->H:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    if-le v2, v3, :cond_5

    iget-object v2, p0, Lcom/google/android/material/slider/BaseSlider;->H:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lk2/a;

    sget-object v6, Lg0/s0;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, Lg0/d0;->b(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {p0}, Lcom/google/android/material/internal/c0;->c(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v6

    if-nez v6, :cond_2

    move-object v7, v4

    goto :goto_1

    :cond_2
    new-instance v7, Lw0/x;

    invoke-direct {v7, v6, p1}, Lw0/x;-><init>(Landroid/view/ViewGroup;I)V

    :goto_1
    if-eqz v7, :cond_1

    invoke-virtual {v7, v5}, Lw0/x;->a(Landroid/graphics/drawable/Drawable;)V

    invoke-static {p0}, Lcom/google/android/material/internal/c0;->c(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v6

    if-nez v6, :cond_3

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_3
    iget-object v5, v5, Lk2/a;->C:Landroidx/appcompat/widget/e2;

    invoke-virtual {v6, v5}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    goto :goto_0

    :cond_4
    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_5
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/material/slider/BaseSlider;->H:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_a

    iget-object v2, p0, Lcom/google/android/material/slider/BaseSlider;->k:Lcom/google/android/material/slider/a;

    iget-object v3, v2, Lcom/google/android/material/slider/a;->c:Lcom/google/android/material/slider/BaseSlider;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, v2, Lcom/google/android/material/slider/a;->a:Landroid/util/AttributeSet;

    sget-object v7, Lcom/google/android/material/R$styleable;->Slider:[I

    iget v8, v2, Lcom/google/android/material/slider/a;->b:I

    sget v9, Lcom/google/android/material/slider/BaseSlider;->b0:I

    new-array v10, v0, [I

    invoke-static/range {v5 .. v10}, Lcom/google/android/material/internal/x;->d(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v5, Lcom/google/android/material/R$styleable;->Slider_labelStyle:I

    sget v6, Lcom/google/android/material/R$style;->Widget_MaterialComponents_Tooltip:I

    invoke-virtual {v2, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    new-instance v5, Lk2/a;

    invoke-direct {v5, v3, v11}, Lk2/a;-><init>(Landroid/content/Context;I)V

    iget-object v7, v5, Lk2/a;->z:Landroid/content/Context;

    sget-object v9, Lcom/google/android/material/R$styleable;->Tooltip:[I

    new-array v12, v0, [I

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lcom/google/android/material/internal/x;->d(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v3

    iget-object v6, v5, Lk2/a;->z:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/google/android/material/R$dimen;->mtrl_tooltip_arrowSize:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v5, Lk2/a;->I:I

    iget-object v7, v5, Lg2/h;->b:Lg2/g;

    iget-object v7, v7, Lg2/g;->a:Lg2/m;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Lg2/l;

    invoke-direct {v8, v7}, Lg2/l;-><init>(Lg2/m;)V

    invoke-virtual {v5}, Lk2/a;->x()Lg2/i;

    move-result-object v7

    iput-object v7, v8, Lg2/l;->k:Lg2/e;

    new-instance v7, Lg2/m;

    invoke-direct {v7, v8}, Lg2/m;-><init>(Lg2/l;)V

    invoke-virtual {v5, v7}, Lg2/h;->setShapeAppearanceModel(Lg2/m;)V

    sget v7, Lcom/google/android/material/R$styleable;->Tooltip_android_text:I

    invoke-virtual {v3, v7}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    iget-object v8, v5, Lk2/a;->y:Ljava/lang/CharSequence;

    invoke-static {v8, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    iget-object v9, v5, Lk2/a;->B:Lcom/google/android/material/internal/u;

    if-nez v8, :cond_6

    iput-object v7, v5, Lk2/a;->y:Ljava/lang/CharSequence;

    iput-boolean p1, v9, Lcom/google/android/material/internal/u;->d:Z

    invoke-virtual {v5}, Lg2/h;->invalidateSelf()V

    :cond_6
    sget v7, Lcom/google/android/material/R$styleable;->Tooltip_android_textAppearance:I

    invoke-virtual {v3, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v3, v7, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    if-eqz v7, :cond_7

    new-instance v8, Ld2/g;

    invoke-direct {v8, v6, v7}, Ld2/g;-><init>(Landroid/content/Context;I)V

    goto :goto_3

    :cond_7
    move-object v8, v4

    :goto_3
    if-eqz v8, :cond_8

    sget v7, Lcom/google/android/material/R$styleable;->Tooltip_android_textColor:I

    invoke-virtual {v3, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_8

    sget v7, Lcom/google/android/material/R$styleable;->Tooltip_android_textColor:I

    invoke-static {v6, v3, v7}, Ld2/d;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v7

    iput-object v7, v8, Ld2/g;->j:Landroid/content/res/ColorStateList;

    :cond_8
    invoke-virtual {v9, v8, v6}, Lcom/google/android/material/internal/u;->b(Ld2/g;Landroid/content/Context;)V

    sget v7, Lcom/google/android/material/R$attr;->colorOnBackground:I

    const-class v8, Lk2/a;

    invoke-virtual {v8}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9, v7}, Ld2/c;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v8}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v9

    const v10, 0x1010031

    invoke-static {v6, v9, v10}, Ld2/c;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v9

    const/16 v10, 0xe5

    invoke-static {v9, v10}, Ly/a;->c(II)I

    move-result v9

    const/16 v10, 0x99

    invoke-static {v7, v10}, Ly/a;->c(II)I

    move-result v7

    invoke-static {v7, v9}, Ly/a;->b(II)I

    move-result v7

    sget v9, Lcom/google/android/material/R$styleable;->Tooltip_backgroundTint:I

    invoke-virtual {v3, v9, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    invoke-static {v7}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v5, v7}, Lg2/h;->n(Landroid/content/res/ColorStateList;)V

    sget v7, Lcom/google/android/material/R$attr;->colorSurface:I

    invoke-virtual {v8}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8, v7}, Ld2/c;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v5, v6}, Lg2/h;->s(Landroid/content/res/ColorStateList;)V

    sget v6, Lcom/google/android/material/R$styleable;->Tooltip_android_padding:I

    invoke-virtual {v3, v6, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v5, Lk2/a;->E:I

    sget v6, Lcom/google/android/material/R$styleable;->Tooltip_android_minWidth:I

    invoke-virtual {v3, v6, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v5, Lk2/a;->F:I

    sget v6, Lcom/google/android/material/R$styleable;->Tooltip_android_minHeight:I

    invoke-virtual {v3, v6, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v5, Lk2/a;->G:I

    sget v6, Lcom/google/android/material/R$styleable;->Tooltip_android_layout_margin:I

    invoke-virtual {v3, v6, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v5, Lk2/a;->H:I

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lg0/s0;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, Lg0/d0;->b(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {p0}, Lcom/google/android/material/internal/c0;->c(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v2

    if-nez v2, :cond_9

    goto/16 :goto_2

    :cond_9
    const/4 v3, 0x2

    new-array v3, v3, [I

    invoke-virtual {v2, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v3, v3, v0

    iput v3, v5, Lk2/a;->J:I

    iget-object v3, v5, Lk2/a;->D:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget-object v3, v5, Lk2/a;->C:Landroidx/appcompat/widget/e2;

    invoke-virtual {v2, v3}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    goto/16 :goto_2

    :cond_a
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, p1, :cond_b

    move p1, v0

    :cond_b
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk2/a;

    int-to-float v2, p1

    iget-object v3, v1, Lg2/h;->b:Lg2/g;

    iput v2, v3, Lg2/g;->k:F

    invoke-virtual {v1}, Lg2/h;->invalidateSelf()V

    goto :goto_4

    :cond_c
    iget-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->m:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/activity/b;->i(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->H:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_5

    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    throw v4

    :cond_e
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void

    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "At least one value must be set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final q(IF)Z
    .locals 4

    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->J:I

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->H:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sub-float v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getMinSeparation()F

    move-result v0

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->a0:I

    if-nez v1, :cond_2

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->x:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->N:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->F:F

    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->G:F

    invoke-static {v1, v2, v0, v1}, Landroidx/activity/b;->a(FFFF)F

    move-result v0

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->h()Z

    move-result v1

    if-eqz v1, :cond_3

    neg-float v0, v0

    :cond_3
    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Lcom/google/android/material/slider/BaseSlider;->H:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_4

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->G:F

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/google/android/material/slider/BaseSlider;->H:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-float/2addr v1, v0

    :goto_1
    add-int/lit8 v2, p1, -0x1

    if-gez v2, :cond_5

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->F:F

    goto :goto_2

    :cond_5
    iget-object v3, p0, Lcom/google/android/material/slider/BaseSlider;->H:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    add-float/2addr v0, v2

    :goto_2
    cmpg-float v2, p2, v0

    if-gez v2, :cond_6

    move p2, v0

    goto :goto_3

    :cond_6
    cmpl-float v0, p2, v1

    if-lez v0, :cond_7

    move p2, v1

    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->H:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/google/android/material/slider/BaseSlider;->m:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object p2, p0, Lcom/google/android/material/slider/BaseSlider;->i:Landroid/view/accessibility/AccessibilityManager;

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_9

    iget-object p2, p0, Lcom/google/android/material/slider/BaseSlider;->j:Lcom/google/android/material/slider/d;

    if-nez p2, :cond_8

    new-instance p2, Lcom/google/android/material/slider/d;

    invoke-direct {p2, p0}, Lcom/google/android/material/slider/d;-><init>(Lcom/google/android/material/slider/BaseSlider;)V

    iput-object p2, p0, Lcom/google/android/material/slider/BaseSlider;->j:Lcom/google/android/material/slider/d;

    goto :goto_4

    :cond_8
    invoke-virtual {p0, p2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :goto_4
    iget-object p2, p0, Lcom/google/android/material/slider/BaseSlider;->j:Lcom/google/android/material/slider/d;

    iput p1, p2, Lcom/google/android/material/slider/d;->b:I

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_9
    const/4 p1, 0x1

    return p1

    :cond_a
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Landroidx/activity/b;->i(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/google/android/material/slider/BaseSlider;->H:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    const/4 p1, 0x0

    throw p1
.end method

.method public final r()V
    .locals 6

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->W:F

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->K:F

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->G:F

    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->F:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v1

    float-to-int v1, v2

    int-to-float v2, v1

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-double v2, v0

    int-to-double v0, v1

    div-double/2addr v2, v0

    goto :goto_0

    :cond_0
    float-to-double v2, v0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double v2, v0, v2

    :cond_1
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->G:F

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->F:F

    sub-float/2addr v0, v1

    float-to-double v4, v0

    mul-double/2addr v2, v4

    float-to-double v0, v1

    add-double/2addr v2, v0

    double-to-float v0, v2

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->I:I

    invoke-virtual {p0, v1, v0}, Lcom/google/android/material/slider/BaseSlider;->q(IF)Z

    return-void
.end method

.method public final s(ILandroid/graphics/Rect;)V
    .locals 4

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->x:I

    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getValues()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->l(F)F

    move-result p1

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->N:I

    int-to-float v1, v1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->a()I

    move-result p1

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->z:I

    sub-int v2, v0, v1

    sub-int v3, p1, v1

    add-int/2addr v0, v1

    add-int/2addr p1, v1

    invoke-virtual {p2, v2, v3, v0, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public setActiveThumbIndex(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->I:I

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public setFocusedThumbIndex(I)V
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->H:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->J:I

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->h:Lcom/google/android/material/slider/e;

    invoke-virtual {v0, p1}, Lj0/b;->w(I)Z

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "index out of range"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setHaloRadius(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->A:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->A:I

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/RippleDrawable;

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    instance-of v0, p1, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/graphics/drawable/RippleDrawable;

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->A:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/RippleDrawable;->setRadius(I)V

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public setHaloTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->Q:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->Q:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Landroid/graphics/drawable/RippleDrawable;

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_1

    instance-of v1, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->e(Landroid/content/res/ColorStateList;)I

    move-result p1

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    const/16 p1, 0x3f

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setSeparationUnit(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->a0:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/material/slider/BaseSlider;->P:Z

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public setStepSize(F)V
    .locals 3

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->K:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->K:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/material/slider/BaseSlider;->P:Z

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->F:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->G:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {p1, v1, v2}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "The stepSize(%s) must be 0, or a factor of the valueFrom(%s)-valueTo(%s) range"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setThumbElevation(F)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->V:Lg2/h;

    invoke-virtual {v0, p1}, Lg2/h;->m(F)V

    return-void
.end method

.method public setThumbRadius(I)V
    .locals 3

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->z:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->z:I

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->t:I

    sub-int/2addr p1, v0

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->s:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/android/material/slider/BaseSlider;->x:I

    sget-object p1, Lg0/s0;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, Lg0/d0;->c(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->x:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr p1, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->N:I

    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->i()V

    :cond_1
    new-instance p1, Lg2/l;

    invoke-direct {p1}, Lg2/l;-><init>()V

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->z:I

    int-to-float v1, v1

    invoke-static {v0}, Lcom/google/android/material/slider/h;->Q(I)Lcom/google/android/material/slider/h;

    move-result-object v2

    iput-object v2, p1, Lg2/l;->a:Lcom/google/android/material/slider/h;

    invoke-static {v2}, Lg2/l;->b(Lcom/google/android/material/slider/h;)V

    iput-object v2, p1, Lg2/l;->b:Lcom/google/android/material/slider/h;

    invoke-static {v2}, Lg2/l;->b(Lcom/google/android/material/slider/h;)V

    iput-object v2, p1, Lg2/l;->c:Lcom/google/android/material/slider/h;

    invoke-static {v2}, Lg2/l;->b(Lcom/google/android/material/slider/h;)V

    iput-object v2, p1, Lg2/l;->d:Lcom/google/android/material/slider/h;

    invoke-static {v2}, Lg2/l;->b(Lcom/google/android/material/slider/h;)V

    invoke-virtual {p1, v1}, Lg2/l;->c(F)V

    new-instance v1, Lg2/m;

    invoke-direct {v1, p1}, Lg2/m;-><init>(Lg2/l;)V

    iget-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->V:Lg2/h;

    invoke-virtual {p1, v1}, Lg2/h;->setShapeAppearanceModel(Lg2/m;)V

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->z:I

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {p1, v0, v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public setThumbStrokeColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->V:Lg2/h;

    invoke-virtual {v0, p1}, Lg2/h;->s(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public setThumbStrokeWidth(F)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->V:Lg2/h;

    iget-object v1, v0, Lg2/h;->b:Lg2/g;

    iput p1, v1, Lg2/g;->k:F

    invoke-virtual {v0}, Lg2/h;->invalidateSelf()V

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public setTickActiveTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->R:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->R:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->g:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->e(Landroid/content/res/ColorStateList;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTickInactiveTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->S:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->S:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->f:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->e(Landroid/content/res/ColorStateList;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTrackActiveTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->T:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->T:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->c:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->e(Landroid/content/res/ColorStateList;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTrackHeight(I)V
    .locals 2

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->w:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->w:I

    int-to-float p1, p1

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget p1, p0, Lcom/google/android/material/slider/BaseSlider;->w:I

    int-to-float p1, p1

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget p1, p0, Lcom/google/android/material/slider/BaseSlider;->w:I

    int-to-float p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->f:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget p1, p0, Lcom/google/android/material/slider/BaseSlider;->w:I

    int-to-float p1, p1

    div-float/2addr p1, v0

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :cond_0
    return-void
.end method

.method public setTrackInactiveTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->U:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->U:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->b:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->e(Landroid/content/res/ColorStateList;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setValues(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->p(Ljava/util/ArrayList;)V

    return-void
.end method

.method public varargs setValues([Ljava/lang/Float;)V
    .locals 1
    .param p1    # [Ljava/lang/Float;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->p(Ljava/util/ArrayList;)V

    return-void
.end method

.method public final t()V
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/RippleDrawable;

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->H:Ljava/util/ArrayList;

    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->J:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->l(F)F

    move-result v1

    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->N:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->x:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->a()I

    move-result v2

    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->A:I

    sub-int v4, v1, v3

    sub-int v5, v2, v3

    add-int/2addr v1, v3

    add-int/2addr v2, v3

    invoke-virtual {v0, v4, v5, v1, v2}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    :cond_0
    return-void
.end method

.method public final u()V
    .locals 5

    iget-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->P:Z

    if-eqz v0, :cond_10

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->F:F

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->G:F

    cmpl-float v2, v0, v1

    if-gez v2, :cond_f

    cmpg-float v2, v1, v0

    if-lez v2, :cond_e

    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->K:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    sub-float/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->g(F)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->K:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->F:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->G:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "The stepSize(%s) must be 0, or a factor of the valueFrom(%s)-valueTo(%s) range"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->H:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget v4, p0, Lcom/google/android/material/slider/BaseSlider;->F:F

    cmpg-float v2, v2, v4

    if-ltz v2, :cond_4

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget v4, p0, Lcom/google/android/material/slider/BaseSlider;->G:F

    cmpl-float v2, v2, v4

    if-gtz v2, :cond_4

    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->K:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget v4, p0, Lcom/google/android/material/slider/BaseSlider;->F:F

    sub-float/2addr v2, v4

    invoke-virtual {p0, v2}, Lcom/google/android/material/slider/BaseSlider;->g(F)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->F:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->K:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget v4, p0, Lcom/google/android/material/slider/BaseSlider;->K:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Value(%s) must be equal to valueFrom(%s) plus a multiple of stepSize(%s) when using stepSize(%s)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->F:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->G:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Slider value(%s) must be greater or equal to valueFrom(%s), and lower or equal to valueTo(%s)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getMinSeparation()F

    move-result v0

    cmpg-float v1, v0, v3

    if-ltz v1, :cond_d

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->K:F

    cmpl-float v2, v1, v3

    if-lez v2, :cond_8

    cmpl-float v2, v0, v3

    if-lez v2, :cond_8

    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->a0:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_7

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_6

    invoke-virtual {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->g(F)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->K:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->K:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    filled-new-array {v0, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "minSeparation(%s) must be greater or equal and a multiple of stepSize(%s) when using stepSize(%s)"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->K:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "minSeparation(%s) cannot be set as a dimension when using stepSize(%s)"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    :goto_2
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->K:F

    cmpl-float v1, v0, v3

    if-nez v1, :cond_9

    goto :goto_3

    :cond_9
    float-to-int v1, v0

    int-to-float v1, v1

    cmpl-float v1, v1, v0

    const-string v2, "Floating point value used for %s(%s). Using floats can have rounding errors which may result in incorrect values. Instead, consider using integers with a custom LabelFormatter to display the value correctly."

    const-string v3, "BaseSlider"

    if-eqz v1, :cond_a

    const-string v1, "stepSize"

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->F:F

    float-to-int v1, v0

    int-to-float v1, v1

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_b

    const-string v1, "valueFrom"

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->G:F

    float-to-int v1, v0

    int-to-float v1, v1

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_c

    const-string v1, "valueTo"

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :goto_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->P:Z

    goto :goto_4

    :cond_d
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "minSeparation(%s) must be greater or equal to 0"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->G:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->F:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "valueTo(%s) must be greater than valueFrom(%s)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->F:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->G:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "valueFrom(%s) must be smaller than valueTo(%s)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    :goto_4
    return-void
.end method
