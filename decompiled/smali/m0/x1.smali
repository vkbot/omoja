.class public final synthetic Lm0/x1;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lm0/y1;


# direct methods
.method public synthetic constructor <init>(Lm0/y1;I)V
    .locals 0

    .line 1
    iput p2, p0, Lm0/x1;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lm0/x1;->c:Lm0/y1;

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
    .locals 5

    .line 1
    iget p1, p0, Lm0/x1;->b:I

    .line 2
    .line 3
    iget-object v0, p0, Lm0/x1;->c:Lm0/y1;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget-object p1, Lm0/y1;->e:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lh0/b;->f()Lj0/c;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object v1, v0, Lm0/y1;->d:Ljava/util/ArrayList;

    .line 18
    .line 19
    sget-object v2, Lm0/y1;->e:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-static {v2, v1}, Lj0/c;->l(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Ll0/a;

    .line 32
    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void

    .line 39
    :pswitch_0
    iget-object p1, v0, Lm0/y1;->d:Ljava/util/ArrayList;

    .line 40
    .line 41
    new-instance v1, Lw0/o0;

    .line 42
    .line 43
    sget-object v2, Ln0/d;->e:Ln0/d;

    .line 44
    .line 45
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-static {v2, v3}, Lj0/e;->c(Ln0/d;Landroid/content/Context;)Lj0/e;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    const-string v3, ""

    .line 54
    .line 55
    const/4 v4, 0x1

    .line 56
    invoke-direct {v1, v3, v2, v4, v4}, Lw0/o0;-><init>(Ljava/lang/String;Lj0/e;ZZ)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    iget-object p1, v0, Lm0/y1;->c:Lt0/d;

    .line 63
    .line 64
    iget-object v0, v0, Lm0/y1;->d:Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    sub-int/2addr v0, v4

    .line 71
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
