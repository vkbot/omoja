.class public final synthetic Lt1/b;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic a:Landroidx/appcompat/app/AlertDialog;

.field public final synthetic b:Landroidx/appcompat/widget/AppCompatEditText;

.field public final synthetic c:Landroidx/appcompat/view/ContextThemeWrapper;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/app/AlertDialog;Landroidx/appcompat/view/ContextThemeWrapper;Landroidx/appcompat/widget/AppCompatEditText;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lt1/b;->a:Landroidx/appcompat/app/AlertDialog;

    .line 5
    .line 6
    iput-object p3, p0, Lt1/b;->b:Landroidx/appcompat/widget/AppCompatEditText;

    .line 7
    .line 8
    iput-object p2, p0, Lt1/b;->c:Landroidx/appcompat/view/ContextThemeWrapper;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 4

    .line 1
    const/4 p1, -0x1

    .line 2
    iget-object v0, p0, Lt1/b;->a:Landroidx/appcompat/app/AlertDialog;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    new-instance v1, Le0/n0;

    .line 9
    .line 10
    iget-object v2, p0, Lt1/b;->c:Landroidx/appcompat/view/ContextThemeWrapper;

    .line 11
    .line 12
    iget-object v3, p0, Lt1/b;->b:Landroidx/appcompat/widget/AppCompatEditText;

    .line 13
    .line 14
    invoke-direct {v1, v0, v2, v3}, Le0/n0;-><init>(Landroidx/appcompat/app/AlertDialog;Landroidx/appcompat/view/ContextThemeWrapper;Landroidx/appcompat/widget/AppCompatEditText;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
