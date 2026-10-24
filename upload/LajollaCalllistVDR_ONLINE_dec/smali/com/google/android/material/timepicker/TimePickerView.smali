.class Lcom/google/android/material/timepicker/TimePickerView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"


# static fields
.field public static final synthetic s:I


# instance fields
.field public final r:Lcom/google/android/material/button/MaterialButtonToggleGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/timepicker/TimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance p2, Lcom/google/android/material/timepicker/g;

    invoke-direct {p2, p0}, Lcom/google/android/material/timepicker/g;-><init>(Lcom/google/android/material/timepicker/TimePickerView;)V

    .line 4
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p3, Lcom/google/android/material/R$layout;->material_timepicker:I

    invoke-virtual {p1, p3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 5
    sget p1, Lcom/google/android/material/R$id;->material_clock_face:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/timepicker/ClockFaceView;

    .line 6
    sget p1, Lcom/google/android/material/R$id;->material_clock_period_toggle:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/button/MaterialButtonToggleGroup;

    iput-object p1, p0, Lcom/google/android/material/timepicker/TimePickerView;->r:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    .line 7
    new-instance p3, Lcom/google/android/material/timepicker/h;

    invoke-direct {p3, p0}, Lcom/google/android/material/timepicker/h;-><init>(Lcom/google/android/material/timepicker/TimePickerView;)V

    .line 8
    iget-object p1, p1, Lcom/google/android/material/button/MaterialButtonToggleGroup;->e:Ljava/util/LinkedHashSet;

    .line 9
    invoke-virtual {p1, p3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 10
    sget p1, Lcom/google/android/material/R$id;->material_minute_tv:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/chip/Chip;

    .line 11
    sget p3, Lcom/google/android/material/R$id;->material_hour_tv:I

    invoke-virtual {p0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/google/android/material/chip/Chip;

    .line 12
    sget v0, Lcom/google/android/material/R$id;->material_clock_hand:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/timepicker/ClockHandView;

    .line 13
    sget-object v0, Lg0/s0;->a:Ljava/util/WeakHashMap;

    const/4 v0, 0x2

    .line 14
    invoke-static {p1, v0}, Lg0/d0;->f(Landroid/view/View;I)V

    .line 15
    invoke-static {p3, v0}, Lg0/d0;->f(Landroid/view/View;I)V

    .line 16
    new-instance v0, Landroid/view/GestureDetector;

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/google/android/material/timepicker/i;

    invoke-direct {v2, p0}, Lcom/google/android/material/timepicker/i;-><init>(Lcom/google/android/material/timepicker/TimePickerView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 18
    new-instance v1, Lcom/google/android/material/timepicker/j;

    invoke-direct {v1, v0}, Lcom/google/android/material/timepicker/j;-><init>(Landroid/view/GestureDetector;)V

    .line 19
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 20
    invoke-virtual {p3, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 21
    sget v0, Lcom/google/android/material/R$id;->selection_type:I

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 22
    sget v0, Lcom/google/android/material/R$id;->selection_type:I

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 23
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    invoke-virtual {p3, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/google/android/material/timepicker/TimePickerView;->q()V

    return-void
.end method

.method public final onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    if-ne p1, p0, :cond_0

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/timepicker/TimePickerView;->q()V

    :cond_0
    return-void
.end method

.method public final q()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->r:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ls/n;

    invoke-direct {v0}, Ls/n;-><init>()V

    invoke-virtual {v0, p0}, Ls/n;->e(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    sget-object v1, Lg0/s0;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, Lg0/b0;->d(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-eqz v1, :cond_1

    const/4 v2, 0x2

    :cond_1
    sget v1, Lcom/google/android/material/R$id;->material_clock_display:I

    iget-object v4, v0, Ls/n;->f:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls/i;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const/high16 v4, -0x80000000

    const/4 v5, -0x1

    iget-object v1, v1, Ls/i;->e:Ls/j;

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown constraint"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, v1, Ls/j;->C:F

    iput v5, v1, Ls/j;->B:I

    iput v5, v1, Ls/j;->A:I

    goto :goto_1

    :pswitch_1
    iput v5, v1, Ls/j;->v:I

    iput v5, v1, Ls/j;->w:I

    iput v3, v1, Ls/j;->K:I

    iput v4, v1, Ls/j;->R:I

    goto :goto_1

    :pswitch_2
    iput v5, v1, Ls/j;->t:I

    iput v5, v1, Ls/j;->u:I

    iput v3, v1, Ls/j;->L:I

    iput v4, v1, Ls/j;->S:I

    goto :goto_1

    :pswitch_3
    iput v5, v1, Ls/j;->q:I

    iput v5, v1, Ls/j;->r:I

    iput v5, v1, Ls/j;->s:I

    iput v3, v1, Ls/j;->M:I

    iput v4, v1, Ls/j;->T:I

    goto :goto_1

    :pswitch_4
    iput v5, v1, Ls/j;->o:I

    iput v5, v1, Ls/j;->p:I

    iput v3, v1, Ls/j;->J:I

    iput v4, v1, Ls/j;->Q:I

    goto :goto_1

    :pswitch_5
    iput v5, v1, Ls/j;->n:I

    iput v5, v1, Ls/j;->m:I

    iput v3, v1, Ls/j;->I:I

    iput v4, v1, Ls/j;->O:I

    goto :goto_1

    :pswitch_6
    iput v5, v1, Ls/j;->l:I

    iput v5, v1, Ls/j;->k:I

    iput v5, v1, Ls/j;->H:I

    iput v4, v1, Ls/j;->P:I

    goto :goto_1

    :pswitch_7
    iput v5, v1, Ls/j;->j:I

    iput v5, v1, Ls/j;->i:I

    iput v5, v1, Ls/j;->G:I

    iput v4, v1, Ls/j;->N:I

    :cond_3
    :goto_1
    invoke-virtual {v0, p0}, Ls/n;->b(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
