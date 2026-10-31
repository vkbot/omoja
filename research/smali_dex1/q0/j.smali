.class public final synthetic Lq0/j;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lq0/l;


# direct methods
.method public synthetic constructor <init>(Lq0/l;I)V
    .registers 3

    .line 1
    iput p2, p0, Lq0/j;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lq0/j;->c:Lq0/l;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 7

    .line 1
    iget p1, p0, Lq0/j;->b:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_52

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lq0/j;->c:Lq0/l;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    instance-of v0, v0, Ll0/a;

    .line 13
    .line 14
    if-eqz v0, :cond_18

    .line 15
    .line 16
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Ll0/a;

    .line 21
    .line 22
    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 23
    .line 24
    .line 25
    :cond_18
    return-void

    .line 26
    :pswitch_19
    iget-object p1, p0, Lq0/j;->c:Lq0/l;

    .line 27
    .line 28
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0}, Lcom/example/navistart/MockGPS/MockGpsService;->b(Landroid/content/Context;)V

    .line 33
    .line 34
    .line 35
    new-instance v1, Landroid/content/Intent;

    .line 36
    .line 37
    const-class v2, Lcom/example/navistart/MockGPS/MockGpsService;

    .line 38
    .line 39
    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Lq0/l;->z()V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :pswitch_30
    iget-object p1, p0, Lq0/j;->c:Lq0/l;

    .line 50
    .line 51
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iget-object v1, p1, Lq0/l;->t:Ljava/lang/String;

    .line 56
    .line 57
    iget-object v2, p1, Lq0/l;->d:Landroid/widget/EditText;

    .line 58
    .line 59
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {p1}, Lq0/l;->x()I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    iget-object v4, p1, Lq0/l;->q:Landroid/widget/CheckBox;

    .line 72
    .line 73
    invoke-virtual {v4}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 74
    .line 75
    .line 76
    invoke-static {v0, v3, v1, v2}, Lcom/example/navistart/MockGPS/MockGpsService;->n(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Lq0/l;->z()V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_30
        :pswitch_19
    .end packed-switch
.end method
