.class public final Lcom/google/android/material/datepicker/l;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final synthetic a:Lcom/google/android/material/datepicker/v;

.field public final synthetic b:Lcom/google/android/material/datepicker/n;


# direct methods
.method public constructor <init>(Lcom/google/android/material/datepicker/n;Lcom/google/android/material/datepicker/v;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/datepicker/l;->b:Lcom/google/android/material/datepicker/n;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/google/android/material/datepicker/l;->a:Lcom/google/android/material/datepicker/v;

    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/google/android/material/datepicker/l;->a:Lcom/google/android/material/datepicker/v;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/google/android/material/datepicker/v;->a:Lcom/google/android/material/datepicker/b;

    .line 4
    .line 5
    iget-object p3, p0, Lcom/google/android/material/datepicker/l;->b:Lcom/google/android/material/datepicker/n;

    .line 6
    .line 7
    iget-object v0, p3, Lcom/google/android/material/datepicker/n;->i:Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    .line 9
    if-gez p2, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    check-cast p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 16
    .line 17
    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    check-cast p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 27
    .line 28
    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    :goto_0
    iget-object v0, p1, Lcom/google/android/material/datepicker/b;->b:Lcom/google/android/material/datepicker/r;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/google/android/material/datepicker/r;->b:Ljava/util/Calendar;

    .line 35
    .line 36
    invoke-static {v0}, Lcom/google/android/material/datepicker/a0;->a(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const/4 v1, 0x2

    .line 41
    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->add(II)V

    .line 42
    .line 43
    .line 44
    new-instance v2, Lcom/google/android/material/datepicker/r;

    .line 45
    .line 46
    invoke-direct {v2, v0}, Lcom/google/android/material/datepicker/r;-><init>(Ljava/util/Calendar;)V

    .line 47
    .line 48
    .line 49
    iput-object v2, p3, Lcom/google/android/material/datepicker/n;->e:Lcom/google/android/material/datepicker/r;

    .line 50
    .line 51
    iget-object v0, p3, Lcom/google/android/material/datepicker/n;->n:Lcom/google/android/material/button/MaterialButton;

    .line 52
    .line 53
    iget-object v3, p1, Lcom/google/android/material/datepicker/b;->b:Lcom/google/android/material/datepicker/r;

    .line 54
    .line 55
    iget-object v3, v3, Lcom/google/android/material/datepicker/r;->b:Ljava/util/Calendar;

    .line 56
    .line 57
    invoke-static {v3}, Lcom/google/android/material/datepicker/a0;->a(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-virtual {v3, v1, p2}, Ljava/util/Calendar;->add(II)V

    .line 62
    .line 63
    .line 64
    const/4 p2, 0x5

    .line 65
    const/4 v4, 0x1

    .line 66
    invoke-virtual {v3, p2, v4}, Ljava/util/Calendar;->set(II)V

    .line 67
    .line 68
    .line 69
    invoke-static {v3}, Lcom/google/android/material/datepicker/a0;->a(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-virtual {v3, v1}, Ljava/util/Calendar;->get(I)I

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    .line 77
    .line 78
    .line 79
    const/4 v1, 0x7

    .line 80
    invoke-virtual {v3, v1}, Ljava/util/Calendar;->getMaximum(I)I

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3, p2}, Ljava/util/Calendar;->getActualMaximum(I)I

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 87
    .line 88
    .line 89
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 90
    .line 91
    .line 92
    move-result-wide v3

    .line 93
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    sget-object v1, Lcom/google/android/material/datepicker/a0;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 98
    .line 99
    const-string v1, "yMMMM"

    .line 100
    .line 101
    invoke-static {v1, p2}, Landroid/icu/text/DateFormat;->getInstanceForSkeleton(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    const-string v1, "UTC"

    .line 106
    .line 107
    invoke-static {v1}, Landroid/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {p2, v1}, Landroid/icu/text/DateFormat;->setTimeZone(Landroid/icu/util/TimeZone;)V

    .line 112
    .line 113
    .line 114
    sget-object v1, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_STANDALONE:Landroid/icu/text/DisplayContext;

    .line 115
    .line 116
    invoke-virtual {p2, v1}, Landroid/icu/text/DateFormat;->setContext(Landroid/icu/text/DisplayContext;)V

    .line 117
    .line 118
    .line 119
    new-instance v1, Ljava/util/Date;

    .line 120
    .line 121
    invoke-direct {v1, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p2, v1}, Landroid/icu/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p2

    .line 128
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    .line 130
    .line 131
    iget-object p1, p1, Lcom/google/android/material/datepicker/b;->b:Lcom/google/android/material/datepicker/r;

    .line 132
    .line 133
    invoke-virtual {p1, v2}, Lcom/google/android/material/datepicker/r;->t(Lcom/google/android/material/datepicker/r;)I

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    invoke-virtual {p3, p1}, Lcom/google/android/material/datepicker/n;->v(I)V

    .line 138
    .line 139
    .line 140
    return-void
.end method
