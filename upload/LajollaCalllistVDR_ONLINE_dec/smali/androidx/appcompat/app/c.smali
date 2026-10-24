.class public final Landroidx/appcompat/app/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Landroidx/appcompat/app/i;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/i;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/app/c;->b:Landroidx/appcompat/app/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/app/c;->b:Landroidx/appcompat/app/i;

    iget-object v1, v0, Landroidx/appcompat/app/i;->f:Landroid/widget/Button;

    iget-object v1, v0, Landroidx/appcompat/app/i;->g:Landroid/widget/Button;

    iget-object v1, v0, Landroidx/appcompat/app/i;->h:Landroid/widget/Button;

    const/4 p1, 0x1

    iget-object v1, v0, Landroidx/appcompat/app/i;->b:Landroidx/appcompat/app/c0;

    iget-object v0, v0, Landroidx/appcompat/app/i;->w:Landroidx/appcompat/app/g;

    invoke-virtual {v0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
