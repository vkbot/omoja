.class public final synthetic Lm0/d3;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic b:Lm0/n3;

.field public final synthetic c:Landroidx/appcompat/app/AlertDialog;


# direct methods
.method public synthetic constructor <init>(Lm0/n3;Landroidx/appcompat/app/AlertDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lm0/d3;->b:Lm0/n3;

    .line 5
    .line 6
    iput-object p2, p0, Lm0/d3;->c:Landroidx/appcompat/app/AlertDialog;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lm0/d3;->b:Lm0/n3;

    .line 2
    .line 3
    iget v0, p1, Lm0/n3;->s:I

    .line 4
    .line 5
    add-int/lit8 v0, v0, 0x1

    .line 6
    .line 7
    iput v0, p1, Lm0/n3;->s:I

    .line 8
    .line 9
    iget-object v0, p1, Lm0/n3;->p:Landroidx/appcompat/app/AlertDialog;

    .line 10
    .line 11
    iget-object v1, p0, Lm0/d3;->c:Landroidx/appcompat/app/AlertDialog;

    .line 12
    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-object v0, p1, Lm0/n3;->p:Landroidx/appcompat/app/AlertDialog;

    .line 17
    .line 18
    :cond_0
    return-void
.end method
