.class public final Lk1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Z

.field public final synthetic r:Lcom/mega/engineeringmode/function/communication/CommunicationActivity;


# direct methods
.method public constructor <init>(Lcom/mega/engineeringmode/function/communication/CommunicationActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk1/c;->r:Lcom/mega/engineeringmode/function/communication/CommunicationActivity;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lk1/c;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lk1/c;->r:Lcom/mega/engineeringmode/function/communication/CommunicationActivity;

    iget-object v1, v0, Lcom/mega/engineeringmode/function/communication/CommunicationActivity;->l:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-boolean p0, p0, Lk1/c;->c:Z

    if-eqz p0, :cond_0

    const p0, 0x7f1202ec

    goto :goto_0

    :cond_0
    const p0, 0x7f1202eb

    :goto_0
    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    iget-object v1, v0, Lcom/mega/engineeringmode/function/communication/CommunicationActivity;->l:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1200d8

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
