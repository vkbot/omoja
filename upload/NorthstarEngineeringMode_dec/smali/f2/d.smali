.class public final Lf2/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:I

.field public final synthetic r:Ljava/lang/String;

.field public final synthetic x:Lcom/mega/engineeringmode/function/versioninfo/PeripheralSoftwareActivity;


# direct methods
.method public constructor <init>(Lcom/mega/engineeringmode/function/versioninfo/PeripheralSoftwareActivity;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf2/d;->x:Lcom/mega/engineeringmode/function/versioninfo/PeripheralSoftwareActivity;

    iput p2, p0, Lf2/d;->c:I

    iput-object p3, p0, Lf2/d;->r:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    sget v0, Lcom/mega/engineeringmode/function/versioninfo/PeripheralSoftwareActivity;->w:I

    iget-object v0, p0, Lf2/d;->r:Ljava/lang/String;

    iget-object v1, p0, Lf2/d;->x:Lcom/mega/engineeringmode/function/versioninfo/PeripheralSoftwareActivity;

    const/16 v2, 0x8

    iget p0, p0, Lf2/d;->c:I

    if-ne v2, p0, :cond_0

    iget-object p0, v1, Lcom/mega/engineeringmode/function/versioninfo/PeripheralSoftwareActivity;->i:Landroid/widget/TextView;

    if-eqz p0, :cond_2

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/16 v2, 0x12

    if-ne v2, p0, :cond_1

    iget-object p0, v1, Lcom/mega/engineeringmode/function/versioninfo/PeripheralSoftwareActivity;->j:Landroid/widget/TextView;

    if-eqz p0, :cond_2

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    if-nez p0, :cond_2

    iget-object p0, v1, Lcom/mega/engineeringmode/function/versioninfo/PeripheralSoftwareActivity;->m:Landroid/widget/TextView;

    if-eqz p0, :cond_2

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method
