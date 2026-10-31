.class public final Lcom/google/android/material/datepicker/f;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/google/android/material/datepicker/v;

.field public final synthetic d:Lcom/google/android/material/datepicker/n;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/datepicker/n;Lcom/google/android/material/datepicker/v;I)V
    .registers 4

    .line 1
    iput p3, p0, Lcom/google/android/material/datepicker/f;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/android/material/datepicker/f;->d:Lcom/google/android/material/datepicker/n;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/google/android/material/datepicker/f;->c:Lcom/google/android/material/datepicker/v;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    .line 1
    iget p1, p0, Lcom/google/android/material/datepicker/f;->b:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_58

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/google/android/material/datepicker/f;->d:Lcom/google/android/material/datepicker/n;

    .line 7
    .line 8
    iget-object v0, p1, Lcom/google/android/material/datepicker/n;->i:Landroidx/recyclerview/widget/RecyclerView;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    add-int/lit8 v0, v0, 0x1

    .line 21
    .line 22
    iget-object v1, p0, Lcom/google/android/material/datepicker/f;->c:Lcom/google/android/material/datepicker/v;

    .line 23
    .line 24
    iget-object v1, v1, Lcom/google/android/material/datepicker/v;->a:Lcom/google/android/material/datepicker/b;

    .line 25
    .line 26
    iget-object v1, v1, Lcom/google/android/material/datepicker/b;->b:Lcom/google/android/material/datepicker/r;

    .line 27
    .line 28
    iget-object v1, v1, Lcom/google/android/material/datepicker/r;->b:Ljava/util/Calendar;

    .line 29
    .line 30
    invoke-static {v1}, Lcom/google/android/material/datepicker/a0;->a(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const/4 v2, 0x2

    .line 35
    invoke-virtual {v1, v2, v0}, Ljava/util/Calendar;->add(II)V

    .line 36
    .line 37
    .line 38
    new-instance v0, Lcom/google/android/material/datepicker/r;

    .line 39
    .line 40
    invoke-direct {v0, v1}, Lcom/google/android/material/datepicker/r;-><init>(Ljava/util/Calendar;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v0}, Lcom/google/android/material/datepicker/n;->t(Lcom/google/android/material/datepicker/r;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :pswitch_2e
    iget-object p1, p0, Lcom/google/android/material/datepicker/f;->d:Lcom/google/android/material/datepicker/n;

    .line 48
    .line 49
    iget-object v0, p1, Lcom/google/android/material/datepicker/n;->i:Landroidx/recyclerview/widget/RecyclerView;

    .line 50
    .line 51
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 56
    .line 57
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    add-int/lit8 v0, v0, -0x1

    .line 62
    .line 63
    iget-object v1, p0, Lcom/google/android/material/datepicker/f;->c:Lcom/google/android/material/datepicker/v;

    .line 64
    .line 65
    iget-object v1, v1, Lcom/google/android/material/datepicker/v;->a:Lcom/google/android/material/datepicker/b;

    .line 66
    .line 67
    iget-object v1, v1, Lcom/google/android/material/datepicker/b;->b:Lcom/google/android/material/datepicker/r;

    .line 68
    .line 69
    iget-object v1, v1, Lcom/google/android/material/datepicker/r;->b:Ljava/util/Calendar;

    .line 70
    .line 71
    invoke-static {v1}, Lcom/google/android/material/datepicker/a0;->a(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    const/4 v2, 0x2

    .line 76
    invoke-virtual {v1, v2, v0}, Ljava/util/Calendar;->add(II)V

    .line 77
    .line 78
    .line 79
    new-instance v0, Lcom/google/android/material/datepicker/r;

    .line 80
    .line 81
    invoke-direct {v0, v1}, Lcom/google/android/material/datepicker/r;-><init>(Ljava/util/Calendar;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, v0}, Lcom/google/android/material/datepicker/n;->t(Lcom/google/android/material/datepicker/r;)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    nop

    .line 89
    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_2e
    .end packed-switch
.end method
