.class public final synthetic Ln1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/mega/engineeringmode/function/display/MediaAdapter;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/mega/engineeringmode/function/display/MediaAdapter;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln1/d;->a:Lcom/mega/engineeringmode/function/display/MediaAdapter;

    iput p2, p0, Ln1/d;->b:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Ln1/d;->a:Lcom/mega/engineeringmode/function/display/MediaAdapter;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onClick "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Ln1/d;->b:I

    const-string v1, "MediaAdapter"

    invoke-static {v0, p0, v1}, Landroidx/activity/result/a;->p(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iput p0, p1, Lcom/mega/engineeringmode/function/display/MediaAdapter;->c:I

    iget-object v0, p1, Lcom/mega/engineeringmode/function/display/MediaAdapter;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln1/e;

    iget-object v0, v0, Ln1/e;->y:Ljava/lang/String;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/mega/engineeringmode/function/display/MediaAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln1/e;

    iget-object v0, v0, Ln1/e;->r:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v2, v0}, Ln2/n;->b(ILjava/lang/String;)I

    move-result v0

    const-string/jumbo v2, "type  "

    invoke-static {v2, v0, v1}, La4/a;->m(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v1, 0x1

    iget-object p1, p1, Lcom/mega/engineeringmode/function/display/MediaAdapter;->b:Landroid/content/Context;

    if-ne v1, v0, :cond_0

    instance-of v0, p1, Lcom/mega/engineeringmode/function/display/DisplayActivity;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/mega/engineeringmode/function/display/DisplayActivity;

    invoke-virtual {p1, p0}, Lcom/mega/engineeringmode/function/display/DisplayActivity;->n(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v1, v0, :cond_1

    instance-of v0, p1, Lcom/mega/engineeringmode/function/display/DisplayActivity;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/mega/engineeringmode/function/display/DisplayActivity;

    invoke-virtual {p1, p0}, Lcom/mega/engineeringmode/function/display/DisplayActivity;->o(I)V

    :cond_1
    :goto_0
    return-void
.end method
