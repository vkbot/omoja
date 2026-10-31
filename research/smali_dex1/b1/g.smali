.class public final synthetic Lb1/g;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/fragment/app/Fragment;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/Fragment;I)V
    .registers 3

    .line 1
    iput p2, p0, Lb1/g;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lb1/g;->c:Landroidx/fragment/app/Fragment;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .registers 2

    .line 1
    iget p1, p0, Lb1/g;->b:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_2e

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lb1/g;->c:Landroidx/fragment/app/Fragment;

    .line 7
    .line 8
    check-cast p1, Lf0/e;

    .line 9
    .line 10
    iget-object p1, p1, Lf0/e;->b:Lf0/c;

    .line 11
    .line 12
    invoke-interface {p1}, Lf0/c;->c()V

    .line 13
    .line 14
    .line 15
    :goto_e
    const/4 p1, 0x1

    .line 16
    return p1

    .line 17
    :pswitch_10
    iget-object p1, p0, Lb1/g;->c:Landroidx/fragment/app/Fragment;

    .line 18
    .line 19
    check-cast p1, Lf0/d;

    .line 20
    .line 21
    iget-object p1, p1, Lf0/d;->b:Lf0/c;

    .line 22
    .line 23
    invoke-interface {p1}, Lf0/c;->c()V

    .line 24
    .line 25
    .line 26
    goto :goto_e

    .line 27
    :pswitch_1a
    iget-object p1, p0, Lb1/g;->c:Landroidx/fragment/app/Fragment;

    .line 28
    .line 29
    check-cast p1, Lf0/a;

    .line 30
    .line 31
    iget-object p1, p1, Lf0/a;->b:Lf0/c;

    .line 32
    .line 33
    invoke-interface {p1}, Lf0/c;->c()V

    .line 34
    .line 35
    .line 36
    goto :goto_e

    .line 37
    :pswitch_24
    iget-object p1, p0, Lb1/g;->c:Landroidx/fragment/app/Fragment;

    .line 38
    .line 39
    check-cast p1, Lb1/h;

    .line 40
    .line 41
    iget-object p1, p1, Lb1/h;->f:Lf0/c;

    .line 42
    .line 43
    invoke-interface {p1}, Lf0/c;->c()V

    .line 44
    .line 45
    .line 46
    goto :goto_e

    .line 47
    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_24
        :pswitch_1a
        :pswitch_10
    .end packed-switch
.end method
