.class public final Lcom/google/android/material/datepicker/MaterialCalendar;
.super Lcom/google/android/material/datepicker/a0;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/material/datepicker/a0;"
    }
.end annotation


# static fields
.field public static final synthetic e0:I


# instance fields
.field public U:I

.field public V:Lcom/google/android/material/datepicker/DateSelector;

.field public W:Lcom/google/android/material/datepicker/CalendarConstraints;

.field public X:Lcom/google/android/material/datepicker/Month;

.field public Y:Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

.field public Z:Lc1/a;

.field public a0:Landroidx/recyclerview/widget/RecyclerView;

.field public b0:Landroidx/recyclerview/widget/RecyclerView;

.field public c0:Landroid/view/View;

.field public d0:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/datepicker/a0;-><init>()V

    return-void
.end method


# virtual methods
.method public final F(Lcom/google/android/material/datepicker/s;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/material/datepicker/a0;->F(Lcom/google/android/material/datepicker/s;)Z

    move-result p1

    return p1
.end method

.method public final G(Lcom/google/android/material/datepicker/Month;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->b0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/j0;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/datepicker/y;

    iget-object v0, v0, Lcom/google/android/material/datepicker/y;->d:Lcom/google/android/material/datepicker/CalendarConstraints;

    iget-object v0, v0, Lcom/google/android/material/datepicker/CalendarConstraints;->b:Lcom/google/android/material/datepicker/Month;

    iget-object v1, v0, Lcom/google/android/material/datepicker/Month;->b:Ljava/util/Calendar;

    instance-of v2, v1, Ljava/util/GregorianCalendar;

    const-string v3, "Only Gregorian calendars are supported."

    if-eqz v2, :cond_5

    iget v2, p1, Lcom/google/android/material/datepicker/Month;->d:I

    iget v4, v0, Lcom/google/android/material/datepicker/Month;->d:I

    sub-int/2addr v2, v4

    mul-int/lit8 v2, v2, 0xc

    iget v5, p1, Lcom/google/android/material/datepicker/Month;->c:I

    iget v0, v0, Lcom/google/android/material/datepicker/Month;->c:I

    sub-int/2addr v5, v0

    add-int/2addr v5, v2

    iget-object v2, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->X:Lcom/google/android/material/datepicker/Month;

    instance-of v1, v1, Ljava/util/GregorianCalendar;

    if-eqz v1, :cond_4

    iget v1, v2, Lcom/google/android/material/datepicker/Month;->d:I

    sub-int/2addr v1, v4

    mul-int/lit8 v1, v1, 0xc

    iget v2, v2, Lcom/google/android/material/datepicker/Month;->c:I

    sub-int/2addr v2, v0

    add-int/2addr v2, v1

    sub-int v0, v5, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-le v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    if-lez v0, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->X:Lcom/google/android/material/datepicker/Month;

    const/4 p1, 0x2

    if-eqz v1, :cond_2

    if-eqz v3, :cond_2

    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->b0:Landroidx/recyclerview/widget/RecyclerView;

    add-int/lit8 v1, v5, -0x3

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->a0(I)V

    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->b0:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lx/j;

    invoke-direct {v1, v5, p1, p0}, Lx/j;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_2
    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->b0:Landroidx/recyclerview/widget/RecyclerView;

    add-int/lit8 v1, v5, 0x3

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->a0(I)V

    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->b0:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lx/j;

    invoke-direct {v1, v5, p1, p0}, Lx/j;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->b0:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lx/j;

    invoke-direct {v1, v5, p1, p0}, Lx/j;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :goto_2
    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final H(Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;)V
    .locals 4

    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->Y:Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    sget-object v0, Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;->YEAR:Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->a0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/s0;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->a0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/j0;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/datepicker/h0;

    iget-object v3, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->X:Lcom/google/android/material/datepicker/Month;

    iget v3, v3, Lcom/google/android/material/datepicker/Month;->d:I

    iget-object v0, v0, Lcom/google/android/material/datepicker/h0;->c:Lcom/google/android/material/datepicker/MaterialCalendar;

    iget-object v0, v0, Lcom/google/android/material/datepicker/MaterialCalendar;->W:Lcom/google/android/material/datepicker/CalendarConstraints;

    iget-object v0, v0, Lcom/google/android/material/datepicker/CalendarConstraints;->b:Lcom/google/android/material/datepicker/Month;

    iget v0, v0, Lcom/google/android/material/datepicker/Month;->d:I

    sub-int/2addr v3, v0

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/s0;->p0(I)V

    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->c0:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->d0:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;->DAY:Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->c0:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->d0:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->X:Lcom/google/android/material/datepicker/Month;

    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/MaterialCalendar;->G(Lcom/google/android/material/datepicker/Month;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final I()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->Y:Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    sget-object v1, Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;->YEAR:Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;->DAY:Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    invoke-virtual {p0, v0}, Lcom/google/android/material/datepicker/MaterialCalendar;->H(Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;)V

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;->DAY:Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    if-ne v0, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/google/android/material/datepicker/MaterialCalendar;->H(Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final p(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/t;->p(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/fragment/app/t;->g:Landroid/os/Bundle;

    :cond_0
    const-string v0, "THEME_RES_ID_KEY"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->U:I

    const-string v0, "GRID_SELECTOR_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/datepicker/DateSelector;

    iput-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->V:Lcom/google/android/material/datepicker/DateSelector;

    const-string v0, "CALENDAR_CONSTRAINTS_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/datepicker/CalendarConstraints;

    iput-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->W:Lcom/google/android/material/datepicker/CalendarConstraints;

    const-string v0, "CURRENT_MONTH_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/datepicker/Month;

    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->X:Lcom/google/android/material/datepicker/Month;

    return-void
.end method

.method public final q(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    new-instance p3, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroidx/fragment/app/t;->g()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->U:I

    invoke-direct {p3, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    new-instance v0, Lc1/a;

    invoke-direct {v0, p3}, Lc1/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->Z:Lc1/a;

    invoke-virtual {p1, p3}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->W:Lcom/google/android/material/datepicker/CalendarConstraints;

    iget-object v0, v0, Lcom/google/android/material/datepicker/CalendarConstraints;->b:Lcom/google/android/material/datepicker/Month;

    invoke-static {p3}, Lcom/google/android/material/datepicker/MaterialDatePicker;->K(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    sget v1, Lcom/google/android/material/R$layout;->mtrl_calendar_vertical:I

    move v4, v2

    goto :goto_0

    :cond_0
    sget v1, Lcom/google/android/material/R$layout;->mtrl_calendar_horizontal:I

    move v4, v3

    :goto_0
    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/t;->A()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/google/android/material/R$dimen;->mtrl_calendar_navigation_height:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget v5, Lcom/google/android/material/R$dimen;->mtrl_calendar_navigation_top_padding:I

    invoke-virtual {p2, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    add-int/2addr v5, v1

    sget v1, Lcom/google/android/material/R$dimen;->mtrl_calendar_navigation_bottom_padding:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    add-int/2addr v1, v5

    sget v5, Lcom/google/android/material/R$dimen;->mtrl_calendar_days_of_week_height:I

    invoke-virtual {p2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sget v6, Lcom/google/android/material/datepicker/v;->g:I

    sget v7, Lcom/google/android/material/R$dimen;->mtrl_calendar_day_height:I

    invoke-virtual {p2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    mul-int/2addr v7, v6

    add-int/lit8 v6, v6, -0x1

    sget v8, Lcom/google/android/material/R$dimen;->mtrl_calendar_month_vertical_padding:I

    invoke-virtual {p2, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    mul-int/2addr v8, v6

    add-int/2addr v8, v7

    sget v6, Lcom/google/android/material/R$dimen;->mtrl_calendar_bottom_padding:I

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    add-int/2addr v1, v5

    add-int/2addr v1, v8

    add-int/2addr v1, p2

    invoke-virtual {p1, v1}, Landroid/view/View;->setMinimumHeight(I)V

    sget p2, Lcom/google/android/material/R$id;->mtrl_calendar_days_of_week:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/GridView;

    new-instance v1, Lcom/google/android/material/datepicker/k;

    invoke-direct {v1, v3, p0}, Lcom/google/android/material/datepicker/k;-><init>(ILjava/lang/Object;)V

    invoke-static {p2, v1}, Lg0/s0;->m(Landroid/view/View;Lg0/b;)V

    new-instance v1, Lcom/google/android/material/datepicker/j;

    invoke-direct {v1}, Lcom/google/android/material/datepicker/j;-><init>()V

    invoke-virtual {p2, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget v0, v0, Lcom/google/android/material/datepicker/Month;->e:I

    invoke-virtual {p2, v0}, Landroid/widget/GridView;->setNumColumns(I)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setEnabled(Z)V

    sget p2, Lcom/google/android/material/R$id;->mtrl_calendar_months:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->b0:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Lcom/google/android/material/datepicker/l;

    invoke-virtual {p0}, Landroidx/fragment/app/t;->g()Landroid/content/Context;

    invoke-direct {p2, p0, v4, v4}, Lcom/google/android/material/datepicker/l;-><init>(Lcom/google/android/material/datepicker/MaterialCalendar;II)V

    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->b0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/s0;)V

    iget-object p2, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->b0:Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "MONTHS_VIEW_GROUP_TAG"

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    new-instance p2, Lcom/google/android/material/datepicker/y;

    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->V:Lcom/google/android/material/datepicker/DateSelector;

    iget-object v1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->W:Lcom/google/android/material/datepicker/CalendarConstraints;

    new-instance v4, Lcom/google/android/material/datepicker/m;

    invoke-direct {v4, p0}, Lcom/google/android/material/datepicker/m;-><init>(Lcom/google/android/material/datepicker/MaterialCalendar;)V

    invoke-direct {p2, p3, v0, v1, v4}, Lcom/google/android/material/datepicker/y;-><init>(Landroid/view/ContextThemeWrapper;Lcom/google/android/material/datepicker/DateSelector;Lcom/google/android/material/datepicker/CalendarConstraints;Lcom/google/android/material/datepicker/m;)V

    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->b0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/j0;)V

    invoke-virtual {p3}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$integer;->mtrl_calendar_year_selector_span:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sget v1, Lcom/google/android/material/R$id;->mtrl_calendar_year_selector_frame:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->a0:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    iget-object v1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->a0:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v4, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {v4, v0}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(I)V

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/s0;)V

    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->a0:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/google/android/material/datepicker/h0;

    invoke-direct {v1, p0}, Lcom/google/android/material/datepicker/h0;-><init>(Lcom/google/android/material/datepicker/MaterialCalendar;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/j0;)V

    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->a0:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/google/android/material/datepicker/n;

    invoke-direct {v1, p0}, Lcom/google/android/material/datepicker/n;-><init>(Lcom/google/android/material/datepicker/MaterialCalendar;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->g(Landroidx/recyclerview/widget/q0;)V

    :cond_1
    sget v0, Lcom/google/android/material/R$id;->month_navigation_fragment_toggle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    sget v0, Lcom/google/android/material/R$id;->month_navigation_fragment_toggle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    const-string v1, "SELECTOR_TOGGLE_TAG"

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    new-instance v1, Lcom/google/android/material/datepicker/k;

    invoke-direct {v1, v2, p0}, Lcom/google/android/material/datepicker/k;-><init>(ILjava/lang/Object;)V

    invoke-static {v0, v1}, Lg0/s0;->m(Landroid/view/View;Lg0/b;)V

    sget v1, Lcom/google/android/material/R$id;->month_navigation_previous:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/button/MaterialButton;

    const-string v4, "NAVIGATION_PREV_TAG"

    invoke-virtual {v1, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    sget v4, Lcom/google/android/material/R$id;->month_navigation_next:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/button/MaterialButton;

    const-string v5, "NAVIGATION_NEXT_TAG"

    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    sget v5, Lcom/google/android/material/R$id;->mtrl_calendar_year_selector_frame:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->c0:Landroid/view/View;

    sget v5, Lcom/google/android/material/R$id;->mtrl_calendar_day_selector_frame:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->d0:Landroid/view/View;

    sget-object v5, Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;->DAY:Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    invoke-virtual {p0, v5}, Lcom/google/android/material/datepicker/MaterialCalendar;->H(Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;)V

    iget-object v5, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->X:Lcom/google/android/material/datepicker/Month;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/material/datepicker/Month;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->b0:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v6, Lcom/google/android/material/datepicker/o;

    invoke-direct {v6, p0, p2, v0}, Lcom/google/android/material/datepicker/o;-><init>(Lcom/google/android/material/datepicker/MaterialCalendar;Lcom/google/android/material/datepicker/y;Lcom/google/android/material/button/MaterialButton;)V

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/RecyclerView;->h(Landroidx/recyclerview/widget/w0;)V

    new-instance v5, Landroidx/appcompat/widget/y1;

    const/4 v6, 0x2

    invoke-direct {v5, v6, p0}, Landroidx/appcompat/widget/y1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/google/android/material/datepicker/p;

    invoke-direct {v0, p0, p2, v3}, Lcom/google/android/material/datepicker/p;-><init>(Lcom/google/android/material/datepicker/MaterialCalendar;Lcom/google/android/material/datepicker/y;I)V

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/google/android/material/datepicker/p;

    invoke-direct {v0, p0, p2, v2}, Lcom/google/android/material/datepicker/p;-><init>(Lcom/google/android/material/datepicker/MaterialCalendar;Lcom/google/android/material/datepicker/y;I)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    invoke-static {p3}, Lcom/google/android/material/datepicker/MaterialDatePicker;->K(Landroid/content/Context;)Z

    move-result p3

    if-nez p3, :cond_3

    new-instance p3, Landroidx/recyclerview/widget/f0;

    invoke-direct {p3}, Landroidx/recyclerview/widget/f0;-><init>()V

    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->b0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/f0;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_3
    iget-object p3, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->b0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->X:Lcom/google/android/material/datepicker/Month;

    iget-object p2, p2, Lcom/google/android/material/datepicker/y;->d:Lcom/google/android/material/datepicker/CalendarConstraints;

    iget-object p2, p2, Lcom/google/android/material/datepicker/CalendarConstraints;->b:Lcom/google/android/material/datepicker/Month;

    iget-object v1, p2, Lcom/google/android/material/datepicker/Month;->b:Ljava/util/Calendar;

    instance-of v1, v1, Ljava/util/GregorianCalendar;

    if-eqz v1, :cond_4

    iget v1, v0, Lcom/google/android/material/datepicker/Month;->d:I

    iget v2, p2, Lcom/google/android/material/datepicker/Month;->d:I

    sub-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0xc

    iget v0, v0, Lcom/google/android/material/datepicker/Month;->c:I

    iget p2, p2, Lcom/google/android/material/datepicker/Month;->c:I

    sub-int/2addr v0, p2

    add-int/2addr v0, v1

    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/RecyclerView;->a0(I)V

    return-object p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Only Gregorian calendars are supported."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final u(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "THEME_RES_ID_KEY"

    iget v1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->U:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "GRID_SELECTOR_KEY"

    iget-object v1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->V:Lcom/google/android/material/datepicker/DateSelector;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "CALENDAR_CONSTRAINTS_KEY"

    iget-object v1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->W:Lcom/google/android/material/datepicker/CalendarConstraints;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "CURRENT_MONTH_KEY"

    iget-object v1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->X:Lcom/google/android/material/datepicker/Month;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method
