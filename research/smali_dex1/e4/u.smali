.class public final Le4/u;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic b:Le4/w;


# direct methods
.method public constructor <init>(Le4/w;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Le4/u;->b:Le4/w;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 15

    .line 1
    iget-object p1, p0, Le4/u;->b:Le4/w;

    .line 2
    .line 3
    iget-object v0, p1, Le4/w;->b:Landroidx/appcompat/widget/ListPopupWindow;

    .line 4
    .line 5
    if-gez p3, :cond_b

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->getSelectedItem()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    goto :goto_13

    .line 12
    :cond_b
    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-interface {v1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    :goto_13
    invoke-static {p1, v1}, Le4/w;->a(Le4/w;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-virtual {p1, v1, v2}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;Z)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    if-eqz v3, :cond_3e

    .line 33
    .line 34
    if-eqz p2, :cond_2a

    .line 35
    .line 36
    if-gez p3, :cond_26

    .line 37
    .line 38
    goto :goto_2a

    .line 39
    :cond_26
    :goto_26
    move-object v5, p2

    .line 40
    move v6, p3

    .line 41
    move-wide v7, p4

    .line 42
    goto :goto_37

    .line 43
    :cond_2a
    :goto_2a
    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->getSelectedView()Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->getSelectedItemPosition()I

    .line 48
    .line 49
    .line 50
    move-result p3

    .line 51
    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->getSelectedItemId()J

    .line 52
    .line 53
    .line 54
    move-result-wide p4

    .line 55
    goto :goto_26

    .line 56
    :goto_37
    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    invoke-interface/range {v3 .. v8}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 61
    .line 62
    .line 63
    :cond_3e
    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    .line 64
    .line 65
    .line 66
    return-void
.end method
