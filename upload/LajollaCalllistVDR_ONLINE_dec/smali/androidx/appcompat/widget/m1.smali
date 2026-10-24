.class public final Landroidx/appcompat/widget/m1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/widget/m1;->b:I

    iput-object p2, p0, Landroidx/appcompat/widget/m1;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iget p1, p0, Landroidx/appcompat/widget/m1;->b:I

    iget-object p2, p0, Landroidx/appcompat/widget/m1;->c:Ljava/lang/Object;

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 p1, -0x1

    if-eq p3, p1, :cond_0

    check-cast p2, Landroidx/appcompat/widget/ListPopupWindow;

    iget-object p1, p2, Landroidx/appcompat/widget/ListPopupWindow;->d:Landroidx/appcompat/widget/g1;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/g1;->setListSelectionHidden(Z)V

    :cond_0
    return-void

    :goto_0
    check-cast p2, Landroidx/appcompat/widget/SearchView;

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/SearchView;->q(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method
