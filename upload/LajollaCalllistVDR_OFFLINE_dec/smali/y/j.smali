.class public final Ly/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final b:I

.field public final c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p2, p0, Ly/j;->a:I

    iput-object p3, p0, Ly/j;->c:Ljava/lang/Object;

    iput p1, p0, Ly/j;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILandroidx/viewpager2/widget/o;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Ly/j;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Ly/j;->b:I

    .line 4
    iput-object p2, p0, Ly/j;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Ly/j;->a:I

    iget v1, p0, Ly/j;->b:I

    iget-object p0, p0, Ly/j;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Lcom/google/android/material/datepicker/MaterialCalendar;

    iget-object p0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->a0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->c0(I)V

    return-void

    :pswitch_1
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->c0(I)V

    return-void

    :pswitch_2
    check-cast p0, Ly/k;

    invoke-virtual {p0, v1}, Ly/k;->c(I)V

    return-void

    :goto_0
    check-cast p0, Lcom/google/android/material/navigation/NavigationBarItemView;

    sget-object v0, Lcom/google/android/material/navigation/NavigationBarItemView;->C:[I

    invoke-virtual {p0, v1}, Lcom/google/android/material/navigation/NavigationBarItemView;->e(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
