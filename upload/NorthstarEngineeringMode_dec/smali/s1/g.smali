.class public final synthetic Ls1/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Z:I

.field public final synthetic c:Lcom/mega/engineeringmode/function/location/InertialActivity;

.field public final synthetic r:I

.field public final synthetic x:I

.field public final synthetic y:I


# direct methods
.method public synthetic constructor <init>(Lcom/mega/engineeringmode/function/location/InertialActivity;IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls1/g;->c:Lcom/mega/engineeringmode/function/location/InertialActivity;

    iput p2, p0, Ls1/g;->r:I

    iput p3, p0, Ls1/g;->x:I

    iput p4, p0, Ls1/g;->y:I

    iput p5, p0, Ls1/g;->Z:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Ls1/g;->c:Lcom/mega/engineeringmode/function/location/InertialActivity;

    iget-object v1, v0, Lcom/mega/engineeringmode/function/location/InertialActivity;->x:Landroid/widget/TextView;

    iget v2, p0, Ls1/g;->r:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Ls1/g;->x:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Ls1/g;->y:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget p0, p0, Ls1/g;->Z:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v2, v3, v4, p0}, [Ljava/lang/Object;

    move-result-object p0

    const v2, 0x7f1202b0

    invoke-virtual {v0, v2, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
