.class public Lcom/google/android/material/datepicker/RangeDateSelector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/datepicker/DateSelector;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/material/datepicker/DateSelector<",
        "Lf0/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/material/datepicker/RangeDateSelector;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ljava/lang/Long;

.field public d:Ljava/lang/Long;

.field public e:Ljava/lang/Long;

.field public f:Ljava/lang/Long;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/material/datepicker/u;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/google/android/material/datepicker/u;-><init>(I)V

    sput-object v0, Lcom/google/android/material/datepicker/RangeDateSelector;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->c:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->d:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->e:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->f:Ljava/lang/Long;

    return-void
.end method

.method public static j(Lcom/google/android/material/datepicker/RangeDateSelector;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/datepicker/z;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->e:Ljava/lang/Long;

    const-string v1, " "

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->f:Ljava/lang/Long;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->f:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->e:Ljava/lang/Long;

    iput-object p1, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->c:Ljava/lang/Long;

    iget-object p2, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->f:Ljava/lang/Long;

    iput-object p2, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->d:Ljava/lang/Long;

    new-instance p0, Lf0/b;

    invoke-direct {p0, p1, p2}, Lf0/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p3, p0}, Lcom/google/android/material/datepicker/z;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    iget-object p0, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->b:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    invoke-virtual {p2, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    invoke-virtual {p3}, Lcom/google/android/material/datepicker/z;->a()V

    goto :goto_2

    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getError()Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getError()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {p1, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    :cond_4
    invoke-virtual {p2}, Lcom/google/android/material/textfield/TextInputLayout;->getError()Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p2}, Lcom/google/android/material/textfield/TextInputLayout;->getError()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {p2, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    :cond_5
    invoke-virtual {p3}, Lcom/google/android/material/datepicker/z;->a()V

    :goto_2
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/google/android/material/datepicker/CalendarConstraints;Lcom/google/android/material/datepicker/s;)Landroid/view/View;
    .locals 20

    move-object/from16 v10, p0

    sget v0, Lcom/google/android/material/R$layout;->mtrl_picker_text_input_date_range:I

    const/4 v1, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual {v2, v0, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    sget v0, Lcom/google/android/material/R$id;->mtrl_picker_text_input_range_start:I

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/google/android/material/textfield/TextInputLayout;

    sget v0, Lcom/google/android/material/R$id;->mtrl_picker_text_input_range_end:I

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v12}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v14

    invoke-virtual {v13}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v15

    invoke-static {}, Lcom/google/android/material/internal/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setInputType(I)V

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setInputType(I)V

    :cond_0
    invoke-virtual {v11}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$string;->mtrl_picker_invalid_range:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/google/android/material/datepicker/RangeDateSelector;->b:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/material/datepicker/e0;->d()Ljava/text/SimpleDateFormat;

    move-result-object v9

    iget-object v0, v10, Lcom/google/android/material/datepicker/RangeDateSelector;->c:Ljava/lang/Long;

    if-eqz v0, :cond_1

    invoke-virtual {v9, v0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v10, Lcom/google/android/material/datepicker/RangeDateSelector;->c:Ljava/lang/Long;

    iput-object v0, v10, Lcom/google/android/material/datepicker/RangeDateSelector;->e:Ljava/lang/Long;

    :cond_1
    iget-object v0, v10, Lcom/google/android/material/datepicker/RangeDateSelector;->d:Ljava/lang/Long;

    if-eqz v0, :cond_2

    invoke-virtual {v9, v0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v10, Lcom/google/android/material/datepicker/RangeDateSelector;->d:Ljava/lang/Long;

    iput-object v0, v10, Lcom/google/android/material/datepicker/RangeDateSelector;->f:Ljava/lang/Long;

    :cond_2
    invoke-virtual {v11}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v9}, Lcom/google/android/material/datepicker/e0;->e(Landroid/content/res/Resources;Ljava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v8}, Lcom/google/android/material/textfield/TextInputLayout;->setPlaceholderText(Ljava/lang/CharSequence;)V

    invoke-virtual {v13, v8}, Lcom/google/android/material/textfield/TextInputLayout;->setPlaceholderText(Ljava/lang/CharSequence;)V

    new-instance v7, Lcom/google/android/material/datepicker/b0;

    const/16 v16, 0x0

    move-object v0, v7

    move-object/from16 v1, p0

    move-object v2, v8

    move-object v3, v9

    move-object v4, v12

    move-object/from16 v5, p3

    move-object v6, v12

    move-object/from16 v17, v7

    move-object v7, v13

    move-object/from16 v18, v8

    move-object/from16 v8, p4

    move-object/from16 v19, v9

    move/from16 v9, v16

    invoke-direct/range {v0 .. v9}, Lcom/google/android/material/datepicker/b0;-><init>(Lcom/google/android/material/datepicker/RangeDateSelector;Ljava/lang/String;Ljava/text/SimpleDateFormat;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/datepicker/CalendarConstraints;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/datepicker/s;I)V

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v9, Lcom/google/android/material/datepicker/b0;

    const/16 v16, 0x1

    move-object v0, v9

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object v4, v13

    move-object v12, v9

    move/from16 v9, v16

    invoke-direct/range {v0 .. v9}, Lcom/google/android/material/datepicker/b0;-><init>(Lcom/google/android/material/datepicker/RangeDateSelector;Ljava/lang/String;Ljava/text/SimpleDateFormat;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/datepicker/CalendarConstraints;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/datepicker/s;I)V

    invoke-virtual {v15, v12}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {v14}, Landroid/view/View;->requestFocus()Z

    new-instance v0, Landroidx/activity/c;

    const/16 v1, 0xf

    invoke-direct {v0, v1, v14}, Landroidx/activity/c;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v14, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-object v11
.end method

.method public final b()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lf0/b;

    iget-object v1, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->c:Ljava/lang/Long;

    iget-object v2, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->d:Ljava/lang/Long;

    invoke-direct {v0, v1, v2}, Lf0/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final c(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->c:Ljava/lang/Long;

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->d:Ljava/lang/Long;

    if-nez v1, :cond_0

    sget v0, Lcom/google/android/material/R$string;->mtrl_picker_range_header_unselected:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v1, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->d:Ljava/lang/Long;

    if-nez v1, :cond_1

    sget v1, Lcom/google/android/material/R$string;->mtrl_picker_range_header_only_start_selected:I

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/material/slider/h;->f0(J)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    if-nez v0, :cond_2

    sget v0, Lcom/google/android/material/R$string;->mtrl_picker_range_header_only_end_selected:I

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/material/slider/h;->f0(J)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-static {}, Lcom/google/android/material/datepicker/e0;->f()Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/google/android/material/datepicker/e0;->g(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-static {v3}, Lcom/google/android/material/datepicker/e0;->g(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v6, v3, :cond_4

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v3, v2, :cond_3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/google/android/material/slider/h;->m0(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/google/android/material/slider/h;->m0(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lf0/b;

    invoke-direct {v2, v0, v1}, Lf0/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/google/android/material/slider/h;->m0(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/google/android/material/slider/h;->B0(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lf0/b;

    invoke-direct {v2, v0, v1}, Lf0/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/google/android/material/slider/h;->B0(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/google/android/material/slider/h;->B0(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lf0/b;

    invoke-direct {v2, v0, v1}, Lf0/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    sget v0, Lcom/google/android/material/R$string;->mtrl_picker_range_header_selected:I

    iget-object v1, v2, Lf0/b;->a:Ljava/lang/Object;

    iget-object v2, v2, Lf0/b;->b:Ljava/lang/Object;

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final d(Landroid/content/Context;)I
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    sget v2, Lcom/google/android/material/R$dimen;->mtrl_calendar_maximum_default_fullscreen_minor_axis:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-le v1, v0, :cond_0

    sget v0, Lcom/google/android/material/R$attr;->materialCalendarTheme:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/google/android/material/R$attr;->materialCalendarFullscreenTheme:I

    :goto_0
    const-class v1, Lcom/google/android/material/datepicker/MaterialDatePicker;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Ld2/c;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final e()Ljava/util/ArrayList;
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->c:Ljava/lang/Long;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->d:Ljava/lang/Long;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lf0/b;

    iget-object v2, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->c:Ljava/lang/Long;

    iget-object v3, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->d:Ljava/lang/Long;

    invoke-direct {v1, v2, v3}, Lf0/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_1
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public final g()Z
    .locals 6

    iget-object v0, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->c:Ljava/lang/Long;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->d:Ljava/lang/Long;

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->d:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, v2, v4

    const/4 v2, 0x1

    if-gtz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method public final h(J)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->c:Ljava/lang/Long;

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->c:Ljava/lang/Long;

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->d:Ljava/lang/Long;

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->d:Ljava/lang/Long;

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->d:Ljava/lang/Long;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->c:Ljava/lang/Long;

    :goto_1
    return-void
.end method

.method public final i()Ljava/util/ArrayList;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->c:Ljava/lang/Long;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->d:Ljava/lang/Long;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->c:Ljava/lang/Long;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->d:Ljava/lang/Long;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    return-void
.end method
