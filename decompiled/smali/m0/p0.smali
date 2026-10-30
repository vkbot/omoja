.class public final synthetic Lm0/p0;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lm0/s0;

.field public final synthetic c:Landroid/widget/Button;

.field public final synthetic d:Landroid/widget/LinearLayout;

.field public final synthetic e:Lp0/b;

.field public final synthetic f:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lm0/s0;Landroid/widget/Button;Landroid/widget/LinearLayout;Lp0/b;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lm0/p0;->b:Lm0/s0;

    .line 5
    .line 6
    iput-object p2, p0, Lm0/p0;->c:Landroid/widget/Button;

    .line 7
    .line 8
    iput-object p3, p0, Lm0/p0;->d:Landroid/widget/LinearLayout;

    .line 9
    .line 10
    iput-object p4, p0, Lm0/p0;->e:Lp0/b;

    .line 11
    .line 12
    iput-object p5, p0, Lm0/p0;->f:Landroid/view/View;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    new-instance p1, Landroid/app/AlertDialog$Builder;

    .line 2
    .line 3
    iget-object v1, p0, Lm0/p0;->b:Lm0/s0;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    const v0, 0x7f1301f5

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-wide/16 v2, 0x5

    .line 20
    .line 21
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const v2, 0x7f1301f9

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v2, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const/high16 v0, 0x1040000

    .line 41
    .line 42
    const/4 v2, 0x0

    .line 43
    invoke-virtual {p1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    new-instance v0, Lm0/q0;

    .line 48
    .line 49
    const/4 v6, 0x0

    .line 50
    iget-object v2, p0, Lm0/p0;->c:Landroid/widget/Button;

    .line 51
    .line 52
    iget-object v3, p0, Lm0/p0;->d:Landroid/widget/LinearLayout;

    .line 53
    .line 54
    iget-object v4, p0, Lm0/p0;->e:Lp0/b;

    .line 55
    .line 56
    iget-object v5, p0, Lm0/p0;->f:Landroid/view/View;

    .line 57
    .line 58
    invoke-direct/range {v0 .. v6}, Lm0/q0;-><init>(Ll0/b;Ljava/lang/Object;Landroid/view/KeyEvent$Callback;Ljava/lang/Object;Landroid/view/View;I)V

    .line 59
    .line 60
    .line 61
    const v1, 0x7f1301ef

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 69
    .line 70
    .line 71
    return-void
.end method
