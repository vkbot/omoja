.class public final Lc1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;

.field public final f:Ljava/lang/Object;

.field public final g:Ljava/lang/Object;

.field public final h:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    sget v0, Lcom/google/android/material/R$attr;->materialCalendarStyle:I

    const-class v1, Lcom/google/android/material/datepicker/MaterialCalendar;

    .line 12
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-static {p1, v1, v0}, Lv1/c;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 14
    sget-object v1, Lcom/google/android/material/R$styleable;->MaterialCalendar:[I

    .line 15
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 16
    sget v1, Lcom/google/android/material/R$styleable;->MaterialCalendar_dayStyle:I

    const/4 v2, 0x0

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 18
    invoke-static {p1, v1}, Landroidx/appcompat/widget/y;->b(Landroid/content/Context;I)Landroidx/appcompat/widget/y;

    move-result-object v1

    iput-object v1, p0, Lc1/a;->a:Ljava/lang/Object;

    .line 19
    sget v1, Lcom/google/android/material/R$styleable;->MaterialCalendar_dayInvalidStyle:I

    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 21
    invoke-static {p1, v1}, Landroidx/appcompat/widget/y;->b(Landroid/content/Context;I)Landroidx/appcompat/widget/y;

    move-result-object v1

    iput-object v1, p0, Lc1/a;->g:Ljava/lang/Object;

    .line 22
    sget v1, Lcom/google/android/material/R$styleable;->MaterialCalendar_daySelectedStyle:I

    .line 23
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 24
    invoke-static {p1, v1}, Landroidx/appcompat/widget/y;->b(Landroid/content/Context;I)Landroidx/appcompat/widget/y;

    move-result-object v1

    iput-object v1, p0, Lc1/a;->b:Ljava/lang/Object;

    .line 25
    sget v1, Lcom/google/android/material/R$styleable;->MaterialCalendar_dayTodayStyle:I

    .line 26
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 27
    invoke-static {p1, v1}, Landroidx/appcompat/widget/y;->b(Landroid/content/Context;I)Landroidx/appcompat/widget/y;

    move-result-object v1

    iput-object v1, p0, Lc1/a;->c:Ljava/lang/Object;

    .line 28
    sget v1, Lcom/google/android/material/R$styleable;->MaterialCalendar_rangeFillColor:I

    .line 29
    invoke-static {p1, v0, v1}, Lv1/d;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 30
    sget v3, Lcom/google/android/material/R$styleable;->MaterialCalendar_yearStyle:I

    .line 31
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 32
    invoke-static {p1, v3}, Landroidx/appcompat/widget/y;->b(Landroid/content/Context;I)Landroidx/appcompat/widget/y;

    move-result-object v3

    iput-object v3, p0, Lc1/a;->d:Ljava/lang/Object;

    .line 33
    sget v3, Lcom/google/android/material/R$styleable;->MaterialCalendar_yearSelectedStyle:I

    .line 34
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 35
    invoke-static {p1, v3}, Landroidx/appcompat/widget/y;->b(Landroid/content/Context;I)Landroidx/appcompat/widget/y;

    move-result-object v3

    iput-object v3, p0, Lc1/a;->e:Ljava/lang/Object;

    .line 36
    sget v3, Lcom/google/android/material/R$styleable;->MaterialCalendar_yearTodayStyle:I

    .line 37
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 38
    invoke-static {p1, v2}, Landroidx/appcompat/widget/y;->b(Landroid/content/Context;I)Landroidx/appcompat/widget/y;

    move-result-object p1

    iput-object p1, p0, Lc1/a;->f:Ljava/lang/Object;

    .line 39
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lc1/a;->h:Ljava/lang/Object;

    .line 40
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 41
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/Button;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc1/a;->a:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Lc1/a;->b:Ljava/lang/Object;

    .line 4
    iput-object p3, p0, Lc1/a;->d:Ljava/lang/Object;

    .line 5
    iput-object p4, p0, Lc1/a;->e:Ljava/lang/Object;

    .line 6
    iput-object p5, p0, Lc1/a;->f:Ljava/lang/Object;

    .line 7
    iput-object p6, p0, Lc1/a;->g:Ljava/lang/Object;

    .line 8
    iput-object p7, p0, Lc1/a;->h:Ljava/lang/Object;

    .line 9
    iput-object p8, p0, Lc1/a;->c:Ljava/lang/Object;

    return-void
.end method
