.class public final Lg1/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Landroid/widget/EditText;

.field public final synthetic b:Landroid/widget/TextView;

.field public final synthetic c:I

.field public final synthetic d:Landroidx/appcompat/app/AlertDialog;

.field public final synthetic e:Lcom/mega/engineeringmode/function/LogExportActivity;


# direct methods
.method public constructor <init>(Lcom/mega/engineeringmode/function/LogExportActivity;Landroid/widget/EditText;Landroid/widget/TextView;ILandroidx/appcompat/app/AlertDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg1/f;->e:Lcom/mega/engineeringmode/function/LogExportActivity;

    iput-object p2, p0, Lg1/f;->a:Landroid/widget/EditText;

    iput-object p3, p0, Lg1/f;->b:Landroid/widget/TextView;

    iput p4, p0, Lg1/f;->c:I

    iput-object p5, p0, Lg1/f;->d:Landroidx/appcompat/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lg1/f;->a:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lg1/f;->b:Landroid/widget/TextView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lg1/f;->e:Lcom/mega/engineeringmode/function/LogExportActivity;

    iget-object v1, v0, Lcom/mega/engineeringmode/function/LogExportActivity;->n:Lcom/mega/engineeringmode/function/LogExportActivity$b;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Lg1/f;->c:I

    iput v2, v1, Landroid/os/Message;->what:I

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "objPath  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LogExportActivity"

    invoke-static {v3, v2}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 p1, 0x1

    iput p1, v1, Landroid/os/Message;->arg1:I

    iget-object p1, v0, Lcom/mega/engineeringmode/function/LogExportActivity;->n:Lcom/mega/engineeringmode/function/LogExportActivity$b;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object p1, v0, Lcom/mega/engineeringmode/function/LogExportActivity;->j:Landroid/widget/TextView;

    const v0, 0x7f120366

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p0, p0, Lg1/f;->d:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :goto_0
    return-void
.end method
